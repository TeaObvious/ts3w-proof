# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00797c60 (ScriptCore.World::World_TestObjectPlacementPQ)
Paired Ghidra pseudocode: 00797C60_ScriptCore_World_World_TestObjectPlacementPQ.c
Window: [0x00797c60, 0x00797c90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00797c90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00797c60: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 6a 00 6a 00
00797c70: 6a 00 6a 00 50 8b 44 24 1c 51 8b 4c 24 1c 6a 00
00797c80: 52 50 51 e8 78 f5 ff ff 83 c4 28 c3 cc cc cc cc

LINEAR DISASSEMBLY
00797c60 <.text+0x396c60>:
  797c60:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  797c64:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  797c68:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  797c6c:	6a 00                                           	push   0x0
  797c6e:	6a 00                                           	push   0x0
  797c70:	6a 00                                           	push   0x0
  797c72:	6a 00                                           	push   0x0
  797c74:	50                                              	push   eax
  797c75:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  797c79:	51                                              	push   ecx
  797c7a:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  797c7e:	6a 00                                           	push   0x0
  797c80:	52                                              	push   edx
  797c81:	50                                              	push   eax
  797c82:	51                                              	push   ecx
  797c83:	e8 78 f5 ff ff                                  	call   0x797200
  797c88:	83 c4 28                                        	add    esp,0x28
  797c8b:	c3                                              	ret
  797c8c:	cc                                              	int3
  797c8d:	cc                                              	int3
  797c8e:	cc                                              	int3
  797c8f:	cc                                              	int3
