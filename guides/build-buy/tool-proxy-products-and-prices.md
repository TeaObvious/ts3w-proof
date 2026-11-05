# Tool proxy products, bank selection and price rounding

Reference: shipped original PC1.67 TS3W.exe. Names describe analyst-established
responsibilities. Full owned instructions, actual callers and saved decompiler
annotations establish the selected wire, retained map and numeric operations.

## Canonical functions

| Responsibility | Original ASM (actual annotated Ghidra C) |
| --- | --- |
| Resource factory dispatch | [0x00c8cd90](../../evidence/native/functions/00C8CD90_CatalogProductFactory_CreateByResourceType.asm) ([pseudocode](../../evidence/native/functions/00C8CD90_CatalogProductFactory_CreateByResourceType.c)) |
| Proxy constructor | [0x00c9b190](../../evidence/native/functions/00C9B190_ToolProxyProduct_Construct.asm) ([pseudocode](../../evidence/native/functions/00C9B190_ToolProxyProduct_Construct.c)) |
| Proxy wire reader | [0x00c9b100](../../evidence/native/functions/00C9B100_ToolProxyProduct_Read.asm) ([pseudocode](../../evidence/native/functions/00C9B100_ToolProxyProduct_Read.c)) |
| Shared Common reader | [0x00c93100](../../evidence/native/functions/00C93100_CatalogProduct_ReadCommonFields.asm) ([pseudocode](../../evidence/native/functions/00C93100_CatalogProduct_ReadCommonFields.c)) |
| Proxy interface query | [0x00c9b0e0](../../evidence/native/functions/00C9B0E0_ToolProxyProduct_QueryInterface.asm) ([pseudocode](../../evidence/native/functions/00C9B0E0_ToolProxyProduct_QueryInterface.c)) |
| Generic catalog interfaces | [0x00c92fe0](../../evidence/native/functions/00C92FE0_CatalogProduct_QueryBaseInterface.asm) ([pseudocode](../../evidence/native/functions/00C92FE0_CatalogProduct_QueryBaseInterface.c)) |
| Reload proxy bank | [0x00c92c40](../../evidence/native/functions/00C92C40_CatalogToolProxies_Reload.asm) ([pseudocode](../../evidence/native/functions/00C92C40_CatalogToolProxies_Reload.c)) |
| Release retained map pairs | [0x00c8d5d0](../../evidence/native/functions/00C8D5D0_CatalogProductMap_ClearRetainedPairs.asm) ([pseudocode](../../evidence/native/functions/00C8D5D0_CatalogProductMap_ClearRetainedPairs.c)) |
| Sorted map product slot | [0x00c917a0](../../evidence/native/functions/00C917A0_CatalogProductMap_GetOrInsertSlot.asm) ([pseudocode](../../evidence/native/functions/00C917A0_CatalogProductMap_GetOrInsertSlot.c)) |
| Exact tool ID lookup | [0x00c8f2d0](../../evidence/native/functions/00C8F2D0_CatalogToolProxies_FindByToolType.asm) ([pseudocode](../../evidence/native/functions/00C8F2D0_CatalogToolProxies_FindByToolType.c)) |
| Rectangle level tool press | [0x00cec0d0](../../evidence/native/functions/00CEC0D0_ToolFloorLevel_OnPress.asm) ([pseudocode](../../evidence/native/functions/00CEC0D0_ToolFloorLevel_OnPress.c)) |
| Flatten-lot press | [0x00ce3c20](../../evidence/native/functions/00CE3C20_ToolFlattenLot_OnPress.asm) ([pseudocode](../../evidence/native/functions/00CE3C20_ToolFlattenLot_OnPress.c)) |
| Physical price forwarder | [0x00d1a900](../../evidence/native/functions/00D1A900_CatalogPrice_ForwardDisplayPrice.asm) ([pseudocode](../../evidence/native/functions/00D1A900_CatalogPrice_ForwardDisplayPrice.c)) |
| Display price equation | [0x00cef6b0](../../evidence/native/functions/00CEF6B0_CatalogProduct_ComputeDisplayPrice.asm) ([pseudocode](../../evidence/native/functions/00CEF6B0_CatalogProduct_ComputeDisplayPrice.c)) |

## Product and wire

Resource04AC5D93 selects a90hex-byte product; C9B190 constructs Common, selects
vtable107D390 and initializes DWORD88=0. C9B100 consumes an outer DWORD version
without comparing/storing it, calls the shared Common reader and reads a full
DWORD tool identifier at88. It does not require EOF or restrict the ID to known
tools. Shared Common price is raw binary32 at product58. Reader is thiscall ECX
product plus one stream stack word, RET4, low-AL status. Complete corrupt Common
status propagation is separate from the selected outer-prefix/suffix evidence.

