# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788db0 (ScriptCore.World::World_GetHouseboatDisplayToWorldPositionImpl)
Paired Ghidra pseudocode: 00788DB0_ScriptCore_World_World_GetHouseboatDisplayToWorldPositionImpl.c
Window: [0x00788db0, 0x00788eb0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788eb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788db0: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 40 85
00788dc0: c9 0f 84 e0 00 00 00 8b 45 0c 8b 55 08 6a 00 50
00788dd0: 52 e8 3a 9a 4d 00 85 c0 0f 84 c9 00 00 00 80 b8
00788de0: 44 04 00 00 00 0f 84 bc 00 00 00 f3 0f 10 4d 18
00788df0: f3 0f 10 45 10 f3 0f 11 4c 24 08 f3 0f 10 4d 14
00788e00: f3 0f 11 44 24 0c f3 0f 11 4c 24 04 f3 0f 11 04
00788e10: 24 0f 28 04 24 8d 4c 24 20 51 8b c8 0f 29 44 24
00788e20: 04 e8 8a 8e 32 00 0f 28 08 0f 28 14 24 8b 4d 1c
00788e30: 0f 28 d9 0f c6 d9 09 0f 28 e1 0f c6 e1 12 0f 28
00788e40: ea 0f c6 ea 09 0f 59 ec 0f 28 c2 0f c6 c2 12 0f
00788e50: 59 c3 0f 5c c5 0f 28 e9 0f c6 e9 ff 0f 59 ea 0f
00788e60: 58 c5 0f 28 c8 0f c6 c8 09 0f 59 cc 0f 28 e0 0f
00788e70: c6 e0 12 f3 0f 10 05 88 fd 03 01 0f 59 e3 0f 5c
00788e80: e1 0f c6 c0 00 0f 59 e0 0f 28 40 10 8d 54 24 10
00788e90: 0f 58 e2 0f 58 e0 52 0f 29 64 24 14 e8 5f 32 fe
00788ea0: ff b0 01 8b e5 5d c3 32 c0 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
00788db0 <.text+0x387db0>:
  788db0:	55                                              	push   ebp
  788db1:	8b ec                                           	mov    ebp,esp
  788db3:	83 e4 f0                                        	and    esp,0xfffffff0
  788db6:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788dbc:	83 ec 40                                        	sub    esp,0x40
  788dbf:	85 c9                                           	test   ecx,ecx
  788dc1:	0f 84 e0 00 00 00                               	je     0x788ea7
  788dc7:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  788dca:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  788dcd:	6a 00                                           	push   0x0
  788dcf:	50                                              	push   eax
  788dd0:	52                                              	push   edx
  788dd1:	e8 3a 9a 4d 00                                  	call   0xc62810
  788dd6:	85 c0                                           	test   eax,eax
  788dd8:	0f 84 c9 00 00 00                               	je     0x788ea7
  788dde:	80 b8 44 04 00 00 00                            	cmp    BYTE PTR [eax+0x444],0x0
  788de5:	0f 84 bc 00 00 00                               	je     0x788ea7
  788deb:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  788df0:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  788df5:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  788dfb:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  788e00:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  788e06:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  788e0c:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  788e11:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  788e15:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  788e19:	51                                              	push   ecx
  788e1a:	8b c8                                           	mov    ecx,eax
  788e1c:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
  788e21:	e8 8a 8e 32 00                                  	call   0xab1cb0
  788e26:	0f 28 08                                        	movaps xmm1,XMMWORD PTR [eax]
  788e29:	0f 28 14 24                                     	movaps xmm2,XMMWORD PTR [esp]
  788e2d:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
  788e30:	0f 28 d9                                        	movaps xmm3,xmm1
  788e33:	0f c6 d9 09                                     	shufps xmm3,xmm1,0x9
  788e37:	0f 28 e1                                        	movaps xmm4,xmm1
  788e3a:	0f c6 e1 12                                     	shufps xmm4,xmm1,0x12
  788e3e:	0f 28 ea                                        	movaps xmm5,xmm2
  788e41:	0f c6 ea 09                                     	shufps xmm5,xmm2,0x9
  788e45:	0f 59 ec                                        	mulps  xmm5,xmm4
  788e48:	0f 28 c2                                        	movaps xmm0,xmm2
  788e4b:	0f c6 c2 12                                     	shufps xmm0,xmm2,0x12
  788e4f:	0f 59 c3                                        	mulps  xmm0,xmm3
  788e52:	0f 5c c5                                        	subps  xmm0,xmm5
  788e55:	0f 28 e9                                        	movaps xmm5,xmm1
  788e58:	0f c6 e9 ff                                     	shufps xmm5,xmm1,0xff
  788e5c:	0f 59 ea                                        	mulps  xmm5,xmm2
  788e5f:	0f 58 c5                                        	addps  xmm0,xmm5
  788e62:	0f 28 c8                                        	movaps xmm1,xmm0
  788e65:	0f c6 c8 09                                     	shufps xmm1,xmm0,0x9
  788e69:	0f 59 cc                                        	mulps  xmm1,xmm4
  788e6c:	0f 28 e0                                        	movaps xmm4,xmm0
  788e6f:	0f c6 e0 12                                     	shufps xmm4,xmm0,0x12
  788e73:	f3 0f 10 05 88 fd 03 01                         	movss  xmm0,DWORD PTR ds:0x103fd88
  788e7b:	0f 59 e3                                        	mulps  xmm4,xmm3
  788e7e:	0f 5c e1                                        	subps  xmm4,xmm1
  788e81:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  788e85:	0f 59 e0                                        	mulps  xmm4,xmm0
  788e88:	0f 28 40 10                                     	movaps xmm0,XMMWORD PTR [eax+0x10]
  788e8c:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  788e90:	0f 58 e2                                        	addps  xmm4,xmm2
  788e93:	0f 58 e0                                        	addps  xmm4,xmm0
  788e96:	52                                              	push   edx
  788e97:	0f 29 64 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm4
  788e9c:	e8 5f 32 fe ff                                  	call   0x76c100
  788ea1:	b0 01                                           	mov    al,0x1
  788ea3:	8b e5                                           	mov    esp,ebp
  788ea5:	5d                                              	pop    ebp
  788ea6:	c3                                              	ret
  788ea7:	32 c0                                           	xor    al,al
  788ea9:	8b e5                                           	mov    esp,ebp
  788eab:	5d                                              	pop    ebp
  788eac:	c3                                              	ret
  788ead:	cc                                              	int3
  788eae:	cc                                              	int3
  788eaf:	cc                                              	int3
