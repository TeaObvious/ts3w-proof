# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743a30 (ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedLogoSuffix)
Paired Ghidra pseudocode: 00743A30_ScriptCore_LocalizedStringService_LocalizedStringService_GetLocalizedLogoSuffix.c
Window: [0x00743a30, 0x00743a40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743a30: e9 cb 98 e5 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743a30 <.text+0x342a30>:
  743a30:	e9 cb 98 e5 ff                                  	jmp    0x59d300
  743a35:	cc                                              	int3
  743a36:	cc                                              	int3
  743a37:	cc                                              	int3
  743a38:	cc                                              	int3
  743a39:	cc                                              	int3
  743a3a:	cc                                              	int3
  743a3b:	cc                                              	int3
  743a3c:	cc                                              	int3
  743a3d:	cc                                              	int3
  743a3e:	cc                                              	int3
  743a3f:	cc                                              	int3
