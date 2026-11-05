# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743a10 (ScriptCore.LocalizedStringService::LocalizedStringService_ChangeLocale)
Paired Ghidra pseudocode: 00743A10_ScriptCore_LocalizedStringService_LocalizedStringService_ChangeLocale.c
Window: [0x00743a10, 0x00743a20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743a20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743a10: e9 fb 97 e5 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743a10 <.text+0x342a10>:
  743a10:	e9 fb 97 e5 ff                                  	jmp    0x59d210
  743a15:	cc                                              	int3
  743a16:	cc                                              	int3
  743a17:	cc                                              	int3
  743a18:	cc                                              	int3
  743a19:	cc                                              	int3
  743a1a:	cc                                              	int3
  743a1b:	cc                                              	int3
  743a1c:	cc                                              	int3
  743a1d:	cc                                              	int3
  743a1e:	cc                                              	int3
  743a1f:	cc                                              	int3
