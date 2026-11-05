# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00789040 (ScriptCore.World::World_GetHouseboatDisplayToWorldPositionAndForwardImpl)
Paired Ghidra pseudocode: 00789040_ScriptCore_World_World_GetHouseboatDisplayToWorldPositionAndForwardImpl.c
Window: [0x00789040, 0x007891d0) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x007891d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00789040: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 50 85
00789050: c9 0f 84 71 01 00 00 8b 45 0c 8b 55 08 6a 00 50
00789060: 52 e8 aa 97 4d 00 85 c0 0f 84 5a 01 00 00 80 b8
00789070: 44 04 00 00 00 0f 84 4d 01 00 00 8d 4c 24 30 51
00789080: 8b c8 e8 29 8c 32 00 f3 0f 10 4d 18 0f 28 54 24
00789090: 30 f3 0f 10 45 10 8b 4d 28 f3 0f 11 44 24 0c f3
007890a0: 0f 11 04 24 f3 0f 11 4c 24 08 f3 0f 10 4d 14 f3
007890b0: 0f 11 4c 24 04 0f 28 0c 24 0f 28 da 0f c6 da 09
007890c0: 0f 28 e2 0f c6 e2 12 0f 28 e9 0f c6 e9 09 0f 59
007890d0: ec 0f 28 c1 0f c6 c1 12 0f 59 c3 0f 5c c5 0f 28
007890e0: ea 0f c6 ea ff f3 0f 10 15 88 fd 03 01 0f 59 e9
007890f0: 0f 58 c5 0f 28 e8 0f c6 e8 09 0f 59 ec 0f 28 e0
00789100: 0f c6 e0 12 0f 28 44 24 40 0f 59 e3 0f 5c e5 0f
00789110: c6 d2 00 0f 59 e2 8d 54 24 10 0f 58 e1 0f 58 e0
00789120: 52 0f 29 54 24 24 0f 29 64 24 14 e8 d0 2f fe ff
00789130: f3 0f 10 4d 24 0f 28 54 24 30 f3 0f 10 45 1c f3
00789140: 0f 11 44 24 0c f3 0f 11 04 24 f3 0f 11 4c 24 08
00789150: f3 0f 10 4d 20 f3 0f 11 4c 24 04 0f 28 0c 24 0f
00789160: 28 da 0f c6 da 09 0f 28 e2 0f c6 e2 12 0f 28 e9
00789170: 0f c6 e9 09 0f 59 ec 0f 28 c1 0f c6 c1 12 0f 59
00789180: c3 0f 5c c5 0f 28 ea 0f c6 ea ff 0f 59 e9 0f 58
00789190: c5 0f 28 d0 0f c6 d0 09 0f 59 d4 0f 28 e0 0f c6
007891a0: e0 12 0f 59 e3 0f 5c e2 0f 59 64 24 20 0f 58 e1
007891b0: 0f 29 64 24 10 8b 4d 2c 8d 44 24 10 50 e8 3e 2f
007891c0: fe ff b0 01 8b e5 5d c3 32 c0 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
00789040 <.text+0x388040>:
  789040:	55                                              	push   ebp
  789041:	8b ec                                           	mov    ebp,esp
  789043:	83 e4 f0                                        	and    esp,0xfffffff0
  789046:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78904c:	83 ec 50                                        	sub    esp,0x50
  78904f:	85 c9                                           	test   ecx,ecx
  789051:	0f 84 71 01 00 00                               	je     0x7891c8
  789057:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  78905a:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78905d:	6a 00                                           	push   0x0
  78905f:	50                                              	push   eax
  789060:	52                                              	push   edx
  789061:	e8 aa 97 4d 00                                  	call   0xc62810
  789066:	85 c0                                           	test   eax,eax
  789068:	0f 84 5a 01 00 00                               	je     0x7891c8
  78906e:	80 b8 44 04 00 00 00                            	cmp    BYTE PTR [eax+0x444],0x0
  789075:	0f 84 4d 01 00 00                               	je     0x7891c8
  78907b:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  78907f:	51                                              	push   ecx
  789080:	8b c8                                           	mov    ecx,eax
  789082:	e8 29 8c 32 00                                  	call   0xab1cb0
  789087:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  78908c:	0f 28 54 24 30                                  	movaps xmm2,XMMWORD PTR [esp+0x30]
  789091:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  789096:	8b 4d 28                                        	mov    ecx,DWORD PTR [ebp+0x28]
  789099:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  78909f:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  7890a4:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  7890aa:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  7890af:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  7890b5:	0f 28 0c 24                                     	movaps xmm1,XMMWORD PTR [esp]
  7890b9:	0f 28 da                                        	movaps xmm3,xmm2
  7890bc:	0f c6 da 09                                     	shufps xmm3,xmm2,0x9
  7890c0:	0f 28 e2                                        	movaps xmm4,xmm2
  7890c3:	0f c6 e2 12                                     	shufps xmm4,xmm2,0x12
  7890c7:	0f 28 e9                                        	movaps xmm5,xmm1
  7890ca:	0f c6 e9 09                                     	shufps xmm5,xmm1,0x9
  7890ce:	0f 59 ec                                        	mulps  xmm5,xmm4
  7890d1:	0f 28 c1                                        	movaps xmm0,xmm1
  7890d4:	0f c6 c1 12                                     	shufps xmm0,xmm1,0x12
  7890d8:	0f 59 c3                                        	mulps  xmm0,xmm3
  7890db:	0f 5c c5                                        	subps  xmm0,xmm5
  7890de:	0f 28 ea                                        	movaps xmm5,xmm2
  7890e1:	0f c6 ea ff                                     	shufps xmm5,xmm2,0xff
  7890e5:	f3 0f 10 15 88 fd 03 01                         	movss  xmm2,DWORD PTR ds:0x103fd88
  7890ed:	0f 59 e9                                        	mulps  xmm5,xmm1
  7890f0:	0f 58 c5                                        	addps  xmm0,xmm5
  7890f3:	0f 28 e8                                        	movaps xmm5,xmm0
  7890f6:	0f c6 e8 09                                     	shufps xmm5,xmm0,0x9
  7890fa:	0f 59 ec                                        	mulps  xmm5,xmm4
  7890fd:	0f 28 e0                                        	movaps xmm4,xmm0
  789100:	0f c6 e0 12                                     	shufps xmm4,xmm0,0x12
  789104:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
  789109:	0f 59 e3                                        	mulps  xmm4,xmm3
  78910c:	0f 5c e5                                        	subps  xmm4,xmm5
  78910f:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  789113:	0f 59 e2                                        	mulps  xmm4,xmm2
  789116:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  78911a:	0f 58 e1                                        	addps  xmm4,xmm1
  78911d:	0f 58 e0                                        	addps  xmm4,xmm0
  789120:	52                                              	push   edx
  789121:	0f 29 54 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm2
  789126:	0f 29 64 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm4
  78912b:	e8 d0 2f fe ff                                  	call   0x76c100
  789130:	f3 0f 10 4d 24                                  	movss  xmm1,DWORD PTR [ebp+0x24]
  789135:	0f 28 54 24 30                                  	movaps xmm2,XMMWORD PTR [esp+0x30]
  78913a:	f3 0f 10 45 1c                                  	movss  xmm0,DWORD PTR [ebp+0x1c]
  78913f:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  789145:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  78914a:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  789150:	f3 0f 10 4d 20                                  	movss  xmm1,DWORD PTR [ebp+0x20]
  789155:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  78915b:	0f 28 0c 24                                     	movaps xmm1,XMMWORD PTR [esp]
  78915f:	0f 28 da                                        	movaps xmm3,xmm2
  789162:	0f c6 da 09                                     	shufps xmm3,xmm2,0x9
  789166:	0f 28 e2                                        	movaps xmm4,xmm2
  789169:	0f c6 e2 12                                     	shufps xmm4,xmm2,0x12
  78916d:	0f 28 e9                                        	movaps xmm5,xmm1
  789170:	0f c6 e9 09                                     	shufps xmm5,xmm1,0x9
  789174:	0f 59 ec                                        	mulps  xmm5,xmm4
  789177:	0f 28 c1                                        	movaps xmm0,xmm1
  78917a:	0f c6 c1 12                                     	shufps xmm0,xmm1,0x12
  78917e:	0f 59 c3                                        	mulps  xmm0,xmm3
  789181:	0f 5c c5                                        	subps  xmm0,xmm5
  789184:	0f 28 ea                                        	movaps xmm5,xmm2
  789187:	0f c6 ea ff                                     	shufps xmm5,xmm2,0xff
  78918b:	0f 59 e9                                        	mulps  xmm5,xmm1
  78918e:	0f 58 c5                                        	addps  xmm0,xmm5
  789191:	0f 28 d0                                        	movaps xmm2,xmm0
  789194:	0f c6 d0 09                                     	shufps xmm2,xmm0,0x9
  789198:	0f 59 d4                                        	mulps  xmm2,xmm4
  78919b:	0f 28 e0                                        	movaps xmm4,xmm0
  78919e:	0f c6 e0 12                                     	shufps xmm4,xmm0,0x12
  7891a2:	0f 59 e3                                        	mulps  xmm4,xmm3
  7891a5:	0f 5c e2                                        	subps  xmm4,xmm2
  7891a8:	0f 59 64 24 20                                  	mulps  xmm4,XMMWORD PTR [esp+0x20]
  7891ad:	0f 58 e1                                        	addps  xmm4,xmm1
  7891b0:	0f 29 64 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm4
  7891b5:	8b 4d 2c                                        	mov    ecx,DWORD PTR [ebp+0x2c]
  7891b8:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  7891bc:	50                                              	push   eax
  7891bd:	e8 3e 2f fe ff                                  	call   0x76c100
  7891c2:	b0 01                                           	mov    al,0x1
  7891c4:	8b e5                                           	mov    esp,ebp
  7891c6:	5d                                              	pop    ebp
  7891c7:	c3                                              	ret
  7891c8:	32 c0                                           	xor    al,al
  7891ca:	8b e5                                           	mov    esp,ebp
  7891cc:	5d                                              	pop    ebp
  7891cd:	c3                                              	ret
  7891ce:	cc                                              	int3
  7891cf:	cc                                              	int3
