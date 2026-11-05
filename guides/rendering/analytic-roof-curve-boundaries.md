# PC 1.67 analytic-roof and Pagoda-curve boundaries

## Reference and scope

Reference: shipped PC 1.67 `TS3W.exe`, SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
The explicit Ghidra program was `/TS3W.exe`. Read-only pseudocode, disassembly and
function-owned byte-hash receipts were collected on 2026-11-03; no program edits,
imports, exports or saves were performed. This guide is an independently written
behavior summary, not original source or a decompilation.

The complete curve/parser/load bodies and selected caller, numeric and stream
sections of the much larger roof builders were reviewed. Full builder equivalence,
all meshes, original execution and rendered-pixel identity are not established.

## Verified original relationships

| Responsibility | Verified PC 1.67 relationship | Boundary |
| --- | --- | --- |
| Conical roof | BE63B0 prepares radius, slope, terrain-based base height and center, then invokes BD5940. Segment admission includes a minimum48 and a circumference-derived ceiling. | Selected no-snow arithmetic and stream sections only; native snow branches exist. |
| Octagonal roof | BE6510 prepares base/center/apothem/side and BF39D0 height, then invokes BD6C30. BF39D0 multiplies apothem, slope and binary32 1.4. | Exact JIT/SIMD/x87 equality to another implementation is not implied. |
| Pagoda octagonal roof | BE65E0 prepares corresponding input and invokes BD89A0. Selected body sections organize24 normals and distinct upper/underside streams. | The height query is a virtual call through type slot +2C; the concrete target is not resolved here. +58 supplies the following base query. |
| Native index domains | Selected submission paths in all three builders call 6D4890, 6D46F0 and 6D47B0 for separate position, normal and texture-index submission. | This is not proof of packed host GPU vertex layout. |
| Constants/normalization | Selected instructions and original PE constants establish .42f,1.4f,.1f,.025f,.25f,−.0875f,binary32 twoPi and double1e−10 at the inspected uses. Octagonal normalization uses RSQRTPS followed by two Newton refinements. | No blanket floating-point or all-branch identity. |
| Resource lookup | 7D0370 resolves the name Roofs.ini with type1F886EAD and group0, obtains a resource/stream and releases it after parsing. | The complete native name-hash callee is not established by this selected path. |
| Load lifetime | B988E0 attempts loading while not loaded or when forced; failed resource open leaves the loaded flag clear. After successful open it calls B97750, ignores that return and marks loaded. | A caller that permanently caches a missing resource has a different retry boundary. |
| Curve families | B97750 loads ten sections including octagonal corner and center, then returns failure for missing or unequal paired lists. B975F0 discards an entry whose parser fails. | Because B988E0 ignores that validation return, do not claim unsuccessful validation rejects the whole successfully opened load. |
| Curve text | 7CC940 splits point text, requires the opening parenthesis and exactly two coordinates, converts both through 4FFD50 and rejects the curve on malformed pieces. | 4FFD50 uses an indexed character-class table and x87 decimal/exponent arithmetic; another parser's double arithmetic and whitespace policy are not proven equivalent. |
| Segment build | 7CC7C0 uses the previous input point, initially −FLT_MAX/currentY. It compares the wide rise against double1e−10 while separately saving binary32 rise; slope division uses the saved rise and binary32 run. A nonempty input can yield no accepted segment. | Do not substitute previous accepted point or infer a finite/sorted/unique-input validator. |
| Evaluation | 7CC500 searches segment endpoints, clamps finite endpoint cases and otherwise linearly evaluates. With NaN and at least two segments, unordered search comparisons advance to the final segment; its COMISS/JC path evaluates the line and produces NaN. | A final `!(t < lastX)` guard instead returns final Y for NaN and is a concrete edge divergence. |

## Exact unresolved and non-equivalent cases

The inspected BD89A0 height sites include BD90FE/BD916A and BD9667/BD96C8
(vtable+2C load/call), followed by the base call at BD9177; ridge BDA3D3/BDA402
also uses +2C before the .025 lift. These establish the slot and caller role,
not its concrete implementation. The attempted BF5D50 query returned Function
not found; it must not be cited as a verified body. No additional target query
is necessary to state this bounded contract.

Comparisons must preserve these two native boundaries separately: unsuccessful
resource opening remains retryable, while a successful open marks loaded even
when family validation reports failure; a NaN parameter in the inspected
multi-segment evaluation path reaches arithmetic rather than an endpoint clamp.
These facts do not establish all finite-input, snow, parser, resource-provider,
mesh or floating-point paths.
