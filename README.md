# KSA VC Quick ID Inspector

A lightweight CLEO model inspector for Grand Theft Auto: Vice City, based on [KSA Quick ID Inspector](https://github.com/KSAGlory/KSA-Quick-ID-Inspector) for San Andreas.

Identify pedestrian and vehicle models without leaving the game. Version **1.0.0** is the first public release.

## Download

[Download the latest release](https://github.com/KSAGlory/KSA-VC-Quick-ID-Inspector/releases/latest). Choose the `KSA_VC_Quick_ID_Inspector_v1_0_0.zip` asset, not GitHub's source-code archive.

## Features

- Show a targeted pedestrian's model ID and health
- Display the current vehicle's name, model ID, and health
- Toggle the inspector with the `KSAID` cheat code
- Keep the compact pastel interface used in the San Andreas version

## Requirements

- Grand Theft Auto: Vice City 1.0 for Windows
- [VC.CLEO 2.2.0](https://github.com/cleolibrary/III.VC.CLEO)

For the original PC game only, not San Andreas or the Definitive Edition. Classic Axis is optional; mouse aiming was tested with it installed.

## Installation

1. Close Vice City and extract the release ZIP.
2. Copy `CLEO/KSA_VC_Quick_ID_Inspector.cs` into your game's `CLEO` folder.
3. Launch the game and load a save.

The inspector starts enabled. Install only one copy. To uninstall, close the game and remove only `KSA_VC_Quick_ID_Inspector.cs` from the `CLEO` folder. No save files need to be changed.

## Using the inspector

- Type `KSAID` during gameplay to enable or disable the display.
- Target a pedestrian with a weapon to inspect their model ID and health.
- Enter a vehicle to display its name, model ID, and health.

Pedestrian inspection supports native lock-on targeting and a crosshair ray for mouse aiming, including Classic Axis. Replacement vehicles keep their original model IDs and names. Vehicles outside the original model range use the label `CUSTOM VEHICLE`.

## Building from source

The editable source is in `src/KSA_VC_Quick_ID_Inspector.txt`.

Open it in Sanny Builder 4.2 or newer, select **GTA VC (SBL)**, and compile. Alternatively, run `build.ps1` with the path to your Sanny Builder executable. Copy the resulting `KSA_VC_Quick_ID_Inspector.cs` into the modded game's `CLEO` folder, then restart the game.

## Author and Community

- Author: **KSAGlory**
- Community: [discord.gg/ksahub](https://discord.gg/ksahub)

## License

This project is available under the [MIT License](LICENSE).

Copyright © 2026 KSAGlory
