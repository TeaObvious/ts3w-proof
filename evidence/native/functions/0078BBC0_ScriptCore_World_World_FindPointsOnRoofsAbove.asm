# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078bbc0 (ScriptCore.World::World_FindPointsOnRoofsAbove)
Paired Ghidra pseudocode: 0078BBC0_ScriptCore_World_World_FindPointsOnRoofsAbove.c
Window: [0x0078bbc0, 0x0078c010) (1104 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078c010
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078bbc0: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 81 ec 74 01
0078bbd0: 00 00 53 33 db 3b cb 56 57 0f 84 24 04 00 00 8b
0078bbe0: 45 0c 8b 55 08 53 50 52 e8 23 6c 4d 00 8b f8 3b
0078bbf0: fb 0f 84 0c 04 00 00 e8 94 d7 fd ff 8d 4c 24 24
0078bc00: 51 8d 4c 24 2c 51 8b 4d 10 8b 09 89 5c 24 2c 89
0078bc10: 5c 24 30 8b 10 8b 52 78 51 8b c8 89 44 24 40 ff
0078bc20: d2 8b 4c 24 24 3b cb 0f 84 d6 03 00 00 8b 87 ac
0078bc30: 02 00 00 3b c3 89 44 24 30 0f 84 c4 03 00 00 b8
0078bc40: 56 55 55 55 f7 e9 8b f2 8d 84 24 60 01 00 00 c1
0078bc50: ee 1f 50 8b cf 03 f2 e8 04 57 32 00 8d 8c 24 40
0078bc60: 01 00 00 51 8b cf e8 d5 57 32 00 33 c9 8d 04 76
0078bc70: 89 44 24 3c ba 04 00 00 00 f7 e2 53 0f 90 c1 53
0078bc80: 53 53 68 a8 18 01 01 f7 d9 0b c8 51 e8 6f 88 d5
0078bc90: ff 83 c4 18 85 f6 8b d8 89 5c 24 40 0f 8e 35 03
0078bca0: 00 00 f3 0f 10 2d 88 fd 03 01 0f 57 f6 33 c9 8d
0078bcb0: 43 08 0f c6 ed 00 0f 29 ac 24 b0 00 00 00 89 4c
0078bcc0: 24 1c 89 44 24 2c 8b 54 24 28 f3 0f 10 4c 11 08
0078bcd0: 0f 28 94 24 40 01 00 00 f3 0f 10 04 11 f3 0f 11
0078bce0: 44 24 5c f3 0f 11 44 24 50 f3 0f 11 4c 24 58 f3
0078bcf0: 0f 10 4c 11 04 f3 0f 11 4c 24 54 0f 28 4c 24 50
0078bd00: 0f 28 da 0f c6 da 09 0f 28 e2 0f c6 e2 12 0f 28
0078bd10: f9 0f c6 f9 09 0f 28 c1 0f c6 c1 12 0f 59 c3 0f
0078bd20: 59 fc 0f 5c c7 0f 28 fa 0f c6 fa ff 0f 59 f9 0f
0078bd30: 58 c7 0f 28 d0 0f c6 d0 09 0f c6 c0 12 0f 59 c3
0078bd40: 0f 59 d4 0f 5c c2 0f 59 c5 0f 58 c1 0f 28 8c 24
0078bd50: 50 01 00 00 0f 58 c1 0f 29 84 24 e0 00 00 00 f3
0078bd60: 0f 10 8c 24 e0 00 00 00 0f 2f ce 0f 29 84 24 80
0078bd70: 00 00 00 0f 29 84 24 c0 00 00 00 0f 82 9f 01 00
0078bd80: 00 f3 0f 2a 97 74 01 00 00 0f 2f d1 0f 82 8e 01
0078bd90: 00 00 f3 0f 10 8c 24 c8 00 00 00 0f 2f ce 0f 82
0078bda0: 7c 01 00 00 f3 0f 2a 97 78 01 00 00 0f 2f d1 0f
0078bdb0: 82 6b 01 00 00 8d 44 24 20 50 8d 4c 24 1f 51 8b
0078bdc0: 4c 24 38 8d 54 24 74 0f 29 84 24 38 01 00 00 d9
0078bdd0: 84 24 40 01 00 00 52 83 ec 08 d9 5c 24 04 0f 29
0078bde0: 84 24 b4 00 00 00 d9 84 24 b4 00 00 00 0f 29 84
0078bdf0: 24 84 00 00 00 f3 0f 10 8c 24 88 00 00 00 d9 1c
0078be00: 24 f3 0f 11 74 24 34 f3 0f 11 4c 24 28 e8 1e e3
0078be10: 40 00 84 c0 74 13 f3 0f 10 44 24 20 0f 2f 44 24
0078be20: 74 76 06 f3 0f 11 44 24 14 8b 9f 80 01 00 00 85
0078be30: db c6 44 24 10 ff c6 44 24 11 ff c6 44 24 12 00
0078be40: 0f 8e 9c 00 00 00 0f 28 84 24 80 00 00 00 0f 29
0078be50: 84 24 00 01 00 00 0f 29 84 24 20 01 00 00 f3 0f
0078be60: 10 84 24 20 01 00 00 8d 4c 24 10 0f be c3 51 8d
0078be70: 54 24 48 f3 0f 11 44 24 48 f3 0f 10 84 24 0c 01
0078be80: 00 00 52 f3 0f 11 44 24 50 89 44 24 54 e8 9e b8
0078be90: 36 00 8b 8f 90 02 00 00 83 c4 08 6a 01 6a 0f 8d
0078bea0: 44 24 18 50 e8 07 22 30 00 84 c0 75 09 83 eb 01
0078beb0: 85 db 7f aa eb 2c 8d 4c 24 44 51 8b 8f 90 02 00
0078bec0: 00 e8 ca 07 30 00 d9 54 24 38 d9 44 24 14 d9 c9
0078bed0: df f1 dd d8 76 0c f3 0f 10 44 24 38 f3 0f 11 44
0078bee0: 24 14 0f 28 84 24 80 00 00 00 0f 57 f6 0f 28 ac
0078bef0: 24 b0 00 00 00 8b 4c 24 1c 8b 44 24 2c 8b 5c 24
0078bf00: 40 0f 29 84 24 90 00 00 00 f3 0f 10 44 24 14 f3
0078bf10: 0f 11 84 24 94 00 00 00 0f 28 84 24 90 00 00 00
0078bf20: 0f 28 94 24 60 01 00 00 0f 28 f8 0f c6 f8 09 0f
0078bf30: 28 c8 0f c6 c8 12 0f 28 da 0f c6 da 09 0f 59 cb
0078bf40: 0f 28 e2 0f c6 e2 12 0f 59 fc 0f 5c cf 0f 28 fa
0078bf50: 0f c6 fa ff 0f 59 f8 0f 58 cf 0f 28 d1 0f c6 d1
0078bf60: 09 0f c6 c9 12 0f 59 cb 0f 59 d4 0f 5c ca 0f 59
0078bf70: cd 0f 58 c8 0f 28 84 24 70 01 00 00 0f 58 c8 0f
0078bf80: 29 8c 24 d0 00 00 00 f3 0f 10 84 24 d0 00 00 00
0078bf90: f3 0f 11 40 f8 0f 29 8c 24 f0 00 00 00 f3 0f 10
0078bfa0: 84 24 f4 00 00 00 f3 0f 11 40 fc 0f 29 8c 24 10
0078bfb0: 01 00 00 f3 0f 10 84 24 18 01 00 00 f3 0f 11 00
0078bfc0: 83 c1 0c 83 c0 0c 83 ee 01 89 4c 24 1c 89 44 24
0078bfd0: 2c 0f 85 ef fc ff ff 8b 44 24 3c 8b 4c 24 34 8b
0078bfe0: 11 8b 92 a8 00 00 00 50 8b 45 14 6a 00 53 50 ff
0078bff0: d2 53 e8 e9 84 d5 ff 83 c4 04 b0 01 5f 5e 5b 8b
0078c000: e5 5d c3 5f 5e 32 c0 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
0078bbc0 <.text+0x38abc0>:
  78bbc0:	55                                              	push   ebp
  78bbc1:	8b ec                                           	mov    ebp,esp
  78bbc3:	83 e4 f0                                        	and    esp,0xfffffff0
  78bbc6:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78bbcc:	81 ec 74 01 00 00                               	sub    esp,0x174
  78bbd2:	53                                              	push   ebx
  78bbd3:	33 db                                           	xor    ebx,ebx
  78bbd5:	3b cb                                           	cmp    ecx,ebx
  78bbd7:	56                                              	push   esi
  78bbd8:	57                                              	push   edi
  78bbd9:	0f 84 24 04 00 00                               	je     0x78c003
  78bbdf:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  78bbe2:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78bbe5:	53                                              	push   ebx
  78bbe6:	50                                              	push   eax
  78bbe7:	52                                              	push   edx
  78bbe8:	e8 23 6c 4d 00                                  	call   0xc62810
  78bbed:	8b f8                                           	mov    edi,eax
  78bbef:	3b fb                                           	cmp    edi,ebx
  78bbf1:	0f 84 0c 04 00 00                               	je     0x78c003
  78bbf7:	e8 94 d7 fd ff                                  	call   0x769390
  78bbfc:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  78bc00:	51                                              	push   ecx
  78bc01:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  78bc05:	51                                              	push   ecx
  78bc06:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  78bc09:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  78bc0b:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  78bc0f:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
  78bc13:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78bc15:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
  78bc18:	51                                              	push   ecx
  78bc19:	8b c8                                           	mov    ecx,eax
  78bc1b:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
  78bc1f:	ff d2                                           	call   edx
  78bc21:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  78bc25:	3b cb                                           	cmp    ecx,ebx
  78bc27:	0f 84 d6 03 00 00                               	je     0x78c003
  78bc2d:	8b 87 ac 02 00 00                               	mov    eax,DWORD PTR [edi+0x2ac]
  78bc33:	3b c3                                           	cmp    eax,ebx
  78bc35:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  78bc39:	0f 84 c4 03 00 00                               	je     0x78c003
  78bc3f:	b8 56 55 55 55                                  	mov    eax,0x55555556
  78bc44:	f7 e9                                           	imul   ecx
  78bc46:	8b f2                                           	mov    esi,edx
  78bc48:	8d 84 24 60 01 00 00                            	lea    eax,[esp+0x160]
  78bc4f:	c1 ee 1f                                        	shr    esi,0x1f
  78bc52:	50                                              	push   eax
  78bc53:	8b cf                                           	mov    ecx,edi
  78bc55:	03 f2                                           	add    esi,edx
  78bc57:	e8 04 57 32 00                                  	call   0xab1360
  78bc5c:	8d 8c 24 40 01 00 00                            	lea    ecx,[esp+0x140]
  78bc63:	51                                              	push   ecx
  78bc64:	8b cf                                           	mov    ecx,edi
  78bc66:	e8 d5 57 32 00                                  	call   0xab1440
  78bc6b:	33 c9                                           	xor    ecx,ecx
  78bc6d:	8d 04 76                                        	lea    eax,[esi+esi*2]
  78bc70:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  78bc74:	ba 04 00 00 00                                  	mov    edx,0x4
  78bc79:	f7 e2                                           	mul    edx
  78bc7b:	53                                              	push   ebx
  78bc7c:	0f 90 c1                                        	seto   cl
  78bc7f:	53                                              	push   ebx
  78bc80:	53                                              	push   ebx
  78bc81:	53                                              	push   ebx
  78bc82:	68 a8 18 01 01                                  	push   0x10118a8
  78bc87:	f7 d9                                           	neg    ecx
  78bc89:	0b c8                                           	or     ecx,eax
  78bc8b:	51                                              	push   ecx
  78bc8c:	e8 6f 88 d5 ff                                  	call   0x4e4500
  78bc91:	83 c4 18                                        	add    esp,0x18
  78bc94:	85 f6                                           	test   esi,esi
  78bc96:	8b d8                                           	mov    ebx,eax
  78bc98:	89 5c 24 40                                     	mov    DWORD PTR [esp+0x40],ebx
  78bc9c:	0f 8e 35 03 00 00                               	jle    0x78bfd7
  78bca2:	f3 0f 10 2d 88 fd 03 01                         	movss  xmm5,DWORD PTR ds:0x103fd88
  78bcaa:	0f 57 f6                                        	xorps  xmm6,xmm6
  78bcad:	33 c9                                           	xor    ecx,ecx
  78bcaf:	8d 43 08                                        	lea    eax,[ebx+0x8]
  78bcb2:	0f c6 ed 00                                     	shufps xmm5,xmm5,0x0
  78bcb6:	0f 29 ac 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm5
  78bcbe:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  78bcc2:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  78bcc6:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  78bcca:	f3 0f 10 4c 11 08                               	movss  xmm1,DWORD PTR [ecx+edx*1+0x8]
  78bcd0:	0f 28 94 24 40 01 00 00                         	movaps xmm2,XMMWORD PTR [esp+0x140]
  78bcd8:	f3 0f 10 04 11                                  	movss  xmm0,DWORD PTR [ecx+edx*1]
  78bcdd:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
  78bce3:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
  78bce9:	f3 0f 11 4c 24 58                               	movss  DWORD PTR [esp+0x58],xmm1
  78bcef:	f3 0f 10 4c 11 04                               	movss  xmm1,DWORD PTR [ecx+edx*1+0x4]
  78bcf5:	f3 0f 11 4c 24 54                               	movss  DWORD PTR [esp+0x54],xmm1
  78bcfb:	0f 28 4c 24 50                                  	movaps xmm1,XMMWORD PTR [esp+0x50]
  78bd00:	0f 28 da                                        	movaps xmm3,xmm2
  78bd03:	0f c6 da 09                                     	shufps xmm3,xmm2,0x9
  78bd07:	0f 28 e2                                        	movaps xmm4,xmm2
  78bd0a:	0f c6 e2 12                                     	shufps xmm4,xmm2,0x12
  78bd0e:	0f 28 f9                                        	movaps xmm7,xmm1
  78bd11:	0f c6 f9 09                                     	shufps xmm7,xmm1,0x9
  78bd15:	0f 28 c1                                        	movaps xmm0,xmm1
  78bd18:	0f c6 c1 12                                     	shufps xmm0,xmm1,0x12
  78bd1c:	0f 59 c3                                        	mulps  xmm0,xmm3
  78bd1f:	0f 59 fc                                        	mulps  xmm7,xmm4
  78bd22:	0f 5c c7                                        	subps  xmm0,xmm7
  78bd25:	0f 28 fa                                        	movaps xmm7,xmm2
  78bd28:	0f c6 fa ff                                     	shufps xmm7,xmm2,0xff
  78bd2c:	0f 59 f9                                        	mulps  xmm7,xmm1
  78bd2f:	0f 58 c7                                        	addps  xmm0,xmm7
  78bd32:	0f 28 d0                                        	movaps xmm2,xmm0
  78bd35:	0f c6 d0 09                                     	shufps xmm2,xmm0,0x9
  78bd39:	0f c6 c0 12                                     	shufps xmm0,xmm0,0x12
  78bd3d:	0f 59 c3                                        	mulps  xmm0,xmm3
  78bd40:	0f 59 d4                                        	mulps  xmm2,xmm4
  78bd43:	0f 5c c2                                        	subps  xmm0,xmm2
  78bd46:	0f 59 c5                                        	mulps  xmm0,xmm5
  78bd49:	0f 58 c1                                        	addps  xmm0,xmm1
  78bd4c:	0f 28 8c 24 50 01 00 00                         	movaps xmm1,XMMWORD PTR [esp+0x150]
  78bd54:	0f 58 c1                                        	addps  xmm0,xmm1
  78bd57:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  78bd5f:	f3 0f 10 8c 24 e0 00 00 00                      	movss  xmm1,DWORD PTR [esp+0xe0]
  78bd68:	0f 2f ce                                        	comiss xmm1,xmm6
  78bd6b:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  78bd73:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  78bd7b:	0f 82 9f 01 00 00                               	jb     0x78bf20
  78bd81:	f3 0f 2a 97 74 01 00 00                         	cvtsi2ss xmm2,DWORD PTR [edi+0x174]
  78bd89:	0f 2f d1                                        	comiss xmm2,xmm1
  78bd8c:	0f 82 8e 01 00 00                               	jb     0x78bf20
  78bd92:	f3 0f 10 8c 24 c8 00 00 00                      	movss  xmm1,DWORD PTR [esp+0xc8]
  78bd9b:	0f 2f ce                                        	comiss xmm1,xmm6
  78bd9e:	0f 82 7c 01 00 00                               	jb     0x78bf20
  78bda4:	f3 0f 2a 97 78 01 00 00                         	cvtsi2ss xmm2,DWORD PTR [edi+0x178]
  78bdac:	0f 2f d1                                        	comiss xmm2,xmm1
  78bdaf:	0f 82 6b 01 00 00                               	jb     0x78bf20
  78bdb5:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  78bdb9:	50                                              	push   eax
  78bdba:	8d 4c 24 1f                                     	lea    ecx,[esp+0x1f]
  78bdbe:	51                                              	push   ecx
  78bdbf:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  78bdc3:	8d 54 24 74                                     	lea    edx,[esp+0x74]
  78bdc7:	0f 29 84 24 38 01 00 00                         	movaps XMMWORD PTR [esp+0x138],xmm0
  78bdcf:	d9 84 24 40 01 00 00                            	fld    DWORD PTR [esp+0x140]
  78bdd6:	52                                              	push   edx
  78bdd7:	83 ec 08                                        	sub    esp,0x8
  78bdda:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78bdde:	0f 29 84 24 b4 00 00 00                         	movaps XMMWORD PTR [esp+0xb4],xmm0
  78bde6:	d9 84 24 b4 00 00 00                            	fld    DWORD PTR [esp+0xb4]
  78bded:	0f 29 84 24 84 00 00 00                         	movaps XMMWORD PTR [esp+0x84],xmm0
  78bdf5:	f3 0f 10 8c 24 88 00 00 00                      	movss  xmm1,DWORD PTR [esp+0x88]
  78bdfe:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78be01:	f3 0f 11 74 24 34                               	movss  DWORD PTR [esp+0x34],xmm6
  78be07:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
  78be0d:	e8 1e e3 40 00                                  	call   0xb9a130
  78be12:	84 c0                                           	test   al,al
  78be14:	74 13                                           	je     0x78be29
  78be16:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  78be1c:	0f 2f 44 24 74                                  	comiss xmm0,DWORD PTR [esp+0x74]
  78be21:	76 06                                           	jbe    0x78be29
  78be23:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78be29:	8b 9f 80 01 00 00                               	mov    ebx,DWORD PTR [edi+0x180]
  78be2f:	85 db                                           	test   ebx,ebx
  78be31:	c6 44 24 10 ff                                  	mov    BYTE PTR [esp+0x10],0xff
  78be36:	c6 44 24 11 ff                                  	mov    BYTE PTR [esp+0x11],0xff
  78be3b:	c6 44 24 12 00                                  	mov    BYTE PTR [esp+0x12],0x0
  78be40:	0f 8e 9c 00 00 00                               	jle    0x78bee2
  78be46:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
  78be4e:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
  78be56:	0f 29 84 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm0
  78be5e:	f3 0f 10 84 24 20 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x120]
  78be67:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  78be6b:	0f be c3                                        	movsx  eax,bl
  78be6e:	51                                              	push   ecx
  78be6f:	8d 54 24 48                                     	lea    edx,[esp+0x48]
  78be73:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  78be79:	f3 0f 10 84 24 0c 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x10c]
  78be82:	52                                              	push   edx
  78be83:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
  78be89:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
  78be8d:	e8 9e b8 36 00                                  	call   0xaf7730
  78be92:	8b 8f 90 02 00 00                               	mov    ecx,DWORD PTR [edi+0x290]
  78be98:	83 c4 08                                        	add    esp,0x8
  78be9b:	6a 01                                           	push   0x1
  78be9d:	6a 0f                                           	push   0xf
  78be9f:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  78bea3:	50                                              	push   eax
  78bea4:	e8 07 22 30 00                                  	call   0xa8e0b0
  78bea9:	84 c0                                           	test   al,al
  78beab:	75 09                                           	jne    0x78beb6
  78bead:	83 eb 01                                        	sub    ebx,0x1
  78beb0:	85 db                                           	test   ebx,ebx
  78beb2:	7f aa                                           	jg     0x78be5e
  78beb4:	eb 2c                                           	jmp    0x78bee2
  78beb6:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  78beba:	51                                              	push   ecx
  78bebb:	8b 8f 90 02 00 00                               	mov    ecx,DWORD PTR [edi+0x290]
  78bec1:	e8 ca 07 30 00                                  	call   0xa8c690
  78bec6:	d9 54 24 38                                     	fst    DWORD PTR [esp+0x38]
  78beca:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  78bece:	d9 c9                                           	fxch   st(1)
  78bed0:	df f1                                           	fcomip st,st(1)
  78bed2:	dd d8                                           	fstp   st(0)
  78bed4:	76 0c                                           	jbe    0x78bee2
  78bed6:	f3 0f 10 44 24 38                               	movss  xmm0,DWORD PTR [esp+0x38]
  78bedc:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78bee2:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
  78beea:	0f 57 f6                                        	xorps  xmm6,xmm6
  78beed:	0f 28 ac 24 b0 00 00 00                         	movaps xmm5,XMMWORD PTR [esp+0xb0]
  78bef5:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  78bef9:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  78befd:	8b 5c 24 40                                     	mov    ebx,DWORD PTR [esp+0x40]
  78bf01:	0f 29 84 24 90 00 00 00                         	movaps XMMWORD PTR [esp+0x90],xmm0
  78bf09:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  78bf0f:	f3 0f 11 84 24 94 00 00 00                      	movss  DWORD PTR [esp+0x94],xmm0
  78bf18:	0f 28 84 24 90 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x90]
  78bf20:	0f 28 94 24 60 01 00 00                         	movaps xmm2,XMMWORD PTR [esp+0x160]
  78bf28:	0f 28 f8                                        	movaps xmm7,xmm0
  78bf2b:	0f c6 f8 09                                     	shufps xmm7,xmm0,0x9
  78bf2f:	0f 28 c8                                        	movaps xmm1,xmm0
  78bf32:	0f c6 c8 12                                     	shufps xmm1,xmm0,0x12
  78bf36:	0f 28 da                                        	movaps xmm3,xmm2
  78bf39:	0f c6 da 09                                     	shufps xmm3,xmm2,0x9
  78bf3d:	0f 59 cb                                        	mulps  xmm1,xmm3
  78bf40:	0f 28 e2                                        	movaps xmm4,xmm2
  78bf43:	0f c6 e2 12                                     	shufps xmm4,xmm2,0x12
  78bf47:	0f 59 fc                                        	mulps  xmm7,xmm4
  78bf4a:	0f 5c cf                                        	subps  xmm1,xmm7
  78bf4d:	0f 28 fa                                        	movaps xmm7,xmm2
  78bf50:	0f c6 fa ff                                     	shufps xmm7,xmm2,0xff
  78bf54:	0f 59 f8                                        	mulps  xmm7,xmm0
  78bf57:	0f 58 cf                                        	addps  xmm1,xmm7
  78bf5a:	0f 28 d1                                        	movaps xmm2,xmm1
  78bf5d:	0f c6 d1 09                                     	shufps xmm2,xmm1,0x9
  78bf61:	0f c6 c9 12                                     	shufps xmm1,xmm1,0x12
  78bf65:	0f 59 cb                                        	mulps  xmm1,xmm3
  78bf68:	0f 59 d4                                        	mulps  xmm2,xmm4
  78bf6b:	0f 5c ca                                        	subps  xmm1,xmm2
  78bf6e:	0f 59 cd                                        	mulps  xmm1,xmm5
  78bf71:	0f 58 c8                                        	addps  xmm1,xmm0
  78bf74:	0f 28 84 24 70 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x170]
  78bf7c:	0f 58 c8                                        	addps  xmm1,xmm0
  78bf7f:	0f 29 8c 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm1
  78bf87:	f3 0f 10 84 24 d0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd0]
  78bf90:	f3 0f 11 40 f8                                  	movss  DWORD PTR [eax-0x8],xmm0
  78bf95:	0f 29 8c 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm1
  78bf9d:	f3 0f 10 84 24 f4 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf4]
  78bfa6:	f3 0f 11 40 fc                                  	movss  DWORD PTR [eax-0x4],xmm0
  78bfab:	0f 29 8c 24 10 01 00 00                         	movaps XMMWORD PTR [esp+0x110],xmm1
  78bfb3:	f3 0f 10 84 24 18 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x118]
  78bfbc:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  78bfc0:	83 c1 0c                                        	add    ecx,0xc
  78bfc3:	83 c0 0c                                        	add    eax,0xc
  78bfc6:	83 ee 01                                        	sub    esi,0x1
  78bfc9:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  78bfcd:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  78bfd1:	0f 85 ef fc ff ff                               	jne    0x78bcc6
  78bfd7:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  78bfdb:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  78bfdf:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  78bfe1:	8b 92 a8 00 00 00                               	mov    edx,DWORD PTR [edx+0xa8]
  78bfe7:	50                                              	push   eax
  78bfe8:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  78bfeb:	6a 00                                           	push   0x0
  78bfed:	53                                              	push   ebx
  78bfee:	50                                              	push   eax
  78bfef:	ff d2                                           	call   edx
  78bff1:	53                                              	push   ebx
  78bff2:	e8 e9 84 d5 ff                                  	call   0x4e44e0
  78bff7:	83 c4 04                                        	add    esp,0x4
  78bffa:	b0 01                                           	mov    al,0x1
  78bffc:	5f                                              	pop    edi
  78bffd:	5e                                              	pop    esi
  78bffe:	5b                                              	pop    ebx
  78bfff:	8b e5                                           	mov    esp,ebp
  78c001:	5d                                              	pop    ebp
  78c002:	c3                                              	ret
  78c003:	5f                                              	pop    edi
  78c004:	5e                                              	pop    esi
  78c005:	32 c0                                           	xor    al,al
  78c007:	5b                                              	pop    ebx
  78c008:	8b e5                                           	mov    esp,ebp
  78c00a:	5d                                              	pop    ebp
  78c00b:	c3                                              	ret
  78c00c:	cc                                              	int3
  78c00d:	cc                                              	int3
  78c00e:	cc                                              	int3
  78c00f:	cc                                              	int3
