# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00797c20 (ScriptCore.World::World_TestObjectPlacementPE)
Paired Ghidra pseudocode: 00797C20_ScriptCore_World_World_TestObjectPlacementPE.c
Window: [0x00797c20, 0x00797c60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00797c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00797c20: 8b 44 24 1c 8b 4c 24 14 8b 54 24 10 50 50 8b 44
00797c30: 24 20 50 8b 44 24 18 51 8b 4c 24 18 6a 00 52 8b
00797c40: 54 24 1c 6a 00 50 51 52 e8 b3 f5 ff ff 83 c4 28
00797c50: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00797c20 <.text+0x396c20>:
  797c20:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  797c24:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  797c28:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  797c2c:	50                                              	push   eax
  797c2d:	50                                              	push   eax
  797c2e:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  797c32:	50                                              	push   eax
  797c33:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  797c37:	51                                              	push   ecx
  797c38:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  797c3c:	6a 00                                           	push   0x0
  797c3e:	52                                              	push   edx
  797c3f:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  797c43:	6a 00                                           	push   0x0
  797c45:	50                                              	push   eax
  797c46:	51                                              	push   ecx
  797c47:	52                                              	push   edx
  797c48:	e8 b3 f5 ff ff                                  	call   0x797200
  797c4d:	83 c4 28                                        	add    esp,0x28
  797c50:	c3                                              	ret
  797c51:	cc                                              	int3
  797c52:	cc                                              	int3
  797c53:	cc                                              	int3
  797c54:	cc                                              	int3
  797c55:	cc                                              	int3
  797c56:	cc                                              	int3
  797c57:	cc                                              	int3
  797c58:	cc                                              	int3
  797c59:	cc                                              	int3
  797c5a:	cc                                              	int3
  797c5b:	cc                                              	int3
  797c5c:	cc                                              	int3
  797c5d:	cc                                              	int3
  797c5e:	cc                                              	int3
  797c5f:	cc                                              	int3
