# Changelog

## Archive release — 2026-11-01

The toolbox was built in 2019. This release is a cleanup of the 2019 working file (`AL_Toolbox-2019.sbs`), with no new tools.

### Breaking: graphs built on the 2019 file need reconnecting
- Package renamed `SD_Toolbox_19.sbs`, with a new file UID.
- Graph identifiers are now `AL_<Tool>`: `AL_QuickFlood`, `AL_Dilate`, `AL_MaskSize`, `AL_MaskRandom`, `AL_CutSimple`, `AL_SharpWarp`, `AL_Fillet` (was `AL_Tool_Filet`), `AL_Tips`, `AL_MaskLazy`, `AL_Compose`, `AL_CustomCells`, `AL_Combine`, `AL_Multiply`, `AL_Transform`, `AL_LazyCurves`.
- Parameter and output identifiers are now lowercase snake_case, for example `clear_position`, `cut_angle`, `output`, `size`, `random_2`.
- Mask: Lazy: the outputs `output … output_9` are renamed after what they produce (`curvature`, `slope_x`, `slope_y`, `slope`, `slope_soft`, `edge_wear`, `ground_dirt`, `leaks`, `metal_edge_wear`, `sun_bleach`), and 9 parameters that did nothing were removed.
- Fillet: the "Angle" setting is renamed `nonuniform_samples`, because it drives the blur samples.

### Fixed
- QuickFlood: the Tileable Fix button showed "True" when it was off. Its label "QuickFlood 1" is now "QuickFlood".
- Transform: the Tile Y button showed "Tile on X". Mipmap Mode and Filtering are now dropdowns, and Mipmap Level only shows in Manual mode.
- Tips: the Invert button showed the same text in both states.
- Stale parameter values left on Showroom instances are removed.

### Changed
- Library: everything is under `SD_Toolbox_19`, split into Flood Fill, Shape, Masks and Patterns, and Blend and Utility. Every tool has a ♠ label, an icon rendered from its own demo, a description, search tags and author info.
- Every parameter and every output has a label and a description.
- Every graph is re-laid out left to right, with no overlapping nodes.
- Showroom: one titled frame per tool, with new demos for Fillet, Lazy Curves and Custom Cells. It is hidden from the library.
- Removed: the internal Workshop sandbox graph, and 4 stock-library dependencies only it used.
- `SD_Toolbox_19.sbs` is converted to the current Designer format by Designer's own `sbsupdater`, so it opens without an update prompt. The original-format file stays in `legacy/`.
- `docs/` holds the social preview image (2000s / XP-era style), the demo cards and the icons. `tools/` holds `update_format.cmd`, `validate.cmd` and `render_demo.cmd`.
