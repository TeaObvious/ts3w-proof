# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105607c0 (Slots_CanAttachToSlotWithOffsetImpl)
Paired Ghidra pseudocode: 105607C0_Slots_CanAttachToSlotWithOffsetImpl.c
Window: [0x105607c0, 0x10560ae0) (800 bytes; stop exclusive)
Next defined Ghidra entry: 0x10560ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105607c0: 55 8b ec 83 e4 f0 81 ec 38 01 00 00 8b 45 28 f3
105607d0: 0f 10 48 08 f3 0f 11 4c 24 10 f3 0f 10 48 04 f3
105607e0: 0f 11 4c 24 0c f3 0f 10 4d 2c 0f c6 c9 00 0f 29
105607f0: 4c 24 28 d9 44 24 28 f3 0f 10 00 d9 fe f3 0f 11
10560800: 44 24 14 f3 0f 11 44 24 08 0f 28 44 24 08 0f 29
10560810: 84 24 88 00 00 00 0f 29 4c 24 28 f3 0f 10 0d d4
10560820: b0 ac 10 0f c6 c9 00 56 57 d9 5c 24 2c d9 44 24
10560830: 30 d9 ff f3 0f 10 44 24 2c 0f c6 c0 00 d9 5c 24
10560840: 2c f3 0f 10 74 24 2c 0f c6 f6 00 0f 5c ce 0f 28
10560850: f9 0f 28 8c 24 90 00 00 00 0f 28 df 0f 28 ef 0f
10560860: 28 d1 0f c6 d1 00 0f 28 e1 0f c6 e1 55 0f c6 c9
10560870: aa 0f 59 f9 0f 29 7c 24 10 0f 28 f8 0f 59 fa 0f
10560880: 29 7c 24 40 0f 28 f8 0f 59 c1 0f 29 44 24 60 0f
10560890: 57 c0 0f 29 44 24 50 0f 29 84 24 80 00 00 00 0f
105608a0: 59 fc 0f 29 7c 24 30 0f 28 7c 24 10 0f 28 c7 0f
105608b0: 59 c1 0f 58 c6 0f 29 84 24 a0 00 00 00 0f 28 c7
105608c0: 0f 28 7c 24 60 0f 59 c4 0f 5c 44 24 40 0f 29 84
105608d0: 24 c0 00 00 00 0f 28 44 24 10 0f 59 c2 0f 58 44
105608e0: 24 30 0f 29 84 24 e0 00 00 00 0f 28 44 24 50 0f
105608f0: 29 44 24 70 0f 59 ec 0f 28 c5 0f 59 c1 0f 58 44
10560900: 24 40 0f 29 84 24 d0 00 00 00 0f 28 c5 0f 59 c4
10560910: 0f 58 c6 0f 59 ea 0f 29 84 24 b0 00 00 00 0f 28
10560920: 44 24 50 0f 5c ef 0f 59 da 0f 29 ac 24 f0 00 00
10560930: 00 0f 29 44 24 60 0f 28 c3 0f 59 c1 0f 5c 44 24
10560940: 30 0f 29 44 24 30 0f 28 c3 0f 59 c4 0f 58 c7 0f
10560950: 29 44 24 50 f3 0f 10 44 24 60 f3 0f 11 44 24 1c
10560960: f3 0f 10 44 24 30 f3 0f 11 44 24 18 f3 0f 10 44
10560970: 24 50 f3 0f 11 44 24 14 8b 45 24 0f 59 da 0f 58
10560980: de 0f 29 5c 24 40 f3 0f 10 44 24 40 f3 0f 11 44
10560990: 24 10 0f 28 44 24 10 0f 29 84 24 00 01 00 00 f3
105609a0: 0f 10 44 24 70 f3 0f 11 44 24 1c f3 0f 10 84 24
105609b0: d0 00 00 00 f3 0f 11 44 24 18 f3 0f 10 84 24 b0
105609c0: 00 00 00 f3 0f 11 44 24 14 f3 0f 10 84 24 f0 00
105609d0: 00 00 f3 0f 11 44 24 10 0f 28 44 24 10 0f 29 84
105609e0: 24 10 01 00 00 f3 0f 10 84 24 80 00 00 00 f3 0f
105609f0: 11 44 24 1c f3 0f 10 84 24 a0 00 00 00 f3 0f 11
10560a00: 44 24 18 f3 0f 10 84 24 c0 00 00 00 f3 0f 11 44
10560a10: 24 14 f3 0f 10 84 24 e0 00 00 00 f3 0f 11 44 24
10560a20: 10 0f 28 44 24 10 0f 29 84 24 20 01 00 00 f3 0f
10560a30: 10 05 d4 b0 ac 10 f3 0f 11 44 24 1c f3 0f 10 40
10560a40: 08 f3 0f 11 44 24 18 f3 0f 10 40 04 f3 0f 11 44
10560a50: 24 14 f3 0f 10 00 f3 0f 11 44 24 10 0f 28 44 24
10560a60: 10 0f 29 84 24 30 01 00 00 e8 32 97 1c 00 8b 4d
10560a70: 08 8b f8 8b 45 0c 50 51 8b cf e8 31 a1 1c 00 8b
10560a80: f0 85 f6 74 12 8b 15 98 d9 c8 10 52 8b ce e8 0d
10560a90: 63 1c 00 85 c0 75 0b b8 e9 03 00 00 5f 5e 8b e5
10560aa0: 5d c3 8b 45 14 8b 4d 10 50 51 8b cf e8 ff a0 1c
10560ab0: 00 85 c0 75 0b b8 ea 03 00 00 5f 5e 8b e5 5d c3
10560ac0: 8b 4d 18 6a 00 8d 94 24 04 01 00 00 52 51 50 56
10560ad0: e8 ab bf ba ff 83 c4 14 5f 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
105607c0 <.text+0x55f7c0>:
105607c0:	55                                              	push   ebp
105607c1:	8b ec                                           	mov    ebp,esp
105607c3:	83 e4 f0                                        	and    esp,0xfffffff0
105607c6:	81 ec 38 01 00 00                               	sub    esp,0x138
105607cc:	8b 45 28                                        	mov    eax,DWORD PTR [ebp+0x28]
105607cf:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
105607d4:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
105607da:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
105607df:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
105607e5:	f3 0f 10 4d 2c                                  	movss  xmm1,DWORD PTR [ebp+0x2c]
105607ea:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
105607ee:	0f 29 4c 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm1
105607f3:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
105607f7:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
105607fb:	d9 fe                                           	fsin
105607fd:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10560803:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10560809:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
1056080e:	0f 29 84 24 88 00 00 00                         	movaps XMMWORD PTR [esp+0x88],xmm0
10560816:	0f 29 4c 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm1
1056081b:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
10560823:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10560827:	56                                              	push   esi
10560828:	57                                              	push   edi
10560829:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
1056082d:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
10560831:	d9 ff                                           	fcos
10560833:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
10560839:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1056083d:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
10560841:	f3 0f 10 74 24 2c                               	movss  xmm6,DWORD PTR [esp+0x2c]
10560847:	0f c6 f6 00                                     	shufps xmm6,xmm6,0x0
1056084b:	0f 5c ce                                        	subps  xmm1,xmm6
1056084e:	0f 28 f9                                        	movaps xmm7,xmm1
10560851:	0f 28 8c 24 90 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0x90]
10560859:	0f 28 df                                        	movaps xmm3,xmm7
1056085c:	0f 28 ef                                        	movaps xmm5,xmm7
1056085f:	0f 28 d1                                        	movaps xmm2,xmm1
10560862:	0f c6 d1 00                                     	shufps xmm2,xmm1,0x0
10560866:	0f 28 e1                                        	movaps xmm4,xmm1
10560869:	0f c6 e1 55                                     	shufps xmm4,xmm1,0x55
1056086d:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
10560871:	0f 59 f9                                        	mulps  xmm7,xmm1
10560874:	0f 29 7c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm7
10560879:	0f 28 f8                                        	movaps xmm7,xmm0
1056087c:	0f 59 fa                                        	mulps  xmm7,xmm2
1056087f:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm7
10560884:	0f 28 f8                                        	movaps xmm7,xmm0
10560887:	0f 59 c1                                        	mulps  xmm0,xmm1
1056088a:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
1056088f:	0f 57 c0                                        	xorps  xmm0,xmm0
10560892:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
10560897:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
1056089f:	0f 59 fc                                        	mulps  xmm7,xmm4
105608a2:	0f 29 7c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm7
105608a7:	0f 28 7c 24 10                                  	movaps xmm7,XMMWORD PTR [esp+0x10]
105608ac:	0f 28 c7                                        	movaps xmm0,xmm7
105608af:	0f 59 c1                                        	mulps  xmm0,xmm1
105608b2:	0f 58 c6                                        	addps  xmm0,xmm6
105608b5:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
105608bd:	0f 28 c7                                        	movaps xmm0,xmm7
105608c0:	0f 28 7c 24 60                                  	movaps xmm7,XMMWORD PTR [esp+0x60]
105608c5:	0f 59 c4                                        	mulps  xmm0,xmm4
105608c8:	0f 5c 44 24 40                                  	subps  xmm0,XMMWORD PTR [esp+0x40]
105608cd:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
105608d5:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
105608da:	0f 59 c2                                        	mulps  xmm0,xmm2
105608dd:	0f 58 44 24 30                                  	addps  xmm0,XMMWORD PTR [esp+0x30]
105608e2:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
105608ea:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
105608ef:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
105608f4:	0f 59 ec                                        	mulps  xmm5,xmm4
105608f7:	0f 28 c5                                        	movaps xmm0,xmm5
105608fa:	0f 59 c1                                        	mulps  xmm0,xmm1
105608fd:	0f 58 44 24 40                                  	addps  xmm0,XMMWORD PTR [esp+0x40]
10560902:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
1056090a:	0f 28 c5                                        	movaps xmm0,xmm5
1056090d:	0f 59 c4                                        	mulps  xmm0,xmm4
10560910:	0f 58 c6                                        	addps  xmm0,xmm6
10560913:	0f 59 ea                                        	mulps  xmm5,xmm2
10560916:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
1056091e:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
10560923:	0f 5c ef                                        	subps  xmm5,xmm7
10560926:	0f 59 da                                        	mulps  xmm3,xmm2
10560929:	0f 29 ac 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm5
10560931:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
10560936:	0f 28 c3                                        	movaps xmm0,xmm3
10560939:	0f 59 c1                                        	mulps  xmm0,xmm1
1056093c:	0f 5c 44 24 30                                  	subps  xmm0,XMMWORD PTR [esp+0x30]
10560941:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10560946:	0f 28 c3                                        	movaps xmm0,xmm3
10560949:	0f 59 c4                                        	mulps  xmm0,xmm4
1056094c:	0f 58 c7                                        	addps  xmm0,xmm7
1056094f:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
10560954:	f3 0f 10 44 24 60                               	movss  xmm0,DWORD PTR [esp+0x60]
1056095a:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10560960:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
10560966:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1056096c:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
10560972:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10560978:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
1056097b:	0f 59 da                                        	mulps  xmm3,xmm2
1056097e:	0f 58 de                                        	addps  xmm3,xmm6
10560981:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
10560986:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
1056098c:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10560992:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10560997:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
1056099f:	f3 0f 10 44 24 70                               	movss  xmm0,DWORD PTR [esp+0x70]
105609a5:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
105609ab:	f3 0f 10 84 24 d0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd0]
105609b4:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
105609ba:	f3 0f 10 84 24 b0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xb0]
105609c3:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
105609c9:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf0]
105609d2:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
105609d8:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
105609dd:	0f 29 84 24 10 01 00 00                         	movaps XMMWORD PTR [esp+0x110],xmm0
105609e5:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
105609ee:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
105609f4:	f3 0f 10 84 24 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa0]
105609fd:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10560a03:	f3 0f 10 84 24 c0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xc0]
10560a0c:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10560a12:	f3 0f 10 84 24 e0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xe0]
10560a1b:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10560a21:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10560a26:	0f 29 84 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm0
10560a2e:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
10560a36:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10560a3c:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
10560a41:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10560a47:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
10560a4c:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10560a52:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10560a56:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10560a5c:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10560a61:	0f 29 84 24 30 01 00 00                         	movaps XMMWORD PTR [esp+0x130],xmm0
10560a69:	e8 32 97 1c 00                                  	call   0x1072a1a0
10560a6e:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10560a71:	8b f8                                           	mov    edi,eax
10560a73:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10560a76:	50                                              	push   eax
10560a77:	51                                              	push   ecx
10560a78:	8b cf                                           	mov    ecx,edi
10560a7a:	e8 31 a1 1c 00                                  	call   0x1072abb0
10560a7f:	8b f0                                           	mov    esi,eax
10560a81:	85 f6                                           	test   esi,esi
10560a83:	74 12                                           	je     0x10560a97
10560a85:	8b 15 98 d9 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d998
10560a8b:	52                                              	push   edx
10560a8c:	8b ce                                           	mov    ecx,esi
10560a8e:	e8 0d 63 1c 00                                  	call   0x10726da0
10560a93:	85 c0                                           	test   eax,eax
10560a95:	75 0b                                           	jne    0x10560aa2
10560a97:	b8 e9 03 00 00                                  	mov    eax,0x3e9
10560a9c:	5f                                              	pop    edi
10560a9d:	5e                                              	pop    esi
10560a9e:	8b e5                                           	mov    esp,ebp
10560aa0:	5d                                              	pop    ebp
10560aa1:	c3                                              	ret
10560aa2:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
10560aa5:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
10560aa8:	50                                              	push   eax
10560aa9:	51                                              	push   ecx
10560aaa:	8b cf                                           	mov    ecx,edi
10560aac:	e8 ff a0 1c 00                                  	call   0x1072abb0
10560ab1:	85 c0                                           	test   eax,eax
10560ab3:	75 0b                                           	jne    0x10560ac0
10560ab5:	b8 ea 03 00 00                                  	mov    eax,0x3ea
10560aba:	5f                                              	pop    edi
10560abb:	5e                                              	pop    esi
10560abc:	8b e5                                           	mov    esp,ebp
10560abe:	5d                                              	pop    ebp
10560abf:	c3                                              	ret
10560ac0:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
10560ac3:	6a 00                                           	push   0x0
10560ac5:	8d 94 24 04 01 00 00                            	lea    edx,[esp+0x104]
10560acc:	52                                              	push   edx
10560acd:	51                                              	push   ecx
10560ace:	50                                              	push   eax
10560acf:	56                                              	push   esi
10560ad0:	e8 ab bf ba ff                                  	call   0x1010ca80
10560ad5:	83 c4 14                                        	add    esp,0x14
10560ad8:	5f                                              	pop    edi
10560ad9:	5e                                              	pop    esi
10560ada:	8b e5                                           	mov    esp,ebp
10560adc:	5d                                              	pop    ebp
10560add:	c3                                              	ret
10560ade:	cc                                              	int3
10560adf:	cc                                              	int3
