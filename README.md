![SD Toolbox 19: 15 grayscale nodes for Substance Designer](docs/social_preview.png)

# SD Toolbox 19

[![Substance Designer 2019 to 2023+](https://img.shields.io/badge/Substance%20Designer-2019%20to%202023%2B-0054e3)](#install)
[![License: MIT](https://img.shields.io/badge/license-MIT-3a8f3a)](LICENSE)
[![Status: archive](https://img.shields.io/badge/status-archive%20(2019)-ece9d8)](CHANGELOG.md)
[![Download](https://img.shields.io/badge/download-archive--2026-0054e3)](https://github.com/mapmodelers/SD_Toolbox_19/releases/tag/archive-2026)
[![Website](https://img.shields.io/badge/website-mapmodelers.github.io-3a8f3a)](https://mapmodelers.github.io/SD_Toolbox_19/)
[![Gumroad](https://img.shields.io/badge/gumroad-pay%20what%20you%20want-ff90e8)](https://mapmodelers.gumroad.com/l/sd-toolbox-19)

A free **Substance 3D Designer node library** (`.sbs`) of 15 grayscale utility nodes for procedural texturing: **flood fill** shortcuts, **shape cutting**, **mask generators** (curvature, slope, edge wear, dirt, leaks), and **blend** and transform helpers. Built in **2019**, published in 2026 as an **archive**: cleaned up and documented, not maintained.

It uses only the stock library, with no bitmaps. Every node has a library icon, a description and documented parameters.

| File | For |
|---|---|
| [`SD_Toolbox_19.sbs`](https://github.com/mapmodelers/SD_Toolbox_19/releases/download/archive-2026/SD_Toolbox_19.sbs) | Substance 3D Designer 2023 and later |
| [`SD_Toolbox_19_SD2019.sbs`](https://github.com/mapmodelers/SD_Toolbox_19/releases/download/archive-2026/SD_Toolbox_19_SD2019.sbs) | Substance Designer 2019 to 2022 (original 2019 format) |

## Install

1. Download the file for your Designer version (links above, or from the [release](https://github.com/mapmodelers/SD_Toolbox_19/releases/tag/archive-2026)).
2. **Edit › Preferences › Projects › Library**: add its folder (not recursive). The tools appear under **SD_Toolbox_19**, with ♠ in front of their names.
3. Open the package to see **♠ SD Toolbox 19 Showroom**, one demo of each tool.

## Tools: 15 Substance Designer nodes

| | Tool | Does |
|---|---|---|
| | **Flood Fill** | |
| <img src="docs/icons/QuickFlood.png" width="40" alt="QuickFlood: Substance Designer flood fill node icon"> | **QuickFlood** | Flood fill in one node: Size, Gradient and 2 Random maps, gaps filled |
| <img src="docs/icons/Dilate.png" width="40" alt="Dilate: Substance Designer dilate / fill gaps node icon"> | **Dilate** | Grows each shape's value into the black gaps around it |
| <img src="docs/icons/MaskSize.png" width="40" alt="MaskSize: Substance Designer size mask node icon"> | **Mask: Size** | Keeps the largest or smallest shapes |
| <img src="docs/icons/MaskRandom.png" width="40" alt="MaskRandom: Substance Designer random mask node icon"> | **Mask: Random** | Keeps a random share of the shapes |
| | **Shape** | |
| <img src="docs/icons/Cut_Simple.png" width="40" alt="Cut_Simple: Substance Designer shape cut node icon"> | **Cut Simple** | Cuts every shape along a random line |
| <img src="docs/icons/SharpWarp.png" width="40" alt="SharpWarp: Substance Designer edge chipping warp node icon"> | **Sharp Warp** | Chips straight edges into sharp breaks |
| <img src="docs/icons/Fillet.png" width="40" alt="Fillet: Substance Designer round corners node icon"> | **Fillet** | Rounds the shapes' corners |
| <img src="docs/icons/Tips.png" width="40" alt="Tips: Substance Designer shape tips mask node icon"> | **Tips** | Isolates the inner and/or outer tips of the shapes |
| | **Masks and Patterns** | |
| <img src="docs/icons/LazyMasks.png" width="40" alt="LazyMasks: Substance Designer curvature, slope and edge wear masks node icon"> | **Mask: Lazy** | 10 masks from a height map: curvature, slopes, wear, dirt, leaks, sun bleach |
| <img src="docs/icons/Blend_Compose.png" width="40" alt="Blend_Compose: Substance Designer pattern compose node icon"> | **Compose** | Keeps a pattern only inside large enough shapes |
| <img src="docs/icons/CustomCells.png" width="40" alt="CustomCells: Substance Designer bevelled cells node icon"> | **Custom Cells** | Turns a shape pattern into bevelled cells |
| | **Blend and Utility** | |
| <img src="docs/icons/Blend_Add.png" width="40" alt="Blend_Add: Substance Designer add / subtract blend node icon"> | **Combine** | Add / subtract through a mask |
| <img src="docs/icons/Blend_Multiply.png" width="40" alt="Blend_Multiply: Substance Designer multiply blend node icon"> | **Multiply** | Multiply through a mask |
| <img src="docs/icons/Transform_TileMode.png" width="40" alt="Transform_TileMode: Substance Designer tiling transform node icon"> | **Transform** | Transform 2D with tile X / Y / both toggles |
| <img src="docs/icons/LazyCurves.png" width="40" alt="LazyCurves: Substance Designer contrast curves node icon"> | **Lazy Curves** | 9 preset contrast curves |

Most flood-fill tools start with a **Clear Input** step (a Histogram Scan, Position / Contrast) that turns a soft mask into clean shapes. Every parameter and output has a description in Designer.

<details>
<summary><b>Demo of each tool</b> (Showroom, rendered at 2048 px)</summary>

![QuickFlood: Substance Designer flood fill node, input and output](docs/cards/QuickFlood.png)
![Dilate: Substance Designer dilate / fill gaps node, input and output](docs/cards/Dilate.png)
![Mask: Size: Substance Designer size mask node, input and output](docs/cards/MaskSize.png)
![Mask: Random: Substance Designer random mask node, input and output](docs/cards/MaskRandom.png)
![Cut Simple: Substance Designer shape cut node, input and output](docs/cards/Cut_Simple.png)
![Sharp Warp: Substance Designer edge chipping warp node, input and output](docs/cards/SharpWarp.png)
![Fillet: Substance Designer round corners node, input and output](docs/cards/Fillet.png)
![Tips: Substance Designer shape tips mask node, input and output](docs/cards/Tips.png)
![Mask: Lazy: Substance Designer curvature, slope and edge wear masks node, input and output](docs/cards/LazyMasks.png)
![Compose: Substance Designer pattern compose node, input and output](docs/cards/Blend_Compose.png)
![Custom Cells: Substance Designer bevelled cells node, input and output](docs/cards/CustomCells.png)
![Combine: Substance Designer add / subtract blend node, input and output](docs/cards/Blend_Add.png)
![Multiply: Substance Designer multiply blend node, input and output](docs/cards/Blend_Multiply.png)
![Transform: Substance Designer tiling transform node, input and output](docs/cards/Transform_TileMode.png)
![Lazy Curves: Substance Designer contrast curves node, input and output](docs/cards/LazyCurves.png)

</details>

---

[Changelog](CHANGELOG.md) · MIT [License](LICENSE) · Adrien Lelièvre, [ArtStation](https://www.artstation.com/adrienlelievre) · `tools/` holds the build scripts (format update, compile check, demo renders)

<sub>Keywords: Substance Designer, Substance 3D Designer, Adobe Substance, SBS node library, procedural textures, procedural materials, flood fill, curvature mask, slope mask, edge wear, texture tools, game art, technical art.</sub>
