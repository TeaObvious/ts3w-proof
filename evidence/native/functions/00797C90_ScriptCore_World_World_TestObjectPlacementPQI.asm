# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00797c90 (ScriptCore.World::World_TestObjectPlacementPQI)
Paired Ghidra pseudocode: 00797C90_ScriptCore_World_World_TestObjectPlacementPQI.c
Window: [0x00797c90, 0x00797cc0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00797cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00797c90: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 6a 00 6a 00
00797ca0: 6a 00 6a 00 50 8b 44 24 20 51 8b 4c 24 20 52 8b
00797cb0: 54 24 20 50 51 52 e8 45 f5 ff ff 83 c4 28 c3 cc

LINEAR DISASSEMBLY
00797c90 <.text+0x396c90>:
  797c90:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  797c94:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  797c98:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  797c9c:	6a 00                                           	push   0x0
  797c9e:	6a 00                                           	push   0x0
  797ca0:	6a 00                                           	push   0x0
  797ca2:	6a 00                                           	push   0x0
  797ca4:	50                                              	push   eax
  797ca5:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  797ca9:	51                                              	push   ecx
  797caa:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  797cae:	52                                              	push   edx
  797caf:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  797cb3:	50                                              	push   eax
  797cb4:	51                                              	push   ecx
  797cb5:	52                                              	push   edx
  797cb6:	e8 45 f5 ff ff                                  	call   0x797200
  797cbb:	83 c4 28                                        	add    esp,0x28
  797cbe:	c3                                              	ret
  797cbf:	cc                                              	int3
