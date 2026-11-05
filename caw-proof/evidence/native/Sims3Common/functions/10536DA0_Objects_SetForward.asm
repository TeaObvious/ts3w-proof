# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536da0 (Objects_SetForward)
Paired Ghidra pseudocode: 10536DA0_Objects_SetForward.c
Window: [0x10536da0, 0x10537240) (1184 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536da0: 55 8b ec 83 e4 f0 83 ec 74 53 56 57 e8 ef 33 1f
10536db0: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 f0 3d 1f 00
10536dc0: 8b f0 85 f6 0f 84 62 04 00 00 a1 c4 0c c8 10 50
10536dd0: 8b ce e8 c9 ff 1e 00 85 c0 74 0f 8b 50 08 83 c0
10536de0: 08 8b c8 8b 42 28 ff d0 eb 19 8b 0d 98 d9 c8 10
10536df0: 51 8b ce e8 a8 ff 1e 00 85 c0 74 07 8b c8 e8 4d
10536e00: 19 21 00 8b 15 08 04 c7 10 52 8b ce e8 8f ff 1e
10536e10: 00 8b d8 a1 98 d9 c8 10 50 8b ce e8 80 ff 1e 00
10536e20: 8b f8 85 ff 0f 84 92 03 00 00 8d 4c 24 40 51 8d
10536e30: 4d 10 e8 e9 6c 02 00 0f 28 28 f3 0f 10 35 d4 b0
10536e40: ac 10 f3 0f 10 25 ec 10 b3 10 0f 28 cd 0f 59 cd
10536e50: 0f 28 c1 0f c6 c1 02 0f 28 d1 0f c6 d1 01 0f 58
10536e60: c2 0f 58 c1 0f c6 c0 00 0f 52 d0 0f 28 fa 0f 59
10536e70: fa 0f 59 f8 f3 0f 10 de 0f c6 db 00 0f c6 e4 00
10536e80: 0f 28 cb 0f 5c cf 0f 28 fc 0f 59 fa 0f 59 cf 0f
10536e90: 58 ca 0f 28 d1 0f 59 d1 0f 59 d0 0f 28 c3 0f 5c
10536ea0: c2 0f 28 d4 0f 59 d1 0f 59 c2 0f 58 c1 0f 57 c9
10536eb0: f3 0f 11 4c 24 1c f3 0f 11 4c 24 18 f3 0f 11 4c
10536ec0: 24 10 0f 59 c5 f3 0f 11 74 24 14 0f 28 6c 24 10
10536ed0: 0f 28 d5 0f c6 d5 12 0f 28 f0 0f 28 c8 0f c6 c8
10536ee0: 09 0f 59 d1 0f 29 4c 24 30 0f c6 ed 09 0f c6 f0
10536ef0: 12 0f 59 ee 0f 5c ea 0f 28 d5 0f 59 d5 0f 28 ca
10536f00: 0f c6 ca 02 0f 28 fa 0f c6 fa 01 0f 58 cf 0f 58
10536f10: ca 0f c6 c9 00 0f 52 f9 0f 28 d7 0f 59 d7 0f 59
10536f20: d1 0f 29 54 24 10 0f 29 4c 24 20 0f 28 4c 24 10
10536f30: 0f 28 d3 0f 5c d1 0f 28 cc 0f 59 cf 0f 59 d1 0f
10536f40: 58 d7 0f 28 fa 0f 59 fa 0f 59 7c 24 20 85 db 0f
10536f50: 28 cb 0f 5c cf 0f 28 fc 0f 59 fa 0f 59 cf 0f 58
10536f60: ca 0f 59 cd 0f 28 d1 0f c6 d1 12 0f 59 54 24 30
10536f70: 0f 28 e9 0f c6 e9 09 0f 59 ee 0f 5c d5 74 04 83
10536f80: 4b 2c 10 0f 28 f2 0f 28 e9 0f c6 e9 00 0f c6 f2
10536f90: 55 0f 29 6c 24 10 0f 28 fe 0f 58 fd 0f 28 e8 0f
10536fa0: c6 e8 aa 0f 58 fd 0f 29 7c 24 40 f3 0f 11 7c 24
10536fb0: 30 f3 0f 10 3d 8c e1 aa 10 0f c6 ff 00 f3 0f 11
10536fc0: 7c 24 20 f3 0f 10 7c 24 30 0f 2f 7c 24 20 0f 29
10536fd0: 4c 24 50 0f 29 54 24 60 0f 29 44 24 70 76 58 0f
10536fe0: 58 5c 24 40 0f 51 fb 0f 28 d9 0f c6 d9 55 0f c6
10536ff0: c9 aa 0f 28 ea 0f c6 ea 00 0f 5c dd 0f 28 e8 0f
10537000: c6 e8 00 0f 5c e9 0f 28 ca 0f c6 ca aa 0f 28 f4
10537010: 0f 5e f7 0f c6 c0 55 0f 5c c8 0f 59 ce 0f 59 ee
10537020: 0f 59 de 0f 59 fc 0f c6 cd 10 0f c6 df 32 0f c6
10537030: cb 88 e9 74 01 00 00 f3 0f 10 7c 24 10 f3 0f 11
10537040: 7c 24 40 f3 0f 10 7c 24 40 f3 0f 11 74 24 30 0f
10537050: 2f 7c 24 30 0f 86 82 00 00 00 f3 0f 10 7c 24 10
10537060: f3 0f 11 7c 24 40 f3 0f 10 7c 24 40 f3 0f 11 6c
10537070: 24 30 0f 2f 7c 24 30 76 63 0f 58 ee 0f 28 74 24
10537080: 10 0f 5c f5 0f 58 de 0f 51 eb 0f 28 f2 0f c6 f2
10537090: aa 0f 28 d8 0f c6 d8 55 0f 5c f3 0f 28 d9 0f c6
105370a0: d9 aa 0f c6 d2 00 0f 28 fc 0f 5e fd 0f c6 c0 00
105370b0: 0f 58 d8 0f c6 c9 55 0f 58 d1 0f 59 ec 0f 59 d7
105370c0: 0f 59 df 0f 59 f7 0f c6 ea 10 0f c6 de 32 0f c6
105370d0: eb 88 0f 29 6c 24 10 e9 d4 00 00 00 f3 0f 11 74
105370e0: 24 40 f3 0f 10 7c 24 40 f3 0f 11 6c 24 30 0f 2f
105370f0: 7c 24 30 76 60 0f 58 6c 24 10 0f 5c f5 0f 58 de
10537100: 0f 51 fb 0f 28 e8 0f c6 e8 00 0f c6 c0 55 0f 28
10537110: d9 0f c6 d9 aa 0f 5c eb 0f 28 da 0f c6 da aa 0f
10537120: 58 d8 0f 28 c2 0f c6 c2 00 0f 28 f4 0f 5e f7 0f
10537130: c6 c9 55 0f 58 c1 0f 59 c6 0f 59 fc 0f 59 de 0f
10537140: 59 ee 0f c6 c7 10 0f c6 dd 32 0f c6 c3 88 0f 29
10537150: 44 24 10 eb 5b 0f 58 74 24 10 0f 5c ee 0f 58 dd
10537160: 0f 51 eb 0f 28 d9 0f c6 d9 55 0f 28 fa 0f c6 fa
10537170: 00 0f 5c df 0f 28 f8 0f c6 c9 aa 0f c6 f8 55 0f
10537180: c6 d2 aa 0f 28 f4 0f 5e f5 0f c6 c0 00 0f 58 c8
10537190: 0f 58 d7 0f 59 ce 0f 59 d6 0f 59 ec 0f 59 de 0f
105371a0: c6 ca 10 0f c6 eb 32 0f c6 cd 88 0f 29 4c 24 10
105371b0: 8d 54 24 10 52 8b cf e8 d4 3c 21 00 a1 3c d9 c8
105371c0: 10 50 8b ce e8 d7 fb 1e 00 8b 0d 78 d9 c8 10 51
105371d0: 8b ce 8b f8 e8 c7 fb 1e 00 85 ff 8b c8 89 4c 24
105371e0: 0c 75 3e 85 c9 74 0d e8 84 d8 20 00 84 c0 75 2d
105371f0: 8b 4c 24 0c 85 db 74 29 8b ce e8 21 04 43 00 85
10537200: c0 74 1a 8b 10 8b c8 8b 42 0c 68 0e 6b 56 90 ff
10537210: d0 85 c0 74 08 56 8b c8 e8 63 c0 b5 ff 8b 4c 24
10537220: 0c 85 c9 74 07 8b 11 8b 42 38 ff d0 5f 5e 5b 8b
10537230: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536da0 <.text+0x535da0>:
10536da0:	55                                              	push   ebp
10536da1:	8b ec                                           	mov    ebp,esp
10536da3:	83 e4 f0                                        	and    esp,0xfffffff0
10536da6:	83 ec 74                                        	sub    esp,0x74
10536da9:	53                                              	push   ebx
10536daa:	56                                              	push   esi
10536dab:	57                                              	push   edi
10536dac:	e8 ef 33 1f 00                                  	call   0x1072a1a0
10536db1:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10536db4:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10536db7:	51                                              	push   ecx
10536db8:	52                                              	push   edx
10536db9:	8b c8                                           	mov    ecx,eax
10536dbb:	e8 f0 3d 1f 00                                  	call   0x1072abb0
10536dc0:	8b f0                                           	mov    esi,eax
10536dc2:	85 f6                                           	test   esi,esi
10536dc4:	0f 84 62 04 00 00                               	je     0x1053722c
10536dca:	a1 c4 0c c8 10                                  	mov    eax,ds:0x10c80cc4
10536dcf:	50                                              	push   eax
10536dd0:	8b ce                                           	mov    ecx,esi
10536dd2:	e8 c9 ff 1e 00                                  	call   0x10726da0
10536dd7:	85 c0                                           	test   eax,eax
10536dd9:	74 0f                                           	je     0x10536dea
10536ddb:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10536dde:	83 c0 08                                        	add    eax,0x8
10536de1:	8b c8                                           	mov    ecx,eax
10536de3:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
10536de6:	ff d0                                           	call   eax
10536de8:	eb 19                                           	jmp    0x10536e03
10536dea:	8b 0d 98 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d998
10536df0:	51                                              	push   ecx
10536df1:	8b ce                                           	mov    ecx,esi
10536df3:	e8 a8 ff 1e 00                                  	call   0x10726da0
10536df8:	85 c0                                           	test   eax,eax
10536dfa:	74 07                                           	je     0x10536e03
10536dfc:	8b c8                                           	mov    ecx,eax
10536dfe:	e8 4d 19 21 00                                  	call   0x10748750
10536e03:	8b 15 08 04 c7 10                               	mov    edx,DWORD PTR ds:0x10c70408
10536e09:	52                                              	push   edx
10536e0a:	8b ce                                           	mov    ecx,esi
10536e0c:	e8 8f ff 1e 00                                  	call   0x10726da0
10536e11:	8b d8                                           	mov    ebx,eax
10536e13:	a1 98 d9 c8 10                                  	mov    eax,ds:0x10c8d998
10536e18:	50                                              	push   eax
10536e19:	8b ce                                           	mov    ecx,esi
10536e1b:	e8 80 ff 1e 00                                  	call   0x10726da0
10536e20:	8b f8                                           	mov    edi,eax
10536e22:	85 ff                                           	test   edi,edi
10536e24:	0f 84 92 03 00 00                               	je     0x105371bc
10536e2a:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10536e2e:	51                                              	push   ecx
10536e2f:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
10536e32:	e8 e9 6c 02 00                                  	call   0x1055db20
10536e37:	0f 28 28                                        	movaps xmm5,XMMWORD PTR [eax]
10536e3a:	f3 0f 10 35 d4 b0 ac 10                         	movss  xmm6,DWORD PTR ds:0x10acb0d4
10536e42:	f3 0f 10 25 ec 10 b3 10                         	movss  xmm4,DWORD PTR ds:0x10b310ec
10536e4a:	0f 28 cd                                        	movaps xmm1,xmm5
10536e4d:	0f 59 cd                                        	mulps  xmm1,xmm5
10536e50:	0f 28 c1                                        	movaps xmm0,xmm1
10536e53:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
10536e57:	0f 28 d1                                        	movaps xmm2,xmm1
10536e5a:	0f c6 d1 01                                     	shufps xmm2,xmm1,0x1
10536e5e:	0f 58 c2                                        	addps  xmm0,xmm2
10536e61:	0f 58 c1                                        	addps  xmm0,xmm1
10536e64:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10536e68:	0f 52 d0                                        	rsqrtps xmm2,xmm0
10536e6b:	0f 28 fa                                        	movaps xmm7,xmm2
10536e6e:	0f 59 fa                                        	mulps  xmm7,xmm2
10536e71:	0f 59 f8                                        	mulps  xmm7,xmm0
10536e74:	f3 0f 10 de                                     	movss  xmm3,xmm6
10536e78:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
10536e7c:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
10536e80:	0f 28 cb                                        	movaps xmm1,xmm3
10536e83:	0f 5c cf                                        	subps  xmm1,xmm7
10536e86:	0f 28 fc                                        	movaps xmm7,xmm4
10536e89:	0f 59 fa                                        	mulps  xmm7,xmm2
10536e8c:	0f 59 cf                                        	mulps  xmm1,xmm7
10536e8f:	0f 58 ca                                        	addps  xmm1,xmm2
10536e92:	0f 28 d1                                        	movaps xmm2,xmm1
10536e95:	0f 59 d1                                        	mulps  xmm2,xmm1
10536e98:	0f 59 d0                                        	mulps  xmm2,xmm0
10536e9b:	0f 28 c3                                        	movaps xmm0,xmm3
10536e9e:	0f 5c c2                                        	subps  xmm0,xmm2
10536ea1:	0f 28 d4                                        	movaps xmm2,xmm4
10536ea4:	0f 59 d1                                        	mulps  xmm2,xmm1
10536ea7:	0f 59 c2                                        	mulps  xmm0,xmm2
10536eaa:	0f 58 c1                                        	addps  xmm0,xmm1
10536ead:	0f 57 c9                                        	xorps  xmm1,xmm1
10536eb0:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
10536eb6:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
10536ebc:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
10536ec2:	0f 59 c5                                        	mulps  xmm0,xmm5
10536ec5:	f3 0f 11 74 24 14                               	movss  DWORD PTR [esp+0x14],xmm6
10536ecb:	0f 28 6c 24 10                                  	movaps xmm5,XMMWORD PTR [esp+0x10]
10536ed0:	0f 28 d5                                        	movaps xmm2,xmm5
10536ed3:	0f c6 d5 12                                     	shufps xmm2,xmm5,0x12
10536ed7:	0f 28 f0                                        	movaps xmm6,xmm0
10536eda:	0f 28 c8                                        	movaps xmm1,xmm0
10536edd:	0f c6 c8 09                                     	shufps xmm1,xmm0,0x9
10536ee1:	0f 59 d1                                        	mulps  xmm2,xmm1
10536ee4:	0f 29 4c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm1
10536ee9:	0f c6 ed 09                                     	shufps xmm5,xmm5,0x9
10536eed:	0f c6 f0 12                                     	shufps xmm6,xmm0,0x12
10536ef1:	0f 59 ee                                        	mulps  xmm5,xmm6
10536ef4:	0f 5c ea                                        	subps  xmm5,xmm2
10536ef7:	0f 28 d5                                        	movaps xmm2,xmm5
10536efa:	0f 59 d5                                        	mulps  xmm2,xmm5
10536efd:	0f 28 ca                                        	movaps xmm1,xmm2
10536f00:	0f c6 ca 02                                     	shufps xmm1,xmm2,0x2
10536f04:	0f 28 fa                                        	movaps xmm7,xmm2
10536f07:	0f c6 fa 01                                     	shufps xmm7,xmm2,0x1
10536f0b:	0f 58 cf                                        	addps  xmm1,xmm7
10536f0e:	0f 58 ca                                        	addps  xmm1,xmm2
10536f11:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10536f15:	0f 52 f9                                        	rsqrtps xmm7,xmm1
10536f18:	0f 28 d7                                        	movaps xmm2,xmm7
10536f1b:	0f 59 d7                                        	mulps  xmm2,xmm7
10536f1e:	0f 59 d1                                        	mulps  xmm2,xmm1
10536f21:	0f 29 54 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm2
10536f26:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
10536f2b:	0f 28 4c 24 10                                  	movaps xmm1,XMMWORD PTR [esp+0x10]
10536f30:	0f 28 d3                                        	movaps xmm2,xmm3
10536f33:	0f 5c d1                                        	subps  xmm2,xmm1
10536f36:	0f 28 cc                                        	movaps xmm1,xmm4
10536f39:	0f 59 cf                                        	mulps  xmm1,xmm7
10536f3c:	0f 59 d1                                        	mulps  xmm2,xmm1
10536f3f:	0f 58 d7                                        	addps  xmm2,xmm7
10536f42:	0f 28 fa                                        	movaps xmm7,xmm2
10536f45:	0f 59 fa                                        	mulps  xmm7,xmm2
10536f48:	0f 59 7c 24 20                                  	mulps  xmm7,XMMWORD PTR [esp+0x20]
10536f4d:	85 db                                           	test   ebx,ebx
10536f4f:	0f 28 cb                                        	movaps xmm1,xmm3
10536f52:	0f 5c cf                                        	subps  xmm1,xmm7
10536f55:	0f 28 fc                                        	movaps xmm7,xmm4
10536f58:	0f 59 fa                                        	mulps  xmm7,xmm2
10536f5b:	0f 59 cf                                        	mulps  xmm1,xmm7
10536f5e:	0f 58 ca                                        	addps  xmm1,xmm2
10536f61:	0f 59 cd                                        	mulps  xmm1,xmm5
10536f64:	0f 28 d1                                        	movaps xmm2,xmm1
10536f67:	0f c6 d1 12                                     	shufps xmm2,xmm1,0x12
10536f6b:	0f 59 54 24 30                                  	mulps  xmm2,XMMWORD PTR [esp+0x30]
10536f70:	0f 28 e9                                        	movaps xmm5,xmm1
10536f73:	0f c6 e9 09                                     	shufps xmm5,xmm1,0x9
10536f77:	0f 59 ee                                        	mulps  xmm5,xmm6
10536f7a:	0f 5c d5                                        	subps  xmm2,xmm5
10536f7d:	74 04                                           	je     0x10536f83
10536f7f:	83 4b 2c 10                                     	or     DWORD PTR [ebx+0x2c],0x10
10536f83:	0f 28 f2                                        	movaps xmm6,xmm2
10536f86:	0f 28 e9                                        	movaps xmm5,xmm1
10536f89:	0f c6 e9 00                                     	shufps xmm5,xmm1,0x0
10536f8d:	0f c6 f2 55                                     	shufps xmm6,xmm2,0x55
10536f91:	0f 29 6c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm5
10536f96:	0f 28 fe                                        	movaps xmm7,xmm6
10536f99:	0f 58 fd                                        	addps  xmm7,xmm5
10536f9c:	0f 28 e8                                        	movaps xmm5,xmm0
10536f9f:	0f c6 e8 aa                                     	shufps xmm5,xmm0,0xaa
10536fa3:	0f 58 fd                                        	addps  xmm7,xmm5
10536fa6:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm7
10536fab:	f3 0f 11 7c 24 30                               	movss  DWORD PTR [esp+0x30],xmm7
10536fb1:	f3 0f 10 3d 8c e1 aa 10                         	movss  xmm7,DWORD PTR ds:0x10aae18c
10536fb9:	0f c6 ff 00                                     	shufps xmm7,xmm7,0x0
10536fbd:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [esp+0x20],xmm7
10536fc3:	f3 0f 10 7c 24 30                               	movss  xmm7,DWORD PTR [esp+0x30]
10536fc9:	0f 2f 7c 24 20                                  	comiss xmm7,DWORD PTR [esp+0x20]
10536fce:	0f 29 4c 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm1
10536fd3:	0f 29 54 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm2
10536fd8:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
10536fdd:	76 58                                           	jbe    0x10537037
10536fdf:	0f 58 5c 24 40                                  	addps  xmm3,XMMWORD PTR [esp+0x40]
10536fe4:	0f 51 fb                                        	sqrtps xmm7,xmm3
10536fe7:	0f 28 d9                                        	movaps xmm3,xmm1
10536fea:	0f c6 d9 55                                     	shufps xmm3,xmm1,0x55
10536fee:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
10536ff2:	0f 28 ea                                        	movaps xmm5,xmm2
10536ff5:	0f c6 ea 00                                     	shufps xmm5,xmm2,0x0
10536ff9:	0f 5c dd                                        	subps  xmm3,xmm5
10536ffc:	0f 28 e8                                        	movaps xmm5,xmm0
10536fff:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
10537003:	0f 5c e9                                        	subps  xmm5,xmm1
10537006:	0f 28 ca                                        	movaps xmm1,xmm2
10537009:	0f c6 ca aa                                     	shufps xmm1,xmm2,0xaa
1053700d:	0f 28 f4                                        	movaps xmm6,xmm4
10537010:	0f 5e f7                                        	divps  xmm6,xmm7
10537013:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
10537017:	0f 5c c8                                        	subps  xmm1,xmm0
1053701a:	0f 59 ce                                        	mulps  xmm1,xmm6
1053701d:	0f 59 ee                                        	mulps  xmm5,xmm6
10537020:	0f 59 de                                        	mulps  xmm3,xmm6
10537023:	0f 59 fc                                        	mulps  xmm7,xmm4
10537026:	0f c6 cd 10                                     	shufps xmm1,xmm5,0x10
1053702a:	0f c6 df 32                                     	shufps xmm3,xmm7,0x32
1053702e:	0f c6 cb 88                                     	shufps xmm1,xmm3,0x88
10537032:	e9 74 01 00 00                                  	jmp    0x105371ab
10537037:	f3 0f 10 7c 24 10                               	movss  xmm7,DWORD PTR [esp+0x10]
1053703d:	f3 0f 11 7c 24 40                               	movss  DWORD PTR [esp+0x40],xmm7
10537043:	f3 0f 10 7c 24 40                               	movss  xmm7,DWORD PTR [esp+0x40]
10537049:	f3 0f 11 74 24 30                               	movss  DWORD PTR [esp+0x30],xmm6
1053704f:	0f 2f 7c 24 30                                  	comiss xmm7,DWORD PTR [esp+0x30]
10537054:	0f 86 82 00 00 00                               	jbe    0x105370dc
1053705a:	f3 0f 10 7c 24 10                               	movss  xmm7,DWORD PTR [esp+0x10]
10537060:	f3 0f 11 7c 24 40                               	movss  DWORD PTR [esp+0x40],xmm7
10537066:	f3 0f 10 7c 24 40                               	movss  xmm7,DWORD PTR [esp+0x40]
1053706c:	f3 0f 11 6c 24 30                               	movss  DWORD PTR [esp+0x30],xmm5
10537072:	0f 2f 7c 24 30                                  	comiss xmm7,DWORD PTR [esp+0x30]
10537077:	76 63                                           	jbe    0x105370dc
10537079:	0f 58 ee                                        	addps  xmm5,xmm6
1053707c:	0f 28 74 24 10                                  	movaps xmm6,XMMWORD PTR [esp+0x10]
10537081:	0f 5c f5                                        	subps  xmm6,xmm5
10537084:	0f 58 de                                        	addps  xmm3,xmm6
10537087:	0f 51 eb                                        	sqrtps xmm5,xmm3
1053708a:	0f 28 f2                                        	movaps xmm6,xmm2
1053708d:	0f c6 f2 aa                                     	shufps xmm6,xmm2,0xaa
10537091:	0f 28 d8                                        	movaps xmm3,xmm0
10537094:	0f c6 d8 55                                     	shufps xmm3,xmm0,0x55
10537098:	0f 5c f3                                        	subps  xmm6,xmm3
1053709b:	0f 28 d9                                        	movaps xmm3,xmm1
1053709e:	0f c6 d9 aa                                     	shufps xmm3,xmm1,0xaa
105370a2:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
105370a6:	0f 28 fc                                        	movaps xmm7,xmm4
105370a9:	0f 5e fd                                        	divps  xmm7,xmm5
105370ac:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
105370b0:	0f 58 d8                                        	addps  xmm3,xmm0
105370b3:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
105370b7:	0f 58 d1                                        	addps  xmm2,xmm1
105370ba:	0f 59 ec                                        	mulps  xmm5,xmm4
105370bd:	0f 59 d7                                        	mulps  xmm2,xmm7
105370c0:	0f 59 df                                        	mulps  xmm3,xmm7
105370c3:	0f 59 f7                                        	mulps  xmm6,xmm7
105370c6:	0f c6 ea 10                                     	shufps xmm5,xmm2,0x10
105370ca:	0f c6 de 32                                     	shufps xmm3,xmm6,0x32
105370ce:	0f c6 eb 88                                     	shufps xmm5,xmm3,0x88
105370d2:	0f 29 6c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm5
105370d7:	e9 d4 00 00 00                                  	jmp    0x105371b0
105370dc:	f3 0f 11 74 24 40                               	movss  DWORD PTR [esp+0x40],xmm6
105370e2:	f3 0f 10 7c 24 40                               	movss  xmm7,DWORD PTR [esp+0x40]
105370e8:	f3 0f 11 6c 24 30                               	movss  DWORD PTR [esp+0x30],xmm5
105370ee:	0f 2f 7c 24 30                                  	comiss xmm7,DWORD PTR [esp+0x30]
105370f3:	76 60                                           	jbe    0x10537155
105370f5:	0f 58 6c 24 10                                  	addps  xmm5,XMMWORD PTR [esp+0x10]
105370fa:	0f 5c f5                                        	subps  xmm6,xmm5
105370fd:	0f 58 de                                        	addps  xmm3,xmm6
10537100:	0f 51 fb                                        	sqrtps xmm7,xmm3
10537103:	0f 28 e8                                        	movaps xmm5,xmm0
10537106:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
1053710a:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
1053710e:	0f 28 d9                                        	movaps xmm3,xmm1
10537111:	0f c6 d9 aa                                     	shufps xmm3,xmm1,0xaa
10537115:	0f 5c eb                                        	subps  xmm5,xmm3
10537118:	0f 28 da                                        	movaps xmm3,xmm2
1053711b:	0f c6 da aa                                     	shufps xmm3,xmm2,0xaa
1053711f:	0f 58 d8                                        	addps  xmm3,xmm0
10537122:	0f 28 c2                                        	movaps xmm0,xmm2
10537125:	0f c6 c2 00                                     	shufps xmm0,xmm2,0x0
10537129:	0f 28 f4                                        	movaps xmm6,xmm4
1053712c:	0f 5e f7                                        	divps  xmm6,xmm7
1053712f:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
10537133:	0f 58 c1                                        	addps  xmm0,xmm1
10537136:	0f 59 c6                                        	mulps  xmm0,xmm6
10537139:	0f 59 fc                                        	mulps  xmm7,xmm4
1053713c:	0f 59 de                                        	mulps  xmm3,xmm6
1053713f:	0f 59 ee                                        	mulps  xmm5,xmm6
10537142:	0f c6 c7 10                                     	shufps xmm0,xmm7,0x10
10537146:	0f c6 dd 32                                     	shufps xmm3,xmm5,0x32
1053714a:	0f c6 c3 88                                     	shufps xmm0,xmm3,0x88
1053714e:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10537153:	eb 5b                                           	jmp    0x105371b0
10537155:	0f 58 74 24 10                                  	addps  xmm6,XMMWORD PTR [esp+0x10]
1053715a:	0f 5c ee                                        	subps  xmm5,xmm6
1053715d:	0f 58 dd                                        	addps  xmm3,xmm5
10537160:	0f 51 eb                                        	sqrtps xmm5,xmm3
10537163:	0f 28 d9                                        	movaps xmm3,xmm1
10537166:	0f c6 d9 55                                     	shufps xmm3,xmm1,0x55
1053716a:	0f 28 fa                                        	movaps xmm7,xmm2
1053716d:	0f c6 fa 00                                     	shufps xmm7,xmm2,0x0
10537171:	0f 5c df                                        	subps  xmm3,xmm7
10537174:	0f 28 f8                                        	movaps xmm7,xmm0
10537177:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
1053717b:	0f c6 f8 55                                     	shufps xmm7,xmm0,0x55
1053717f:	0f c6 d2 aa                                     	shufps xmm2,xmm2,0xaa
10537183:	0f 28 f4                                        	movaps xmm6,xmm4
10537186:	0f 5e f5                                        	divps  xmm6,xmm5
10537189:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1053718d:	0f 58 c8                                        	addps  xmm1,xmm0
10537190:	0f 58 d7                                        	addps  xmm2,xmm7
10537193:	0f 59 ce                                        	mulps  xmm1,xmm6
10537196:	0f 59 d6                                        	mulps  xmm2,xmm6
10537199:	0f 59 ec                                        	mulps  xmm5,xmm4
1053719c:	0f 59 de                                        	mulps  xmm3,xmm6
1053719f:	0f c6 ca 10                                     	shufps xmm1,xmm2,0x10
105371a3:	0f c6 eb 32                                     	shufps xmm5,xmm3,0x32
105371a7:	0f c6 cd 88                                     	shufps xmm1,xmm5,0x88
105371ab:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
105371b0:	8d 54 24 10                                     	lea    edx,[esp+0x10]
105371b4:	52                                              	push   edx
105371b5:	8b cf                                           	mov    ecx,edi
105371b7:	e8 d4 3c 21 00                                  	call   0x1074ae90
105371bc:	a1 3c d9 c8 10                                  	mov    eax,ds:0x10c8d93c
105371c1:	50                                              	push   eax
105371c2:	8b ce                                           	mov    ecx,esi
105371c4:	e8 d7 fb 1e 00                                  	call   0x10726da0
105371c9:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
105371cf:	51                                              	push   ecx
105371d0:	8b ce                                           	mov    ecx,esi
105371d2:	8b f8                                           	mov    edi,eax
105371d4:	e8 c7 fb 1e 00                                  	call   0x10726da0
105371d9:	85 ff                                           	test   edi,edi
105371db:	8b c8                                           	mov    ecx,eax
105371dd:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
105371e1:	75 3e                                           	jne    0x10537221
105371e3:	85 c9                                           	test   ecx,ecx
105371e5:	74 0d                                           	je     0x105371f4
105371e7:	e8 84 d8 20 00                                  	call   0x10744a70
105371ec:	84 c0                                           	test   al,al
105371ee:	75 2d                                           	jne    0x1053721d
105371f0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105371f4:	85 db                                           	test   ebx,ebx
105371f6:	74 29                                           	je     0x10537221
105371f8:	8b ce                                           	mov    ecx,esi
105371fa:	e8 21 04 43 00                                  	call   0x10967620
105371ff:	85 c0                                           	test   eax,eax
10537201:	74 1a                                           	je     0x1053721d
10537203:	8b 10                                           	mov    edx,DWORD PTR [eax]
10537205:	8b c8                                           	mov    ecx,eax
10537207:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1053720a:	68 0e 6b 56 90                                  	push   0x90566b0e
1053720f:	ff d0                                           	call   eax
10537211:	85 c0                                           	test   eax,eax
10537213:	74 08                                           	je     0x1053721d
10537215:	56                                              	push   esi
10537216:	8b c8                                           	mov    ecx,eax
10537218:	e8 63 c0 b5 ff                                  	call   0x10093280
1053721d:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10537221:	85 c9                                           	test   ecx,ecx
10537223:	74 07                                           	je     0x1053722c
10537225:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10537227:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
1053722a:	ff d0                                           	call   eax
1053722c:	5f                                              	pop    edi
1053722d:	5e                                              	pop    esi
1053722e:	5b                                              	pop    ebx
1053722f:	8b e5                                           	mov    esp,ebp
10537231:	5d                                              	pop    ebp
10537232:	c3                                              	ret
10537233:	cc                                              	int3
10537234:	cc                                              	int3
10537235:	cc                                              	int3
10537236:	cc                                              	int3
10537237:	cc                                              	int3
10537238:	cc                                              	int3
10537239:	cc                                              	int3
1053723a:	cc                                              	int3
1053723b:	cc                                              	int3
1053723c:	cc                                              	int3
1053723d:	cc                                              	int3
1053723e:	cc                                              	int3
1053723f:	cc                                              	int3
