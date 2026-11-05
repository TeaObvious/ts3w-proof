# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1760 (ScriptCore.GameUtils::GameUtils_GetProductFlags)
Paired Ghidra pseudocode: 00EC1760_ScriptCore_GameUtils_GameUtils_GetProductFlags.c
Window: [0x00ec1760, 0x00ec1770) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1760: b9 e0 ed 1c 01 e9 56 49 67 ff cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1760 <.text+0xac0760>:
  ec1760:	b9 e0 ed 1c 01                                  	mov    ecx,0x11cede0
  ec1765:	e9 56 49 67 ff                                  	jmp    0x5360c0
  ec176a:	cc                                              	int3
  ec176b:	cc                                              	int3
  ec176c:	cc                                              	int3
  ec176d:	cc                                              	int3
  ec176e:	cc                                              	int3
  ec176f:	cc                                              	int3
