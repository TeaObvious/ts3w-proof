# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec10e0 (ScriptCore.GameUtils::GameUtils_IsPreExistingInstallation)
Paired Ghidra pseudocode: 00EC10E0_ScriptCore_GameUtils_GameUtils_IsPreExistingInstallation.c
Window: [0x00ec10e0, 0x00ec10f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec10f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec10e0: e9 cb 82 8c ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec10e0 <.text+0xac00e0>:
  ec10e0:	e9 cb 82 8c ff                                  	jmp    0x7893b0
  ec10e5:	cc                                              	int3
  ec10e6:	cc                                              	int3
  ec10e7:	cc                                              	int3
  ec10e8:	cc                                              	int3
  ec10e9:	cc                                              	int3
  ec10ea:	cc                                              	int3
  ec10eb:	cc                                              	int3
  ec10ec:	cc                                              	int3
  ec10ed:	cc                                              	int3
  ec10ee:	cc                                              	int3
  ec10ef:	cc                                              	int3
