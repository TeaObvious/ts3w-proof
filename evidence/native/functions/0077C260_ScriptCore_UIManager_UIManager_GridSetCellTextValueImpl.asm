# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077c260 (ScriptCore.UIManager::UIManager_GridSetCellTextValueImpl)
Paired Ghidra pseudocode: 0077C260_ScriptCore_UIManager_UIManager_GridSetCellTextValueImpl.c
Window: [0x0077c260, 0x0077c2e0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077c2e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077c260: 53 8b 5c 24 14 85 db 74 6b 56 e8 21 d1 fe ff 8b
0077c270: f0 8b 44 24 0c 8b c8 81 e1 00 00 00 ff 81 f9 00
0077c280: 00 00 30 75 4e 8b 16 50 8b 82 cc 00 00 00 8b ce
0077c290: ff d0 85 c0 74 3d 8b 10 57 8b c8 8b 42 0c 68 02
0077c2a0: e9 1e af ff d0 8b f8 85 ff 74 27 8b 16 8b 42 58
0077c2b0: 53 8b ce ff d0 8b 4c 24 14 8b 17 8b 92 dc 01 00
0077c2c0: 00 6a 00 6a 01 6a 00 50 8b 44 24 28 50 51 8b cf
0077c2d0: ff d2 5f 5e 5b c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077c260 <.text+0x37b260>:
  77c260:	53                                              	push   ebx
  77c261:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
  77c265:	85 db                                           	test   ebx,ebx
  77c267:	74 6b                                           	je     0x77c2d4
  77c269:	56                                              	push   esi
  77c26a:	e8 21 d1 fe ff                                  	call   0x769390
  77c26f:	8b f0                                           	mov    esi,eax
  77c271:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77c275:	8b c8                                           	mov    ecx,eax
  77c277:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77c27d:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77c283:	75 4e                                           	jne    0x77c2d3
  77c285:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77c287:	50                                              	push   eax
  77c288:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77c28e:	8b ce                                           	mov    ecx,esi
  77c290:	ff d0                                           	call   eax
  77c292:	85 c0                                           	test   eax,eax
  77c294:	74 3d                                           	je     0x77c2d3
  77c296:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77c298:	57                                              	push   edi
  77c299:	8b c8                                           	mov    ecx,eax
  77c29b:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77c29e:	68 02 e9 1e af                                  	push   0xaf1ee902
  77c2a3:	ff d0                                           	call   eax
  77c2a5:	8b f8                                           	mov    edi,eax
  77c2a7:	85 ff                                           	test   edi,edi
  77c2a9:	74 27                                           	je     0x77c2d2
  77c2ab:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77c2ad:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  77c2b0:	53                                              	push   ebx
  77c2b1:	8b ce                                           	mov    ecx,esi
  77c2b3:	ff d0                                           	call   eax
  77c2b5:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77c2b9:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77c2bb:	8b 92 dc 01 00 00                               	mov    edx,DWORD PTR [edx+0x1dc]
  77c2c1:	6a 00                                           	push   0x0
  77c2c3:	6a 01                                           	push   0x1
  77c2c5:	6a 00                                           	push   0x0
  77c2c7:	50                                              	push   eax
  77c2c8:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  77c2cc:	50                                              	push   eax
  77c2cd:	51                                              	push   ecx
  77c2ce:	8b cf                                           	mov    ecx,edi
  77c2d0:	ff d2                                           	call   edx
  77c2d2:	5f                                              	pop    edi
  77c2d3:	5e                                              	pop    esi
  77c2d4:	5b                                              	pop    ebx
  77c2d5:	c3                                              	ret
  77c2d6:	cc                                              	int3
  77c2d7:	cc                                              	int3
  77c2d8:	cc                                              	int3
  77c2d9:	cc                                              	int3
  77c2da:	cc                                              	int3
  77c2db:	cc                                              	int3
  77c2dc:	cc                                              	int3
  77c2dd:	cc                                              	int3
  77c2de:	cc                                              	int3
  77c2df:	cc                                              	int3
