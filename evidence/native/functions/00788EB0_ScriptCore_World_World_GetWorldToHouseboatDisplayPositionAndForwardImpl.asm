# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788eb0 (ScriptCore.World::World_GetWorldToHouseboatDisplayPositionAndForwardImpl)
Paired Ghidra pseudocode: 00788EB0_ScriptCore_World_World_GetWorldToHouseboatDisplayPositionAndForwardImpl.c
Window: [0x00788eb0, 0x00789040) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788eb0: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 50 85
00788ec0: c9 0f 84 71 01 00 00 8b 45 0c 8b 55 08 6a 00 50
00788ed0: 52 e8 3a 99 4d 00 85 c0 0f 84 5a 01 00 00 80 b8
00788ee0: 44 04 00 00 00 0f 84 4d 01 00 00 8d 4c 24 30 51
00788ef0: 8b c8 e8 09 8c 32 00 f3 0f 10 4d 18 0f 28 54 24
00788f00: 30 f3 0f 10 45 10 8b 4d 28 f3 0f 11 44 24 0c f3
00788f10: 0f 11 04 24 f3 0f 11 4c 24 08 f3 0f 10 4d 14 f3
00788f20: 0f 11 4c 24 04 0f 28 0c 24 0f 28 da 0f c6 da 09
00788f30: 0f 28 e2 0f c6 e2 12 0f 28 e9 0f c6 e9 09 0f 59
00788f40: ec 0f 28 c1 0f c6 c1 12 0f 59 c3 0f 5c c5 0f 28
00788f50: ea 0f c6 ea ff f3 0f 10 15 88 fd 03 01 0f 59 e9
00788f60: 0f 58 c5 0f 28 e8 0f c6 e8 09 0f 59 ec 0f 28 e0
00788f70: 0f c6 e0 12 0f 28 44 24 40 0f 59 e3 0f 5c e5 0f
00788f80: c6 d2 00 0f 59 e2 8d 54 24 10 0f 58 e1 0f 58 e0
00788f90: 52 0f 29 54 24 24 0f 29 64 24 14 e8 60 31 fe ff
00788fa0: f3 0f 10 4d 24 0f 28 54 24 30 f3 0f 10 45 1c f3
00788fb0: 0f 11 44 24 0c f3 0f 11 04 24 f3 0f 11 4c 24 08
00788fc0: f3 0f 10 4d 20 f3 0f 11 4c 24 04 0f 28 0c 24 0f
00788fd0: 28 da 0f c6 da 09 0f 28 e2 0f c6 e2 12 0f 28 e9
00788fe0: 0f c6 e9 09 0f 59 ec 0f 28 c1 0f c6 c1 12 0f 59
00788ff0: c3 0f 5c c5 0f 28 ea 0f c6 ea ff 0f 59 e9 0f 58
00789000: c5 0f 28 d0 0f c6 d0 09 0f 59 d4 0f 28 e0 0f c6
00789010: e0 12 0f 59 e3 0f 5c e2 0f 59 64 24 20 0f 58 e1
00789020: 0f 29 64 24 10 8b 4d 2c 8d 44 24 10 50 e8 ce 30
00789030: fe ff b0 01 8b e5 5d c3 32 c0 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
00788eb0 <.text+0x387eb0>:
  788eb0:	55                                              	push   ebp
  788eb1:	8b ec                                           	mov    ebp,esp
  788eb3:	83 e4 f0                                        	and    esp,0xfffffff0
  788eb6:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788ebc:	83 ec 50                                        	sub    esp,0x50
  788ebf:	85 c9                                           	test   ecx,ecx
  788ec1:	0f 84 71 01 00 00                               	je     0x789038
  788ec7:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  788eca:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  788ecd:	6a 00                                           	push   0x0
  788ecf:	50                                              	push   eax
  788ed0:	52                                              	push   edx
  788ed1:	e8 3a 99 4d 00                                  	call   0xc62810
  788ed6:	85 c0                                           	test   eax,eax
  788ed8:	0f 84 5a 01 00 00                               	je     0x789038
  788ede:	80 b8 44 04 00 00 00                            	cmp    BYTE PTR [eax+0x444],0x0
  788ee5:	0f 84 4d 01 00 00                               	je     0x789038
  788eeb:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  788eef:	51                                              	push   ecx
  788ef0:	8b c8                                           	mov    ecx,eax
  788ef2:	e8 09 8c 32 00                                  	call   0xab1b00
  788ef7:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  788efc:	0f 28 54 24 30                                  	movaps xmm2,XMMWORD PTR [esp+0x30]
  788f01:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  788f06:	8b 4d 28                                        	mov    ecx,DWORD PTR [ebp+0x28]
  788f09:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  788f0f:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  788f14:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  788f1a:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  788f1f:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  788f25:	0f 28 0c 24                                     	movaps xmm1,XMMWORD PTR [esp]
  788f29:	0f 28 da                                        	movaps xmm3,xmm2
  788f2c:	0f c6 da 09                                     	shufps xmm3,xmm2,0x9
  788f30:	0f 28 e2                                        	movaps xmm4,xmm2
  788f33:	0f c6 e2 12                                     	shufps xmm4,xmm2,0x12
  788f37:	0f 28 e9                                        	movaps xmm5,xmm1
  788f3a:	0f c6 e9 09                                     	shufps xmm5,xmm1,0x9
  788f3e:	0f 59 ec                                        	mulps  xmm5,xmm4
  788f41:	0f 28 c1                                        	movaps xmm0,xmm1
  788f44:	0f c6 c1 12                                     	shufps xmm0,xmm1,0x12
  788f48:	0f 59 c3                                        	mulps  xmm0,xmm3
  788f4b:	0f 5c c5                                        	subps  xmm0,xmm5
  788f4e:	0f 28 ea                                        	movaps xmm5,xmm2
  788f51:	0f c6 ea ff                                     	shufps xmm5,xmm2,0xff
  788f55:	f3 0f 10 15 88 fd 03 01                         	movss  xmm2,DWORD PTR ds:0x103fd88
  788f5d:	0f 59 e9                                        	mulps  xmm5,xmm1
  788f60:	0f 58 c5                                        	addps  xmm0,xmm5
  788f63:	0f 28 e8                                        	movaps xmm5,xmm0
  788f66:	0f c6 e8 09                                     	shufps xmm5,xmm0,0x9
  788f6a:	0f 59 ec                                        	mulps  xmm5,xmm4
  788f6d:	0f 28 e0                                        	movaps xmm4,xmm0
  788f70:	0f c6 e0 12                                     	shufps xmm4,xmm0,0x12
  788f74:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
  788f79:	0f 59 e3                                        	mulps  xmm4,xmm3
  788f7c:	0f 5c e5                                        	subps  xmm4,xmm5
  788f7f:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  788f83:	0f 59 e2                                        	mulps  xmm4,xmm2
  788f86:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  788f8a:	0f 58 e1                                        	addps  xmm4,xmm1
  788f8d:	0f 58 e0                                        	addps  xmm4,xmm0
  788f90:	52                                              	push   edx
  788f91:	0f 29 54 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm2
  788f96:	0f 29 64 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm4
  788f9b:	e8 60 31 fe ff                                  	call   0x76c100
  788fa0:	f3 0f 10 4d 24                                  	movss  xmm1,DWORD PTR [ebp+0x24]
  788fa5:	0f 28 54 24 30                                  	movaps xmm2,XMMWORD PTR [esp+0x30]
  788faa:	f3 0f 10 45 1c                                  	movss  xmm0,DWORD PTR [ebp+0x1c]
  788faf:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  788fb5:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  788fba:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  788fc0:	f3 0f 10 4d 20                                  	movss  xmm1,DWORD PTR [ebp+0x20]
  788fc5:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  788fcb:	0f 28 0c 24                                     	movaps xmm1,XMMWORD PTR [esp]
  788fcf:	0f 28 da                                        	movaps xmm3,xmm2
  788fd2:	0f c6 da 09                                     	shufps xmm3,xmm2,0x9
  788fd6:	0f 28 e2                                        	movaps xmm4,xmm2
  788fd9:	0f c6 e2 12                                     	shufps xmm4,xmm2,0x12
  788fdd:	0f 28 e9                                        	movaps xmm5,xmm1
  788fe0:	0f c6 e9 09                                     	shufps xmm5,xmm1,0x9
  788fe4:	0f 59 ec                                        	mulps  xmm5,xmm4
  788fe7:	0f 28 c1                                        	movaps xmm0,xmm1
  788fea:	0f c6 c1 12                                     	shufps xmm0,xmm1,0x12
  788fee:	0f 59 c3                                        	mulps  xmm0,xmm3
  788ff1:	0f 5c c5                                        	subps  xmm0,xmm5
  788ff4:	0f 28 ea                                        	movaps xmm5,xmm2
  788ff7:	0f c6 ea ff                                     	shufps xmm5,xmm2,0xff
  788ffb:	0f 59 e9                                        	mulps  xmm5,xmm1
  788ffe:	0f 58 c5                                        	addps  xmm0,xmm5
  789001:	0f 28 d0                                        	movaps xmm2,xmm0
  789004:	0f c6 d0 09                                     	shufps xmm2,xmm0,0x9
  789008:	0f 59 d4                                        	mulps  xmm2,xmm4
  78900b:	0f 28 e0                                        	movaps xmm4,xmm0
  78900e:	0f c6 e0 12                                     	shufps xmm4,xmm0,0x12
  789012:	0f 59 e3                                        	mulps  xmm4,xmm3
  789015:	0f 5c e2                                        	subps  xmm4,xmm2
  789018:	0f 59 64 24 20                                  	mulps  xmm4,XMMWORD PTR [esp+0x20]
  78901d:	0f 58 e1                                        	addps  xmm4,xmm1
  789020:	0f 29 64 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm4
  789025:	8b 4d 2c                                        	mov    ecx,DWORD PTR [ebp+0x2c]
  789028:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78902c:	50                                              	push   eax
  78902d:	e8 ce 30 fe ff                                  	call   0x76c100
  789032:	b0 01                                           	mov    al,0x1
  789034:	8b e5                                           	mov    esp,ebp
  789036:	5d                                              	pop    ebp
  789037:	c3                                              	ret
  789038:	32 c0                                           	xor    al,al
  78903a:	8b e5                                           	mov    esp,ebp
  78903c:	5d                                              	pop    ebp
  78903d:	c3                                              	ret
  78903e:	cc                                              	int3
  78903f:	cc                                              	int3
