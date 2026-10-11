# KSA VC Quick ID Inspector

A CLEO model inspector project for Grand Theft Auto: Vice City, based on [KSA Quick ID Inspector](https://github.com/KSAGlory/KSA-Quick-ID-Inspector) for San Andreas.

The inspector is designed for players, mod testers, and creators who need to identify pedestrian and vehicle models directly in the game. Version 0.1.0 is a testing build; gameplay verification is pending.

## Implemented features

- Show a targeted pedestrian's model ID and health
- Display the current vehicle's name, model ID, and health
- Toggle the inspector with the `KSAID` cheat code
- Keep the compact pastel interface used in the San Andreas version

## Requirements

- Grand Theft Auto: Vice City 1.0 for Windows
- [VC.CLEO 2.2.0](https://github.com/cleolibrary/III.VC.CLEO)

## Using the inspector

- Type `KSAID` during gameplay to enable or disable the display.
- Target a pedestrian with a weapon to inspect their model ID and health.
- Enter a vehicle to display its name, model ID, and health.

Pedestrian inspection follows the game's targeting state. Replacement vehicles keep their original model IDs and names. Vehicles outside the original model range use the label `CUSTOM VEHICLE`.

## Building and installation

The editable source is in `src/KSA_VC_Quick_ID_Inspector.txt`.

Open it in Sanny Builder 4.2 or newer, select **GTA VC (SBL)**, and compile. Alternatively, run `build.ps1` with the path to your Sanny Builder executable. Copy the resulting `KSA_VC_Quick_ID_Inspector.cs` into the modded game's `CLEO` folder, then restart the game.

Install only one copy of the script. To disable it, close the game and move its `.cs` file outside the game folder.

## Verification status

The source compiles in Sanny Builder's Vice City SBL mode. The compiled file was also decompiled in the same mode to check the generated commands and local variables.

In-game rendering, targeting, toggle behavior, save loading, and compatibility with the existing mods still need the [manual checks](docs/manual-testing.md). There is no packaged release yet.

## Author and Community

- Author: **KSAGlory**
- Community: [discord.gg/ksahub](https://discord.gg/ksahub)

## License

This project is available under the [MIT License](LICENSE).

Copyright © 2026 KSAGlory
