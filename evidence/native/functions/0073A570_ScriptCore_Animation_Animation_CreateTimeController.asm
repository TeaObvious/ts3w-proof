# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073a570 (ScriptCore.Animation::Animation_CreateTimeController)
Paired Ghidra pseudocode: 0073A570_ScriptCore_Animation_Animation_CreateTimeController.c
Window: [0x0073a570, 0x0073a670) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073a670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073a570: 51 53 e8 f9 cf 1f 00 8b 4c 24 10 8b 54 24 0c 51
0073a580: 52 8b c8 e8 f8 d9 1f 00 8b d8 85 db 0f 84 c9 00
0073a590: 00 00 55 8d 6b 04 57 8b c5 b9 01 00 00 00 f0 0f
0073a5a0: c1 08 8b 15 84 d4 1d 01 52 8b cb e8 b0 9c 1f 00
0073a5b0: 8b f8 85 ff 0f 84 81 00 00 00 56 6a 00 6a 00 6a
0073a5c0: 00 6a 00 68 80 fd ff 00 6a 48 e8 31 9f da ff 83
0073a5d0: c4 18 85 c0 0f 84 84 00 00 00 8d 4f 08 51 8b c8
0073a5e0: e8 bb 23 e3 ff 8b f0 85 f6 74 04 83 46 04 01 d9
0073a5f0: 05 18 b2 fa 00 8b 57 08 8b 42 14 6a 00 6a 00 6a
0073a600: 00 6a 01 83 ec 08 d9 54 24 04 8d 4f 08 d9 1c 24
0073a610: 6a 02 56 68 98 3a 00 00 ff d0 85 f6 74 1c 8b 46
0073a620: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
0073a630: 8b 16 8b 02 6a 01 8b ce ff d0 5e 8b cd 83 ca ff
0073a640: f0 0f c1 11 4a 75 12 b8 01 00 00 00 87 45 00 8b
0073a650: 13 8b 02 6a 01 8b cb ff d0 5f 5d 5b 59 c3 33 f6
0073a660: eb 8d cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073a570 <.text+0x339570>:
  73a570:	51                                              	push   ecx
  73a571:	53                                              	push   ebx
  73a572:	e8 f9 cf 1f 00                                  	call   0x937570
  73a577:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73a57b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  73a57f:	51                                              	push   ecx
  73a580:	52                                              	push   edx
  73a581:	8b c8                                           	mov    ecx,eax
  73a583:	e8 f8 d9 1f 00                                  	call   0x937f80
  73a588:	8b d8                                           	mov    ebx,eax
  73a58a:	85 db                                           	test   ebx,ebx
  73a58c:	0f 84 c9 00 00 00                               	je     0x73a65b
  73a592:	55                                              	push   ebp
  73a593:	8d 6b 04                                        	lea    ebp,[ebx+0x4]
  73a596:	57                                              	push   edi
  73a597:	8b c5                                           	mov    eax,ebp
  73a599:	b9 01 00 00 00                                  	mov    ecx,0x1
  73a59e:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73a5a2:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  73a5a8:	52                                              	push   edx
  73a5a9:	8b cb                                           	mov    ecx,ebx
  73a5ab:	e8 b0 9c 1f 00                                  	call   0x934260
  73a5b0:	8b f8                                           	mov    edi,eax
  73a5b2:	85 ff                                           	test   edi,edi
  73a5b4:	0f 84 81 00 00 00                               	je     0x73a63b
  73a5ba:	56                                              	push   esi
  73a5bb:	6a 00                                           	push   0x0
  73a5bd:	6a 00                                           	push   0x0
  73a5bf:	6a 00                                           	push   0x0
  73a5c1:	6a 00                                           	push   0x0
  73a5c3:	68 80 fd ff 00                                  	push   0xfffd80
  73a5c8:	6a 48                                           	push   0x48
  73a5ca:	e8 31 9f da ff                                  	call   0x4e4500
  73a5cf:	83 c4 18                                        	add    esp,0x18
  73a5d2:	85 c0                                           	test   eax,eax
  73a5d4:	0f 84 84 00 00 00                               	je     0x73a65e
  73a5da:	8d 4f 08                                        	lea    ecx,[edi+0x8]
  73a5dd:	51                                              	push   ecx
  73a5de:	8b c8                                           	mov    ecx,eax
  73a5e0:	e8 bb 23 e3 ff                                  	call   0x56c9a0
  73a5e5:	8b f0                                           	mov    esi,eax
  73a5e7:	85 f6                                           	test   esi,esi
  73a5e9:	74 04                                           	je     0x73a5ef
  73a5eb:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  73a5ef:	d9 05 18 b2 fa 00                               	fld    DWORD PTR ds:0xfab218
  73a5f5:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
  73a5f8:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  73a5fb:	6a 00                                           	push   0x0
  73a5fd:	6a 00                                           	push   0x0
  73a5ff:	6a 00                                           	push   0x0
  73a601:	6a 01                                           	push   0x1
  73a603:	83 ec 08                                        	sub    esp,0x8
  73a606:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  73a60a:	8d 4f 08                                        	lea    ecx,[edi+0x8]
  73a60d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73a610:	6a 02                                           	push   0x2
  73a612:	56                                              	push   esi
  73a613:	68 98 3a 00 00                                  	push   0x3a98
  73a618:	ff d0                                           	call   eax
  73a61a:	85 f6                                           	test   esi,esi
  73a61c:	74 1c                                           	je     0x73a63a
  73a61e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  73a621:	83 c0 ff                                        	add    eax,0xffffffff
  73a624:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  73a627:	75 11                                           	jne    0x73a63a
  73a629:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  73a630:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73a632:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73a634:	6a 01                                           	push   0x1
  73a636:	8b ce                                           	mov    ecx,esi
  73a638:	ff d0                                           	call   eax
  73a63a:	5e                                              	pop    esi
  73a63b:	8b cd                                           	mov    ecx,ebp
  73a63d:	83 ca ff                                        	or     edx,0xffffffff
  73a640:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  73a644:	4a                                              	dec    edx
  73a645:	75 12                                           	jne    0x73a659
  73a647:	b8 01 00 00 00                                  	mov    eax,0x1
  73a64c:	87 45 00                                        	xchg   DWORD PTR [ebp+0x0],eax
  73a64f:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  73a651:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73a653:	6a 01                                           	push   0x1
  73a655:	8b cb                                           	mov    ecx,ebx
  73a657:	ff d0                                           	call   eax
  73a659:	5f                                              	pop    edi
  73a65a:	5d                                              	pop    ebp
  73a65b:	5b                                              	pop    ebx
  73a65c:	59                                              	pop    ecx
  73a65d:	c3                                              	ret
  73a65e:	33 f6                                           	xor    esi,esi
  73a660:	eb 8d                                           	jmp    0x73a5ef
  73a662:	cc                                              	int3
  73a663:	cc                                              	int3
  73a664:	cc                                              	int3
  73a665:	cc                                              	int3
  73a666:	cc                                              	int3
  73a667:	cc                                              	int3
  73a668:	cc                                              	int3
  73a669:	cc                                              	int3
  73a66a:	cc                                              	int3
  73a66b:	cc                                              	int3
  73a66c:	cc                                              	int3
  73a66d:	cc                                              	int3
  73a66e:	cc                                              	int3
  73a66f:	cc                                              	int3
