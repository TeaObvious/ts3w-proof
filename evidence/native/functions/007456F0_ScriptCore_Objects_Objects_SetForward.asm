# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007456f0 (ScriptCore.Objects::Objects_SetForward)
Paired Ghidra pseudocode: 007456F0_ScriptCore_Objects_Objects_SetForward.c
Window: [0x007456f0, 0x00745b90) (1184 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745b90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007456f0: 55 8b ec 83 e4 f0 83 ec 74 53 56 57 e8 6f 1e 1f
00745700: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 70 28 1f 00
00745710: 8b f0 85 f6 0f 84 62 04 00 00 a1 84 d4 1d 01 50
00745720: 8b ce e8 39 eb 1e 00 85 c0 74 0f 8b 50 08 83 c0
00745730: 08 8b c8 8b 42 28 ff d0 eb 19 8b 0d 58 a1 1e 01
00745740: 51 8b ce e8 18 eb 1e 00 85 c0 74 07 8b c8 e8 7d
00745750: 07 21 00 8b 15 08 df 1e 01 52 8b ce e8 ff ea 1e
00745760: 00 8b d8 a1 58 a1 1e 01 50 8b ce e8 f0 ea 1e 00
00745770: 8b f8 85 ff 0f 84 92 03 00 00 8d 4c 24 40 51 8d
00745780: 4d 10 e8 c9 68 02 00 0f 28 28 f3 0f 10 35 f8 98
00745790: f9 00 f3 0f 10 25 b4 b5 f9 00 0f 28 cd 0f 59 cd
007457a0: 0f 28 c1 0f c6 c1 02 0f 28 d1 0f c6 d1 01 0f 58
007457b0: c2 0f 58 c1 0f c6 c0 00 0f 52 d0 0f 28 fa 0f 59
007457c0: fa 0f 59 f8 f3 0f 10 de 0f c6 db 00 0f c6 e4 00
007457d0: 0f 28 cb 0f 5c cf 0f 28 fc 0f 59 fa 0f 59 cf 0f
007457e0: 58 ca 0f 28 d1 0f 59 d1 0f 59 d0 0f 28 c3 0f 5c
007457f0: c2 0f 28 d4 0f 59 d1 0f 59 c2 0f 58 c1 0f 57 c9
00745800: f3 0f 11 4c 24 1c f3 0f 11 4c 24 18 f3 0f 11 4c
00745810: 24 10 0f 59 c5 f3 0f 11 74 24 14 0f 28 6c 24 10
00745820: 0f 28 d5 0f c6 d5 12 0f 28 f0 0f 28 c8 0f c6 c8
00745830: 09 0f 59 d1 0f 29 4c 24 30 0f c6 ed 09 0f c6 f0
00745840: 12 0f 59 ee 0f 5c ea 0f 28 d5 0f 59 d5 0f 28 ca
00745850: 0f c6 ca 02 0f 28 fa 0f c6 fa 01 0f 58 cf 0f 58
00745860: ca 0f c6 c9 00 0f 52 f9 0f 28 d7 0f 59 d7 0f 59
00745870: d1 0f 29 54 24 10 0f 29 4c 24 20 0f 28 4c 24 10
00745880: 0f 28 d3 0f 5c d1 0f 28 cc 0f 59 cf 0f 59 d1 0f
00745890: 58 d7 0f 28 fa 0f 59 fa 0f 59 7c 24 20 85 db 0f
007458a0: 28 cb 0f 5c cf 0f 28 fc 0f 59 fa 0f 59 cf 0f 58
007458b0: ca 0f 59 cd 0f 28 d1 0f c6 d1 12 0f 59 54 24 30
007458c0: 0f 28 e9 0f c6 e9 09 0f 59 ee 0f 5c d5 74 04 83
007458d0: 4b 2c 10 0f 28 f2 0f 28 e9 0f c6 e9 00 0f c6 f2
007458e0: 55 0f 29 6c 24 10 0f 28 fe 0f 58 fd 0f 28 e8 0f
007458f0: c6 e8 aa 0f 58 fd 0f 29 7c 24 40 f3 0f 11 7c 24
00745900: 30 f3 0f 10 3d cc 4c 0f 01 0f c6 ff 00 f3 0f 11
00745910: 7c 24 20 f3 0f 10 7c 24 30 0f 2f 7c 24 20 0f 29
00745920: 4c 24 50 0f 29 54 24 60 0f 29 44 24 70 76 58 0f
00745930: 58 5c 24 40 0f 51 fb 0f 28 d9 0f c6 d9 55 0f c6
00745940: c9 aa 0f 28 ea 0f c6 ea 00 0f 5c dd 0f 28 e8 0f
00745950: c6 e8 00 0f 5c e9 0f 28 ca 0f c6 ca aa 0f 28 f4
00745960: 0f 5e f7 0f c6 c0 55 0f 5c c8 0f 59 ce 0f 59 ee
00745970: 0f 59 de 0f 59 fc 0f c6 cd 10 0f c6 df 32 0f c6
00745980: cb 88 e9 74 01 00 00 f3 0f 10 7c 24 10 f3 0f 11
00745990: 7c 24 40 f3 0f 10 7c 24 40 f3 0f 11 74 24 30 0f
007459a0: 2f 7c 24 30 0f 86 82 00 00 00 f3 0f 10 7c 24 10
007459b0: f3 0f 11 7c 24 40 f3 0f 10 7c 24 40 f3 0f 11 6c
007459c0: 24 30 0f 2f 7c 24 30 76 63 0f 58 ee 0f 28 74 24
007459d0: 10 0f 5c f5 0f 58 de 0f 51 eb 0f 28 f2 0f c6 f2
007459e0: aa 0f 28 d8 0f c6 d8 55 0f 5c f3 0f 28 d9 0f c6
007459f0: d9 aa 0f c6 d2 00 0f 28 fc 0f 5e fd 0f c6 c0 00
00745a00: 0f 58 d8 0f c6 c9 55 0f 58 d1 0f 59 ec 0f 59 d7
00745a10: 0f 59 df 0f 59 f7 0f c6 ea 10 0f c6 de 32 0f c6
00745a20: eb 88 0f 29 6c 24 10 e9 d4 00 00 00 f3 0f 11 74
00745a30: 24 40 f3 0f 10 7c 24 40 f3 0f 11 6c 24 30 0f 2f
00745a40: 7c 24 30 76 60 0f 58 6c 24 10 0f 5c f5 0f 58 de
00745a50: 0f 51 fb 0f 28 e8 0f c6 e8 00 0f c6 c0 55 0f 28
00745a60: d9 0f c6 d9 aa 0f 5c eb 0f 28 da 0f c6 da aa 0f
00745a70: 58 d8 0f 28 c2 0f c6 c2 00 0f 28 f4 0f 5e f7 0f
00745a80: c6 c9 55 0f 58 c1 0f 59 c6 0f 59 fc 0f 59 de 0f
00745a90: 59 ee 0f c6 c7 10 0f c6 dd 32 0f c6 c3 88 0f 29
00745aa0: 44 24 10 eb 5b 0f 58 74 24 10 0f 5c ee 0f 58 dd
00745ab0: 0f 51 eb 0f 28 d9 0f c6 d9 55 0f 28 fa 0f c6 fa
00745ac0: 00 0f 5c df 0f 28 f8 0f c6 c9 aa 0f c6 f8 55 0f
00745ad0: c6 d2 aa 0f 28 f4 0f 5e f5 0f c6 c0 00 0f 58 c8
00745ae0: 0f 58 d7 0f 59 ce 0f 59 d6 0f 59 ec 0f 59 de 0f
00745af0: c6 ca 10 0f c6 eb 32 0f c6 cd 88 0f 29 4c 24 10
00745b00: 8d 54 24 10 52 8b cf e8 04 2b 21 00 a1 fc a0 1e
00745b10: 01 50 8b ce e8 47 e7 1e 00 8b 0d 38 a1 1e 01 51
00745b20: 8b ce 8b f8 e8 37 e7 1e 00 85 ff 8b c8 89 4c 24
00745b30: 0c 75 3e 85 c9 74 0d e8 b4 c6 20 00 84 c0 75 2d
00745b40: 8b 4c 24 0c 85 db 74 29 8b ce e8 e1 95 f4 ff 85
00745b50: c0 74 1a 8b 10 8b c8 8b 42 0c 68 0e 6b 56 90 ff
00745b60: d0 85 c0 74 08 56 8b c8 e8 a3 76 38 00 8b 4c 24
00745b70: 0c 85 c9 74 07 8b 11 8b 42 38 ff d0 5f 5e 5b 8b
00745b80: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007456f0 <.text+0x3446f0>:
  7456f0:	55                                              	push   ebp
  7456f1:	8b ec                                           	mov    ebp,esp
  7456f3:	83 e4 f0                                        	and    esp,0xfffffff0
  7456f6:	83 ec 74                                        	sub    esp,0x74
  7456f9:	53                                              	push   ebx
  7456fa:	56                                              	push   esi
  7456fb:	57                                              	push   edi
  7456fc:	e8 6f 1e 1f 00                                  	call   0x937570
  745701:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  745704:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  745707:	51                                              	push   ecx
  745708:	52                                              	push   edx
  745709:	8b c8                                           	mov    ecx,eax
  74570b:	e8 70 28 1f 00                                  	call   0x937f80
  745710:	8b f0                                           	mov    esi,eax
  745712:	85 f6                                           	test   esi,esi
  745714:	0f 84 62 04 00 00                               	je     0x745b7c
  74571a:	a1 84 d4 1d 01                                  	mov    eax,ds:0x11dd484
  74571f:	50                                              	push   eax
  745720:	8b ce                                           	mov    ecx,esi
  745722:	e8 39 eb 1e 00                                  	call   0x934260
  745727:	85 c0                                           	test   eax,eax
  745729:	74 0f                                           	je     0x74573a
  74572b:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  74572e:	83 c0 08                                        	add    eax,0x8
  745731:	8b c8                                           	mov    ecx,eax
  745733:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
  745736:	ff d0                                           	call   eax
  745738:	eb 19                                           	jmp    0x745753
  74573a:	8b 0d 58 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea158
  745740:	51                                              	push   ecx
  745741:	8b ce                                           	mov    ecx,esi
  745743:	e8 18 eb 1e 00                                  	call   0x934260
  745748:	85 c0                                           	test   eax,eax
  74574a:	74 07                                           	je     0x745753
  74574c:	8b c8                                           	mov    ecx,eax
  74574e:	e8 7d 07 21 00                                  	call   0x955ed0
  745753:	8b 15 08 df 1e 01                               	mov    edx,DWORD PTR ds:0x11edf08
  745759:	52                                              	push   edx
  74575a:	8b ce                                           	mov    ecx,esi
  74575c:	e8 ff ea 1e 00                                  	call   0x934260
  745761:	8b d8                                           	mov    ebx,eax
  745763:	a1 58 a1 1e 01                                  	mov    eax,ds:0x11ea158
  745768:	50                                              	push   eax
  745769:	8b ce                                           	mov    ecx,esi
  74576b:	e8 f0 ea 1e 00                                  	call   0x934260
  745770:	8b f8                                           	mov    edi,eax
  745772:	85 ff                                           	test   edi,edi
  745774:	0f 84 92 03 00 00                               	je     0x745b0c
  74577a:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  74577e:	51                                              	push   ecx
  74577f:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
  745782:	e8 c9 68 02 00                                  	call   0x76c050
  745787:	0f 28 28                                        	movaps xmm5,XMMWORD PTR [eax]
  74578a:	f3 0f 10 35 f8 98 f9 00                         	movss  xmm6,DWORD PTR ds:0xf998f8
  745792:	f3 0f 10 25 b4 b5 f9 00                         	movss  xmm4,DWORD PTR ds:0xf9b5b4
  74579a:	0f 28 cd                                        	movaps xmm1,xmm5
  74579d:	0f 59 cd                                        	mulps  xmm1,xmm5
  7457a0:	0f 28 c1                                        	movaps xmm0,xmm1
  7457a3:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
  7457a7:	0f 28 d1                                        	movaps xmm2,xmm1
  7457aa:	0f c6 d1 01                                     	shufps xmm2,xmm1,0x1
  7457ae:	0f 58 c2                                        	addps  xmm0,xmm2
  7457b1:	0f 58 c1                                        	addps  xmm0,xmm1
  7457b4:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  7457b8:	0f 52 d0                                        	rsqrtps xmm2,xmm0
  7457bb:	0f 28 fa                                        	movaps xmm7,xmm2
  7457be:	0f 59 fa                                        	mulps  xmm7,xmm2
  7457c1:	0f 59 f8                                        	mulps  xmm7,xmm0
  7457c4:	f3 0f 10 de                                     	movss  xmm3,xmm6
  7457c8:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  7457cc:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
  7457d0:	0f 28 cb                                        	movaps xmm1,xmm3
  7457d3:	0f 5c cf                                        	subps  xmm1,xmm7
  7457d6:	0f 28 fc                                        	movaps xmm7,xmm4
  7457d9:	0f 59 fa                                        	mulps  xmm7,xmm2
  7457dc:	0f 59 cf                                        	mulps  xmm1,xmm7
  7457df:	0f 58 ca                                        	addps  xmm1,xmm2
  7457e2:	0f 28 d1                                        	movaps xmm2,xmm1
  7457e5:	0f 59 d1                                        	mulps  xmm2,xmm1
  7457e8:	0f 59 d0                                        	mulps  xmm2,xmm0
  7457eb:	0f 28 c3                                        	movaps xmm0,xmm3
  7457ee:	0f 5c c2                                        	subps  xmm0,xmm2
  7457f1:	0f 28 d4                                        	movaps xmm2,xmm4
  7457f4:	0f 59 d1                                        	mulps  xmm2,xmm1
  7457f7:	0f 59 c2                                        	mulps  xmm0,xmm2
  7457fa:	0f 58 c1                                        	addps  xmm0,xmm1
  7457fd:	0f 57 c9                                        	xorps  xmm1,xmm1
  745800:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  745806:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  74580c:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  745812:	0f 59 c5                                        	mulps  xmm0,xmm5
  745815:	f3 0f 11 74 24 14                               	movss  DWORD PTR [esp+0x14],xmm6
  74581b:	0f 28 6c 24 10                                  	movaps xmm5,XMMWORD PTR [esp+0x10]
  745820:	0f 28 d5                                        	movaps xmm2,xmm5
  745823:	0f c6 d5 12                                     	shufps xmm2,xmm5,0x12
  745827:	0f 28 f0                                        	movaps xmm6,xmm0
  74582a:	0f 28 c8                                        	movaps xmm1,xmm0
  74582d:	0f c6 c8 09                                     	shufps xmm1,xmm0,0x9
  745831:	0f 59 d1                                        	mulps  xmm2,xmm1
  745834:	0f 29 4c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm1
  745839:	0f c6 ed 09                                     	shufps xmm5,xmm5,0x9
  74583d:	0f c6 f0 12                                     	shufps xmm6,xmm0,0x12
  745841:	0f 59 ee                                        	mulps  xmm5,xmm6
  745844:	0f 5c ea                                        	subps  xmm5,xmm2
  745847:	0f 28 d5                                        	movaps xmm2,xmm5
  74584a:	0f 59 d5                                        	mulps  xmm2,xmm5
  74584d:	0f 28 ca                                        	movaps xmm1,xmm2
  745850:	0f c6 ca 02                                     	shufps xmm1,xmm2,0x2
  745854:	0f 28 fa                                        	movaps xmm7,xmm2
  745857:	0f c6 fa 01                                     	shufps xmm7,xmm2,0x1
  74585b:	0f 58 cf                                        	addps  xmm1,xmm7
  74585e:	0f 58 ca                                        	addps  xmm1,xmm2
  745861:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  745865:	0f 52 f9                                        	rsqrtps xmm7,xmm1
  745868:	0f 28 d7                                        	movaps xmm2,xmm7
  74586b:	0f 59 d7                                        	mulps  xmm2,xmm7
  74586e:	0f 59 d1                                        	mulps  xmm2,xmm1
  745871:	0f 29 54 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm2
  745876:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
  74587b:	0f 28 4c 24 10                                  	movaps xmm1,XMMWORD PTR [esp+0x10]
  745880:	0f 28 d3                                        	movaps xmm2,xmm3
  745883:	0f 5c d1                                        	subps  xmm2,xmm1
  745886:	0f 28 cc                                        	movaps xmm1,xmm4
  745889:	0f 59 cf                                        	mulps  xmm1,xmm7
  74588c:	0f 59 d1                                        	mulps  xmm2,xmm1
  74588f:	0f 58 d7                                        	addps  xmm2,xmm7
  745892:	0f 28 fa                                        	movaps xmm7,xmm2
  745895:	0f 59 fa                                        	mulps  xmm7,xmm2
  745898:	0f 59 7c 24 20                                  	mulps  xmm7,XMMWORD PTR [esp+0x20]
  74589d:	85 db                                           	test   ebx,ebx
  74589f:	0f 28 cb                                        	movaps xmm1,xmm3
  7458a2:	0f 5c cf                                        	subps  xmm1,xmm7
  7458a5:	0f 28 fc                                        	movaps xmm7,xmm4
  7458a8:	0f 59 fa                                        	mulps  xmm7,xmm2
  7458ab:	0f 59 cf                                        	mulps  xmm1,xmm7
  7458ae:	0f 58 ca                                        	addps  xmm1,xmm2
  7458b1:	0f 59 cd                                        	mulps  xmm1,xmm5
  7458b4:	0f 28 d1                                        	movaps xmm2,xmm1
  7458b7:	0f c6 d1 12                                     	shufps xmm2,xmm1,0x12
  7458bb:	0f 59 54 24 30                                  	mulps  xmm2,XMMWORD PTR [esp+0x30]
  7458c0:	0f 28 e9                                        	movaps xmm5,xmm1
  7458c3:	0f c6 e9 09                                     	shufps xmm5,xmm1,0x9
  7458c7:	0f 59 ee                                        	mulps  xmm5,xmm6
  7458ca:	0f 5c d5                                        	subps  xmm2,xmm5
  7458cd:	74 04                                           	je     0x7458d3
  7458cf:	83 4b 2c 10                                     	or     DWORD PTR [ebx+0x2c],0x10
  7458d3:	0f 28 f2                                        	movaps xmm6,xmm2
  7458d6:	0f 28 e9                                        	movaps xmm5,xmm1
  7458d9:	0f c6 e9 00                                     	shufps xmm5,xmm1,0x0
  7458dd:	0f c6 f2 55                                     	shufps xmm6,xmm2,0x55
  7458e1:	0f 29 6c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm5
  7458e6:	0f 28 fe                                        	movaps xmm7,xmm6
  7458e9:	0f 58 fd                                        	addps  xmm7,xmm5
  7458ec:	0f 28 e8                                        	movaps xmm5,xmm0
  7458ef:	0f c6 e8 aa                                     	shufps xmm5,xmm0,0xaa
  7458f3:	0f 58 fd                                        	addps  xmm7,xmm5
  7458f6:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm7
  7458fb:	f3 0f 11 7c 24 30                               	movss  DWORD PTR [esp+0x30],xmm7
  745901:	f3 0f 10 3d cc 4c 0f 01                         	movss  xmm7,DWORD PTR ds:0x10f4ccc
  745909:	0f c6 ff 00                                     	shufps xmm7,xmm7,0x0
  74590d:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [esp+0x20],xmm7
  745913:	f3 0f 10 7c 24 30                               	movss  xmm7,DWORD PTR [esp+0x30]
  745919:	0f 2f 7c 24 20                                  	comiss xmm7,DWORD PTR [esp+0x20]
  74591e:	0f 29 4c 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm1
  745923:	0f 29 54 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm2
  745928:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  74592d:	76 58                                           	jbe    0x745987
  74592f:	0f 58 5c 24 40                                  	addps  xmm3,XMMWORD PTR [esp+0x40]
  745934:	0f 51 fb                                        	sqrtps xmm7,xmm3
  745937:	0f 28 d9                                        	movaps xmm3,xmm1
  74593a:	0f c6 d9 55                                     	shufps xmm3,xmm1,0x55
  74593e:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
  745942:	0f 28 ea                                        	movaps xmm5,xmm2
  745945:	0f c6 ea 00                                     	shufps xmm5,xmm2,0x0
  745949:	0f 5c dd                                        	subps  xmm3,xmm5
  74594c:	0f 28 e8                                        	movaps xmm5,xmm0
  74594f:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  745953:	0f 5c e9                                        	subps  xmm5,xmm1
  745956:	0f 28 ca                                        	movaps xmm1,xmm2
  745959:	0f c6 ca aa                                     	shufps xmm1,xmm2,0xaa
  74595d:	0f 28 f4                                        	movaps xmm6,xmm4
  745960:	0f 5e f7                                        	divps  xmm6,xmm7
  745963:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
  745967:	0f 5c c8                                        	subps  xmm1,xmm0
  74596a:	0f 59 ce                                        	mulps  xmm1,xmm6
  74596d:	0f 59 ee                                        	mulps  xmm5,xmm6
  745970:	0f 59 de                                        	mulps  xmm3,xmm6
  745973:	0f 59 fc                                        	mulps  xmm7,xmm4
  745976:	0f c6 cd 10                                     	shufps xmm1,xmm5,0x10
  74597a:	0f c6 df 32                                     	shufps xmm3,xmm7,0x32
  74597e:	0f c6 cb 88                                     	shufps xmm1,xmm3,0x88
  745982:	e9 74 01 00 00                                  	jmp    0x745afb
  745987:	f3 0f 10 7c 24 10                               	movss  xmm7,DWORD PTR [esp+0x10]
  74598d:	f3 0f 11 7c 24 40                               	movss  DWORD PTR [esp+0x40],xmm7
  745993:	f3 0f 10 7c 24 40                               	movss  xmm7,DWORD PTR [esp+0x40]
  745999:	f3 0f 11 74 24 30                               	movss  DWORD PTR [esp+0x30],xmm6
  74599f:	0f 2f 7c 24 30                                  	comiss xmm7,DWORD PTR [esp+0x30]
  7459a4:	0f 86 82 00 00 00                               	jbe    0x745a2c
  7459aa:	f3 0f 10 7c 24 10                               	movss  xmm7,DWORD PTR [esp+0x10]
  7459b0:	f3 0f 11 7c 24 40                               	movss  DWORD PTR [esp+0x40],xmm7
  7459b6:	f3 0f 10 7c 24 40                               	movss  xmm7,DWORD PTR [esp+0x40]
  7459bc:	f3 0f 11 6c 24 30                               	movss  DWORD PTR [esp+0x30],xmm5
  7459c2:	0f 2f 7c 24 30                                  	comiss xmm7,DWORD PTR [esp+0x30]
  7459c7:	76 63                                           	jbe    0x745a2c
  7459c9:	0f 58 ee                                        	addps  xmm5,xmm6
  7459cc:	0f 28 74 24 10                                  	movaps xmm6,XMMWORD PTR [esp+0x10]
  7459d1:	0f 5c f5                                        	subps  xmm6,xmm5
  7459d4:	0f 58 de                                        	addps  xmm3,xmm6
  7459d7:	0f 51 eb                                        	sqrtps xmm5,xmm3
  7459da:	0f 28 f2                                        	movaps xmm6,xmm2
  7459dd:	0f c6 f2 aa                                     	shufps xmm6,xmm2,0xaa
  7459e1:	0f 28 d8                                        	movaps xmm3,xmm0
  7459e4:	0f c6 d8 55                                     	shufps xmm3,xmm0,0x55
  7459e8:	0f 5c f3                                        	subps  xmm6,xmm3
  7459eb:	0f 28 d9                                        	movaps xmm3,xmm1
  7459ee:	0f c6 d9 aa                                     	shufps xmm3,xmm1,0xaa
  7459f2:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  7459f6:	0f 28 fc                                        	movaps xmm7,xmm4
  7459f9:	0f 5e fd                                        	divps  xmm7,xmm5
  7459fc:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  745a00:	0f 58 d8                                        	addps  xmm3,xmm0
  745a03:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  745a07:	0f 58 d1                                        	addps  xmm2,xmm1
  745a0a:	0f 59 ec                                        	mulps  xmm5,xmm4
  745a0d:	0f 59 d7                                        	mulps  xmm2,xmm7
  745a10:	0f 59 df                                        	mulps  xmm3,xmm7
  745a13:	0f 59 f7                                        	mulps  xmm6,xmm7
  745a16:	0f c6 ea 10                                     	shufps xmm5,xmm2,0x10
  745a1a:	0f c6 de 32                                     	shufps xmm3,xmm6,0x32
  745a1e:	0f c6 eb 88                                     	shufps xmm5,xmm3,0x88
  745a22:	0f 29 6c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm5
  745a27:	e9 d4 00 00 00                                  	jmp    0x745b00
  745a2c:	f3 0f 11 74 24 40                               	movss  DWORD PTR [esp+0x40],xmm6
  745a32:	f3 0f 10 7c 24 40                               	movss  xmm7,DWORD PTR [esp+0x40]
  745a38:	f3 0f 11 6c 24 30                               	movss  DWORD PTR [esp+0x30],xmm5
  745a3e:	0f 2f 7c 24 30                                  	comiss xmm7,DWORD PTR [esp+0x30]
  745a43:	76 60                                           	jbe    0x745aa5
  745a45:	0f 58 6c 24 10                                  	addps  xmm5,XMMWORD PTR [esp+0x10]
  745a4a:	0f 5c f5                                        	subps  xmm6,xmm5
  745a4d:	0f 58 de                                        	addps  xmm3,xmm6
  745a50:	0f 51 fb                                        	sqrtps xmm7,xmm3
  745a53:	0f 28 e8                                        	movaps xmm5,xmm0
  745a56:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  745a5a:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
  745a5e:	0f 28 d9                                        	movaps xmm3,xmm1
  745a61:	0f c6 d9 aa                                     	shufps xmm3,xmm1,0xaa
  745a65:	0f 5c eb                                        	subps  xmm5,xmm3
  745a68:	0f 28 da                                        	movaps xmm3,xmm2
  745a6b:	0f c6 da aa                                     	shufps xmm3,xmm2,0xaa
  745a6f:	0f 58 d8                                        	addps  xmm3,xmm0
  745a72:	0f 28 c2                                        	movaps xmm0,xmm2
  745a75:	0f c6 c2 00                                     	shufps xmm0,xmm2,0x0
  745a79:	0f 28 f4                                        	movaps xmm6,xmm4
  745a7c:	0f 5e f7                                        	divps  xmm6,xmm7
  745a7f:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  745a83:	0f 58 c1                                        	addps  xmm0,xmm1
  745a86:	0f 59 c6                                        	mulps  xmm0,xmm6
  745a89:	0f 59 fc                                        	mulps  xmm7,xmm4
  745a8c:	0f 59 de                                        	mulps  xmm3,xmm6
  745a8f:	0f 59 ee                                        	mulps  xmm5,xmm6
  745a92:	0f c6 c7 10                                     	shufps xmm0,xmm7,0x10
  745a96:	0f c6 dd 32                                     	shufps xmm3,xmm5,0x32
  745a9a:	0f c6 c3 88                                     	shufps xmm0,xmm3,0x88
  745a9e:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  745aa3:	eb 5b                                           	jmp    0x745b00
  745aa5:	0f 58 74 24 10                                  	addps  xmm6,XMMWORD PTR [esp+0x10]
  745aaa:	0f 5c ee                                        	subps  xmm5,xmm6
  745aad:	0f 58 dd                                        	addps  xmm3,xmm5
  745ab0:	0f 51 eb                                        	sqrtps xmm5,xmm3
  745ab3:	0f 28 d9                                        	movaps xmm3,xmm1
  745ab6:	0f c6 d9 55                                     	shufps xmm3,xmm1,0x55
  745aba:	0f 28 fa                                        	movaps xmm7,xmm2
  745abd:	0f c6 fa 00                                     	shufps xmm7,xmm2,0x0
  745ac1:	0f 5c df                                        	subps  xmm3,xmm7
  745ac4:	0f 28 f8                                        	movaps xmm7,xmm0
  745ac7:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
  745acb:	0f c6 f8 55                                     	shufps xmm7,xmm0,0x55
  745acf:	0f c6 d2 aa                                     	shufps xmm2,xmm2,0xaa
  745ad3:	0f 28 f4                                        	movaps xmm6,xmm4
  745ad6:	0f 5e f5                                        	divps  xmm6,xmm5
  745ad9:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  745add:	0f 58 c8                                        	addps  xmm1,xmm0
  745ae0:	0f 58 d7                                        	addps  xmm2,xmm7
  745ae3:	0f 59 ce                                        	mulps  xmm1,xmm6
  745ae6:	0f 59 d6                                        	mulps  xmm2,xmm6
  745ae9:	0f 59 ec                                        	mulps  xmm5,xmm4
  745aec:	0f 59 de                                        	mulps  xmm3,xmm6
  745aef:	0f c6 ca 10                                     	shufps xmm1,xmm2,0x10
  745af3:	0f c6 eb 32                                     	shufps xmm5,xmm3,0x32
  745af7:	0f c6 cd 88                                     	shufps xmm1,xmm5,0x88
  745afb:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
  745b00:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  745b04:	52                                              	push   edx
  745b05:	8b cf                                           	mov    ecx,edi
  745b07:	e8 04 2b 21 00                                  	call   0x958610
  745b0c:	a1 fc a0 1e 01                                  	mov    eax,ds:0x11ea0fc
  745b11:	50                                              	push   eax
  745b12:	8b ce                                           	mov    ecx,esi
  745b14:	e8 47 e7 1e 00                                  	call   0x934260
  745b19:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  745b1f:	51                                              	push   ecx
  745b20:	8b ce                                           	mov    ecx,esi
  745b22:	8b f8                                           	mov    edi,eax
  745b24:	e8 37 e7 1e 00                                  	call   0x934260
  745b29:	85 ff                                           	test   edi,edi
  745b2b:	8b c8                                           	mov    ecx,eax
  745b2d:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  745b31:	75 3e                                           	jne    0x745b71
  745b33:	85 c9                                           	test   ecx,ecx
  745b35:	74 0d                                           	je     0x745b44
  745b37:	e8 b4 c6 20 00                                  	call   0x9521f0
  745b3c:	84 c0                                           	test   al,al
  745b3e:	75 2d                                           	jne    0x745b6d
  745b40:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  745b44:	85 db                                           	test   ebx,ebx
  745b46:	74 29                                           	je     0x745b71
  745b48:	8b ce                                           	mov    ecx,esi
  745b4a:	e8 e1 95 f4 ff                                  	call   0x68f130
  745b4f:	85 c0                                           	test   eax,eax
  745b51:	74 1a                                           	je     0x745b6d
  745b53:	8b 10                                           	mov    edx,DWORD PTR [eax]
  745b55:	8b c8                                           	mov    ecx,eax
  745b57:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  745b5a:	68 0e 6b 56 90                                  	push   0x90566b0e
  745b5f:	ff d0                                           	call   eax
  745b61:	85 c0                                           	test   eax,eax
  745b63:	74 08                                           	je     0x745b6d
  745b65:	56                                              	push   esi
  745b66:	8b c8                                           	mov    ecx,eax
  745b68:	e8 a3 76 38 00                                  	call   0xacd210
  745b6d:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  745b71:	85 c9                                           	test   ecx,ecx
  745b73:	74 07                                           	je     0x745b7c
  745b75:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  745b77:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
  745b7a:	ff d0                                           	call   eax
  745b7c:	5f                                              	pop    edi
  745b7d:	5e                                              	pop    esi
  745b7e:	5b                                              	pop    ebx
  745b7f:	8b e5                                           	mov    esp,ebp
  745b81:	5d                                              	pop    ebp
  745b82:	c3                                              	ret
  745b83:	cc                                              	int3
  745b84:	cc                                              	int3
  745b85:	cc                                              	int3
  745b86:	cc                                              	int3
  745b87:	cc                                              	int3
  745b88:	cc                                              	int3
  745b89:	cc                                              	int3
  745b8a:	cc                                              	int3
  745b8b:	cc                                              	int3
  745b8c:	cc                                              	int3
  745b8d:	cc                                              	int3
  745b8e:	cc                                              	int3
  745b8f:	cc                                              	int3
