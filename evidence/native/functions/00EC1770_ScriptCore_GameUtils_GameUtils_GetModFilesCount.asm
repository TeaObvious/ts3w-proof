# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1770 (ScriptCore.GameUtils::GameUtils_GetModFilesCount)
Paired Ghidra pseudocode: 00EC1770_ScriptCore_GameUtils_GameUtils_GetModFilesCount.c
Window: [0x00ec1770, 0x00ec1780) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1770: b9 e0 ed 1c 01 e9 b6 3f 6d ff cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1770 <.text+0xac0770>:
  ec1770:	b9 e0 ed 1c 01                                  	mov    ecx,0x11cede0
  ec1775:	e9 b6 3f 6d ff                                  	jmp    0x595730
  ec177a:	cc                                              	int3
  ec177b:	cc                                              	int3
  ec177c:	cc                                              	int3
  ec177d:	cc                                              	int3
  ec177e:	cc                                              	int3
  ec177f:	cc                                              	int3