The product exposes interface04AC5D9E through its25-byte C9B0E0 body (following
7CC bytes are padding). Other IDs tail-jump C92FE0. Generic accepted IDs are
B14A3B07,02269ED1,EB54B802,EE3F516E. The fractional build-price interface04ED4893
is absent. Constructor vtable20 points to shared513D50 MOV AL,1/RET, establishing
Build classification without making this compiler-shared leaf tool-specific:
[shared constant return](../../evidence/native/functions/00513D50_ScriptCore_GameUtils_GameUtils_AddOrConfigureProfiler.asm) ([pseudocode](../../evidence/native/functions/00513D50_ScriptCore_GameUtils_GameUtils_AddOrConfigureProfiler.c)).
The unrelated registration alias at that address must not be mistaken for a
profiler operation performed by the product.

## Bank producer, replacement and lookup

C92C40 receives ECX catalog and no stacked argument. It clears the retained
unsigned-key/product pairs at188..18C, enumerates04AC5D93 and loads each exact
resource. Successful04AC5D9E query gives a product whose88 is the map key.
C917A0 finds/inserts its sorted eight-byte pair and returns the pointer slot;
C92C40 retains the new product before replacing/releasing an older different
product. Each temporary resource is released. Duplicate tool IDs are therefore
LAST successful entry wins in resource enumeration order, not first wins.
Failed load/interface does not replace a prior successful entry.

C8D5D0 releases nonnull row+4 pointers in eight-byte steps and resets end to
begin. C8F2D0 performs unsigned exact-key lookup and returns borrowed product or0,
with RET4. Native retained-pointer identity and map rebuild lifetime are distinct
from immutable managed projections and resource-precedence services.

C92C40 indirect-call ABI is physical: enumeration virtual20 takes ECX manager
plus three stacked words; load virtual0C takes ECX manager plus six words and
returns statusAL; product query virtual0C takes ECX product plus one word. Local
saved call-site prototypes preserve these callee cleanups and complete map
replacement blocks in the actual C. No unreachable-block omission is evidence
that the original skipped replacement.

## Actual tools and price branch

CEC0D0 selects tool1 and stores float unit cost attool6C; CE3C20 selects tool2
and stores attool34. Both physically call D1A900, exactly a five-byte JMP to
CEF6B0, then FSTP binary32. Each press is ECX tool plus one forwarded DWORD,
RET4 with low-AL success. Flag1C explicitly sets cost0; missing catalog/proxy
leaves the previous field unchanged. The remaining undo, sea-height, funds and
terrain actions are retained in the full bodies but are not unit-price rules.

CEF6B0 is cdecl ONE product pointer at stack+4; result is x87 ST0 (80-bit register),
not a hidden result-buffer argument. Explicit saved storage is necessary when
Ghidra's default float10 model would otherwise lower it as an aggregate return.
Null product returns0; absent host returns raw float58. For an actual proxy,
vtable20 true and absence of04ED4893 select the rounded Build branch:

1. MULSS multiplies raw price by host build scale16C; result is stored binary32.
2. FLD/FADD adds exact0.5 in x87, then FSTP writes the double argument for floor.
3. Imported floor returns its result in x87; the actual tools store binary32.

Other build products can expose04ED4893 and bypass rounding. Buy/electronics
scales170/174 are separate branches. No household depreciation or terrain-volume
charge is performed by this scalar display-price operation. A Float32 half-add
before floor is not the original equation.

| Proxy price | Build scale | Stored Float32 result |
| --- | --- | --- |
| 1 | bits3EFFFFFF (0.4999999701976776) |0; premature Float32 half-add instead gives1 |
|16777215 |1 |16777215; premature Float32 half-add instead gives16777216 |
| Already-scaled-1.5 | n/a |-1 from floor(-1.5+0.5) |

These are instruction-derived expectations, not original-process measurements.
No FP status/trap or exact NaN payload equivalence is inferred. Complete resource
manager ordering/reload, malformed Common failure and full tool interaction
transactions remain their own reference boundaries.

The [CWAL field guide](../construction/wall-floor-and-terrain-brush-fields.md#cwal-query-real-edit-prices-and-retained-wall-design-commands) now joins the actual CWAL constructor/query/true-slot to this rounded branch, floor/wall price leaves and retained edit costs; it distinguishes display rounding from final charges and native special-case/ref lifetimes.
