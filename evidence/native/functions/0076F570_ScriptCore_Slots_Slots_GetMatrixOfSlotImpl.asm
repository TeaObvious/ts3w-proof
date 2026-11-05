# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076f570 (ScriptCore.Slots::Slots_GetMatrixOfSlotImpl)
Paired Ghidra pseudocode: 0076F570_ScriptCore_Slots_Slots_GetMatrixOfSlotImpl.c
Window: [0x0076f570, 0x0076f840) (720 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076f840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076f570: 55 8b ec 83 e4 f0 81 ec 24 01 00 00 53 56 57 e8
0076f580: ec 7f 1c 00 8b 4d 10 8b 55 0c 51 52 8b c8 e8 ed
0076f590: 89 1c 00 8b d8 85 db 74 2d 8d 43 04 b9 01 00 00
0076f5a0: 00 f0 0f c1 08 8b 15 58 a1 1e 01 52 8b cb e8 ad
0076f5b0: 4c 1c 00 8b f8 a1 14 a1 1e 01 50 8b cb e8 9e 4c
0076f5c0: 1c 00 8b f0 eb 04 33 ff 33 f6 0f 57 c0 f3 0f 10
0076f5d0: 0d f8 98 f9 00 f3 0f 11 44 24 1c f3 0f 11 44 24
0076f5e0: 18 f3 0f 11 44 24 14 f3 0f 11 4c 24 10 0f 28 54
0076f5f0: 24 10 f3 0f 11 44 24 1c f3 0f 11 44 24 18 f3 0f
0076f600: 11 4c 24 14 f3 0f 11 44 24 10 0f 29 54 24 30 0f
0076f610: 28 54 24 10 f3 0f 11 44 24 1c f3 0f 11 4c 24 18
0076f620: f3 0f 11 44 24 14 f3 0f 11 44 24 10 0f 29 54 24
0076f630: 40 0f 28 54 24 10 8d 4c 24 30 f3 0f 11 4c 24 1c
0076f640: f3 0f 11 44 24 18 f3 0f 11 44 24 14 f3 0f 11 44
0076f650: 24 10 0f 28 44 24 10 51 8d 94 24 f4 00 00 00 52
0076f660: 0f 29 54 24 58 0f 29 44 24 68 e8 b1 cb ff ff 83
0076f670: c4 08 85 db 0f 84 81 01 00 00 85 ff 0f 84 79 01
0076f680: 00 00 85 f6 0f 84 71 01 00 00 8b 45 14 50 8b ce
0076f690: e8 bb 12 1e 00 8b f0 85 f6 0f 84 5c 01 00 00 8d
0076f6a0: 4c 24 70 51 8b cf e8 e5 83 1e 00 8b 16 8b 52 14
0076f6b0: 8d 44 24 30 50 8b ce ff d2 8b 06 8b 40 20 6a 00
0076f6c0: 8d 4c 24 34 51 8d 54 24 78 52 8b ce ff d0 0f 28
0076f6d0: 44 24 30 0f 28 4c 24 70 0f 28 94 24 80 00 00 00
0076f6e0: 0f 28 e8 0f c6 e8 00 0f 59 e9 0f 28 d8 0f c6 d8
0076f6f0: 55 0f 28 e0 0f c6 e0 aa 0f 59 da 0f 58 eb 0f 28
0076f700: 9c 24 90 00 00 00 0f 28 f0 0f c6 f0 ff 0f 28 44
0076f710: 24 40 0f 59 e3 0f 58 ec 0f 28 a4 24 a0 00 00 00
0076f720: 0f 59 f4 0f 58 ee 0f 29 ac 24 b0 00 00 00 0f 28
0076f730: e8 0f c6 e8 00 0f 59 e9 0f 28 f0 0f c6 f0 55 0f
0076f740: 59 f2 0f 58 ee 0f 28 f0 0f c6 f0 aa 0f 59 f3 0f
0076f750: 58 ee 0f 28 f0 0f c6 f0 ff 0f 28 44 24 50 0f 59
0076f760: f4 0f 58 ee 0f 29 ac 24 c0 00 00 00 0f 28 e8 0f
0076f770: c6 e8 00 0f 59 e9 0f 28 f0 0f c6 f0 55 0f 59 f2
0076f780: 0f 58 ee 0f 28 f0 0f c6 f0 aa 0f 59 f3 0f 58 ee
0076f790: 0f 28 f0 0f c6 f0 ff 0f 28 44 24 60 0f 59 f4 0f
0076f7a0: 58 ee 0f 29 ac 24 d0 00 00 00 0f 28 e8 0f c6 e8
0076f7b0: 00 0f 59 e9 0f 28 c8 0f c6 c8 55 0f 59 ca 0f 58
0076f7c0: e9 0f 28 c8 0f c6 c8 aa 0f 59 cb 0f 58 e9 8d 8c
0076f7d0: 24 b0 00 00 00 0f 28 c8 0f c6 c8 ff 51 8d 94 24
0076f7e0: f4 00 00 00 0f 59 cc 0f 58 e9 52 0f 29 ac 24 e8
0076f7f0: 00 00 00 e8 28 ca ff ff 83 c4 08 85 db 8b 45 08
0076f800: b9 10 00 00 00 8d b4 24 f0 00 00 00 8b f8 f3 a5
0076f810: 74 23 8d 4b 04 8b d1 83 ce ff f0 0f c1 32 4e 75
0076f820: 14 b8 01 00 00 00 87 01 8b 13 8b 02 6a 01 8b cb
0076f830: ff d0 8b 45 08 5f 5e 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
0076f570 <.text+0x36e570>:
  76f570:	55                                              	push   ebp
  76f571:	8b ec                                           	mov    ebp,esp
  76f573:	83 e4 f0                                        	and    esp,0xfffffff0
  76f576:	81 ec 24 01 00 00                               	sub    esp,0x124
  76f57c:	53                                              	push   ebx
  76f57d:	56                                              	push   esi
  76f57e:	57                                              	push   edi
  76f57f:	e8 ec 7f 1c 00                                  	call   0x937570
  76f584:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  76f587:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  76f58a:	51                                              	push   ecx
  76f58b:	52                                              	push   edx
  76f58c:	8b c8                                           	mov    ecx,eax
  76f58e:	e8 ed 89 1c 00                                  	call   0x937f80
  76f593:	8b d8                                           	mov    ebx,eax
  76f595:	85 db                                           	test   ebx,ebx
  76f597:	74 2d                                           	je     0x76f5c6
  76f599:	8d 43 04                                        	lea    eax,[ebx+0x4]
  76f59c:	b9 01 00 00 00                                  	mov    ecx,0x1
  76f5a1:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f5a5:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76f5ab:	52                                              	push   edx
  76f5ac:	8b cb                                           	mov    ecx,ebx
  76f5ae:	e8 ad 4c 1c 00                                  	call   0x934260
  76f5b3:	8b f8                                           	mov    edi,eax
  76f5b5:	a1 14 a1 1e 01                                  	mov    eax,ds:0x11ea114
  76f5ba:	50                                              	push   eax
  76f5bb:	8b cb                                           	mov    ecx,ebx
  76f5bd:	e8 9e 4c 1c 00                                  	call   0x934260
  76f5c2:	8b f0                                           	mov    esi,eax
  76f5c4:	eb 04                                           	jmp    0x76f5ca
  76f5c6:	33 ff                                           	xor    edi,edi
  76f5c8:	33 f6                                           	xor    esi,esi
  76f5ca:	0f 57 c0                                        	xorps  xmm0,xmm0
  76f5cd:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  76f5d5:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76f5db:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76f5e1:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76f5e7:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  76f5ed:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  76f5f2:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76f5f8:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76f5fe:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  76f604:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76f60a:	0f 29 54 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm2
  76f60f:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  76f614:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76f61a:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  76f620:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76f626:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76f62c:	0f 29 54 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm2
  76f631:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  76f636:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  76f63a:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  76f640:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76f646:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76f64c:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76f652:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76f657:	51                                              	push   ecx
  76f658:	8d 94 24 f4 00 00 00                            	lea    edx,[esp+0xf4]
  76f65f:	52                                              	push   edx
  76f660:	0f 29 54 24 58                                  	movaps XMMWORD PTR [esp+0x58],xmm2
  76f665:	0f 29 44 24 68                                  	movaps XMMWORD PTR [esp+0x68],xmm0
  76f66a:	e8 b1 cb ff ff                                  	call   0x76c220
  76f66f:	83 c4 08                                        	add    esp,0x8
  76f672:	85 db                                           	test   ebx,ebx
  76f674:	0f 84 81 01 00 00                               	je     0x76f7fb
  76f67a:	85 ff                                           	test   edi,edi
  76f67c:	0f 84 79 01 00 00                               	je     0x76f7fb
  76f682:	85 f6                                           	test   esi,esi
  76f684:	0f 84 71 01 00 00                               	je     0x76f7fb
  76f68a:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  76f68d:	50                                              	push   eax
  76f68e:	8b ce                                           	mov    ecx,esi
  76f690:	e8 bb 12 1e 00                                  	call   0x950950
  76f695:	8b f0                                           	mov    esi,eax
  76f697:	85 f6                                           	test   esi,esi
  76f699:	0f 84 5c 01 00 00                               	je     0x76f7fb
  76f69f:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  76f6a3:	51                                              	push   ecx
  76f6a4:	8b cf                                           	mov    ecx,edi
  76f6a6:	e8 e5 83 1e 00                                  	call   0x957a90
  76f6ab:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76f6ad:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
  76f6b0:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  76f6b4:	50                                              	push   eax
  76f6b5:	8b ce                                           	mov    ecx,esi
  76f6b7:	ff d2                                           	call   edx
  76f6b9:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76f6bb:	8b 40 20                                        	mov    eax,DWORD PTR [eax+0x20]
  76f6be:	6a 00                                           	push   0x0
  76f6c0:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  76f6c4:	51                                              	push   ecx
  76f6c5:	8d 54 24 78                                     	lea    edx,[esp+0x78]
  76f6c9:	52                                              	push   edx
  76f6ca:	8b ce                                           	mov    ecx,esi
  76f6cc:	ff d0                                           	call   eax
  76f6ce:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  76f6d3:	0f 28 4c 24 70                                  	movaps xmm1,XMMWORD PTR [esp+0x70]
  76f6d8:	0f 28 94 24 80 00 00 00                         	movaps xmm2,XMMWORD PTR [esp+0x80]
  76f6e0:	0f 28 e8                                        	movaps xmm5,xmm0
  76f6e3:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  76f6e7:	0f 59 e9                                        	mulps  xmm5,xmm1
  76f6ea:	0f 28 d8                                        	movaps xmm3,xmm0
  76f6ed:	0f c6 d8 55                                     	shufps xmm3,xmm0,0x55
  76f6f1:	0f 28 e0                                        	movaps xmm4,xmm0
  76f6f4:	0f c6 e0 aa                                     	shufps xmm4,xmm0,0xaa
  76f6f8:	0f 59 da                                        	mulps  xmm3,xmm2
  76f6fb:	0f 58 eb                                        	addps  xmm5,xmm3
  76f6fe:	0f 28 9c 24 90 00 00 00                         	movaps xmm3,XMMWORD PTR [esp+0x90]
  76f706:	0f 28 f0                                        	movaps xmm6,xmm0
  76f709:	0f c6 f0 ff                                     	shufps xmm6,xmm0,0xff
  76f70d:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
  76f712:	0f 59 e3                                        	mulps  xmm4,xmm3
  76f715:	0f 58 ec                                        	addps  xmm5,xmm4
  76f718:	0f 28 a4 24 a0 00 00 00                         	movaps xmm4,XMMWORD PTR [esp+0xa0]
  76f720:	0f 59 f4                                        	mulps  xmm6,xmm4
  76f723:	0f 58 ee                                        	addps  xmm5,xmm6
  76f726:	0f 29 ac 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm5
  76f72e:	0f 28 e8                                        	movaps xmm5,xmm0
  76f731:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  76f735:	0f 59 e9                                        	mulps  xmm5,xmm1
  76f738:	0f 28 f0                                        	movaps xmm6,xmm0
  76f73b:	0f c6 f0 55                                     	shufps xmm6,xmm0,0x55
  76f73f:	0f 59 f2                                        	mulps  xmm6,xmm2
  76f742:	0f 58 ee                                        	addps  xmm5,xmm6
  76f745:	0f 28 f0                                        	movaps xmm6,xmm0
  76f748:	0f c6 f0 aa                                     	shufps xmm6,xmm0,0xaa
  76f74c:	0f 59 f3                                        	mulps  xmm6,xmm3
  76f74f:	0f 58 ee                                        	addps  xmm5,xmm6
  76f752:	0f 28 f0                                        	movaps xmm6,xmm0
  76f755:	0f c6 f0 ff                                     	shufps xmm6,xmm0,0xff
  76f759:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  76f75e:	0f 59 f4                                        	mulps  xmm6,xmm4
  76f761:	0f 58 ee                                        	addps  xmm5,xmm6
  76f764:	0f 29 ac 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm5
  76f76c:	0f 28 e8                                        	movaps xmm5,xmm0
  76f76f:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  76f773:	0f 59 e9                                        	mulps  xmm5,xmm1
  76f776:	0f 28 f0                                        	movaps xmm6,xmm0
  76f779:	0f c6 f0 55                                     	shufps xmm6,xmm0,0x55
  76f77d:	0f 59 f2                                        	mulps  xmm6,xmm2
  76f780:	0f 58 ee                                        	addps  xmm5,xmm6
  76f783:	0f 28 f0                                        	movaps xmm6,xmm0
  76f786:	0f c6 f0 aa                                     	shufps xmm6,xmm0,0xaa
  76f78a:	0f 59 f3                                        	mulps  xmm6,xmm3
  76f78d:	0f 58 ee                                        	addps  xmm5,xmm6
  76f790:	0f 28 f0                                        	movaps xmm6,xmm0
  76f793:	0f c6 f0 ff                                     	shufps xmm6,xmm0,0xff
  76f797:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
  76f79c:	0f 59 f4                                        	mulps  xmm6,xmm4
  76f79f:	0f 58 ee                                        	addps  xmm5,xmm6
  76f7a2:	0f 29 ac 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm5
  76f7aa:	0f 28 e8                                        	movaps xmm5,xmm0
  76f7ad:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  76f7b1:	0f 59 e9                                        	mulps  xmm5,xmm1
  76f7b4:	0f 28 c8                                        	movaps xmm1,xmm0
  76f7b7:	0f c6 c8 55                                     	shufps xmm1,xmm0,0x55
  76f7bb:	0f 59 ca                                        	mulps  xmm1,xmm2
  76f7be:	0f 58 e9                                        	addps  xmm5,xmm1
  76f7c1:	0f 28 c8                                        	movaps xmm1,xmm0
  76f7c4:	0f c6 c8 aa                                     	shufps xmm1,xmm0,0xaa
  76f7c8:	0f 59 cb                                        	mulps  xmm1,xmm3
  76f7cb:	0f 58 e9                                        	addps  xmm5,xmm1
  76f7ce:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  76f7d5:	0f 28 c8                                        	movaps xmm1,xmm0
  76f7d8:	0f c6 c8 ff                                     	shufps xmm1,xmm0,0xff
  76f7dc:	51                                              	push   ecx
  76f7dd:	8d 94 24 f4 00 00 00                            	lea    edx,[esp+0xf4]
  76f7e4:	0f 59 cc                                        	mulps  xmm1,xmm4
  76f7e7:	0f 58 e9                                        	addps  xmm5,xmm1
  76f7ea:	52                                              	push   edx
  76f7eb:	0f 29 ac 24 e8 00 00 00                         	movaps XMMWORD PTR [esp+0xe8],xmm5
  76f7f3:	e8 28 ca ff ff                                  	call   0x76c220
  76f7f8:	83 c4 08                                        	add    esp,0x8
  76f7fb:	85 db                                           	test   ebx,ebx
  76f7fd:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  76f800:	b9 10 00 00 00                                  	mov    ecx,0x10
  76f805:	8d b4 24 f0 00 00 00                            	lea    esi,[esp+0xf0]
  76f80c:	8b f8                                           	mov    edi,eax
  76f80e:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  76f810:	74 23                                           	je     0x76f835
  76f812:	8d 4b 04                                        	lea    ecx,[ebx+0x4]
  76f815:	8b d1                                           	mov    edx,ecx
  76f817:	83 ce ff                                        	or     esi,0xffffffff
  76f81a:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  76f81e:	4e                                              	dec    esi
  76f81f:	75 14                                           	jne    0x76f835
  76f821:	b8 01 00 00 00                                  	mov    eax,0x1
  76f826:	87 01                                           	xchg   DWORD PTR [ecx],eax
  76f828:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  76f82a:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76f82c:	6a 01                                           	push   0x1
  76f82e:	8b cb                                           	mov    ecx,ebx
  76f830:	ff d0                                           	call   eax
  76f832:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  76f835:	5f                                              	pop    edi
  76f836:	5e                                              	pop    esi
  76f837:	5b                                              	pop    ebx
  76f838:	8b e5                                           	mov    esp,ebp
  76f83a:	5d                                              	pop    ebp
  76f83b:	c3                                              	ret
  76f83c:	cc                                              	int3
  76f83d:	cc                                              	int3
  76f83e:	cc                                              	int3
  76f83f:	cc                                              	int3
