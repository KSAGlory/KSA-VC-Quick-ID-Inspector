# Manual gameplay checks

Build: 0.1.0. All checks below are pending.

Use Vice City 1.0 with VC.CLEO 2.2.0. Keep one copy of the inspector in the game's CLEO folder.

1. Load a save. Check that the startup message appears near the upper left, with pastel text and no background box.
2. Type `KSAID` twice. Check that the centered DISABLED and ENABLED notices appear and that the overlay stops and resumes.
3. Enter a vehicle. Compare its model ID with `data/default.ide`, and check its name and health. Exit and confirm that vehicle information disappears.
4. Aim at a pedestrian with a pistol or SMG. Check that the inspector identifies the targeted pedestrian and hides when targeting stops. Repeat with Classic Axis enabled and check that a nearby untargeted pedestrian is not selected.
5. Test the existing weapon wheel, cheat menu, and NoClip. Then load the save again and repeat the toggle and vehicle checks. Note any crash or display overlap.

Report the observed behavior and the weapon, vehicle, or pedestrian involved. Loader logs can confirm script loading, but they do not confirm that the overlay renders correctly.
