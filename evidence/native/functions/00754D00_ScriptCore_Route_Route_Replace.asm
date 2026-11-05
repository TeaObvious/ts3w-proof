# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00754d00 (ScriptCore.Route::Route_Replace)
Paired Ghidra pseudocode: 00754D00_ScriptCore_Route_Route_Replace.c
Window: [0x00754d00, 0x00755170) (1136 bytes; stop exclusive)
Next defined Ghidra entry: 0x00755170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00754d00: 55 8b ec 83 e4 f0 81 ec a4 00 00 00 8b 45 08 8b
00754d10: 0d c4 50 1d 01 53 56 57 50 e8 92 67 ff ff 8b f0
00754d20: 85 f6 89 74 24 1c 74 09 8b 16 8b 42 10 8b ce ff
00754d30: d0 8b 4d 10 51 8b 0d c4 50 1d 01 e8 70 67 ff ff
00754d40: 8b d8 85 db 89 5c 24 18 74 09 8b 13 8b 42 10 8b
00754d50: cb ff d0 85 f6 0f 84 e8 03 00 00 85 db 0f 84 ed
00754d60: 03 00 00 80 be f4 00 00 00 00 0f 84 8f 00 00 00
00754d70: 8b b6 ec 00 00 00 85 f6 74 0c 8d 56 04 b8 01 00
00754d80: 00 00 f0 0f c1 02 80 bb f4 00 00 00 00 0f 84 87
00754d90: 00 00 00 8b bb ec 00 00 00 85 ff 74 0c 8d 57 04
00754da0: b8 01 00 00 00 f0 0f c1 02 85 f6 0f 84 46 03 00
00754db0: 00 85 ff 0f 84 62 03 00 00 8b 16 8b 92 34 01 00
00754dc0: 00 8d 44 24 60 50 8b ce ff d2 8b 06 8b 5d 0c 8b
00754dd0: 90 04 01 00 00 57 53 8b ce ff d2 8b 06 8b 90 48
00754de0: 01 00 00 8d 4c 24 60 51 8b ce ff d2 8b 06 8b 50
00754df0: 4c 8b ce ff d2 83 f8 01 72 3b 8d 48 ff eb 38 8d
00754e00: 86 e0 00 00 00 39 00 74 0a 8b 08 8b 71 08 e9 63
00754e10: ff ff ff 33 f6 e9 6c ff ff ff 8d 83 e0 00 00 00
00754e20: 39 00 74 0a 8b 08 8b 79 08 e9 6b ff ff ff 33 ff
00754e30: e9 74 ff ff ff 33 c9 3b d9 74 08 85 c0 0f 85 b0
00754e40: 02 00 00 8b 5c 24 18 80 bb 40 01 00 00 00 0f 28
00754e50: 9b 30 01 00 00 0f 28 83 00 01 00 00 0f 28 93 10
00754e60: 01 00 00 0f 28 8b 20 01 00 00 0f 29 9c 24 a0 00
00754e70: 00 00 0f 84 54 02 00 00 0f 28 f2 0f 28 e8 0f c6
00754e80: f2 55 0f c6 e8 00 0f 28 e6 0f 58 e5 0f 28 fc 0f
00754e90: 28 d9 0f c6 d9 aa 0f 58 fb 0f 29 7c 24 20 f3 0f
00754ea0: 11 7c 24 50 f3 0f 10 3d cc 4c 0f 01 0f c6 ff 00
00754eb0: f3 0f 11 7c 24 30 f3 0f 10 7c 24 50 0f 2f 7c 24
00754ec0: 30 0f 29 64 24 40 f3 0f 10 25 b4 b5 f9 00 0f c6
00754ed0: e4 00 76 67 f3 0f 10 1d f8 98 f9 00 0f c6 db 00
00754ee0: 0f 58 5c 24 20 0f 51 fb 0f 28 d8 0f c6 d8 55 0f
00754ef0: c6 c0 aa 0f 28 ea 0f c6 ea 00 0f 5c dd 0f 28 e9
00754f00: 0f c6 e9 00 0f 5c e8 0f 28 c2 0f c6 c2 aa 0f c6
00754f10: c9 55 0f 5c c1 0f 28 f4 0f 5e f7 0f 59 c6 0f 59
00754f20: ee 0f 59 de 0f 59 fc 0f c6 c5 10 0f c6 df 32 0f
00754f30: c6 c3 88 0f 28 c8 e9 7b 01 00 00 f3 0f 11 6c 24
00754f40: 20 f3 0f 10 7c 24 20 f3 0f 11 74 24 30 0f 2f 7c
00754f50: 24 30 0f 86 81 00 00 00 f3 0f 11 6c 24 20 f3 0f
00754f60: 10 7c 24 20 f3 0f 11 5c 24 30 0f 2f 7c 24 30 76
00754f70: 68 0f 58 de 0f 5c eb f3 0f 10 1d f8 98 f9 00 0f
00754f80: c6 db 00 0f 58 dd 0f 28 f9 0f c6 f9 55 0f 28 ea
00754f90: 0f c6 ea aa 0f 5c ef 0f 51 db 0f c6 c9 00 0f 28
00754fa0: f8 0f c6 f8 aa 0f 58 cf 0f c6 d2 00 0f 28 f4 0f
00754fb0: 5e f3 0f c6 c0 55 0f 58 d0 0f 59 dc 0f 59 ce 0f
00754fc0: 59 d6 0f 59 ee 0f c6 cd 32 0f c6 da 10 0f c6 d9
00754fd0: 88 0f 28 cb e9 dd 00 00 00 f3 0f 11 74 24 20 f3
00754fe0: 0f 10 7c 24 20 f3 0f 11 5c 24 30 0f 2f 7c 24 30
00754ff0: 76 65 0f 58 dd 0f 5c f3 f3 0f 10 1d f8 98 f9 00
00755000: 0f c6 db 00 0f 58 de 0f 51 fb 0f 28 e9 0f c6 e9
00755010: 00 0f c6 c9 55 0f 28 d8 0f c6 d8 aa 0f 5c eb 0f
00755020: 28 da 0f c6 da aa 0f 58 d9 0f 28 ca 0f c6 ca 00
00755030: 0f 28 f4 0f 5e f7 0f c6 c0 55 0f 58 c8 0f 59 ce
00755040: 0f 59 fc 0f 59 de 0f 59 ee 0f c6 cf 10 0f c6 dd
00755050: 32 0f c6 cb 88 eb 5f 0f 5c 5c 24 40 f3 0f 10 2d
00755060: f8 98 f9 00 0f c6 ed 00 0f 58 eb 0f 28 fa 0f c6
00755070: fa 00 0f 28 d8 0f c6 d8 55 0f 5c df 0f 28 f9 0f
00755080: c6 f9 55 0f c6 c9 00 0f 51 ed 0f c6 d2 aa 0f 28
00755090: f4 0f 5e f5 0f c6 c0 aa 0f 58 c8 0f 58 d7 0f 59
007550a0: ce 0f 59 d6 0f 59 ec 0f 59 de 0f c6 ca 10 0f c6
007550b0: eb 32 0f c6 cd 88 8b 06 8b 90 44 01 00 00 8d 4c
007550c0: 24 40 51 8b ce 0f 29 4c 24 44 ff d2 80 bb 41 01
007550d0: 00 00 00 74 1e 8b 06 0f 28 84 24 a0 00 00 00 8b
007550e0: 90 48 01 00 00 8d 4c 24 40 51 8b ce 0f 29 44 24
007550f0: 44 ff d2 8b 5c 24 18 85 ff 74 20 8d 47 04 8b c8
00755100: 83 ca ff f0 0f c1 11 4a 75 11 b9 01 00 00 00 87
00755110: 08 8b 17 8b 02 6a 01 8b cf ff d0 85 f6 74 20 8d
00755120: 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9 01
00755130: 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff d0 8b
00755140: 74 24 1c 85 db 74 09 8b 13 8b 42 14 8b cb ff d0
00755150: 85 f6 74 09 8b 16 8b 42 14 8b ce ff d0 5f 5e 5b
00755160: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00754d00 <.text+0x353d00>:
  754d00:	55                                              	push   ebp
  754d01:	8b ec                                           	mov    ebp,esp
  754d03:	83 e4 f0                                        	and    esp,0xfffffff0
  754d06:	81 ec a4 00 00 00                               	sub    esp,0xa4
  754d0c:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  754d0f:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  754d15:	53                                              	push   ebx
  754d16:	56                                              	push   esi
  754d17:	57                                              	push   edi
  754d18:	50                                              	push   eax
  754d19:	e8 92 67 ff ff                                  	call   0x74b4b0
  754d1e:	8b f0                                           	mov    esi,eax
  754d20:	85 f6                                           	test   esi,esi
  754d22:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  754d26:	74 09                                           	je     0x754d31
  754d28:	8b 16                                           	mov    edx,DWORD PTR [esi]
  754d2a:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  754d2d:	8b ce                                           	mov    ecx,esi
  754d2f:	ff d0                                           	call   eax
  754d31:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  754d34:	51                                              	push   ecx
  754d35:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  754d3b:	e8 70 67 ff ff                                  	call   0x74b4b0
  754d40:	8b d8                                           	mov    ebx,eax
  754d42:	85 db                                           	test   ebx,ebx
  754d44:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  754d48:	74 09                                           	je     0x754d53
  754d4a:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  754d4c:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  754d4f:	8b cb                                           	mov    ecx,ebx
  754d51:	ff d0                                           	call   eax
  754d53:	85 f6                                           	test   esi,esi
  754d55:	0f 84 e8 03 00 00                               	je     0x755143
  754d5b:	85 db                                           	test   ebx,ebx
  754d5d:	0f 84 ed 03 00 00                               	je     0x755150
  754d63:	80 be f4 00 00 00 00                            	cmp    BYTE PTR [esi+0xf4],0x0
  754d6a:	0f 84 8f 00 00 00                               	je     0x754dff
  754d70:	8b b6 ec 00 00 00                               	mov    esi,DWORD PTR [esi+0xec]
  754d76:	85 f6                                           	test   esi,esi
  754d78:	74 0c                                           	je     0x754d86
  754d7a:	8d 56 04                                        	lea    edx,[esi+0x4]
  754d7d:	b8 01 00 00 00                                  	mov    eax,0x1
  754d82:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  754d86:	80 bb f4 00 00 00 00                            	cmp    BYTE PTR [ebx+0xf4],0x0
  754d8d:	0f 84 87 00 00 00                               	je     0x754e1a
  754d93:	8b bb ec 00 00 00                               	mov    edi,DWORD PTR [ebx+0xec]
  754d99:	85 ff                                           	test   edi,edi
  754d9b:	74 0c                                           	je     0x754da9
  754d9d:	8d 57 04                                        	lea    edx,[edi+0x4]
  754da0:	b8 01 00 00 00                                  	mov    eax,0x1
  754da5:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  754da9:	85 f6                                           	test   esi,esi
  754dab:	0f 84 46 03 00 00                               	je     0x7550f7
  754db1:	85 ff                                           	test   edi,edi
  754db3:	0f 84 62 03 00 00                               	je     0x75511b
  754db9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  754dbb:	8b 92 34 01 00 00                               	mov    edx,DWORD PTR [edx+0x134]
  754dc1:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  754dc5:	50                                              	push   eax
  754dc6:	8b ce                                           	mov    ecx,esi
  754dc8:	ff d2                                           	call   edx
  754dca:	8b 06                                           	mov    eax,DWORD PTR [esi]
  754dcc:	8b 5d 0c                                        	mov    ebx,DWORD PTR [ebp+0xc]
  754dcf:	8b 90 04 01 00 00                               	mov    edx,DWORD PTR [eax+0x104]
  754dd5:	57                                              	push   edi
  754dd6:	53                                              	push   ebx
  754dd7:	8b ce                                           	mov    ecx,esi
  754dd9:	ff d2                                           	call   edx
  754ddb:	8b 06                                           	mov    eax,DWORD PTR [esi]
  754ddd:	8b 90 48 01 00 00                               	mov    edx,DWORD PTR [eax+0x148]
  754de3:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  754de7:	51                                              	push   ecx
  754de8:	8b ce                                           	mov    ecx,esi
  754dea:	ff d2                                           	call   edx
  754dec:	8b 06                                           	mov    eax,DWORD PTR [esi]
  754dee:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  754df1:	8b ce                                           	mov    ecx,esi
  754df3:	ff d2                                           	call   edx
  754df5:	83 f8 01                                        	cmp    eax,0x1
  754df8:	72 3b                                           	jb     0x754e35
  754dfa:	8d 48 ff                                        	lea    ecx,[eax-0x1]
  754dfd:	eb 38                                           	jmp    0x754e37
  754dff:	8d 86 e0 00 00 00                               	lea    eax,[esi+0xe0]
  754e05:	39 00                                           	cmp    DWORD PTR [eax],eax
  754e07:	74 0a                                           	je     0x754e13
  754e09:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  754e0b:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  754e0e:	e9 63 ff ff ff                                  	jmp    0x754d76
  754e13:	33 f6                                           	xor    esi,esi
  754e15:	e9 6c ff ff ff                                  	jmp    0x754d86
  754e1a:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
  754e20:	39 00                                           	cmp    DWORD PTR [eax],eax
  754e22:	74 0a                                           	je     0x754e2e
  754e24:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  754e26:	8b 79 08                                        	mov    edi,DWORD PTR [ecx+0x8]
  754e29:	e9 6b ff ff ff                                  	jmp    0x754d99
  754e2e:	33 ff                                           	xor    edi,edi
  754e30:	e9 74 ff ff ff                                  	jmp    0x754da9
  754e35:	33 c9                                           	xor    ecx,ecx
  754e37:	3b d9                                           	cmp    ebx,ecx
  754e39:	74 08                                           	je     0x754e43
  754e3b:	85 c0                                           	test   eax,eax
  754e3d:	0f 85 b0 02 00 00                               	jne    0x7550f3
  754e43:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  754e47:	80 bb 40 01 00 00 00                            	cmp    BYTE PTR [ebx+0x140],0x0
  754e4e:	0f 28 9b 30 01 00 00                            	movaps xmm3,XMMWORD PTR [ebx+0x130]
  754e55:	0f 28 83 00 01 00 00                            	movaps xmm0,XMMWORD PTR [ebx+0x100]
  754e5c:	0f 28 93 10 01 00 00                            	movaps xmm2,XMMWORD PTR [ebx+0x110]
  754e63:	0f 28 8b 20 01 00 00                            	movaps xmm1,XMMWORD PTR [ebx+0x120]
  754e6a:	0f 29 9c 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm3
  754e72:	0f 84 54 02 00 00                               	je     0x7550cc
  754e78:	0f 28 f2                                        	movaps xmm6,xmm2
  754e7b:	0f 28 e8                                        	movaps xmm5,xmm0
  754e7e:	0f c6 f2 55                                     	shufps xmm6,xmm2,0x55
  754e82:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  754e86:	0f 28 e6                                        	movaps xmm4,xmm6
  754e89:	0f 58 e5                                        	addps  xmm4,xmm5
  754e8c:	0f 28 fc                                        	movaps xmm7,xmm4
  754e8f:	0f 28 d9                                        	movaps xmm3,xmm1
  754e92:	0f c6 d9 aa                                     	shufps xmm3,xmm1,0xaa
  754e96:	0f 58 fb                                        	addps  xmm7,xmm3
  754e99:	0f 29 7c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm7
  754e9e:	f3 0f 11 7c 24 50                               	movss  DWORD PTR [esp+0x50],xmm7
  754ea4:	f3 0f 10 3d cc 4c 0f 01                         	movss  xmm7,DWORD PTR ds:0x10f4ccc
  754eac:	0f c6 ff 00                                     	shufps xmm7,xmm7,0x0
  754eb0:	f3 0f 11 7c 24 30                               	movss  DWORD PTR [esp+0x30],xmm7
  754eb6:	f3 0f 10 7c 24 50                               	movss  xmm7,DWORD PTR [esp+0x50]
  754ebc:	0f 2f 7c 24 30                                  	comiss xmm7,DWORD PTR [esp+0x30]
  754ec1:	0f 29 64 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm4
  754ec6:	f3 0f 10 25 b4 b5 f9 00                         	movss  xmm4,DWORD PTR ds:0xf9b5b4
  754ece:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
  754ed2:	76 67                                           	jbe    0x754f3b
  754ed4:	f3 0f 10 1d f8 98 f9 00                         	movss  xmm3,DWORD PTR ds:0xf998f8
  754edc:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  754ee0:	0f 58 5c 24 20                                  	addps  xmm3,XMMWORD PTR [esp+0x20]
  754ee5:	0f 51 fb                                        	sqrtps xmm7,xmm3
  754ee8:	0f 28 d8                                        	movaps xmm3,xmm0
  754eeb:	0f c6 d8 55                                     	shufps xmm3,xmm0,0x55
  754eef:	0f c6 c0 aa                                     	shufps xmm0,xmm0,0xaa
  754ef3:	0f 28 ea                                        	movaps xmm5,xmm2
  754ef6:	0f c6 ea 00                                     	shufps xmm5,xmm2,0x0
  754efa:	0f 5c dd                                        	subps  xmm3,xmm5
  754efd:	0f 28 e9                                        	movaps xmm5,xmm1
  754f00:	0f c6 e9 00                                     	shufps xmm5,xmm1,0x0
  754f04:	0f 5c e8                                        	subps  xmm5,xmm0
  754f07:	0f 28 c2                                        	movaps xmm0,xmm2
  754f0a:	0f c6 c2 aa                                     	shufps xmm0,xmm2,0xaa
  754f0e:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  754f12:	0f 5c c1                                        	subps  xmm0,xmm1
  754f15:	0f 28 f4                                        	movaps xmm6,xmm4
  754f18:	0f 5e f7                                        	divps  xmm6,xmm7
  754f1b:	0f 59 c6                                        	mulps  xmm0,xmm6
  754f1e:	0f 59 ee                                        	mulps  xmm5,xmm6
  754f21:	0f 59 de                                        	mulps  xmm3,xmm6
  754f24:	0f 59 fc                                        	mulps  xmm7,xmm4
  754f27:	0f c6 c5 10                                     	shufps xmm0,xmm5,0x10
  754f2b:	0f c6 df 32                                     	shufps xmm3,xmm7,0x32
  754f2f:	0f c6 c3 88                                     	shufps xmm0,xmm3,0x88
  754f33:	0f 28 c8                                        	movaps xmm1,xmm0
  754f36:	e9 7b 01 00 00                                  	jmp    0x7550b6
  754f3b:	f3 0f 11 6c 24 20                               	movss  DWORD PTR [esp+0x20],xmm5
  754f41:	f3 0f 10 7c 24 20                               	movss  xmm7,DWORD PTR [esp+0x20]
  754f47:	f3 0f 11 74 24 30                               	movss  DWORD PTR [esp+0x30],xmm6
  754f4d:	0f 2f 7c 24 30                                  	comiss xmm7,DWORD PTR [esp+0x30]
  754f52:	0f 86 81 00 00 00                               	jbe    0x754fd9
  754f58:	f3 0f 11 6c 24 20                               	movss  DWORD PTR [esp+0x20],xmm5
  754f5e:	f3 0f 10 7c 24 20                               	movss  xmm7,DWORD PTR [esp+0x20]
  754f64:	f3 0f 11 5c 24 30                               	movss  DWORD PTR [esp+0x30],xmm3
  754f6a:	0f 2f 7c 24 30                                  	comiss xmm7,DWORD PTR [esp+0x30]
  754f6f:	76 68                                           	jbe    0x754fd9
  754f71:	0f 58 de                                        	addps  xmm3,xmm6
  754f74:	0f 5c eb                                        	subps  xmm5,xmm3
  754f77:	f3 0f 10 1d f8 98 f9 00                         	movss  xmm3,DWORD PTR ds:0xf998f8
  754f7f:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  754f83:	0f 58 dd                                        	addps  xmm3,xmm5
  754f86:	0f 28 f9                                        	movaps xmm7,xmm1
  754f89:	0f c6 f9 55                                     	shufps xmm7,xmm1,0x55
  754f8d:	0f 28 ea                                        	movaps xmm5,xmm2
  754f90:	0f c6 ea aa                                     	shufps xmm5,xmm2,0xaa
  754f94:	0f 5c ef                                        	subps  xmm5,xmm7
  754f97:	0f 51 db                                        	sqrtps xmm3,xmm3
  754f9a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  754f9e:	0f 28 f8                                        	movaps xmm7,xmm0
  754fa1:	0f c6 f8 aa                                     	shufps xmm7,xmm0,0xaa
  754fa5:	0f 58 cf                                        	addps  xmm1,xmm7
  754fa8:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  754fac:	0f 28 f4                                        	movaps xmm6,xmm4
  754faf:	0f 5e f3                                        	divps  xmm6,xmm3
  754fb2:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
  754fb6:	0f 58 d0                                        	addps  xmm2,xmm0
  754fb9:	0f 59 dc                                        	mulps  xmm3,xmm4
  754fbc:	0f 59 ce                                        	mulps  xmm1,xmm6
  754fbf:	0f 59 d6                                        	mulps  xmm2,xmm6
  754fc2:	0f 59 ee                                        	mulps  xmm5,xmm6
  754fc5:	0f c6 cd 32                                     	shufps xmm1,xmm5,0x32
  754fc9:	0f c6 da 10                                     	shufps xmm3,xmm2,0x10
  754fcd:	0f c6 d9 88                                     	shufps xmm3,xmm1,0x88
  754fd1:	0f 28 cb                                        	movaps xmm1,xmm3
  754fd4:	e9 dd 00 00 00                                  	jmp    0x7550b6
  754fd9:	f3 0f 11 74 24 20                               	movss  DWORD PTR [esp+0x20],xmm6
  754fdf:	f3 0f 10 7c 24 20                               	movss  xmm7,DWORD PTR [esp+0x20]
  754fe5:	f3 0f 11 5c 24 30                               	movss  DWORD PTR [esp+0x30],xmm3
  754feb:	0f 2f 7c 24 30                                  	comiss xmm7,DWORD PTR [esp+0x30]
  754ff0:	76 65                                           	jbe    0x755057
  754ff2:	0f 58 dd                                        	addps  xmm3,xmm5
  754ff5:	0f 5c f3                                        	subps  xmm6,xmm3
  754ff8:	f3 0f 10 1d f8 98 f9 00                         	movss  xmm3,DWORD PTR ds:0xf998f8
  755000:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  755004:	0f 58 de                                        	addps  xmm3,xmm6
  755007:	0f 51 fb                                        	sqrtps xmm7,xmm3
  75500a:	0f 28 e9                                        	movaps xmm5,xmm1
  75500d:	0f c6 e9 00                                     	shufps xmm5,xmm1,0x0
  755011:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  755015:	0f 28 d8                                        	movaps xmm3,xmm0
  755018:	0f c6 d8 aa                                     	shufps xmm3,xmm0,0xaa
  75501c:	0f 5c eb                                        	subps  xmm5,xmm3
  75501f:	0f 28 da                                        	movaps xmm3,xmm2
  755022:	0f c6 da aa                                     	shufps xmm3,xmm2,0xaa
  755026:	0f 58 d9                                        	addps  xmm3,xmm1
  755029:	0f 28 ca                                        	movaps xmm1,xmm2
  75502c:	0f c6 ca 00                                     	shufps xmm1,xmm2,0x0
  755030:	0f 28 f4                                        	movaps xmm6,xmm4
  755033:	0f 5e f7                                        	divps  xmm6,xmm7
  755036:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
  75503a:	0f 58 c8                                        	addps  xmm1,xmm0
  75503d:	0f 59 ce                                        	mulps  xmm1,xmm6
  755040:	0f 59 fc                                        	mulps  xmm7,xmm4
  755043:	0f 59 de                                        	mulps  xmm3,xmm6
  755046:	0f 59 ee                                        	mulps  xmm5,xmm6
  755049:	0f c6 cf 10                                     	shufps xmm1,xmm7,0x10
  75504d:	0f c6 dd 32                                     	shufps xmm3,xmm5,0x32
  755051:	0f c6 cb 88                                     	shufps xmm1,xmm3,0x88
  755055:	eb 5f                                           	jmp    0x7550b6
  755057:	0f 5c 5c 24 40                                  	subps  xmm3,XMMWORD PTR [esp+0x40]
  75505c:	f3 0f 10 2d f8 98 f9 00                         	movss  xmm5,DWORD PTR ds:0xf998f8
  755064:	0f c6 ed 00                                     	shufps xmm5,xmm5,0x0
  755068:	0f 58 eb                                        	addps  xmm5,xmm3
  75506b:	0f 28 fa                                        	movaps xmm7,xmm2
  75506e:	0f c6 fa 00                                     	shufps xmm7,xmm2,0x0
  755072:	0f 28 d8                                        	movaps xmm3,xmm0
  755075:	0f c6 d8 55                                     	shufps xmm3,xmm0,0x55
  755079:	0f 5c df                                        	subps  xmm3,xmm7
  75507c:	0f 28 f9                                        	movaps xmm7,xmm1
  75507f:	0f c6 f9 55                                     	shufps xmm7,xmm1,0x55
  755083:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  755087:	0f 51 ed                                        	sqrtps xmm5,xmm5
  75508a:	0f c6 d2 aa                                     	shufps xmm2,xmm2,0xaa
  75508e:	0f 28 f4                                        	movaps xmm6,xmm4
  755091:	0f 5e f5                                        	divps  xmm6,xmm5
  755094:	0f c6 c0 aa                                     	shufps xmm0,xmm0,0xaa
  755098:	0f 58 c8                                        	addps  xmm1,xmm0
  75509b:	0f 58 d7                                        	addps  xmm2,xmm7
  75509e:	0f 59 ce                                        	mulps  xmm1,xmm6
  7550a1:	0f 59 d6                                        	mulps  xmm2,xmm6
  7550a4:	0f 59 ec                                        	mulps  xmm5,xmm4
  7550a7:	0f 59 de                                        	mulps  xmm3,xmm6
  7550aa:	0f c6 ca 10                                     	shufps xmm1,xmm2,0x10
  7550ae:	0f c6 eb 32                                     	shufps xmm5,xmm3,0x32
  7550b2:	0f c6 cd 88                                     	shufps xmm1,xmm5,0x88
  7550b6:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7550b8:	8b 90 44 01 00 00                               	mov    edx,DWORD PTR [eax+0x144]
  7550be:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  7550c2:	51                                              	push   ecx
  7550c3:	8b ce                                           	mov    ecx,esi
  7550c5:	0f 29 4c 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm1
  7550ca:	ff d2                                           	call   edx
  7550cc:	80 bb 41 01 00 00 00                            	cmp    BYTE PTR [ebx+0x141],0x0
  7550d3:	74 1e                                           	je     0x7550f3
  7550d5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7550d7:	0f 28 84 24 a0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xa0]
  7550df:	8b 90 48 01 00 00                               	mov    edx,DWORD PTR [eax+0x148]
  7550e5:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  7550e9:	51                                              	push   ecx
  7550ea:	8b ce                                           	mov    ecx,esi
  7550ec:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
  7550f1:	ff d2                                           	call   edx
  7550f3:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  7550f7:	85 ff                                           	test   edi,edi
  7550f9:	74 20                                           	je     0x75511b
  7550fb:	8d 47 04                                        	lea    eax,[edi+0x4]
  7550fe:	8b c8                                           	mov    ecx,eax
  755100:	83 ca ff                                        	or     edx,0xffffffff
  755103:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  755107:	4a                                              	dec    edx
  755108:	75 11                                           	jne    0x75511b
  75510a:	b9 01 00 00 00                                  	mov    ecx,0x1
  75510f:	87 08                                           	xchg   DWORD PTR [eax],ecx
  755111:	8b 17                                           	mov    edx,DWORD PTR [edi]
  755113:	8b 02                                           	mov    eax,DWORD PTR [edx]
  755115:	6a 01                                           	push   0x1
  755117:	8b cf                                           	mov    ecx,edi
  755119:	ff d0                                           	call   eax
  75511b:	85 f6                                           	test   esi,esi
  75511d:	74 20                                           	je     0x75513f
  75511f:	8d 46 04                                        	lea    eax,[esi+0x4]
  755122:	8b c8                                           	mov    ecx,eax
  755124:	83 ca ff                                        	or     edx,0xffffffff
  755127:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  75512b:	4a                                              	dec    edx
  75512c:	75 11                                           	jne    0x75513f
  75512e:	b9 01 00 00 00                                  	mov    ecx,0x1
  755133:	87 08                                           	xchg   DWORD PTR [eax],ecx
  755135:	8b 16                                           	mov    edx,DWORD PTR [esi]
  755137:	8b 02                                           	mov    eax,DWORD PTR [edx]
  755139:	6a 01                                           	push   0x1
  75513b:	8b ce                                           	mov    ecx,esi
  75513d:	ff d0                                           	call   eax
  75513f:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  755143:	85 db                                           	test   ebx,ebx
  755145:	74 09                                           	je     0x755150
  755147:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  755149:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75514c:	8b cb                                           	mov    ecx,ebx
  75514e:	ff d0                                           	call   eax
  755150:	85 f6                                           	test   esi,esi
  755152:	74 09                                           	je     0x75515d
  755154:	8b 16                                           	mov    edx,DWORD PTR [esi]
  755156:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  755159:	8b ce                                           	mov    ecx,esi
  75515b:	ff d0                                           	call   eax
  75515d:	5f                                              	pop    edi
  75515e:	5e                                              	pop    esi
  75515f:	5b                                              	pop    ebx
  755160:	8b e5                                           	mov    esp,ebp
  755162:	5d                                              	pop    ebp
  755163:	c3                                              	ret
  755164:	cc                                              	int3
  755165:	cc                                              	int3
  755166:	cc                                              	int3
  755167:	cc                                              	int3
  755168:	cc                                              	int3
  755169:	cc                                              	int3
  75516a:	cc                                              	int3
  75516b:	cc                                              	int3
  75516c:	cc                                              	int3
  75516d:	cc                                              	int3
  75516e:	cc                                              	int3
  75516f:	cc                                              	int3
