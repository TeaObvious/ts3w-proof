# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1380 (ScriptCore.GameUtils::GameUtils_DestroySceneWindowImpl)
Paired Ghidra pseudocode: 00EC1380_ScriptCore_GameUtils_GameUtils_DestroySceneWindowImpl.c
Window: [0x00ec1380, 0x00ec13c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec13c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1380: 56 e8 0a 9c 64 ff 8b 10 8b c8 8b 42 04 ff d0 8b
00ec1390: f0 8b 16 8b 82 f4 00 00 00 6a 00 68 8b 24 4b 03
00ec13a0: 8b ce ff d0 85 c0 74 0d 8b 16 50 8b 82 e4 00 00
00ec13b0: 00 8b ce ff d0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1380 <.text+0xac0380>:
  ec1380:	56                                              	push   esi
  ec1381:	e8 0a 9c 64 ff                                  	call   0x50af90
  ec1386:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec1388:	8b c8                                           	mov    ecx,eax
  ec138a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ec138d:	ff d0                                           	call   eax
  ec138f:	8b f0                                           	mov    esi,eax
  ec1391:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec1393:	8b 82 f4 00 00 00                               	mov    eax,DWORD PTR [edx+0xf4]
  ec1399:	6a 00                                           	push   0x0
  ec139b:	68 8b 24 4b 03                                  	push   0x34b248b
  ec13a0:	8b ce                                           	mov    ecx,esi
  ec13a2:	ff d0                                           	call   eax
  ec13a4:	85 c0                                           	test   eax,eax
  ec13a6:	74 0d                                           	je     0xec13b5
  ec13a8:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec13aa:	50                                              	push   eax
  ec13ab:	8b 82 e4 00 00 00                               	mov    eax,DWORD PTR [edx+0xe4]
  ec13b1:	8b ce                                           	mov    ecx,esi
  ec13b3:	ff d0                                           	call   eax
  ec13b5:	5e                                              	pop    esi
  ec13b6:	c3                                              	ret
  ec13b7:	cc                                              	int3
  ec13b8:	cc                                              	int3
  ec13b9:	cc                                              	int3
  ec13ba:	cc                                              	int3
  ec13bb:	cc                                              	int3
  ec13bc:	cc                                              	int3
  ec13bd:	cc                                              	int3
  ec13be:	cc                                              	int3
  ec13bf:	cc                                              	int3
