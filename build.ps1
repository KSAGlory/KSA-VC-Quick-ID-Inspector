param(
    [string]$SannyPath = 'D:\Mods Apps\sanny.exe'
)

$ErrorActionPreference = 'Stop'
if (-not (Test-Path -LiteralPath $SannyPath -PathType Leaf)) {
    throw 'Sanny Builder was not found. Pass its executable path with -SannyPath.'
}

$source = Join-Path $PSScriptRoot 'src\KSA_VC_Quick_ID_Inspector.txt'
$buildDirectory = Join-Path $PSScriptRoot 'build'
$output = Join-Path $buildDirectory 'KSA_VC_Quick_ID_Inspector.cs'
New-Item -ItemType Directory -Path $buildDirectory -Force | Out-Null
$started = Get-Date
$arguments = '--mode vc_sbl --no-splash --compile "' + $source + '" "' + $output + '"'
$compiler = Start-Process -FilePath $SannyPath -ArgumentList $arguments -WorkingDirectory $PSScriptRoot -WindowStyle Hidden -Wait -PassThru
if ($compiler.ExitCode -ne 0) {
    throw "Sanny Builder exited with code $($compiler.ExitCode)."
}

$logs = @(
    (Join-Path (Split-Path $SannyPath) 'compile.log'),
    (Join-Path $PSScriptRoot 'compile.log')
) | Select-Object -Unique
foreach ($log in $logs) {
    if (Test-Path -LiteralPath $log) {
        $item = Get-Item -LiteralPath $log
        if ($item.LastWriteTime -ge $started) {
            $errors = Get-Content -LiteralPath $log | Select-String '^error:'
            if ($errors) {
                throw ($errors.Line -join [Environment]::NewLine)
            }
        }
    }
}

$result = Get-Item -LiteralPath $output
if ($result.Length -lt 512 -or $result.LastWriteTime -lt $started) {
    throw 'The compiler did not produce a fresh, complete script.'
}
$bytes = [IO.File]::ReadAllBytes($output)
$expectedHeader = [byte[]](0xA4, 0x03, 0x4B, 0x53, 0x41, 0x5F, 0x56, 0x43, 0x49, 0x00, 0x06, 0x00)
for ($index = 0; $index -lt $expectedHeader.Length; $index++) {
    if ($bytes[$index] -ne $expectedHeader[$index]) {
        throw 'Invalid Vice City script-name encoding. Use a single-quoted fixed-width name.'
    }
}
Write-Output "Compiled: $output ($($result.Length) bytes)"
