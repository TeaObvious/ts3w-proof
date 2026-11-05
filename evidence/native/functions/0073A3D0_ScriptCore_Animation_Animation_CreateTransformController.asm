# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073a3d0 (ScriptCore.Animation::Animation_CreateTransformController)
Paired Ghidra pseudocode: 0073A3D0_ScriptCore_Animation_Animation_CreateTransformController.c
Window: [0x0073a3d0, 0x0073a4d0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073a4d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073a3d0: 51 53 e8 99 d1 1f 00 8b 4c 24 10 8b 54 24 0c 51
0073a3e0: 52 8b c8 e8 98 db 1f 00 8b d8 85 db 0f 84 c9 00
0073a3f0: 00 00 55 8d 6b 04 57 8b c5 b9 01 00 00 00 f0 0f
0073a400: c1 08 8b 15 84 d4 1d 01 52 8b cb e8 50 9e 1f 00
0073a410: 8b f8 85 ff 0f 84 81 00 00 00 56 6a 00 6a 00 6a
0073a420: 00 6a 00 68 60 fd ff 00 6a 48 e8 d1 a0 da ff 83
0073a430: c4 18 85 c0 0f 84 84 00 00 00 8d 4f 08 51 8b c8
0073a440: e8 8b 18 e3 ff 8b f0 85 f6 74 04 83 46 04 01 d9
0073a450: 05 18 b2 fa 00 8b 57 08 8b 42 14 6a 00 6a 00 6a
0073a460: 00 6a 01 83 ec 08 d9 54 24 04 8d 4f 08 d9 1c 24
0073a470: 6a 02 56 68 98 3a 00 00 ff d0 85 f6 74 1c 8b 46
0073a480: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
0073a490: 8b 16 8b 02 6a 01 8b ce ff d0 5e 8b cd 83 ca ff
0073a4a0: f0 0f c1 11 4a 75 12 b8 01 00 00 00 87 45 00 8b
0073a4b0: 13 8b 02 6a 01 8b cb ff d0 5f 5d 5b 59 c3 33 f6
0073a4c0: eb 8d cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073a3d0 <.text+0x3393d0>:
  73a3d0:	51                                              	push   ecx
  73a3d1:	53                                              	push   ebx
  73a3d2:	e8 99 d1 1f 00                                  	call   0x937570
  73a3d7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73a3db:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  73a3df:	51                                              	push   ecx
  73a3e0:	52                                              	push   edx
  73a3e1:	8b c8                                           	mov    ecx,eax
  73a3e3:	e8 98 db 1f 00                                  	call   0x937f80
  73a3e8:	8b d8                                           	mov    ebx,eax
  73a3ea:	85 db                                           	test   ebx,ebx
  73a3ec:	0f 84 c9 00 00 00                               	je     0x73a4bb
  73a3f2:	55                                              	push   ebp
  73a3f3:	8d 6b 04                                        	lea    ebp,[ebx+0x4]
  73a3f6:	57                                              	push   edi
  73a3f7:	8b c5                                           	mov    eax,ebp
  73a3f9:	b9 01 00 00 00                                  	mov    ecx,0x1
  73a3fe:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73a402:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  73a408:	52                                              	push   edx
  73a409:	8b cb                                           	mov    ecx,ebx
  73a40b:	e8 50 9e 1f 00                                  	call   0x934260
  73a410:	8b f8                                           	mov    edi,eax
  73a412:	85 ff                                           	test   edi,edi
  73a414:	0f 84 81 00 00 00                               	je     0x73a49b
  73a41a:	56                                              	push   esi
  73a41b:	6a 00                                           	push   0x0
  73a41d:	6a 00                                           	push   0x0
  73a41f:	6a 00                                           	push   0x0
  73a421:	6a 00                                           	push   0x0
  73a423:	68 60 fd ff 00                                  	push   0xfffd60
  73a428:	6a 48                                           	push   0x48
  73a42a:	e8 d1 a0 da ff                                  	call   0x4e4500
  73a42f:	83 c4 18                                        	add    esp,0x18
  73a432:	85 c0                                           	test   eax,eax
  73a434:	0f 84 84 00 00 00                               	je     0x73a4be
  73a43a:	8d 4f 08                                        	lea    ecx,[edi+0x8]
  73a43d:	51                                              	push   ecx
  73a43e:	8b c8                                           	mov    ecx,eax
  73a440:	e8 8b 18 e3 ff                                  	call   0x56bcd0
  73a445:	8b f0                                           	mov    esi,eax
  73a447:	85 f6                                           	test   esi,esi
  73a449:	74 04                                           	je     0x73a44f
  73a44b:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  73a44f:	d9 05 18 b2 fa 00                               	fld    DWORD PTR ds:0xfab218
  73a455:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
  73a458:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  73a45b:	6a 00                                           	push   0x0
  73a45d:	6a 00                                           	push   0x0
  73a45f:	6a 00                                           	push   0x0
  73a461:	6a 01                                           	push   0x1
  73a463:	83 ec 08                                        	sub    esp,0x8
  73a466:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  73a46a:	8d 4f 08                                        	lea    ecx,[edi+0x8]
  73a46d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73a470:	6a 02                                           	push   0x2
  73a472:	56                                              	push   esi
  73a473:	68 98 3a 00 00                                  	push   0x3a98
  73a478:	ff d0                                           	call   eax
  73a47a:	85 f6                                           	test   esi,esi
  73a47c:	74 1c                                           	je     0x73a49a
  73a47e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  73a481:	83 c0 ff                                        	add    eax,0xffffffff
  73a484:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  73a487:	75 11                                           	jne    0x73a49a
  73a489:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  73a490:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73a492:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73a494:	6a 01                                           	push   0x1
  73a496:	8b ce                                           	mov    ecx,esi
  73a498:	ff d0                                           	call   eax
  73a49a:	5e                                              	pop    esi
  73a49b:	8b cd                                           	mov    ecx,ebp
  73a49d:	83 ca ff                                        	or     edx,0xffffffff
  73a4a0:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  73a4a4:	4a                                              	dec    edx
  73a4a5:	75 12                                           	jne    0x73a4b9
  73a4a7:	b8 01 00 00 00                                  	mov    eax,0x1
  73a4ac:	87 45 00                                        	xchg   DWORD PTR [ebp+0x0],eax
  73a4af:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  73a4b1:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73a4b3:	6a 01                                           	push   0x1
  73a4b5:	8b cb                                           	mov    ecx,ebx
  73a4b7:	ff d0                                           	call   eax
  73a4b9:	5f                                              	pop    edi
  73a4ba:	5d                                              	pop    ebp
  73a4bb:	5b                                              	pop    ebx
  73a4bc:	59                                              	pop    ecx
  73a4bd:	c3                                              	ret
  73a4be:	33 f6                                           	xor    esi,esi
  73a4c0:	eb 8d                                           	jmp    0x73a44f
  73a4c2:	cc                                              	int3
  73a4c3:	cc                                              	int3
  73a4c4:	cc                                              	int3
  73a4c5:	cc                                              	int3
  73a4c6:	cc                                              	int3
  73a4c7:	cc                                              	int3
  73a4c8:	cc                                              	int3
  73a4c9:	cc                                              	int3
  73a4ca:	cc                                              	int3
  73a4cb:	cc                                              	int3
  73a4cc:	cc                                              	int3
  73a4cd:	cc                                              	int3
  73a4ce:	cc                                              	int3
  73a4cf:	cc                                              	int3
