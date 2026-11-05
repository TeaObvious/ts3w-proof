# Fence finish resources and preset identity

Original shipped PC1.67 TS3W.exe; analyst names are descriptive. Static selected
instruction/ABI evidence, not a native render or runtime style test.

## Complete canonical original pairs

| Address | Role | Complete original instructions and actual annotated Ghidra C |
| --- | --- | --- |
| 00d46d80 | WallPlacementHelper_InstallFinishKeys | [ASM](../../evidence/native/functions/00D46D80_WallPlacementHelper_InstallFinishKeys.asm) ([C](../../evidence/native/functions/00D46D80_WallPlacementHelper_InstallFinishKeys.c)) |
| 00d45ff0 | WallPlacementHelper_BuildFencePreset | [ASM](../../evidence/native/functions/00D45FF0_WallPlacementHelper_BuildFencePreset.asm) ([C](../../evidence/native/functions/00D45FF0_WallPlacementHelper_BuildFencePreset.c)) |
| 00b51ac0 | PartitionManager_InstallWallFinish | [ASM](../../evidence/native/functions/00B51AC0_PartitionManager_InstallWallFinish.asm) ([C](../../evidence/native/functions/00B51AC0_PartitionManager_InstallWallFinish.c)) |
| 00c94ac0 | FenceProduct_CountPresetRows | [ASM](../../evidence/native/functions/00C94AC0_FenceProduct_CountPresetRows.asm) ([C](../../evidence/native/functions/00C94AC0_FenceProduct_CountPresetRows.c)) |
| 00a63b20 | FencePreset_BuildForProductKey | [ASM](../../evidence/native/functions/00A63B20_FencePreset_BuildForProductKey.asm) ([C](../../evidence/native/functions/00A63B20_FencePreset_BuildForProductKey.c)) |
| 00a62a60 | FencePreset_BuildFinishPrograms | [ASM](../../evidence/native/functions/00A62A60_FencePreset_BuildFinishPrograms.asm) ([C](../../evidence/native/functions/00A62A60_FencePreset_BuildFinishPrograms.c)) |
| 00d3abc0 | WallTool_InitializePlacementFinish | [ASM](../../evidence/native/functions/00D3ABC0_WallTool_InitializePlacementFinish.asm) ([C](../../evidence/native/functions/00D3ABC0_WallTool_InitializePlacementFinish.c)) |
| 00c94780 | FenceProduct_ResolvePresetId | [ASM](../../evidence/native/functions/00C94780_FenceProduct_ResolvePresetId.asm) ([C](../../evidence/native/functions/00C94780_FenceProduct_ResolvePresetId.c)) |
| 00c94670 | FenceProduct_AcquirePresetByOrdinal | [ASM](../../evidence/native/functions/00C94670_FenceProduct_AcquirePresetByOrdinal.asm) ([C](../../evidence/native/functions/00C94670_FenceProduct_AcquirePresetByOrdinal.c)) |
| 00c94510 | FenceProduct_FirstAuthoredPresetId | [ASM](../../evidence/native/functions/00C94510_FenceProduct_FirstAuthoredPresetId.asm) ([C](../../evidence/native/functions/00C94510_FenceProduct_FirstAuthoredPresetId.c)) |

## A full ID is not an ordinal

The product owns authored8-byte rows at164..168: preset pointer and UInt32 ID.
C94510 returns the first row's full ID orFFFFFFFF for an empty authored vector.
D3ABC0 tests type lanes of incoming diffuse/specular/design keys. When all three
are0, its actual D3AEBD..C6 path gets the product's first authored ID through
C94510 and supplies that value to helperD45FF0. It does not pass fixed ordinal0.
Otherwise it installs the explicit three keys throughD46D80.

D45FF0 looks up a fence product with allowDefault1. A nonnull product and positive
C94AC0 combined count gate A63B20 with lot,product key,full ID,output bundle.
A63B20 looks up the product and forwards toA62A60. That function validates inputs,
resolves the full ID throughC94780, acquires the resulting ordinal throughC94670,
then reaches complate validation and native program building.

C94780 tests00800000, bit23—not the sign bit. Clear searches authored row IDs
and returns the first equal index. Set selects kind4 in the global product preset
collection and returns authoredCount+customOrdinal. Missing givesFFFFFFFF.
C94AC0 returns authoredCount plus that collection's kind4 count, acquiring and
releasing the collection without creating it. C94670 returns/acquires authored
pointers for authored ordinals; otherwise it fetches custom XML by ordinal,
constructs/parses an ObjectPreset and transfers its reference on success.

Thus a host CFEN-only authored list is a bounded data provider, not the complete
original preset bank. First-authored fallback and combined authored/custom query
are distinct operations. No raw ID truncation or ID-as-index fallback is valid.

## Independent resource lanes

D46D80 is thiscall with three key pointers, RET0C, void. It copies full16-byte
keys: diffuse to helper38..44, specular48..54, saved design COMP28..34.
It resolves the design through the resource broker/interface05DE1935 and replaces
retained helper+10 with acquire/store/release ordering. COMP is a saved design,
not a third texture. These copies alone do not establish a CLR weak cache or a
managed material readiness/ownership protocol.

A62A60 reaches ComplateNative_BuildPrograms and walks retained built streams.
The per-stream role distinguishes diffuse and specular; type0341ACC9 is excluded
from those lanes. Its generated044AE110 saved design key is distinct from the
texture/program keys. B51AC0 consumes separate side resource keys/maps and has
its pure-fence second-side suppression gate. Exact partition and post selection
remain separate from resource intake and material readiness.

## Decompiler limitations and ABI boundaries

- C94510/C94AC0 use ECX product, no stack words and full EAX ID/count.
- C94780 is thiscall one full-ID word, RET4, full EAX ordinal/FFFFFFFF.
- C94670 is thiscall ordinal/output pointer, RET8; only AL is Boolean.
- D45FF0 is thiscall product-key pointer/full-ID word, RET8, void.
- A63B20 physically receives four cdecl stack words; its child AL does not by
  itself establish a reliable full-EAX status API for this wrapper.
- D46D80's current C has output-alias/indirect-call propagation artifacts: an
  apparently always-null temporary is not proof its resource lookup never succeeds.
- A62A60's genuine C still has unaff_retaddr/unaff_EBP and shifted local key stores.
  Those are unresolved indirect-call stack artifacts. Do not port or present
  those malformed expressions as a verified output structure. The complete
  instructions govern the selected builder/role/identity facts.
- B51AC0's mixed WallLocator argument and repeated flag aliases require Listing
  verification before a broader partition port. No homogeneous float-vector ABI
  or complete tallest-post parity is inferred here.

## Host comparison scope

Original product lookup/default policy and retained preset collections are not
the host's exact package/mount/timestamp cache. The native functions do not prove
its cache key,1024-entry clear, CWT/GC lifetime, prepared-reference fingerprint or
Vulkan texture adapter ordering. Those are host ownership mechanisms to specify
separately. Full CFEN wire parsing, all custom collection producers and exact
material/renderer equivalence are outside this bounded comparison.

All original envelopes, gaps and bytes are checked against the same executable;
annotations are inside actual C and Ghidra metadata was saved clean. No original
bytes were changed. No compiler, fixture, custom-preset runtime or GPU test is
claimed.
