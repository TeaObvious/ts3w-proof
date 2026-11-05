# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10547e70 (Route_AddRadialRangeDestination)
Paired Ghidra pseudocode: 10547E70_Route_AddRadialRangeDestination.c
Window: [0x10547e70, 0x105481c0) (848 bytes; stop exclusive)
Next defined Ghidra entry: 0x105481c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10547e70: 55 8b ec 83 e4 f0 8b 0d 44 89 c7 10 83 ec 44 85
10547e80: c9 53 56 57 0f 84 23 03 00 00 8b 45 08 50 e8 5d
10547e90: 42 ff ff 8b d8 85 db 89 5c 24 1c 0f 84 0c 03 00
10547ea0: 00 8b 13 8b 42 10 8b cb ff d0 8b cb e8 ef b6 ff
10547eb0: ff 8b f8 85 ff 0f 84 e9 02 00 00 8b 17 8b 02 8b
10547ec0: cf ff d0 6a 00 6a 00 6a 00 6a 00 68 20 bb b1 10
10547ed0: 68 80 00 00 00 e8 d6 0f 3d 00 83 c4 18 85 c0 0f
10547ee0: 84 b6 02 00 00 8b c8 e8 c4 7e ff ff 8b f0 85 f6
10547ef0: 0f 84 a5 02 00 00 8b 4d 18 8b 55 1c 8d 44 24 20
10547f00: 89 4e 50 50 8d 4d 20 89 56 54 e8 11 5c 01 00 0f
10547f10: 28 00 8d 4c 24 20 51 8d 4d 2c 0f 29 46 40 e8 fd
10547f20: 5b 01 00 0f 28 00 8b 5d 14 85 db 8b 55 38 0f 29
10547f30: 46 30 f3 0f 10 45 3c f3 0f 11 46 5c f3 0f 10 45
10547f40: 40 f3 0f 11 46 6c f3 0f 10 45 44 f3 0f 11 46 60
10547f50: f3 0f 10 45 48 f3 0f 11 46 64 f3 0f 10 45 4c f3
10547f60: 0f 11 46 68 f3 0f 10 45 50 89 56 58 f3 0f 11 46
10547f70: 70 74 34 e8 a8 31 01 00 33 c9 89 4c 24 18 89 4c
10547f80: 24 14 8b 10 8b 52 78 8d 4c 24 14 51 8d 4c 24 1c
10547f90: 51 53 8b c8 ff d2 8b 44 24 14 8b 4c 24 18 50 51
10547fa0: 8b ce e8 89 47 ff ff 8b 55 0c f3 0f 10 45 10 56
10547fb0: 8b cf 89 56 28 f3 0f 11 46 2c e8 01 7b ff ff 8b
10547fc0: 46 50 0b 46 54 0f 84 b3 01 00 00 e8 d0 21 1e 00
10547fd0: 85 c0 0f 84 a6 01 00 00 8b 4e 54 8b 56 50 51 52
10547fe0: 8b c8 e8 c9 2b 1e 00 50 e8 43 50 b5 ff 83 c4 04
10547ff0: 85 c0 0f 84 86 01 00 00 8d 4c 24 30 51 8b c8 e8
10548000: 8c 21 20 00 0f 28 54 24 30 f3 0f 10 2d fc df aa
10548010: 10 0f 28 c2 0f 59 c2 0f 28 c8 0f c6 c8 0e 0f 58
10548020: c8 0f 28 c1 0f c6 c1 01 0f 58 c1 0f c6 c0 00 0f
10548030: 53 d8 0f 28 e3 0f 59 e0 0f c6 ed 00 0f 28 cd 0f
10548040: 5c cc 0f 59 cb 0f 28 d9 0f 59 d8 0f 28 c5 0f 5c
10548050: c3 0f 59 c1 0f 57 c9 f3 0f 11 4c 24 2c c7 44 24
10548060: 18 00 00 00 80 f3 0f 10 4c 24 18 f3 0f 11 4c 24
10548070: 28 f3 0f 11 4c 24 24 f3 0f 11 4c 24 20 0f 28 4c
10548080: 24 20 0f 57 ca 0f 28 54 24 40 0f 59 c1 0f 28 ca
10548090: 0f c6 ca 12 0f 28 f2 0f c6 f2 09 0f 28 d8 0f c6
105480a0: d8 12 0f 59 f3 0f 28 e0 0f c6 e0 09 0f 59 cc 0f
105480b0: 5c ce 0f c6 c0 ff 0f 28 f0 0f 59 f2 0f 58 ce 0f
105480c0: 28 f1 0f c6 f1 12 0f 28 f9 0f c6 f9 09 0f 59 f4
105480d0: 0f 57 c9 0f 59 fb 0f 5c f7 0f 59 f5 0f 58 f2 0f
105480e0: 5c ce 0f 28 76 40 0f 29 4c 24 40 0f 28 ce 0f c6
105480f0: ce 12 0f 28 d6 0f c6 d6 09 0f 59 d3 0f 59 cc 0f
10548100: 5c ca 0f 28 d6 0f 59 d0 0f 58 ca 0f 29 44 24 20
10548110: 0f 28 46 30 0f 28 d0 0f c6 d0 12 0f 59 d4 0f 28
10548120: f8 0f c6 f8 09 0f 59 44 24 20 0f 59 fb 0f 5c d7
10548130: 0f 58 d0 0f 28 c2 0f c6 c2 12 0f 28 fa 0f c6 fa
10548140: 09 0f 28 56 30 0f 59 c4 0f 59 fb 0f 5c c7 0f 59
10548150: c5 0f 58 c2 0f 28 d1 0f c6 d1 12 0f 59 d4 0f 28
10548160: e1 0f c6 e1 09 0f 59 e3 0f 5c d4 0f 59 d5 0f 58
10548170: d6 0f 58 54 24 40 0f 29 56 40 0f 29 46 30 8b 17
10548180: 8b 42 04 8b cf ff d0 8b 4c 24 1c 8b 11 8b 42 14
10548190: ff d0 b0 01 5f 5e 5b 8b e5 5d c3 8b 17 8b 42 04
105481a0: 8b cf ff d0 8b 13 8b 42 14 8b cb ff d0 5f 5e 32
105481b0: c0 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10547e70 <.text+0x546e70>:
10547e70:	55                                              	push   ebp
10547e71:	8b ec                                           	mov    ebp,esp
10547e73:	83 e4 f0                                        	and    esp,0xfffffff0
10547e76:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10547e7c:	83 ec 44                                        	sub    esp,0x44
10547e7f:	85 c9                                           	test   ecx,ecx
10547e81:	53                                              	push   ebx
10547e82:	56                                              	push   esi
10547e83:	57                                              	push   edi
10547e84:	0f 84 23 03 00 00                               	je     0x105481ad
10547e8a:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10547e8d:	50                                              	push   eax
10547e8e:	e8 5d 42 ff ff                                  	call   0x1053c0f0
10547e93:	8b d8                                           	mov    ebx,eax
10547e95:	85 db                                           	test   ebx,ebx
10547e97:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
10547e9b:	0f 84 0c 03 00 00                               	je     0x105481ad
10547ea1:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10547ea3:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10547ea6:	8b cb                                           	mov    ecx,ebx
10547ea8:	ff d0                                           	call   eax
10547eaa:	8b cb                                           	mov    ecx,ebx
10547eac:	e8 ef b6 ff ff                                  	call   0x105435a0
10547eb1:	8b f8                                           	mov    edi,eax
10547eb3:	85 ff                                           	test   edi,edi
10547eb5:	0f 84 e9 02 00 00                               	je     0x105481a4
10547ebb:	8b 17                                           	mov    edx,DWORD PTR [edi]
10547ebd:	8b 02                                           	mov    eax,DWORD PTR [edx]
10547ebf:	8b cf                                           	mov    ecx,edi
10547ec1:	ff d0                                           	call   eax
10547ec3:	6a 00                                           	push   0x0
10547ec5:	6a 00                                           	push   0x0
10547ec7:	6a 00                                           	push   0x0
10547ec9:	6a 00                                           	push   0x0
10547ecb:	68 20 bb b1 10                                  	push   0x10b1bb20
10547ed0:	68 80 00 00 00                                  	push   0x80
10547ed5:	e8 d6 0f 3d 00                                  	call   0x10918eb0
10547eda:	83 c4 18                                        	add    esp,0x18
10547edd:	85 c0                                           	test   eax,eax
10547edf:	0f 84 b6 02 00 00                               	je     0x1054819b
10547ee5:	8b c8                                           	mov    ecx,eax
10547ee7:	e8 c4 7e ff ff                                  	call   0x1053fdb0
10547eec:	8b f0                                           	mov    esi,eax
10547eee:	85 f6                                           	test   esi,esi
10547ef0:	0f 84 a5 02 00 00                               	je     0x1054819b
10547ef6:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
10547ef9:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
10547efc:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10547f00:	89 4e 50                                        	mov    DWORD PTR [esi+0x50],ecx
10547f03:	50                                              	push   eax
10547f04:	8d 4d 20                                        	lea    ecx,[ebp+0x20]
10547f07:	89 56 54                                        	mov    DWORD PTR [esi+0x54],edx
10547f0a:	e8 11 5c 01 00                                  	call   0x1055db20
10547f0f:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
10547f12:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10547f16:	51                                              	push   ecx
10547f17:	8d 4d 2c                                        	lea    ecx,[ebp+0x2c]
10547f1a:	0f 29 46 40                                     	movaps XMMWORD PTR [esi+0x40],xmm0
10547f1e:	e8 fd 5b 01 00                                  	call   0x1055db20
10547f23:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
10547f26:	8b 5d 14                                        	mov    ebx,DWORD PTR [ebp+0x14]
10547f29:	85 db                                           	test   ebx,ebx
10547f2b:	8b 55 38                                        	mov    edx,DWORD PTR [ebp+0x38]
10547f2e:	0f 29 46 30                                     	movaps XMMWORD PTR [esi+0x30],xmm0
10547f32:	f3 0f 10 45 3c                                  	movss  xmm0,DWORD PTR [ebp+0x3c]
10547f37:	f3 0f 11 46 5c                                  	movss  DWORD PTR [esi+0x5c],xmm0
10547f3c:	f3 0f 10 45 40                                  	movss  xmm0,DWORD PTR [ebp+0x40]
10547f41:	f3 0f 11 46 6c                                  	movss  DWORD PTR [esi+0x6c],xmm0
10547f46:	f3 0f 10 45 44                                  	movss  xmm0,DWORD PTR [ebp+0x44]
10547f4b:	f3 0f 11 46 60                                  	movss  DWORD PTR [esi+0x60],xmm0
10547f50:	f3 0f 10 45 48                                  	movss  xmm0,DWORD PTR [ebp+0x48]
10547f55:	f3 0f 11 46 64                                  	movss  DWORD PTR [esi+0x64],xmm0
10547f5a:	f3 0f 10 45 4c                                  	movss  xmm0,DWORD PTR [ebp+0x4c]
10547f5f:	f3 0f 11 46 68                                  	movss  DWORD PTR [esi+0x68],xmm0
10547f64:	f3 0f 10 45 50                                  	movss  xmm0,DWORD PTR [ebp+0x50]
10547f69:	89 56 58                                        	mov    DWORD PTR [esi+0x58],edx
10547f6c:	f3 0f 11 46 70                                  	movss  DWORD PTR [esi+0x70],xmm0
10547f71:	74 34                                           	je     0x10547fa7
10547f73:	e8 a8 31 01 00                                  	call   0x1055b120
10547f78:	33 c9                                           	xor    ecx,ecx
10547f7a:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
10547f7e:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
10547f82:	8b 10                                           	mov    edx,DWORD PTR [eax]
10547f84:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
10547f87:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10547f8b:	51                                              	push   ecx
10547f8c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10547f90:	51                                              	push   ecx
10547f91:	53                                              	push   ebx
10547f92:	8b c8                                           	mov    ecx,eax
10547f94:	ff d2                                           	call   edx
10547f96:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10547f9a:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10547f9e:	50                                              	push   eax
10547f9f:	51                                              	push   ecx
10547fa0:	8b ce                                           	mov    ecx,esi
10547fa2:	e8 89 47 ff ff                                  	call   0x1053c730
10547fa7:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
10547faa:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
10547faf:	56                                              	push   esi
10547fb0:	8b cf                                           	mov    ecx,edi
10547fb2:	89 56 28                                        	mov    DWORD PTR [esi+0x28],edx
10547fb5:	f3 0f 11 46 2c                                  	movss  DWORD PTR [esi+0x2c],xmm0
10547fba:	e8 01 7b ff ff                                  	call   0x1053fac0
10547fbf:	8b 46 50                                        	mov    eax,DWORD PTR [esi+0x50]
10547fc2:	0b 46 54                                        	or     eax,DWORD PTR [esi+0x54]
10547fc5:	0f 84 b3 01 00 00                               	je     0x1054817e
10547fcb:	e8 d0 21 1e 00                                  	call   0x1072a1a0
10547fd0:	85 c0                                           	test   eax,eax
10547fd2:	0f 84 a6 01 00 00                               	je     0x1054817e
10547fd8:	8b 4e 54                                        	mov    ecx,DWORD PTR [esi+0x54]
10547fdb:	8b 56 50                                        	mov    edx,DWORD PTR [esi+0x50]
10547fde:	51                                              	push   ecx
10547fdf:	52                                              	push   edx
10547fe0:	8b c8                                           	mov    ecx,eax
10547fe2:	e8 c9 2b 1e 00                                  	call   0x1072abb0
10547fe7:	50                                              	push   eax
10547fe8:	e8 43 50 b5 ff                                  	call   0x1009d030
10547fed:	83 c4 04                                        	add    esp,0x4
10547ff0:	85 c0                                           	test   eax,eax
10547ff2:	0f 84 86 01 00 00                               	je     0x1054817e
10547ff8:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10547ffc:	51                                              	push   ecx
10547ffd:	8b c8                                           	mov    ecx,eax
10547fff:	e8 8c 21 20 00                                  	call   0x1074a190
10548004:	0f 28 54 24 30                                  	movaps xmm2,XMMWORD PTR [esp+0x30]
10548009:	f3 0f 10 2d fc df aa 10                         	movss  xmm5,DWORD PTR ds:0x10aadffc
10548011:	0f 28 c2                                        	movaps xmm0,xmm2
10548014:	0f 59 c2                                        	mulps  xmm0,xmm2
10548017:	0f 28 c8                                        	movaps xmm1,xmm0
1054801a:	0f c6 c8 0e                                     	shufps xmm1,xmm0,0xe
1054801e:	0f 58 c8                                        	addps  xmm1,xmm0
10548021:	0f 28 c1                                        	movaps xmm0,xmm1
10548024:	0f c6 c1 01                                     	shufps xmm0,xmm1,0x1
10548028:	0f 58 c1                                        	addps  xmm0,xmm1
1054802b:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1054802f:	0f 53 d8                                        	rcpps  xmm3,xmm0
10548032:	0f 28 e3                                        	movaps xmm4,xmm3
10548035:	0f 59 e0                                        	mulps  xmm4,xmm0
10548038:	0f c6 ed 00                                     	shufps xmm5,xmm5,0x0
1054803c:	0f 28 cd                                        	movaps xmm1,xmm5
1054803f:	0f 5c cc                                        	subps  xmm1,xmm4
10548042:	0f 59 cb                                        	mulps  xmm1,xmm3
10548045:	0f 28 d9                                        	movaps xmm3,xmm1
10548048:	0f 59 d8                                        	mulps  xmm3,xmm0
1054804b:	0f 28 c5                                        	movaps xmm0,xmm5
1054804e:	0f 5c c3                                        	subps  xmm0,xmm3
10548051:	0f 59 c1                                        	mulps  xmm0,xmm1
10548054:	0f 57 c9                                        	xorps  xmm1,xmm1
10548057:	f3 0f 11 4c 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm1
1054805d:	c7 44 24 18 00 00 00 80                         	mov    DWORD PTR [esp+0x18],0x80000000
10548065:	f3 0f 10 4c 24 18                               	movss  xmm1,DWORD PTR [esp+0x18]
1054806b:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
10548071:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
10548077:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [esp+0x20],xmm1
1054807d:	0f 28 4c 24 20                                  	movaps xmm1,XMMWORD PTR [esp+0x20]
10548082:	0f 57 ca                                        	xorps  xmm1,xmm2
10548085:	0f 28 54 24 40                                  	movaps xmm2,XMMWORD PTR [esp+0x40]
1054808a:	0f 59 c1                                        	mulps  xmm0,xmm1
1054808d:	0f 28 ca                                        	movaps xmm1,xmm2
10548090:	0f c6 ca 12                                     	shufps xmm1,xmm2,0x12
10548094:	0f 28 f2                                        	movaps xmm6,xmm2
10548097:	0f c6 f2 09                                     	shufps xmm6,xmm2,0x9
1054809b:	0f 28 d8                                        	movaps xmm3,xmm0
1054809e:	0f c6 d8 12                                     	shufps xmm3,xmm0,0x12
105480a2:	0f 59 f3                                        	mulps  xmm6,xmm3
105480a5:	0f 28 e0                                        	movaps xmm4,xmm0
105480a8:	0f c6 e0 09                                     	shufps xmm4,xmm0,0x9
105480ac:	0f 59 cc                                        	mulps  xmm1,xmm4
105480af:	0f 5c ce                                        	subps  xmm1,xmm6
105480b2:	0f c6 c0 ff                                     	shufps xmm0,xmm0,0xff
105480b6:	0f 28 f0                                        	movaps xmm6,xmm0
105480b9:	0f 59 f2                                        	mulps  xmm6,xmm2
105480bc:	0f 58 ce                                        	addps  xmm1,xmm6
105480bf:	0f 28 f1                                        	movaps xmm6,xmm1
105480c2:	0f c6 f1 12                                     	shufps xmm6,xmm1,0x12
105480c6:	0f 28 f9                                        	movaps xmm7,xmm1
105480c9:	0f c6 f9 09                                     	shufps xmm7,xmm1,0x9
105480cd:	0f 59 f4                                        	mulps  xmm6,xmm4
105480d0:	0f 57 c9                                        	xorps  xmm1,xmm1
105480d3:	0f 59 fb                                        	mulps  xmm7,xmm3
105480d6:	0f 5c f7                                        	subps  xmm6,xmm7
105480d9:	0f 59 f5                                        	mulps  xmm6,xmm5
105480dc:	0f 58 f2                                        	addps  xmm6,xmm2
105480df:	0f 5c ce                                        	subps  xmm1,xmm6
105480e2:	0f 28 76 40                                     	movaps xmm6,XMMWORD PTR [esi+0x40]
105480e6:	0f 29 4c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm1
105480eb:	0f 28 ce                                        	movaps xmm1,xmm6
105480ee:	0f c6 ce 12                                     	shufps xmm1,xmm6,0x12
105480f2:	0f 28 d6                                        	movaps xmm2,xmm6
105480f5:	0f c6 d6 09                                     	shufps xmm2,xmm6,0x9
105480f9:	0f 59 d3                                        	mulps  xmm2,xmm3
105480fc:	0f 59 cc                                        	mulps  xmm1,xmm4
105480ff:	0f 5c ca                                        	subps  xmm1,xmm2
10548102:	0f 28 d6                                        	movaps xmm2,xmm6
10548105:	0f 59 d0                                        	mulps  xmm2,xmm0
10548108:	0f 58 ca                                        	addps  xmm1,xmm2
1054810b:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10548110:	0f 28 46 30                                     	movaps xmm0,XMMWORD PTR [esi+0x30]
10548114:	0f 28 d0                                        	movaps xmm2,xmm0
10548117:	0f c6 d0 12                                     	shufps xmm2,xmm0,0x12
1054811b:	0f 59 d4                                        	mulps  xmm2,xmm4
1054811e:	0f 28 f8                                        	movaps xmm7,xmm0
10548121:	0f c6 f8 09                                     	shufps xmm7,xmm0,0x9
10548125:	0f 59 44 24 20                                  	mulps  xmm0,XMMWORD PTR [esp+0x20]
1054812a:	0f 59 fb                                        	mulps  xmm7,xmm3
1054812d:	0f 5c d7                                        	subps  xmm2,xmm7
10548130:	0f 58 d0                                        	addps  xmm2,xmm0
10548133:	0f 28 c2                                        	movaps xmm0,xmm2
10548136:	0f c6 c2 12                                     	shufps xmm0,xmm2,0x12
1054813a:	0f 28 fa                                        	movaps xmm7,xmm2
1054813d:	0f c6 fa 09                                     	shufps xmm7,xmm2,0x9
10548141:	0f 28 56 30                                     	movaps xmm2,XMMWORD PTR [esi+0x30]
10548145:	0f 59 c4                                        	mulps  xmm0,xmm4
10548148:	0f 59 fb                                        	mulps  xmm7,xmm3
1054814b:	0f 5c c7                                        	subps  xmm0,xmm7
1054814e:	0f 59 c5                                        	mulps  xmm0,xmm5
10548151:	0f 58 c2                                        	addps  xmm0,xmm2
10548154:	0f 28 d1                                        	movaps xmm2,xmm1
10548157:	0f c6 d1 12                                     	shufps xmm2,xmm1,0x12
1054815b:	0f 59 d4                                        	mulps  xmm2,xmm4
1054815e:	0f 28 e1                                        	movaps xmm4,xmm1
10548161:	0f c6 e1 09                                     	shufps xmm4,xmm1,0x9
10548165:	0f 59 e3                                        	mulps  xmm4,xmm3
10548168:	0f 5c d4                                        	subps  xmm2,xmm4
1054816b:	0f 59 d5                                        	mulps  xmm2,xmm5
1054816e:	0f 58 d6                                        	addps  xmm2,xmm6
10548171:	0f 58 54 24 40                                  	addps  xmm2,XMMWORD PTR [esp+0x40]
10548176:	0f 29 56 40                                     	movaps XMMWORD PTR [esi+0x40],xmm2
1054817a:	0f 29 46 30                                     	movaps XMMWORD PTR [esi+0x30],xmm0
1054817e:	8b 17                                           	mov    edx,DWORD PTR [edi]
10548180:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10548183:	8b cf                                           	mov    ecx,edi
10548185:	ff d0                                           	call   eax
10548187:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1054818b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1054818d:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10548190:	ff d0                                           	call   eax
10548192:	b0 01                                           	mov    al,0x1
10548194:	5f                                              	pop    edi
10548195:	5e                                              	pop    esi
10548196:	5b                                              	pop    ebx
10548197:	8b e5                                           	mov    esp,ebp
10548199:	5d                                              	pop    ebp
1054819a:	c3                                              	ret
1054819b:	8b 17                                           	mov    edx,DWORD PTR [edi]
1054819d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
105481a0:	8b cf                                           	mov    ecx,edi
105481a2:	ff d0                                           	call   eax
105481a4:	8b 13                                           	mov    edx,DWORD PTR [ebx]
105481a6:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
105481a9:	8b cb                                           	mov    ecx,ebx
105481ab:	ff d0                                           	call   eax
105481ad:	5f                                              	pop    edi
105481ae:	5e                                              	pop    esi
105481af:	32 c0                                           	xor    al,al
105481b1:	5b                                              	pop    ebx
105481b2:	8b e5                                           	mov    esp,ebp
105481b4:	5d                                              	pop    ebp
105481b5:	c3                                              	ret
105481b6:	cc                                              	int3
105481b7:	cc                                              	int3
105481b8:	cc                                              	int3
105481b9:	cc                                              	int3
105481ba:	cc                                              	int3
105481bb:	cc                                              	int3
105481bc:	cc                                              	int3
105481bd:	cc                                              	int3
105481be:	cc                                              	int3
105481bf:	cc                                              	int3
