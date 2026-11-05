# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec26a0 (ScriptCore.GameUtils::GameUtils_DumpProfilerReport)
Paired Ghidra pseudocode: 00EC26A0_ScriptCore_GameUtils_GameUtils_DumpProfilerReport.c
Window: [0x00ec26a0, 0x00ec26b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec26b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec26a0: e9 bb fb ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec26a0 <.text+0xac16a0>:
  ec26a0:	e9 bb fb ff ff                                  	jmp    0xec2260
  ec26a5:	cc                                              	int3
  ec26a6:	cc                                              	int3
  ec26a7:	cc                                              	int3
  ec26a8:	cc                                              	int3
  ec26a9:	cc                                              	int3
  ec26aa:	cc                                              	int3
  ec26ab:	cc                                              	int3
  ec26ac:	cc                                              	int3
  ec26ad:	cc                                              	int3
  ec26ae:	cc                                              	int3
  ec26af:	cc                                              	int3
