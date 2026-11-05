# Tool sound requests and held episode handles

Reference original PC1.67 `/TS3W.exe`, SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
The physical Listing establishes the inputs below; stored C signatures omit
several words and have not been changed. Names/PLATEs are authored analysis.

## Shared submission path

| Entry | Physical ABI and established effect | Pair |
| --- | --- | --- |
| CEDF20 UserTool_StartKeyedSound | cdecl two key DWORDs, plain RET. Gets manager8AFE00, virtual28 allocates ID or absent manager yields0, then860880(key low,key high,ID). Returns ID. No old-handle test, position or forced loop flag | [ASM](../../evidence/native/functions/00CEDF20_UserTool_StartKeyedSound.asm) ([annotated C](../../evidence/native/functions/00CEDF20_UserTool_StartKeyedSound.c)) |
| CD04A0 BuildBuy_PlayKeyedSound | cdecl two key DWORDs, plain RET. Same allocated ID and key submission, discards ID | [ASM](../../evidence/native/functions/00CD04A0_BuildBuy_PlayKeyedSound.asm) ([annotated C](../../evidence/native/functions/00CD04A0_BuildBuy_PlayKeyedSound.c)) |
| 860880 Audio_SubmitKeyedPlayCommand | cdecl three DWORDs. Missing manager is no-op; virtual44 kind03475365, virtual50 property03475381 and two-word key, virtual4C property03475385 and ID, tailvirtual68 | [ASM](../../evidence/native/functions/00860880_Audio_SubmitKeyedPlayCommand.asm) ([annotated C](../../evidence/native/functions/00860880_Audio_SubmitKeyedPlayCommand.c)) |
| 8608E0 Audio_SubmitHandleStopCommand | cdecl handle and stop DWORD. Requires manager/nonzero handle; kind0347536B, property03475385 ID, property034753A0 supplied stop word, tailvirtual68 | [ASM](../../evidence/native/functions/008608E0_Audio_SubmitHandleStopCommand.asm) ([annotated C](../../evidence/native/functions/008608E0_Audio_SubmitHandleStopCommand.c)) |

No claim is made that command submission proves audible start/completed stop.
The backend interpretation of stop parameter0 remains unresolved. The original
managed StopSound wrapper passes(handle,0), as documented in [audio](../audio/README.md).
Do not relabel the word hard/fade using the decompiler's missing parameter.

## Actual resource producers

[Initializer data](../../evidence/native/tool-sound-key-initializers.tsv) and
the bounded existing nonfunction instruction sequences
close the source of both unchanged names. Exact sequences F8C670 and F8C9B0 each
contain six defined instructions/25bytes: push the actual string, call7D0090,
restore stack, store EAX/EDX to the two key globals, RET. The strings are
0105FF3C `ui_build_terrain_lp` and01060174 `ui_build_terrain_paint_lp`; globals
011EBF90/94 and011EC060/64 respectively. These static globals lie in `.data`
virtual zero-fill beyond raw file data, so their Ghidra initial zeros are not
runtime key values. Hash-reader semantics are not reconstructed here.

Neither initializer has a Ghidra Function. Its exact pre-existing instruction
sequence is exported as nonfunction data evidence; it is not an invented C,
owned-function pair or definition/flow-analysis change.

## Producer and consumer lifetime

[Paint click ASM](../../evidence/native/functions/00CEEC80_LotPaintTool_OnLotClick.asm) ([annotated C](../../evidence/native/functions/00CEEC80_LotPaintTool_OnLotClick.c)) tests stored17C!=0
before requesting the loop; only zero calls CEDF20 with011EC060/64 and stores EAX.
[Sculpt click ASM](../../evidence/native/functions/00D1A400_TerrainSculptTool_OnLotClick.asm) ([annotated C](../../evidence/native/functions/00D1A400_TerrainSculptTool_OnLotClick.c)) and
[water click ASM](../../evidence/native/functions/00D402E0_WaterTool_OnLotClick.asm) ([annotated C](../../evidence/native/functions/00D402E0_WaterTool_OnLotClick.c)) stamp the first episode,
update engagement/cursor, then call CEDF20 with011EBF90/94 and store16C/164.
Those two callsites lack the paint nonzero-handle gate, including the admitted
already-engaged click path. A helper-level start-once claim is therefore wrong.

[Sculpt release ASM](../../evidence/native/functions/00D19FC0_TerrainSculptTool_OnLotRelease.asm) ([annotated C](../../evidence/native/functions/00D19FC0_TerrainSculptTool_OnLotRelease.c)) performs undoable/history
work, clears engagement/reference state, then Stop(sound16C,0) if nonzero and
clears16C. [Water release ASM](../../evidence/native/functions/00D40040_WaterTool_ReleaseWithSound.asm) ([annotated C](../../evidence/native/functions/00D40040_WaterTool_ReleaseWithSound.c)) similarly processes
undoable16C, clears engagement, updates the tool, then stops sound164 and clears it.
[Paint release ASM](../../evidence/native/functions/00CEE700_LotPaintTool_ReleaseWithSound.asm) ([annotated C](../../evidence/native/functions/00CEE700_LotPaintTool_ReleaseWithSound.c)) handles undoable188,
including D24300 before submit, clears state, then stops sound17C with0. Its
redundant handle tests/clear remain in actual original instructions.

Water/paint release physically use ECX as receiver, ignore two caller stack
DWORDs, end RET8 and AL1; the stored fastcall prototypes omit that cleanup.
This sound ordering does not close their whole undoable, funding, callback,
manager teardown or brush input behavior. Native exceptions/callbacks are not
assumed equivalent to CLR finally blocks.
