# Object-video selected original data

Original PC1.67 little-endian data. Binary identity is centralized in the reference README. These bounded initial values are static evidence; no runtime/format/decoder behavior follows from them.

| VA | Length | Initial bytes | Classification and interpretation |
|---|---:|---|---|
| `01052BFC` | 19 | `566964656F2F426C61636B5465787475726500` | file-backed; Video/BlackTexture NUL. |
| `01052D30` | 14 | `566964656F2F4D65737361676500` | file-backed; Video/Message NUL. |
| `00FFAFE0` | 23 | `52656E64657265722F566964656F46697875704C4F4400` | file-backed; Renderer/VideoFixupLOD NUL. |
| `00FFAF2C` | 8 | `95B18302A673D60B` | file-backed; opaque model virtual+80 identifier. |
| `00FAB220` | 4 | `FFFF7F7F` | file-backed; float max bits. |
| `01052C10` | 38 | `56006900640065006F005600690072007400750061006C004C0065006E006700740068000000` | file-backed; VideoVirtualLength UTF16 NUL. |
| `01052C38` | 38 | `56006900640065006F0050006100750073006500440069007300740061006E00630065000000` | file-backed; VideoPauseDistance UTF16 NUL. |
| `00FFCCA4` | 16 | `44656661756C74546578747572657300` | file-backed; DefaultTextures NUL. |
| `011EA998` | 8 | `0000000000000000` | mapped zero-fill; PE zero-fill initial manager/texture words; not file-backed/runtime values. |
| `01052CB8` | 4 | `40659D00` | file-backed; constant data pointer to009D6540. |
| `01052CC4` | 4 | `807D9D00` | file-backed; constant data pointer to009D7D80. |

The eight bytes at011EA998/011EA99C are mapped zero-fill in the .data virtual tail, **not stored PE file bytes** and not observed runtime pointer values. The other168bytes are file-backed.009D6540 is the admitted producer of the manager/resource words. The additional unselected009D77A2 writer remains a research lead. The eight-byte identifier remains opaque; the max-float bits establish the comparison constant, not a high-level timer policy.
