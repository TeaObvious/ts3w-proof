# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076e650 (ScriptCore.Slots::Slots_AttachToSlotWithOffsetImpl)
Paired Ghidra pseudocode: 0076E650_ScriptCore_Slots_Slots_AttachToSlotWithOffsetImpl.c
Window: [0x0076e650, 0x0076e9b0) (864 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076e9b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076e650: 55 8b ec 83 e4 f0 81 ec 34 01 00 00 8b 45 28 f3
0076e660: 0f 10 48 08 f3 0f 11 4c 24 0c f3 0f 10 48 04 f3
0076e670: 0f 11 4c 24 08 f3 0f 10 4d 2c 0f c6 c9 00 0f 29
0076e680: 4c 24 24 d9 44 24 24 f3 0f 10 00 d9 fe f3 0f 11
0076e690: 44 24 10 f3 0f 11 44 24 04 0f 28 44 24 04 0f 29
0076e6a0: 84 24 84 00 00 00 0f 29 4c 24 24 f3 0f 10 0d f8
0076e6b0: 98 f9 00 0f c6 c9 00 53 56 57 d9 5c 24 2c d9 44
0076e6c0: 24 30 d9 ff f3 0f 10 44 24 2c 0f c6 c0 00 d9 5c
0076e6d0: 24 2c f3 0f 10 74 24 2c 0f c6 f6 00 0f 5c ce 0f
0076e6e0: 28 f9 0f 28 8c 24 90 00 00 00 0f 28 df 0f 28 ef
0076e6f0: 0f 28 d1 0f c6 d1 00 0f 28 e1 0f c6 e1 55 0f c6
0076e700: c9 aa 0f 59 f9 0f 29 7c 24 10 0f 28 f8 0f 59 fa
0076e710: 0f 29 7c 24 40 0f 28 f8 0f 59 c1 0f 29 44 24 60
0076e720: 0f 57 c0 0f 29 44 24 50 0f 29 84 24 80 00 00 00
0076e730: 0f 59 fc 0f 29 7c 24 30 0f 28 7c 24 10 0f 28 c7
0076e740: 0f 59 c1 0f 58 c6 0f 29 84 24 a0 00 00 00 0f 28
0076e750: c7 0f 28 7c 24 60 0f 59 c4 0f 5c 44 24 40 0f 29
0076e760: 84 24 c0 00 00 00 0f 28 44 24 10 0f 59 c2 0f 58
0076e770: 44 24 30 0f 29 84 24 e0 00 00 00 0f 28 44 24 50
0076e780: 0f 29 44 24 70 0f 59 ec 0f 28 c5 0f 59 c1 0f 58
0076e790: 44 24 40 0f 29 84 24 d0 00 00 00 0f 28 c5 0f 59
0076e7a0: c4 0f 59 ea 0f 58 c6 0f 5c ef 0f 59 da 0f 29 84
0076e7b0: 24 b0 00 00 00 0f 29 ac 24 f0 00 00 00 0f 28 44
0076e7c0: 24 50 0f 29 44 24 60 0f 28 c3 0f 59 c1 0f 5c 44
0076e7d0: 24 30 0f 29 44 24 30 0f 28 c3 0f 59 c4 0f 58 c7
0076e7e0: 0f 29 44 24 50 f3 0f 10 44 24 60 f3 0f 11 44 24
0076e7f0: 1c f3 0f 10 44 24 30 f3 0f 11 44 24 18 f3 0f 10
0076e800: 44 24 50 f3 0f 11 44 24 14 8b 45 24 0f 59 da 0f
0076e810: 58 de 0f 29 5c 24 40 f3 0f 10 44 24 40 f3 0f 11
0076e820: 44 24 10 0f 28 44 24 10 0f 29 84 24 00 01 00 00
0076e830: f3 0f 10 44 24 70 f3 0f 11 44 24 1c f3 0f 10 84
0076e840: 24 d0 00 00 00 f3 0f 11 44 24 18 f3 0f 10 84 24
0076e850: b0 00 00 00 f3 0f 11 44 24 14 f3 0f 10 84 24 f0
0076e860: 00 00 00 f3 0f 11 44 24 10 0f 28 44 24 10 0f 29
0076e870: 84 24 10 01 00 00 f3 0f 10 84 24 80 00 00 00 f3
0076e880: 0f 11 44 24 1c f3 0f 10 84 24 a0 00 00 00 f3 0f
0076e890: 11 44 24 18 f3 0f 10 84 24 c0 00 00 00 f3 0f 11
0076e8a0: 44 24 14 f3 0f 10 84 24 e0 00 00 00 f3 0f 11 44
0076e8b0: 24 10 0f 28 44 24 10 0f 29 84 24 20 01 00 00 f3
0076e8c0: 0f 10 05 f8 98 f9 00 f3 0f 11 44 24 1c f3 0f 10
0076e8d0: 40 08 f3 0f 11 44 24 18 f3 0f 10 40 04 f3 0f 11
0076e8e0: 44 24 14 f3 0f 10 00 f3 0f 11 44 24 10 0f 28 44
0076e8f0: 24 10 0f 29 84 24 30 01 00 00 e8 71 8c 1c 00 8b
0076e900: 4d 08 8b f8 8b 45 0c 50 51 8b cf e8 70 96 1c 00
0076e910: 8b f0 85 f6 74 14 8b 15 58 a1 1e 01 52 8b ce e8
0076e920: 3c 59 1c 00 8b d8 85 db 75 15 b8 e9 03 00 00 33
0076e930: c9 85 c0 0f 94 c1 8b c1 5f 5e 5b 8b e5 5d c3 8b
0076e940: 45 14 8b 4d 10 50 51 8b cf e8 32 96 1c 00 8b f8
0076e950: 85 ff 75 15 b8 ea 03 00 00 33 c9 85 c0 0f 94 c1
0076e960: 8b c1 5f 5e 5b 8b e5 5d c3 80 7d 20 00 74 19 8b
0076e970: 15 84 d4 1d 01 52 8b ce e8 e3 58 1c 00 85 c0 74
0076e980: 07 8b c8 e8 68 e2 1c 00 8b 45 1c 8b 55 18 50 8d
0076e990: 8c 24 04 01 00 00 51 52 57 8b cb e8 f0 b4 1e 00
0076e9a0: 33 c9 85 c0 0f 94 c1 5f 5e 5b 8b c1 8b e5 5d c3

LINEAR DISASSEMBLY
0076e650 <.text+0x36d650>:
  76e650:	55                                              	push   ebp
  76e651:	8b ec                                           	mov    ebp,esp
  76e653:	83 e4 f0                                        	and    esp,0xfffffff0
  76e656:	81 ec 34 01 00 00                               	sub    esp,0x134
  76e65c:	8b 45 28                                        	mov    eax,DWORD PTR [ebp+0x28]
  76e65f:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
  76e664:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  76e66a:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  76e66f:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  76e675:	f3 0f 10 4d 2c                                  	movss  xmm1,DWORD PTR [ebp+0x2c]
  76e67a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  76e67e:	0f 29 4c 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm1
  76e683:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  76e687:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  76e68b:	d9 fe                                           	fsin
  76e68d:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76e693:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
  76e699:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
  76e69e:	0f 29 84 24 84 00 00 00                         	movaps XMMWORD PTR [esp+0x84],xmm0
  76e6a6:	0f 29 4c 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm1
  76e6ab:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  76e6b3:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  76e6b7:	53                                              	push   ebx
  76e6b8:	56                                              	push   esi
  76e6b9:	57                                              	push   edi
  76e6ba:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
  76e6be:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  76e6c2:	d9 ff                                           	fcos
  76e6c4:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
  76e6ca:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  76e6ce:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
  76e6d2:	f3 0f 10 74 24 2c                               	movss  xmm6,DWORD PTR [esp+0x2c]
  76e6d8:	0f c6 f6 00                                     	shufps xmm6,xmm6,0x0
  76e6dc:	0f 5c ce                                        	subps  xmm1,xmm6
  76e6df:	0f 28 f9                                        	movaps xmm7,xmm1
  76e6e2:	0f 28 8c 24 90 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0x90]
  76e6ea:	0f 28 df                                        	movaps xmm3,xmm7
  76e6ed:	0f 28 ef                                        	movaps xmm5,xmm7
  76e6f0:	0f 28 d1                                        	movaps xmm2,xmm1
  76e6f3:	0f c6 d1 00                                     	shufps xmm2,xmm1,0x0
  76e6f7:	0f 28 e1                                        	movaps xmm4,xmm1
  76e6fa:	0f c6 e1 55                                     	shufps xmm4,xmm1,0x55
  76e6fe:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
  76e702:	0f 59 f9                                        	mulps  xmm7,xmm1
  76e705:	0f 29 7c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm7
  76e70a:	0f 28 f8                                        	movaps xmm7,xmm0
  76e70d:	0f 59 fa                                        	mulps  xmm7,xmm2
  76e710:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm7
  76e715:	0f 28 f8                                        	movaps xmm7,xmm0
  76e718:	0f 59 c1                                        	mulps  xmm0,xmm1
  76e71b:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  76e720:	0f 57 c0                                        	xorps  xmm0,xmm0
  76e723:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  76e728:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  76e730:	0f 59 fc                                        	mulps  xmm7,xmm4
  76e733:	0f 29 7c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm7
  76e738:	0f 28 7c 24 10                                  	movaps xmm7,XMMWORD PTR [esp+0x10]
  76e73d:	0f 28 c7                                        	movaps xmm0,xmm7
  76e740:	0f 59 c1                                        	mulps  xmm0,xmm1
  76e743:	0f 58 c6                                        	addps  xmm0,xmm6
  76e746:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
  76e74e:	0f 28 c7                                        	movaps xmm0,xmm7
  76e751:	0f 28 7c 24 60                                  	movaps xmm7,XMMWORD PTR [esp+0x60]
  76e756:	0f 59 c4                                        	mulps  xmm0,xmm4
  76e759:	0f 5c 44 24 40                                  	subps  xmm0,XMMWORD PTR [esp+0x40]
  76e75e:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  76e766:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76e76b:	0f 59 c2                                        	mulps  xmm0,xmm2
  76e76e:	0f 58 44 24 30                                  	addps  xmm0,XMMWORD PTR [esp+0x30]
  76e773:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  76e77b:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  76e780:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  76e785:	0f 59 ec                                        	mulps  xmm5,xmm4
  76e788:	0f 28 c5                                        	movaps xmm0,xmm5
  76e78b:	0f 59 c1                                        	mulps  xmm0,xmm1
  76e78e:	0f 58 44 24 40                                  	addps  xmm0,XMMWORD PTR [esp+0x40]
  76e793:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
  76e79b:	0f 28 c5                                        	movaps xmm0,xmm5
  76e79e:	0f 59 c4                                        	mulps  xmm0,xmm4
  76e7a1:	0f 59 ea                                        	mulps  xmm5,xmm2
  76e7a4:	0f 58 c6                                        	addps  xmm0,xmm6
  76e7a7:	0f 5c ef                                        	subps  xmm5,xmm7
  76e7aa:	0f 59 da                                        	mulps  xmm3,xmm2
  76e7ad:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
  76e7b5:	0f 29 ac 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm5
  76e7bd:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  76e7c2:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  76e7c7:	0f 28 c3                                        	movaps xmm0,xmm3
  76e7ca:	0f 59 c1                                        	mulps  xmm0,xmm1
  76e7cd:	0f 5c 44 24 30                                  	subps  xmm0,XMMWORD PTR [esp+0x30]
  76e7d2:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  76e7d7:	0f 28 c3                                        	movaps xmm0,xmm3
  76e7da:	0f 59 c4                                        	mulps  xmm0,xmm4
  76e7dd:	0f 58 c7                                        	addps  xmm0,xmm7
  76e7e0:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  76e7e5:	f3 0f 10 44 24 60                               	movss  xmm0,DWORD PTR [esp+0x60]
  76e7eb:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76e7f1:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  76e7f7:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76e7fd:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  76e803:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76e809:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  76e80c:	0f 59 da                                        	mulps  xmm3,xmm2
  76e80f:	0f 58 de                                        	addps  xmm3,xmm6
  76e812:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
  76e817:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
  76e81d:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76e823:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76e828:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
  76e830:	f3 0f 10 44 24 70                               	movss  xmm0,DWORD PTR [esp+0x70]
  76e836:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76e83c:	f3 0f 10 84 24 d0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd0]
  76e845:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76e84b:	f3 0f 10 84 24 b0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xb0]
  76e854:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76e85a:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf0]
  76e863:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76e869:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76e86e:	0f 29 84 24 10 01 00 00                         	movaps XMMWORD PTR [esp+0x110],xmm0
  76e876:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
  76e87f:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76e885:	f3 0f 10 84 24 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa0]
  76e88e:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76e894:	f3 0f 10 84 24 c0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xc0]
  76e89d:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76e8a3:	f3 0f 10 84 24 e0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xe0]
  76e8ac:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76e8b2:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76e8b7:	0f 29 84 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm0
  76e8bf:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  76e8c7:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76e8cd:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
  76e8d2:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76e8d8:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
  76e8dd:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76e8e3:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  76e8e7:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76e8ed:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76e8f2:	0f 29 84 24 30 01 00 00                         	movaps XMMWORD PTR [esp+0x130],xmm0
  76e8fa:	e8 71 8c 1c 00                                  	call   0x937570
  76e8ff:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  76e902:	8b f8                                           	mov    edi,eax
  76e904:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  76e907:	50                                              	push   eax
  76e908:	51                                              	push   ecx
  76e909:	8b cf                                           	mov    ecx,edi
  76e90b:	e8 70 96 1c 00                                  	call   0x937f80
  76e910:	8b f0                                           	mov    esi,eax
  76e912:	85 f6                                           	test   esi,esi
  76e914:	74 14                                           	je     0x76e92a
  76e916:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76e91c:	52                                              	push   edx
  76e91d:	8b ce                                           	mov    ecx,esi
  76e91f:	e8 3c 59 1c 00                                  	call   0x934260
  76e924:	8b d8                                           	mov    ebx,eax
  76e926:	85 db                                           	test   ebx,ebx
  76e928:	75 15                                           	jne    0x76e93f
  76e92a:	b8 e9 03 00 00                                  	mov    eax,0x3e9
  76e92f:	33 c9                                           	xor    ecx,ecx
  76e931:	85 c0                                           	test   eax,eax
  76e933:	0f 94 c1                                        	sete   cl
  76e936:	8b c1                                           	mov    eax,ecx
  76e938:	5f                                              	pop    edi
  76e939:	5e                                              	pop    esi
  76e93a:	5b                                              	pop    ebx
  76e93b:	8b e5                                           	mov    esp,ebp
  76e93d:	5d                                              	pop    ebp
  76e93e:	c3                                              	ret
  76e93f:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  76e942:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  76e945:	50                                              	push   eax
  76e946:	51                                              	push   ecx
  76e947:	8b cf                                           	mov    ecx,edi
  76e949:	e8 32 96 1c 00                                  	call   0x937f80
  76e94e:	8b f8                                           	mov    edi,eax
  76e950:	85 ff                                           	test   edi,edi
  76e952:	75 15                                           	jne    0x76e969
  76e954:	b8 ea 03 00 00                                  	mov    eax,0x3ea
  76e959:	33 c9                                           	xor    ecx,ecx
  76e95b:	85 c0                                           	test   eax,eax
  76e95d:	0f 94 c1                                        	sete   cl
  76e960:	8b c1                                           	mov    eax,ecx
  76e962:	5f                                              	pop    edi
  76e963:	5e                                              	pop    esi
  76e964:	5b                                              	pop    ebx
  76e965:	8b e5                                           	mov    esp,ebp
  76e967:	5d                                              	pop    ebp
  76e968:	c3                                              	ret
  76e969:	80 7d 20 00                                     	cmp    BYTE PTR [ebp+0x20],0x0
  76e96d:	74 19                                           	je     0x76e988
  76e96f:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  76e975:	52                                              	push   edx
  76e976:	8b ce                                           	mov    ecx,esi
  76e978:	e8 e3 58 1c 00                                  	call   0x934260
  76e97d:	85 c0                                           	test   eax,eax
  76e97f:	74 07                                           	je     0x76e988
  76e981:	8b c8                                           	mov    ecx,eax
  76e983:	e8 68 e2 1c 00                                  	call   0x93cbf0
  76e988:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  76e98b:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
  76e98e:	50                                              	push   eax
  76e98f:	8d 8c 24 04 01 00 00                            	lea    ecx,[esp+0x104]
  76e996:	51                                              	push   ecx
  76e997:	52                                              	push   edx
  76e998:	57                                              	push   edi
  76e999:	8b cb                                           	mov    ecx,ebx
  76e99b:	e8 f0 b4 1e 00                                  	call   0x959e90
  76e9a0:	33 c9                                           	xor    ecx,ecx
  76e9a2:	85 c0                                           	test   eax,eax
  76e9a4:	0f 94 c1                                        	sete   cl
  76e9a7:	5f                                              	pop    edi
  76e9a8:	5e                                              	pop    esi
  76e9a9:	5b                                              	pop    ebx
  76e9aa:	8b c1                                           	mov    eax,ecx
  76e9ac:	8b e5                                           	mov    esp,ebp
  76e9ae:	5d                                              	pop    ebp
  76e9af:	c3                                              	ret
