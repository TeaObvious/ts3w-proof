# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00750d40 (ScriptCore.Route::Route_SetPathEndOrientation)
Paired Ghidra pseudocode: 00750D40_ScriptCore_Route_Route_SetPathEndOrientation.c
Window: [0x00750d40, 0x00751080) (832 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00750d40: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 81 ec 98 00
00750d50: 00 00 85 c9 56 57 0f 84 18 03 00 00 8b 45 08 50
00750d60: e8 4b a7 ff ff 8b f0 85 f6 0f 84 05 03 00 00 8b
00750d70: 16 8b 42 10 8b ce ff d0 8b 86 e0 00 00 00 8b 55
00750d80: 0c 8d 8e e0 00 00 00 3b c1 0f 84 dc 02 00 00 90
00750d90: 85 d2 74 09 8b 00 83 ea 01 3b c1 75 f3 3b c1 0f
00750da0: 84 c6 02 00 00 8b 78 08 85 ff 0f 84 bb 02 00 00
00750db0: 8d 4c 24 30 51 8d 4d 10 e8 d3 b2 01 00 0f 28 00
00750dc0: 8d 54 24 30 52 8d 4d 20 0f 29 44 24 64 e8 be b2
00750dd0: 01 00 0f 28 00 8d 44 24 30 50 8d 4d 30 0f 29 44
00750de0: 24 74 e8 a9 b2 01 00 0f 28 00 8d 4c 24 30 51 8d
00750df0: 4d 40 0f 29 84 24 84 00 00 00 e8 91 b2 01 00 0f
00750e00: 28 54 24 60 0f 28 44 24 70 0f 28 8c 24 80 00 00
00750e10: 00 0f 28 f2 0f 28 e8 0f c6 f2 00 0f 28 d9 0f c6
00750e20: e8 55 0f 28 e6 0f 58 e5 0f c6 d9 aa 0f 28 fb 0f
00750e30: 58 fc 0f 29 7c 24 10 f3 0f 11 7c 24 50 f3 0f 10
00750e40: 3d cc 4c 0f 01 0f c6 ff 00 f3 0f 11 7c 24 20 f3
00750e50: 0f 10 7c 24 50 0f 2f 7c 24 20 0f 29 64 24 30 f3
00750e60: 0f 10 25 b4 b5 f9 00 0f c6 e4 00 76 61 f3 0f 10
00750e70: 1d f8 98 f9 00 0f c6 db 00 0f 58 5c 24 10 0f 51
00750e80: fb 0f 28 e8 0f c6 e8 00 0f 28 da 0f c6 da 55 0f
00750e90: 5c dd 0f 28 e9 0f c6 e9 00 0f c6 c0 aa 0f 28 f4
00750ea0: 0f 5e f7 0f c6 d2 aa 0f c6 c9 55 0f 5c c1 0f 5c
00750eb0: ea 0f 59 c6 0f 59 ee 0f 59 de 0f 59 fc 0f c6 c5
00750ec0: 10 0f c6 df 32 0f c6 c3 88 e9 87 01 00 00 f3 0f
00750ed0: 11 74 24 10 f3 0f 10 7c 24 10 f3 0f 11 6c 24 20
00750ee0: 0f 2f 7c 24 20 0f 86 84 00 00 00 f3 0f 11 74 24
00750ef0: 10 f3 0f 10 7c 24 10 f3 0f 11 5c 24 20 0f 2f 7c
00750f00: 24 20 76 6b 0f 58 dd 0f 5c f3 f3 0f 10 1d f8 98
00750f10: f9 00 0f c6 db 00 0f 58 de 0f 51 eb 0f 28 d9 0f
00750f20: c6 d9 55 0f 28 f0 0f c6 f0 aa 0f 5c f3 0f c6 c9
00750f30: 00 0f 28 da 0f c6 da aa 0f 58 d9 0f 28 ca 0f c6
00750f40: ca 55 0f c6 c0 00 0f 28 fc 0f 5e fd 0f 58 c8 0f
00750f50: 59 ec 0f 59 cf 0f 59 df 0f 59 f7 0f c6 e9 10 0f
00750f60: c6 de 32 0f c6 eb 88 0f 28 c5 e9 e6 00 00 00 f3
00750f70: 0f 11 6c 24 10 f3 0f 10 7c 24 10 f3 0f 11 5c 24
00750f80: 20 0f 2f 7c 24 20 76 6b 0f 58 de 0f 5c eb f3 0f
00750f90: 10 1d f8 98 f9 00 0f c6 db 00 0f 58 dd 0f 51 fb
00750fa0: 0f 28 e9 0f c6 e9 00 0f 28 da 0f c6 da aa 0f 5c
00750fb0: eb 0f 28 d9 0f c6 d9 55 0f 28 c8 0f c6 c8 aa 0f
00750fc0: 58 d9 0f 28 ca 0f c6 ca 55 0f c6 c0 00 0f 58 c8
00750fd0: 0f 28 f4 0f 5e f7 0f 59 ce 0f 59 fc 0f 59 de 0f
00750fe0: 59 ee 0f c6 cf 10 0f c6 dd 32 0f c6 cb 88 0f 28
00750ff0: c1 eb 62 0f 5c 5c 24 30 f3 0f 10 2d f8 98 f9 00
00751000: 0f c6 ed 00 0f 58 eb 0f 51 f5 0f 28 e8 0f c6 e8
00751010: 00 0f c6 c0 aa 0f 28 da 0f c6 da 55 0f 5c dd 0f
00751020: 28 e9 0f c6 e9 55 0f 58 e8 0f 28 c2 0f c6 c2 aa
00751030: 0f 28 fc 0f 5e fe 0f c6 c9 00 0f 58 c1 0f 59 c7
00751040: 0f 59 ef 0f 59 f4 0f 59 df 0f c6 c5 10 0f c6 f3
00751050: 32 0f c6 c6 88 8b 17 8b 92 44 01 00 00 8d 44 24
00751060: 40 50 8b cf 0f 29 44 24 44 ff d2 8b 06 8b 50 14
00751070: 8b ce ff d2 5f 5e 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00750d40 <.text+0x34fd40>:
  750d40:	55                                              	push   ebp
  750d41:	8b ec                                           	mov    ebp,esp
  750d43:	83 e4 f0                                        	and    esp,0xfffffff0
  750d46:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  750d4c:	81 ec 98 00 00 00                               	sub    esp,0x98
  750d52:	85 c9                                           	test   ecx,ecx
  750d54:	56                                              	push   esi
  750d55:	57                                              	push   edi
  750d56:	0f 84 18 03 00 00                               	je     0x751074
  750d5c:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  750d5f:	50                                              	push   eax
  750d60:	e8 4b a7 ff ff                                  	call   0x74b4b0
  750d65:	8b f0                                           	mov    esi,eax
  750d67:	85 f6                                           	test   esi,esi
  750d69:	0f 84 05 03 00 00                               	je     0x751074
  750d6f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  750d71:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  750d74:	8b ce                                           	mov    ecx,esi
  750d76:	ff d0                                           	call   eax
  750d78:	8b 86 e0 00 00 00                               	mov    eax,DWORD PTR [esi+0xe0]
  750d7e:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  750d81:	8d 8e e0 00 00 00                               	lea    ecx,[esi+0xe0]
  750d87:	3b c1                                           	cmp    eax,ecx
  750d89:	0f 84 dc 02 00 00                               	je     0x75106b
  750d8f:	90                                              	nop
  750d90:	85 d2                                           	test   edx,edx
  750d92:	74 09                                           	je     0x750d9d
  750d94:	8b 00                                           	mov    eax,DWORD PTR [eax]
  750d96:	83 ea 01                                        	sub    edx,0x1
  750d99:	3b c1                                           	cmp    eax,ecx
  750d9b:	75 f3                                           	jne    0x750d90
  750d9d:	3b c1                                           	cmp    eax,ecx
  750d9f:	0f 84 c6 02 00 00                               	je     0x75106b
  750da5:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  750da8:	85 ff                                           	test   edi,edi
  750daa:	0f 84 bb 02 00 00                               	je     0x75106b
  750db0:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  750db4:	51                                              	push   ecx
  750db5:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
  750db8:	e8 d3 b2 01 00                                  	call   0x76c090
  750dbd:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  750dc0:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  750dc4:	52                                              	push   edx
  750dc5:	8d 4d 20                                        	lea    ecx,[ebp+0x20]
  750dc8:	0f 29 44 24 64                                  	movaps XMMWORD PTR [esp+0x64],xmm0
  750dcd:	e8 be b2 01 00                                  	call   0x76c090
  750dd2:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  750dd5:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  750dd9:	50                                              	push   eax
  750dda:	8d 4d 30                                        	lea    ecx,[ebp+0x30]
  750ddd:	0f 29 44 24 74                                  	movaps XMMWORD PTR [esp+0x74],xmm0
  750de2:	e8 a9 b2 01 00                                  	call   0x76c090
  750de7:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  750dea:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  750dee:	51                                              	push   ecx
  750def:	8d 4d 40                                        	lea    ecx,[ebp+0x40]
  750df2:	0f 29 84 24 84 00 00 00                         	movaps XMMWORD PTR [esp+0x84],xmm0
  750dfa:	e8 91 b2 01 00                                  	call   0x76c090
  750dff:	0f 28 54 24 60                                  	movaps xmm2,XMMWORD PTR [esp+0x60]
  750e04:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
  750e09:	0f 28 8c 24 80 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0x80]
  750e11:	0f 28 f2                                        	movaps xmm6,xmm2
  750e14:	0f 28 e8                                        	movaps xmm5,xmm0
  750e17:	0f c6 f2 00                                     	shufps xmm6,xmm2,0x0
  750e1b:	0f 28 d9                                        	movaps xmm3,xmm1
  750e1e:	0f c6 e8 55                                     	shufps xmm5,xmm0,0x55
  750e22:	0f 28 e6                                        	movaps xmm4,xmm6
  750e25:	0f 58 e5                                        	addps  xmm4,xmm5
  750e28:	0f c6 d9 aa                                     	shufps xmm3,xmm1,0xaa
  750e2c:	0f 28 fb                                        	movaps xmm7,xmm3
  750e2f:	0f 58 fc                                        	addps  xmm7,xmm4
  750e32:	0f 29 7c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm7
  750e37:	f3 0f 11 7c 24 50                               	movss  DWORD PTR [esp+0x50],xmm7
  750e3d:	f3 0f 10 3d cc 4c 0f 01                         	movss  xmm7,DWORD PTR ds:0x10f4ccc
  750e45:	0f c6 ff 00                                     	shufps xmm7,xmm7,0x0
  750e49:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [esp+0x20],xmm7
  750e4f:	f3 0f 10 7c 24 50                               	movss  xmm7,DWORD PTR [esp+0x50]
  750e55:	0f 2f 7c 24 20                                  	comiss xmm7,DWORD PTR [esp+0x20]
  750e5a:	0f 29 64 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm4
  750e5f:	f3 0f 10 25 b4 b5 f9 00                         	movss  xmm4,DWORD PTR ds:0xf9b5b4
  750e67:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
  750e6b:	76 61                                           	jbe    0x750ece
  750e6d:	f3 0f 10 1d f8 98 f9 00                         	movss  xmm3,DWORD PTR ds:0xf998f8
  750e75:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  750e79:	0f 58 5c 24 10                                  	addps  xmm3,XMMWORD PTR [esp+0x10]
  750e7e:	0f 51 fb                                        	sqrtps xmm7,xmm3
  750e81:	0f 28 e8                                        	movaps xmm5,xmm0
  750e84:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  750e88:	0f 28 da                                        	movaps xmm3,xmm2
  750e8b:	0f c6 da 55                                     	shufps xmm3,xmm2,0x55
  750e8f:	0f 5c dd                                        	subps  xmm3,xmm5
  750e92:	0f 28 e9                                        	movaps xmm5,xmm1
  750e95:	0f c6 e9 00                                     	shufps xmm5,xmm1,0x0
  750e99:	0f c6 c0 aa                                     	shufps xmm0,xmm0,0xaa
  750e9d:	0f 28 f4                                        	movaps xmm6,xmm4
  750ea0:	0f 5e f7                                        	divps  xmm6,xmm7
  750ea3:	0f c6 d2 aa                                     	shufps xmm2,xmm2,0xaa
  750ea7:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  750eab:	0f 5c c1                                        	subps  xmm0,xmm1
  750eae:	0f 5c ea                                        	subps  xmm5,xmm2
  750eb1:	0f 59 c6                                        	mulps  xmm0,xmm6
  750eb4:	0f 59 ee                                        	mulps  xmm5,xmm6
  750eb7:	0f 59 de                                        	mulps  xmm3,xmm6
  750eba:	0f 59 fc                                        	mulps  xmm7,xmm4
  750ebd:	0f c6 c5 10                                     	shufps xmm0,xmm5,0x10
  750ec1:	0f c6 df 32                                     	shufps xmm3,xmm7,0x32
  750ec5:	0f c6 c3 88                                     	shufps xmm0,xmm3,0x88
  750ec9:	e9 87 01 00 00                                  	jmp    0x751055
  750ece:	f3 0f 11 74 24 10                               	movss  DWORD PTR [esp+0x10],xmm6
  750ed4:	f3 0f 10 7c 24 10                               	movss  xmm7,DWORD PTR [esp+0x10]
  750eda:	f3 0f 11 6c 24 20                               	movss  DWORD PTR [esp+0x20],xmm5
  750ee0:	0f 2f 7c 24 20                                  	comiss xmm7,DWORD PTR [esp+0x20]
  750ee5:	0f 86 84 00 00 00                               	jbe    0x750f6f
  750eeb:	f3 0f 11 74 24 10                               	movss  DWORD PTR [esp+0x10],xmm6
  750ef1:	f3 0f 10 7c 24 10                               	movss  xmm7,DWORD PTR [esp+0x10]
  750ef7:	f3 0f 11 5c 24 20                               	movss  DWORD PTR [esp+0x20],xmm3
  750efd:	0f 2f 7c 24 20                                  	comiss xmm7,DWORD PTR [esp+0x20]
  750f02:	76 6b                                           	jbe    0x750f6f
  750f04:	0f 58 dd                                        	addps  xmm3,xmm5
  750f07:	0f 5c f3                                        	subps  xmm6,xmm3
  750f0a:	f3 0f 10 1d f8 98 f9 00                         	movss  xmm3,DWORD PTR ds:0xf998f8
  750f12:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  750f16:	0f 58 de                                        	addps  xmm3,xmm6
  750f19:	0f 51 eb                                        	sqrtps xmm5,xmm3
  750f1c:	0f 28 d9                                        	movaps xmm3,xmm1
  750f1f:	0f c6 d9 55                                     	shufps xmm3,xmm1,0x55
  750f23:	0f 28 f0                                        	movaps xmm6,xmm0
  750f26:	0f c6 f0 aa                                     	shufps xmm6,xmm0,0xaa
  750f2a:	0f 5c f3                                        	subps  xmm6,xmm3
  750f2d:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  750f31:	0f 28 da                                        	movaps xmm3,xmm2
  750f34:	0f c6 da aa                                     	shufps xmm3,xmm2,0xaa
  750f38:	0f 58 d9                                        	addps  xmm3,xmm1
  750f3b:	0f 28 ca                                        	movaps xmm1,xmm2
  750f3e:	0f c6 ca 55                                     	shufps xmm1,xmm2,0x55
  750f42:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  750f46:	0f 28 fc                                        	movaps xmm7,xmm4
  750f49:	0f 5e fd                                        	divps  xmm7,xmm5
  750f4c:	0f 58 c8                                        	addps  xmm1,xmm0
  750f4f:	0f 59 ec                                        	mulps  xmm5,xmm4
  750f52:	0f 59 cf                                        	mulps  xmm1,xmm7
  750f55:	0f 59 df                                        	mulps  xmm3,xmm7
  750f58:	0f 59 f7                                        	mulps  xmm6,xmm7
  750f5b:	0f c6 e9 10                                     	shufps xmm5,xmm1,0x10
  750f5f:	0f c6 de 32                                     	shufps xmm3,xmm6,0x32
  750f63:	0f c6 eb 88                                     	shufps xmm5,xmm3,0x88
  750f67:	0f 28 c5                                        	movaps xmm0,xmm5
  750f6a:	e9 e6 00 00 00                                  	jmp    0x751055
  750f6f:	f3 0f 11 6c 24 10                               	movss  DWORD PTR [esp+0x10],xmm5
  750f75:	f3 0f 10 7c 24 10                               	movss  xmm7,DWORD PTR [esp+0x10]
  750f7b:	f3 0f 11 5c 24 20                               	movss  DWORD PTR [esp+0x20],xmm3
  750f81:	0f 2f 7c 24 20                                  	comiss xmm7,DWORD PTR [esp+0x20]
  750f86:	76 6b                                           	jbe    0x750ff3
  750f88:	0f 58 de                                        	addps  xmm3,xmm6
  750f8b:	0f 5c eb                                        	subps  xmm5,xmm3
  750f8e:	f3 0f 10 1d f8 98 f9 00                         	movss  xmm3,DWORD PTR ds:0xf998f8
  750f96:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  750f9a:	0f 58 dd                                        	addps  xmm3,xmm5
  750f9d:	0f 51 fb                                        	sqrtps xmm7,xmm3
  750fa0:	0f 28 e9                                        	movaps xmm5,xmm1
  750fa3:	0f c6 e9 00                                     	shufps xmm5,xmm1,0x0
  750fa7:	0f 28 da                                        	movaps xmm3,xmm2
  750faa:	0f c6 da aa                                     	shufps xmm3,xmm2,0xaa
  750fae:	0f 5c eb                                        	subps  xmm5,xmm3
  750fb1:	0f 28 d9                                        	movaps xmm3,xmm1
  750fb4:	0f c6 d9 55                                     	shufps xmm3,xmm1,0x55
  750fb8:	0f 28 c8                                        	movaps xmm1,xmm0
  750fbb:	0f c6 c8 aa                                     	shufps xmm1,xmm0,0xaa
  750fbf:	0f 58 d9                                        	addps  xmm3,xmm1
  750fc2:	0f 28 ca                                        	movaps xmm1,xmm2
  750fc5:	0f c6 ca 55                                     	shufps xmm1,xmm2,0x55
  750fc9:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  750fcd:	0f 58 c8                                        	addps  xmm1,xmm0
  750fd0:	0f 28 f4                                        	movaps xmm6,xmm4
  750fd3:	0f 5e f7                                        	divps  xmm6,xmm7
  750fd6:	0f 59 ce                                        	mulps  xmm1,xmm6
  750fd9:	0f 59 fc                                        	mulps  xmm7,xmm4
  750fdc:	0f 59 de                                        	mulps  xmm3,xmm6
  750fdf:	0f 59 ee                                        	mulps  xmm5,xmm6
  750fe2:	0f c6 cf 10                                     	shufps xmm1,xmm7,0x10
  750fe6:	0f c6 dd 32                                     	shufps xmm3,xmm5,0x32
  750fea:	0f c6 cb 88                                     	shufps xmm1,xmm3,0x88
  750fee:	0f 28 c1                                        	movaps xmm0,xmm1
  750ff1:	eb 62                                           	jmp    0x751055
  750ff3:	0f 5c 5c 24 30                                  	subps  xmm3,XMMWORD PTR [esp+0x30]
  750ff8:	f3 0f 10 2d f8 98 f9 00                         	movss  xmm5,DWORD PTR ds:0xf998f8
  751000:	0f c6 ed 00                                     	shufps xmm5,xmm5,0x0
  751004:	0f 58 eb                                        	addps  xmm5,xmm3
  751007:	0f 51 f5                                        	sqrtps xmm6,xmm5
  75100a:	0f 28 e8                                        	movaps xmm5,xmm0
  75100d:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  751011:	0f c6 c0 aa                                     	shufps xmm0,xmm0,0xaa
  751015:	0f 28 da                                        	movaps xmm3,xmm2
  751018:	0f c6 da 55                                     	shufps xmm3,xmm2,0x55
  75101c:	0f 5c dd                                        	subps  xmm3,xmm5
  75101f:	0f 28 e9                                        	movaps xmm5,xmm1
  751022:	0f c6 e9 55                                     	shufps xmm5,xmm1,0x55
  751026:	0f 58 e8                                        	addps  xmm5,xmm0
  751029:	0f 28 c2                                        	movaps xmm0,xmm2
  75102c:	0f c6 c2 aa                                     	shufps xmm0,xmm2,0xaa
  751030:	0f 28 fc                                        	movaps xmm7,xmm4
  751033:	0f 5e fe                                        	divps  xmm7,xmm6
  751036:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  75103a:	0f 58 c1                                        	addps  xmm0,xmm1
  75103d:	0f 59 c7                                        	mulps  xmm0,xmm7
  751040:	0f 59 ef                                        	mulps  xmm5,xmm7
  751043:	0f 59 f4                                        	mulps  xmm6,xmm4
  751046:	0f 59 df                                        	mulps  xmm3,xmm7
  751049:	0f c6 c5 10                                     	shufps xmm0,xmm5,0x10
  75104d:	0f c6 f3 32                                     	shufps xmm6,xmm3,0x32
  751051:	0f c6 c6 88                                     	shufps xmm0,xmm6,0x88
  751055:	8b 17                                           	mov    edx,DWORD PTR [edi]
  751057:	8b 92 44 01 00 00                               	mov    edx,DWORD PTR [edx+0x144]
  75105d:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  751061:	50                                              	push   eax
  751062:	8b cf                                           	mov    ecx,edi
  751064:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
  751069:	ff d2                                           	call   edx
  75106b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  75106d:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  751070:	8b ce                                           	mov    ecx,esi
  751072:	ff d2                                           	call   edx
  751074:	5f                                              	pop    edi
  751075:	5e                                              	pop    esi
  751076:	8b e5                                           	mov    esp,ebp
  751078:	5d                                              	pop    ebp
  751079:	c3                                              	ret
  75107a:	cc                                              	int3
  75107b:	cc                                              	int3
  75107c:	cc                                              	int3
  75107d:	cc                                              	int3
  75107e:	cc                                              	int3
  75107f:	cc                                              	int3
