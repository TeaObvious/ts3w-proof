# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec26b0 (ScriptCore.GameUtils::GameUtils_DumpMemoryReport)
Paired Ghidra pseudocode: 00EC26B0_ScriptCore_GameUtils_GameUtils_DumpMemoryReport.c
Window: [0x00ec26b0, 0x00ec26c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec26c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec26b0: e9 cb fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec26b0 <.text+0xac16b0>:
  ec26b0:	e9 cb fc ff ff                                  	jmp    0xec2380
  ec26b5:	cc                                              	int3
  ec26b6:	cc                                              	int3
  ec26b7:	cc                                              	int3
  ec26b8:	cc                                              	int3
  ec26b9:	cc                                              	int3
  ec26ba:	cc                                              	int3
  ec26bb:	cc                                              	int3
  ec26bc:	cc                                              	int3
  ec26bd:	cc                                              	int3
  ec26be:	cc                                              	int3
  ec26bf:	cc                                              	int3
