# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743a20 (ScriptCore.LocalizedStringService::LocalizedStringService_GetLocale)
Paired Ghidra pseudocode: 00743A20_ScriptCore_LocalizedStringService_LocalizedStringService_GetLocale.c
Window: [0x00743a20, 0x00743a30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743a20: e9 0b 98 e5 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743a20 <.text+0x342a20>:
  743a20:	e9 0b 98 e5 ff                                  	jmp    0x59d230
  743a25:	cc                                              	int3
  743a26:	cc                                              	int3
  743a27:	cc                                              	int3
  743a28:	cc                                              	int3
  743a29:	cc                                              	int3
  743a2a:	cc                                              	int3
  743a2b:	cc                                              	int3
  743a2c:	cc                                              	int3
  743a2d:	cc                                              	int3
  743a2e:	cc                                              	int3
  743a2f:	cc                                              	int3
