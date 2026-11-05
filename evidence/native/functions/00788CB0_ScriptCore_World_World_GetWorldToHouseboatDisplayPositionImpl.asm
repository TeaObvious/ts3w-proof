# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788cb0 (ScriptCore.World::World_GetWorldToHouseboatDisplayPositionImpl)
Paired Ghidra pseudocode: 00788CB0_ScriptCore_World_World_GetWorldToHouseboatDisplayPositionImpl.c
Window: [0x00788cb0, 0x00788db0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788cb0: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 40 85
00788cc0: c9 0f 84 e0 00 00 00 8b 45 0c 8b 55 08 6a 00 50
00788cd0: 52 e8 3a 9b 4d 00 85 c0 0f 84 c9 00 00 00 80 b8
00788ce0: 44 04 00 00 00 0f 84 bc 00 00 00 f3 0f 10 4d 18
00788cf0: f3 0f 10 45 10 f3 0f 11 4c 24 08 f3 0f 10 4d 14
00788d00: f3 0f 11 44 24 0c f3 0f 11 4c 24 04 f3 0f 11 04
00788d10: 24 0f 28 04 24 8d 4c 24 20 51 8b c8 0f 29 44 24
00788d20: 04 e8 da 8d 32 00 0f 28 08 0f 28 14 24 8b 4d 1c
00788d30: 0f 28 d9 0f c6 d9 09 0f 28 e1 0f c6 e1 12 0f 28
00788d40: ea 0f c6 ea 09 0f 59 ec 0f 28 c2 0f c6 c2 12 0f
00788d50: 59 c3 0f 5c c5 0f 28 e9 0f c6 e9 ff 0f 59 ea 0f
00788d60: 58 c5 0f 28 c8 0f c6 c8 09 0f 59 cc 0f 28 e0 0f
00788d70: c6 e0 12 f3 0f 10 05 88 fd 03 01 0f 59 e3 0f 5c
00788d80: e1 0f c6 c0 00 0f 59 e0 0f 28 40 10 8d 54 24 10
00788d90: 0f 58 e2 0f 58 e0 52 0f 29 64 24 14 e8 5f 33 fe
00788da0: ff b0 01 8b e5 5d c3 32 c0 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
00788cb0 <.text+0x387cb0>:
  788cb0:	55                                              	push   ebp
  788cb1:	8b ec                                           	mov    ebp,esp
  788cb3:	83 e4 f0                                        	and    esp,0xfffffff0
  788cb6:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788cbc:	83 ec 40                                        	sub    esp,0x40
  788cbf:	85 c9                                           	test   ecx,ecx
  788cc1:	0f 84 e0 00 00 00                               	je     0x788da7
  788cc7:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  788cca:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  788ccd:	6a 00                                           	push   0x0
  788ccf:	50                                              	push   eax
  788cd0:	52                                              	push   edx
  788cd1:	e8 3a 9b 4d 00                                  	call   0xc62810
  788cd6:	85 c0                                           	test   eax,eax
  788cd8:	0f 84 c9 00 00 00                               	je     0x788da7
  788cde:	80 b8 44 04 00 00 00                            	cmp    BYTE PTR [eax+0x444],0x0
  788ce5:	0f 84 bc 00 00 00                               	je     0x788da7
  788ceb:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  788cf0:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  788cf5:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  788cfb:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  788d00:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  788d06:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  788d0c:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  788d11:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  788d15:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  788d19:	51                                              	push   ecx
  788d1a:	8b c8                                           	mov    ecx,eax
  788d1c:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
  788d21:	e8 da 8d 32 00                                  	call   0xab1b00
  788d26:	0f 28 08                                        	movaps xmm1,XMMWORD PTR [eax]
  788d29:	0f 28 14 24                                     	movaps xmm2,XMMWORD PTR [esp]
  788d2d:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
  788d30:	0f 28 d9                                        	movaps xmm3,xmm1
  788d33:	0f c6 d9 09                                     	shufps xmm3,xmm1,0x9
  788d37:	0f 28 e1                                        	movaps xmm4,xmm1
  788d3a:	0f c6 e1 12                                     	shufps xmm4,xmm1,0x12
  788d3e:	0f 28 ea                                        	movaps xmm5,xmm2
  788d41:	0f c6 ea 09                                     	shufps xmm5,xmm2,0x9
  788d45:	0f 59 ec                                        	mulps  xmm5,xmm4
  788d48:	0f 28 c2                                        	movaps xmm0,xmm2
  788d4b:	0f c6 c2 12                                     	shufps xmm0,xmm2,0x12
  788d4f:	0f 59 c3                                        	mulps  xmm0,xmm3
  788d52:	0f 5c c5                                        	subps  xmm0,xmm5
  788d55:	0f 28 e9                                        	movaps xmm5,xmm1
  788d58:	0f c6 e9 ff                                     	shufps xmm5,xmm1,0xff
  788d5c:	0f 59 ea                                        	mulps  xmm5,xmm2
  788d5f:	0f 58 c5                                        	addps  xmm0,xmm5
  788d62:	0f 28 c8                                        	movaps xmm1,xmm0
  788d65:	0f c6 c8 09                                     	shufps xmm1,xmm0,0x9
  788d69:	0f 59 cc                                        	mulps  xmm1,xmm4
  788d6c:	0f 28 e0                                        	movaps xmm4,xmm0
  788d6f:	0f c6 e0 12                                     	shufps xmm4,xmm0,0x12
  788d73:	f3 0f 10 05 88 fd 03 01                         	movss  xmm0,DWORD PTR ds:0x103fd88
  788d7b:	0f 59 e3                                        	mulps  xmm4,xmm3
  788d7e:	0f 5c e1                                        	subps  xmm4,xmm1
  788d81:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  788d85:	0f 59 e0                                        	mulps  xmm4,xmm0
  788d88:	0f 28 40 10                                     	movaps xmm0,XMMWORD PTR [eax+0x10]
  788d8c:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  788d90:	0f 58 e2                                        	addps  xmm4,xmm2
  788d93:	0f 58 e0                                        	addps  xmm4,xmm0
  788d96:	52                                              	push   edx
  788d97:	0f 29 64 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm4
  788d9c:	e8 5f 33 fe ff                                  	call   0x76c100
  788da1:	b0 01                                           	mov    al,0x1
  788da3:	8b e5                                           	mov    esp,ebp
  788da5:	5d                                              	pop    ebp
  788da6:	c3                                              	ret
  788da7:	32 c0                                           	xor    al,al
  788da9:	8b e5                                           	mov    esp,ebp
  788dab:	5d                                              	pop    ebp
  788dac:	c3                                              	ret
  788dad:	cc                                              	int3
  788dae:	cc                                              	int3
  788daf:	cc                                              	int3
