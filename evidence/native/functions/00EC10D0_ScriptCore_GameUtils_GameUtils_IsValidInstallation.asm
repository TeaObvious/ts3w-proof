# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec10d0 (ScriptCore.GameUtils::GameUtils_IsValidInstallation)
Paired Ghidra pseudocode: 00EC10D0_ScriptCore_GameUtils_GameUtils_IsValidInstallation.c
Window: [0x00ec10d0, 0x00ec10e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec10e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec10d0: e9 db 81 6c ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec10d0 <.text+0xac00d0>:
  ec10d0:	e9 db 81 6c ff                                  	jmp    0x5892b0
  ec10d5:	cc                                              	int3
  ec10d6:	cc                                              	int3
  ec10d7:	cc                                              	int3
  ec10d8:	cc                                              	int3
  ec10d9:	cc                                              	int3
  ec10da:	cc                                              	int3
  ec10db:	cc                                              	int3
  ec10dc:	cc                                              	int3
  ec10dd:	cc                                              	int3
  ec10de:	cc                                              	int3
  ec10df:	cc                                              	int3
