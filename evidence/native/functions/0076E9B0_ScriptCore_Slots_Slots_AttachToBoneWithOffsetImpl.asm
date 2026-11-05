# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076e9b0 (ScriptCore.Slots::Slots_AttachToBoneWithOffsetImpl)
Paired Ghidra pseudocode: 0076E9B0_ScriptCore_Slots_Slots_AttachToBoneWithOffsetImpl.c
Window: [0x0076e9b0, 0x0076ed00) (848 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ed00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076e9b0: 55 8b ec 83 e4 f0 81 ec 34 01 00 00 8b 45 28 f3
0076e9c0: 0f 10 48 08 f3 0f 11 4c 24 0c f3 0f 10 48 04 f3
0076e9d0: 0f 11 4c 24 08 f3 0f 10 4d 2c 0f c6 c9 00 0f 29
0076e9e0: 4c 24 24 d9 44 24 24 f3 0f 10 00 d9 fe f3 0f 11
0076e9f0: 44 24 10 f3 0f 11 44 24 04 0f 28 44 24 04 0f 29
0076ea00: 84 24 84 00 00 00 0f 29 4c 24 24 f3 0f 10 0d f8
0076ea10: 98 f9 00 0f c6 c9 00 53 56 57 d9 5c 24 2c d9 44
0076ea20: 24 30 d9 ff f3 0f 10 44 24 2c 0f c6 c0 00 d9 5c
0076ea30: 24 2c f3 0f 10 74 24 2c 0f c6 f6 00 0f 5c ce 0f
0076ea40: 28 f9 0f 28 8c 24 90 00 00 00 0f 28 df 0f 28 ef
0076ea50: 0f 28 d1 0f c6 d1 00 0f 28 e1 0f c6 e1 55 0f c6
0076ea60: c9 aa 0f 59 f9 0f 29 7c 24 10 0f 28 f8 0f 59 fa
0076ea70: 0f 29 7c 24 40 0f 28 f8 0f 59 c1 0f 29 44 24 60
0076ea80: 0f 57 c0 0f 29 44 24 50 0f 29 84 24 80 00 00 00
0076ea90: 0f 59 fc 0f 29 7c 24 30 0f 28 7c 24 10 0f 28 c7
0076eaa0: 0f 59 c1 0f 58 c6 0f 29 84 24 a0 00 00 00 0f 28
0076eab0: c7 0f 28 7c 24 60 0f 59 c4 0f 5c 44 24 40 0f 29
0076eac0: 84 24 c0 00 00 00 0f 28 44 24 10 0f 59 c2 0f 58
0076ead0: 44 24 30 0f 29 84 24 e0 00 00 00 0f 28 44 24 50
0076eae0: 0f 29 44 24 70 0f 59 ec 0f 28 c5 0f 59 c1 0f 58
0076eaf0: 44 24 40 0f 29 84 24 d0 00 00 00 0f 28 c5 0f 59
0076eb00: c4 0f 59 ea 0f 58 c6 0f 5c ef 0f 59 da 0f 29 84
0076eb10: 24 b0 00 00 00 0f 29 ac 24 f0 00 00 00 0f 28 44
0076eb20: 24 50 0f 29 44 24 60 0f 28 c3 0f 59 c1 0f 5c 44
0076eb30: 24 30 0f 29 44 24 30 0f 28 c3 0f 59 c4 0f 58 c7
0076eb40: 0f 29 44 24 50 f3 0f 10 44 24 60 f3 0f 11 44 24
0076eb50: 1c f3 0f 10 44 24 30 f3 0f 11 44 24 18 f3 0f 10
0076eb60: 44 24 50 f3 0f 11 44 24 14 8b 45 24 0f 59 da 0f
0076eb70: 58 de 0f 29 5c 24 40 f3 0f 10 44 24 40 f3 0f 11
0076eb80: 44 24 10 0f 28 44 24 10 0f 29 84 24 00 01 00 00
0076eb90: f3 0f 10 44 24 70 f3 0f 11 44 24 1c f3 0f 10 84
0076eba0: 24 d0 00 00 00 f3 0f 11 44 24 18 f3 0f 10 84 24
0076ebb0: b0 00 00 00 f3 0f 11 44 24 14 f3 0f 10 84 24 f0
0076ebc0: 00 00 00 f3 0f 11 44 24 10 0f 28 44 24 10 0f 29
0076ebd0: 84 24 10 01 00 00 f3 0f 10 84 24 80 00 00 00 f3
0076ebe0: 0f 11 44 24 1c f3 0f 10 84 24 a0 00 00 00 f3 0f
0076ebf0: 11 44 24 18 f3 0f 10 84 24 c0 00 00 00 f3 0f 11
0076ec00: 44 24 14 f3 0f 10 84 24 e0 00 00 00 f3 0f 11 44
0076ec10: 24 10 0f 28 44 24 10 0f 29 84 24 20 01 00 00 f3
0076ec20: 0f 10 05 f8 98 f9 00 f3 0f 11 44 24 1c f3 0f 10
0076ec30: 40 08 f3 0f 11 44 24 18 f3 0f 10 40 04 f3 0f 11
0076ec40: 44 24 14 f3 0f 10 00 f3 0f 11 44 24 10 0f 28 44
0076ec50: 24 10 0f 29 84 24 30 01 00 00 e8 11 89 1c 00 8b
0076ec60: 4d 08 8b f8 8b 45 0c 50 51 8b cf e8 10 93 1c 00
0076ec70: 8b f0 85 f6 74 14 8b 15 58 a1 1e 01 52 8b ce e8
0076ec80: dc 55 1c 00 8b d8 85 db 75 0c b8 e9 03 00 00 5f
0076ec90: 5e 5b 8b e5 5d c3 8b 45 14 8b 4d 10 50 51 8b cf
0076eca0: e8 db 92 1c 00 8b f8 85 ff 75 0c b8 ea 03 00 00
0076ecb0: 5f 5e 5b 8b e5 5d c3 80 7d 20 00 74 19 8b 15 84
0076ecc0: d4 1d 01 52 8b ce e8 95 55 1c 00 85 c0 74 07 8b
0076ecd0: c8 e8 1a df 1c 00 8b 45 1c 8b 55 18 50 8d 8c 24
0076ece0: 04 01 00 00 51 52 57 8b cb e8 22 b2 1e 00 5f 5e
0076ecf0: 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076e9b0 <.text+0x36d9b0>:
  76e9b0:	55                                              	push   ebp
  76e9b1:	8b ec                                           	mov    ebp,esp
  76e9b3:	83 e4 f0                                        	and    esp,0xfffffff0
  76e9b6:	81 ec 34 01 00 00                               	sub    esp,0x134
  76e9bc:	8b 45 28                                        	mov    eax,DWORD PTR [ebp+0x28]
  76e9bf:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
  76e9c4:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  76e9ca:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  76e9cf:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  76e9d5:	f3 0f 10 4d 2c                                  	movss  xmm1,DWORD PTR [ebp+0x2c]
  76e9da:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  76e9de:	0f 29 4c 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm1
  76e9e3:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  76e9e7:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  76e9eb:	d9 fe                                           	fsin
  76e9ed:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76e9f3:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
  76e9f9:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
  76e9fe:	0f 29 84 24 84 00 00 00                         	movaps XMMWORD PTR [esp+0x84],xmm0
  76ea06:	0f 29 4c 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm1
  76ea0b:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  76ea13:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  76ea17:	53                                              	push   ebx
  76ea18:	56                                              	push   esi
  76ea19:	57                                              	push   edi
  76ea1a:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
  76ea1e:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  76ea22:	d9 ff                                           	fcos
  76ea24:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
  76ea2a:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  76ea2e:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
  76ea32:	f3 0f 10 74 24 2c                               	movss  xmm6,DWORD PTR [esp+0x2c]
  76ea38:	0f c6 f6 00                                     	shufps xmm6,xmm6,0x0
  76ea3c:	0f 5c ce                                        	subps  xmm1,xmm6
  76ea3f:	0f 28 f9                                        	movaps xmm7,xmm1
  76ea42:	0f 28 8c 24 90 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0x90]
  76ea4a:	0f 28 df                                        	movaps xmm3,xmm7
  76ea4d:	0f 28 ef                                        	movaps xmm5,xmm7
  76ea50:	0f 28 d1                                        	movaps xmm2,xmm1
  76ea53:	0f c6 d1 00                                     	shufps xmm2,xmm1,0x0
  76ea57:	0f 28 e1                                        	movaps xmm4,xmm1
  76ea5a:	0f c6 e1 55                                     	shufps xmm4,xmm1,0x55
  76ea5e:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
  76ea62:	0f 59 f9                                        	mulps  xmm7,xmm1
  76ea65:	0f 29 7c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm7
  76ea6a:	0f 28 f8                                        	movaps xmm7,xmm0
  76ea6d:	0f 59 fa                                        	mulps  xmm7,xmm2
  76ea70:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm7
  76ea75:	0f 28 f8                                        	movaps xmm7,xmm0
  76ea78:	0f 59 c1                                        	mulps  xmm0,xmm1
  76ea7b:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  76ea80:	0f 57 c0                                        	xorps  xmm0,xmm0
  76ea83:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  76ea88:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  76ea90:	0f 59 fc                                        	mulps  xmm7,xmm4
  76ea93:	0f 29 7c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm7
  76ea98:	0f 28 7c 24 10                                  	movaps xmm7,XMMWORD PTR [esp+0x10]
  76ea9d:	0f 28 c7                                        	movaps xmm0,xmm7
  76eaa0:	0f 59 c1                                        	mulps  xmm0,xmm1
  76eaa3:	0f 58 c6                                        	addps  xmm0,xmm6
  76eaa6:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
  76eaae:	0f 28 c7                                        	movaps xmm0,xmm7
  76eab1:	0f 28 7c 24 60                                  	movaps xmm7,XMMWORD PTR [esp+0x60]
  76eab6:	0f 59 c4                                        	mulps  xmm0,xmm4
  76eab9:	0f 5c 44 24 40                                  	subps  xmm0,XMMWORD PTR [esp+0x40]
  76eabe:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  76eac6:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76eacb:	0f 59 c2                                        	mulps  xmm0,xmm2
  76eace:	0f 58 44 24 30                                  	addps  xmm0,XMMWORD PTR [esp+0x30]
  76ead3:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  76eadb:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  76eae0:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  76eae5:	0f 59 ec                                        	mulps  xmm5,xmm4
  76eae8:	0f 28 c5                                        	movaps xmm0,xmm5
  76eaeb:	0f 59 c1                                        	mulps  xmm0,xmm1
  76eaee:	0f 58 44 24 40                                  	addps  xmm0,XMMWORD PTR [esp+0x40]
  76eaf3:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
  76eafb:	0f 28 c5                                        	movaps xmm0,xmm5
  76eafe:	0f 59 c4                                        	mulps  xmm0,xmm4
  76eb01:	0f 59 ea                                        	mulps  xmm5,xmm2
  76eb04:	0f 58 c6                                        	addps  xmm0,xmm6
  76eb07:	0f 5c ef                                        	subps  xmm5,xmm7
  76eb0a:	0f 59 da                                        	mulps  xmm3,xmm2
  76eb0d:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
  76eb15:	0f 29 ac 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm5
  76eb1d:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  76eb22:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  76eb27:	0f 28 c3                                        	movaps xmm0,xmm3
  76eb2a:	0f 59 c1                                        	mulps  xmm0,xmm1
  76eb2d:	0f 5c 44 24 30                                  	subps  xmm0,XMMWORD PTR [esp+0x30]
  76eb32:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  76eb37:	0f 28 c3                                        	movaps xmm0,xmm3
  76eb3a:	0f 59 c4                                        	mulps  xmm0,xmm4
  76eb3d:	0f 58 c7                                        	addps  xmm0,xmm7
  76eb40:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  76eb45:	f3 0f 10 44 24 60                               	movss  xmm0,DWORD PTR [esp+0x60]
  76eb4b:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76eb51:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  76eb57:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76eb5d:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  76eb63:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76eb69:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  76eb6c:	0f 59 da                                        	mulps  xmm3,xmm2
  76eb6f:	0f 58 de                                        	addps  xmm3,xmm6
  76eb72:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
  76eb77:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
  76eb7d:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76eb83:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76eb88:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
  76eb90:	f3 0f 10 44 24 70                               	movss  xmm0,DWORD PTR [esp+0x70]
  76eb96:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76eb9c:	f3 0f 10 84 24 d0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd0]
  76eba5:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76ebab:	f3 0f 10 84 24 b0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xb0]
  76ebb4:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76ebba:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf0]
  76ebc3:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76ebc9:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76ebce:	0f 29 84 24 10 01 00 00                         	movaps XMMWORD PTR [esp+0x110],xmm0
  76ebd6:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
  76ebdf:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76ebe5:	f3 0f 10 84 24 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa0]
  76ebee:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76ebf4:	f3 0f 10 84 24 c0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xc0]
  76ebfd:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76ec03:	f3 0f 10 84 24 e0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xe0]
  76ec0c:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76ec12:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76ec17:	0f 29 84 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm0
  76ec1f:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  76ec27:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76ec2d:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
  76ec32:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76ec38:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
  76ec3d:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76ec43:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  76ec47:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76ec4d:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76ec52:	0f 29 84 24 30 01 00 00                         	movaps XMMWORD PTR [esp+0x130],xmm0
  76ec5a:	e8 11 89 1c 00                                  	call   0x937570
  76ec5f:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  76ec62:	8b f8                                           	mov    edi,eax
  76ec64:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  76ec67:	50                                              	push   eax
  76ec68:	51                                              	push   ecx
  76ec69:	8b cf                                           	mov    ecx,edi
  76ec6b:	e8 10 93 1c 00                                  	call   0x937f80
  76ec70:	8b f0                                           	mov    esi,eax
  76ec72:	85 f6                                           	test   esi,esi
  76ec74:	74 14                                           	je     0x76ec8a
  76ec76:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76ec7c:	52                                              	push   edx
  76ec7d:	8b ce                                           	mov    ecx,esi
  76ec7f:	e8 dc 55 1c 00                                  	call   0x934260
  76ec84:	8b d8                                           	mov    ebx,eax
  76ec86:	85 db                                           	test   ebx,ebx
  76ec88:	75 0c                                           	jne    0x76ec96
  76ec8a:	b8 e9 03 00 00                                  	mov    eax,0x3e9
  76ec8f:	5f                                              	pop    edi
  76ec90:	5e                                              	pop    esi
  76ec91:	5b                                              	pop    ebx
  76ec92:	8b e5                                           	mov    esp,ebp
  76ec94:	5d                                              	pop    ebp
  76ec95:	c3                                              	ret
  76ec96:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  76ec99:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  76ec9c:	50                                              	push   eax
  76ec9d:	51                                              	push   ecx
  76ec9e:	8b cf                                           	mov    ecx,edi
  76eca0:	e8 db 92 1c 00                                  	call   0x937f80
  76eca5:	8b f8                                           	mov    edi,eax
  76eca7:	85 ff                                           	test   edi,edi
  76eca9:	75 0c                                           	jne    0x76ecb7
  76ecab:	b8 ea 03 00 00                                  	mov    eax,0x3ea
  76ecb0:	5f                                              	pop    edi
  76ecb1:	5e                                              	pop    esi
  76ecb2:	5b                                              	pop    ebx
  76ecb3:	8b e5                                           	mov    esp,ebp
  76ecb5:	5d                                              	pop    ebp
  76ecb6:	c3                                              	ret
  76ecb7:	80 7d 20 00                                     	cmp    BYTE PTR [ebp+0x20],0x0
  76ecbb:	74 19                                           	je     0x76ecd6
  76ecbd:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  76ecc3:	52                                              	push   edx
  76ecc4:	8b ce                                           	mov    ecx,esi
  76ecc6:	e8 95 55 1c 00                                  	call   0x934260
  76eccb:	85 c0                                           	test   eax,eax
  76eccd:	74 07                                           	je     0x76ecd6
  76eccf:	8b c8                                           	mov    ecx,eax
  76ecd1:	e8 1a df 1c 00                                  	call   0x93cbf0
  76ecd6:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  76ecd9:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
  76ecdc:	50                                              	push   eax
  76ecdd:	8d 8c 24 04 01 00 00                            	lea    ecx,[esp+0x104]
  76ece4:	51                                              	push   ecx
  76ece5:	52                                              	push   edx
  76ece6:	57                                              	push   edi
  76ece7:	8b cb                                           	mov    ecx,ebx
  76ece9:	e8 22 b2 1e 00                                  	call   0x959f10
  76ecee:	5f                                              	pop    edi
  76ecef:	5e                                              	pop    esi
  76ecf0:	5b                                              	pop    ebx
  76ecf1:	8b e5                                           	mov    esp,ebp
  76ecf3:	5d                                              	pop    ebp
  76ecf4:	c3                                              	ret
  76ecf5:	cc                                              	int3
  76ecf6:	cc                                              	int3
  76ecf7:	cc                                              	int3
  76ecf8:	cc                                              	int3
  76ecf9:	cc                                              	int3
  76ecfa:	cc                                              	int3
  76ecfb:	cc                                              	int3
  76ecfc:	cc                                              	int3
  76ecfd:	cc                                              	int3
  76ecfe:	cc                                              	int3
  76ecff:	cc                                              	int3
