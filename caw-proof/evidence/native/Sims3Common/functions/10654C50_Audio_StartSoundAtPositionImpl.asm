# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654c50 (Audio_StartSoundAtPositionImpl)
Paired Ghidra pseudocode: 10654C50_Audio_StartSoundAtPositionImpl.c
Window: [0x10654c50, 0x10654f40) (752 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654f40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654c50: 55 8b ec 83 e4 f0 81 ec d4 00 00 00 53 56 8b 35
10654c60: a0 d4 c7 10 85 f6 57 0f 84 c4 02 00 00 81 c6 30
10654c70: 84 fd ff 0f 84 b8 02 00 00 e8 a2 64 f0 ff 8b 4d
10654c80: 08 8b 10 8b 52 58 6a ff 68 80 00 00 00 51 8b c8
10654c90: ff d2 50 8d 44 24 6c 50 e8 f3 bb 2d 00 8b 16 8b
10654ca0: 92 18 01 00 00 83 c4 10 8d 44 24 60 50 8b ce ff
10654cb0: d2 89 44 24 30 8b 06 89 54 24 34 8b 50 28 8b ce
10654cc0: ff d2 f3 0f 10 4d 14 f3 0f 10 45 0c 8b 0d c4 00
10654cd0: c7 10 85 c9 f3 0f 11 4c 24 18 f3 0f 10 4d 10 8b
10654ce0: d8 f3 0f 11 44 24 1c f3 0f 11 4c 24 14 f3 0f 11
10654cf0: 44 24 10 0f 28 44 24 10 89 5c 24 4c 0f 29 44 24
10654d00: 50 0f 84 9d 00 00 00 d9 45 14 83 ec 08 d9 5c 24
10654d10: 04 d9 45 0c d9 1c 24 e8 54 83 be ff 8b f8 85 ff
10654d20: 0f 84 80 00 00 00 80 bf 44 04 00 00 00 74 77 8d
10654d30: 44 24 10 50 8b cf e8 65 21 a2 ff 0f 28 08 0f 28
10654d40: 54 24 50 0f 28 d9 0f c6 d9 09 0f 28 e1 0f c6 e1
10654d50: 12 0f 28 ea 0f c6 ea 09 0f 59 ec 0f 28 c2 0f c6
10654d60: c2 12 0f 59 c3 0f 5c c5 0f 28 e9 0f c6 e9 ff 0f
10654d70: 59 ea 0f 58 c5 0f 28 c8 0f c6 c8 09 0f c6 c0 12
10654d80: 0f 59 cc 0f 59 c3 0f 5c c1 f3 0f 10 0d fc df aa
10654d90: 10 0f c6 c9 00 0f 59 c1 0f 28 48 10 0f 58 c2 0f
10654da0: 58 c1 eb 07 33 ff 0f 28 44 24 50 8b 16 8b 42 44
10654db0: 68 65 53 47 03 8b ce 0f 29 44 24 14 ff d0 8b 44
10654dc0: 24 34 8b 4c 24 30 8b 16 8b 52 50 50 51 68 81 53
10654dd0: 47 03 8b ce ff d2 8b 06 8b 50 4c 53 68 85 53 47
10654de0: 03 8b ce ff d2 0f 28 44 24 10 8b 06 8b 50 48 0f
10654df0: 29 44 24 30 d9 44 24 30 51 d9 1c 24 68 91 53 47
10654e00: 03 8b ce ff d2 0f 28 44 24 10 8b 06 8b 50 48 0f
10654e10: 29 44 24 30 d9 44 24 34 51 d9 1c 24 68 95 53 47
10654e20: 03 8b ce ff d2 0f 28 44 24 10 8b 06 8b 50 48 51
10654e30: 0f 29 44 24 14 d9 44 24 1c d9 1c 24 68 98 53 47
10654e40: 03 8b ce ff d2 85 ff 74 08 8b 9f 98 02 00 00 eb
10654e50: 02 33 db 85 db 0f 84 c2 00 00 00 f3 0f 10 05 84
10654e60: e1 aa 10 8d 44 24 10 50 8d 4c 24 54 51 57 f3 0f
10654e70: 11 44 24 1c f3 0f 11 44 24 20 c7 44 24 24 00 00
10654e80: 00 00 e8 59 e2 a4 ff 83 c4 0c 6a 01 6a 00 8d 54
10654e90: 24 18 52 8b cb e8 36 c9 ab ff 8b 5c 24 18 6a 01
10654ea0: 8d 4c 24 14 0f bf c0 51 57 89 44 24 3c e8 de 19
10654eb0: a7 ff 83 c4 0c 84 c0 74 23 8b 8f 98 02 00 00 83
10654ec0: 44 24 18 01 6a 01 6a 00 8d 54 24 18 52 83 c3 01
10654ed0: e8 fb c8 ab ff 0f bf c0 89 44 24 30 8b 16 8b 42
10654ee0: 58 57 68 e6 b4 81 20 8b ce ff d0 8b 16 f3 0f 2a
10654ef0: 44 24 30 8b 42 48 51 f3 0f 11 04 24 68 67 d9 be
10654f00: 5d 8b ce ff d0 8b 16 8b 42 48 51 f3 0f 2a c3 f3
10654f10: 0f 11 04 24 68 d1 78 ff 39 8b ce ff d0 8b 16 8b
10654f20: 42 68 8b ce ff d0 8b 44 24 4c 5f 5e 5b 8b e5 5d
10654f30: c3 5f 5e 33 c0 5b 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10654c50 <.text+0x653c50>:
10654c50:	55                                              	push   ebp
10654c51:	8b ec                                           	mov    ebp,esp
10654c53:	83 e4 f0                                        	and    esp,0xfffffff0
10654c56:	81 ec d4 00 00 00                               	sub    esp,0xd4
10654c5c:	53                                              	push   ebx
10654c5d:	56                                              	push   esi
10654c5e:	8b 35 a0 d4 c7 10                               	mov    esi,DWORD PTR ds:0x10c7d4a0
10654c64:	85 f6                                           	test   esi,esi
10654c66:	57                                              	push   edi
10654c67:	0f 84 c4 02 00 00                               	je     0x10654f31
10654c6d:	81 c6 30 84 fd ff                               	add    esi,0xfffd8430
10654c73:	0f 84 b8 02 00 00                               	je     0x10654f31
10654c79:	e8 a2 64 f0 ff                                  	call   0x1055b120
10654c7e:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10654c81:	8b 10                                           	mov    edx,DWORD PTR [eax]
10654c83:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10654c86:	6a ff                                           	push   0xffffffff
10654c88:	68 80 00 00 00                                  	push   0x80
10654c8d:	51                                              	push   ecx
10654c8e:	8b c8                                           	mov    ecx,eax
10654c90:	ff d2                                           	call   edx
10654c92:	50                                              	push   eax
10654c93:	8d 44 24 6c                                     	lea    eax,[esp+0x6c]
10654c97:	50                                              	push   eax
10654c98:	e8 f3 bb 2d 00                                  	call   0x10930890
10654c9d:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654c9f:	8b 92 18 01 00 00                               	mov    edx,DWORD PTR [edx+0x118]
10654ca5:	83 c4 10                                        	add    esp,0x10
10654ca8:	8d 44 24 60                                     	lea    eax,[esp+0x60]
10654cac:	50                                              	push   eax
10654cad:	8b ce                                           	mov    ecx,esi
10654caf:	ff d2                                           	call   edx
10654cb1:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
10654cb5:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654cb7:	89 54 24 34                                     	mov    DWORD PTR [esp+0x34],edx
10654cbb:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
10654cbe:	8b ce                                           	mov    ecx,esi
10654cc0:	ff d2                                           	call   edx
10654cc2:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
10654cc7:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
10654ccc:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10654cd2:	85 c9                                           	test   ecx,ecx
10654cd4:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
10654cda:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10654cdf:	8b d8                                           	mov    ebx,eax
10654ce1:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10654ce7:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10654ced:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10654cf3:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10654cf8:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
10654cfc:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
10654d01:	0f 84 9d 00 00 00                               	je     0x10654da4
10654d07:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
10654d0a:	83 ec 08                                        	sub    esp,0x8
10654d0d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10654d11:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
10654d14:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10654d17:	e8 54 83 be ff                                  	call   0x1023d070
10654d1c:	8b f8                                           	mov    edi,eax
10654d1e:	85 ff                                           	test   edi,edi
10654d20:	0f 84 80 00 00 00                               	je     0x10654da6
10654d26:	80 bf 44 04 00 00 00                            	cmp    BYTE PTR [edi+0x444],0x0
10654d2d:	74 77                                           	je     0x10654da6
10654d2f:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10654d33:	50                                              	push   eax
10654d34:	8b cf                                           	mov    ecx,edi
10654d36:	e8 65 21 a2 ff                                  	call   0x10076ea0
10654d3b:	0f 28 08                                        	movaps xmm1,XMMWORD PTR [eax]
10654d3e:	0f 28 54 24 50                                  	movaps xmm2,XMMWORD PTR [esp+0x50]
10654d43:	0f 28 d9                                        	movaps xmm3,xmm1
10654d46:	0f c6 d9 09                                     	shufps xmm3,xmm1,0x9
10654d4a:	0f 28 e1                                        	movaps xmm4,xmm1
10654d4d:	0f c6 e1 12                                     	shufps xmm4,xmm1,0x12
10654d51:	0f 28 ea                                        	movaps xmm5,xmm2
10654d54:	0f c6 ea 09                                     	shufps xmm5,xmm2,0x9
10654d58:	0f 59 ec                                        	mulps  xmm5,xmm4
10654d5b:	0f 28 c2                                        	movaps xmm0,xmm2
10654d5e:	0f c6 c2 12                                     	shufps xmm0,xmm2,0x12
10654d62:	0f 59 c3                                        	mulps  xmm0,xmm3
10654d65:	0f 5c c5                                        	subps  xmm0,xmm5
10654d68:	0f 28 e9                                        	movaps xmm5,xmm1
10654d6b:	0f c6 e9 ff                                     	shufps xmm5,xmm1,0xff
10654d6f:	0f 59 ea                                        	mulps  xmm5,xmm2
10654d72:	0f 58 c5                                        	addps  xmm0,xmm5
10654d75:	0f 28 c8                                        	movaps xmm1,xmm0
10654d78:	0f c6 c8 09                                     	shufps xmm1,xmm0,0x9
10654d7c:	0f c6 c0 12                                     	shufps xmm0,xmm0,0x12
10654d80:	0f 59 cc                                        	mulps  xmm1,xmm4
10654d83:	0f 59 c3                                        	mulps  xmm0,xmm3
10654d86:	0f 5c c1                                        	subps  xmm0,xmm1
10654d89:	f3 0f 10 0d fc df aa 10                         	movss  xmm1,DWORD PTR ds:0x10aadffc
10654d91:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10654d95:	0f 59 c1                                        	mulps  xmm0,xmm1
10654d98:	0f 28 48 10                                     	movaps xmm1,XMMWORD PTR [eax+0x10]
10654d9c:	0f 58 c2                                        	addps  xmm0,xmm2
10654d9f:	0f 58 c1                                        	addps  xmm0,xmm1
10654da2:	eb 07                                           	jmp    0x10654dab
10654da4:	33 ff                                           	xor    edi,edi
10654da6:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
10654dab:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654dad:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
10654db0:	68 65 53 47 03                                  	push   0x3475365
10654db5:	8b ce                                           	mov    ecx,esi
10654db7:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
10654dbc:	ff d0                                           	call   eax
10654dbe:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10654dc2:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10654dc6:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654dc8:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
10654dcb:	50                                              	push   eax
10654dcc:	51                                              	push   ecx
10654dcd:	68 81 53 47 03                                  	push   0x3475381
10654dd2:	8b ce                                           	mov    ecx,esi
10654dd4:	ff d2                                           	call   edx
10654dd6:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654dd8:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
10654ddb:	53                                              	push   ebx
10654ddc:	68 85 53 47 03                                  	push   0x3475385
10654de1:	8b ce                                           	mov    ecx,esi
10654de3:	ff d2                                           	call   edx
10654de5:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10654dea:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654dec:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
10654def:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10654df4:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
10654df8:	51                                              	push   ecx
10654df9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10654dfc:	68 91 53 47 03                                  	push   0x3475391
10654e01:	8b ce                                           	mov    ecx,esi
10654e03:	ff d2                                           	call   edx
10654e05:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10654e0a:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654e0c:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
10654e0f:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10654e14:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
10654e18:	51                                              	push   ecx
10654e19:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10654e1c:	68 95 53 47 03                                  	push   0x3475395
10654e21:	8b ce                                           	mov    ecx,esi
10654e23:	ff d2                                           	call   edx
10654e25:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10654e2a:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654e2c:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
10654e2f:	51                                              	push   ecx
10654e30:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
10654e35:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10654e39:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10654e3c:	68 98 53 47 03                                  	push   0x3475398
10654e41:	8b ce                                           	mov    ecx,esi
10654e43:	ff d2                                           	call   edx
10654e45:	85 ff                                           	test   edi,edi
10654e47:	74 08                                           	je     0x10654e51
10654e49:	8b 9f 98 02 00 00                               	mov    ebx,DWORD PTR [edi+0x298]
10654e4f:	eb 02                                           	jmp    0x10654e53
10654e51:	33 db                                           	xor    ebx,ebx
10654e53:	85 db                                           	test   ebx,ebx
10654e55:	0f 84 c2 00 00 00                               	je     0x10654f1d
10654e5b:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
10654e63:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10654e67:	50                                              	push   eax
10654e68:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10654e6c:	51                                              	push   ecx
10654e6d:	57                                              	push   edi
10654e6e:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10654e74:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
10654e7a:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
10654e82:	e8 59 e2 a4 ff                                  	call   0x100a30e0
10654e87:	83 c4 0c                                        	add    esp,0xc
10654e8a:	6a 01                                           	push   0x1
10654e8c:	6a 00                                           	push   0x0
10654e8e:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10654e92:	52                                              	push   edx
10654e93:	8b cb                                           	mov    ecx,ebx
10654e95:	e8 36 c9 ab ff                                  	call   0x101117d0
10654e9a:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
10654e9e:	6a 01                                           	push   0x1
10654ea0:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10654ea4:	0f bf c0                                        	movsx  eax,ax
10654ea7:	51                                              	push   ecx
10654ea8:	57                                              	push   edi
10654ea9:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
10654ead:	e8 de 19 a7 ff                                  	call   0x100c6890
10654eb2:	83 c4 0c                                        	add    esp,0xc
10654eb5:	84 c0                                           	test   al,al
10654eb7:	74 23                                           	je     0x10654edc
10654eb9:	8b 8f 98 02 00 00                               	mov    ecx,DWORD PTR [edi+0x298]
10654ebf:	83 44 24 18 01                                  	add    DWORD PTR [esp+0x18],0x1
10654ec4:	6a 01                                           	push   0x1
10654ec6:	6a 00                                           	push   0x0
10654ec8:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10654ecc:	52                                              	push   edx
10654ecd:	83 c3 01                                        	add    ebx,0x1
10654ed0:	e8 fb c8 ab ff                                  	call   0x101117d0
10654ed5:	0f bf c0                                        	movsx  eax,ax
10654ed8:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
10654edc:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654ede:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
10654ee1:	57                                              	push   edi
10654ee2:	68 e6 b4 81 20                                  	push   0x2081b4e6
10654ee7:	8b ce                                           	mov    ecx,esi
10654ee9:	ff d0                                           	call   eax
10654eeb:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654eed:	f3 0f 2a 44 24 30                               	cvtsi2ss xmm0,DWORD PTR [esp+0x30]
10654ef3:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
10654ef6:	51                                              	push   ecx
10654ef7:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10654efc:	68 67 d9 be 5d                                  	push   0x5dbed967
10654f01:	8b ce                                           	mov    ecx,esi
10654f03:	ff d0                                           	call   eax
10654f05:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654f07:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
10654f0a:	51                                              	push   ecx
10654f0b:	f3 0f 2a c3                                     	cvtsi2ss xmm0,ebx
10654f0f:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10654f14:	68 d1 78 ff 39                                  	push   0x39ff78d1
10654f19:	8b ce                                           	mov    ecx,esi
10654f1b:	ff d0                                           	call   eax
10654f1d:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654f1f:	8b 42 68                                        	mov    eax,DWORD PTR [edx+0x68]
10654f22:	8b ce                                           	mov    ecx,esi
10654f24:	ff d0                                           	call   eax
10654f26:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
10654f2a:	5f                                              	pop    edi
10654f2b:	5e                                              	pop    esi
10654f2c:	5b                                              	pop    ebx
10654f2d:	8b e5                                           	mov    esp,ebp
10654f2f:	5d                                              	pop    ebp
10654f30:	c3                                              	ret
10654f31:	5f                                              	pop    edi
10654f32:	5e                                              	pop    esi
10654f33:	33 c0                                           	xor    eax,eax
10654f35:	5b                                              	pop    ebx
10654f36:	8b e5                                           	mov    esp,ebp
10654f38:	5d                                              	pop    ebp
10654f39:	c3                                              	ret
10654f3a:	cc                                              	int3
10654f3b:	cc                                              	int3
10654f3c:	cc                                              	int3
10654f3d:	cc                                              	int3
10654f3e:	cc                                              	int3
10654f3f:	cc                                              	int3
