# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00776c00 (ScriptCore.VisualEffect::Swarm_SetPosAndOrient)
Paired Ghidra pseudocode: 00776C00_ScriptCore_VisualEffect_Swarm_SetPosAndOrient.c
Window: [0x00776c00, 0x00776da0) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x00776da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00776c00: 55 8b ec 83 e4 f0 81 ec 8c 00 00 00 53 32 db e8
00776c10: 5c 09 1c 00 85 c0 0f 84 7a 01 00 00 8b 4d 0c 8b
00776c20: 55 08 51 52 8b c8 e8 55 13 1c 00 85 c0 0f 84 63
00776c30: 01 00 00 8b 0d 58 a1 1e 01 51 8b c8 e8 1f d6 1b
00776c40: 00 85 c0 0f 84 4d 01 00 00 f3 0f 10 4d 24 f3 0f
00776c50: 10 5d 30 f3 0f 10 55 2c f3 0f 10 65 20 f3 0f 10
00776c60: 7d 1c 0f 28 c1 f3 0f 59 c2 0f 28 eb f3 0f 59 ec
00776c70: f3 0f 5c c5 f3 0f 10 6d 28 f3 0f 11 44 24 1c f3
00776c80: 0f 11 44 24 10 f3 0f 59 fa 0f 28 f4 f3 0f 59 f5
00776c90: f3 0f 5c f7 f3 0f 11 74 24 18 0f 28 f3 f3 0f 59
00776ca0: 75 1c 0f 28 f9 f3 0f 59 fd f3 0f 5c f7 f3 0f 11
00776cb0: 74 24 14 0f 28 44 24 10 0f 29 44 24 20 f3 0f 10
00776cc0: 74 24 28 0f 29 44 24 30 0f 29 44 24 40 0f 57 c0
00776cd0: f3 0f 11 74 24 18 f3 0f 10 74 24 34 f3 0f 11 44
00776ce0: 24 1c f3 0f 11 74 24 14 f3 0f 10 74 24 40 f3 0f
00776cf0: 11 74 24 10 0f 28 74 24 10 f3 0f 11 44 24 1c f3
00776d00: 0f 11 5c 24 18 f3 0f 11 54 24 14 f3 0f 11 6c 24
00776d10: 10 0f 28 54 24 10 f3 0f 11 44 24 1c f3 0f 10 45
00776d20: 1c f3 0f 11 44 24 10 f3 0f 11 4c 24 18 f3 0f 11
00776d30: 64 24 14 0f 28 44 24 10 0f 29 44 24 70 f3 0f 10
00776d40: 05 f8 98 f9 00 f3 0f 11 44 24 1c f3 0f 10 45 18
00776d50: f3 0f 11 44 24 18 f3 0f 10 45 14 f3 0f 11 44 24
00776d60: 14 f3 0f 10 45 10 f3 0f 11 44 24 10 0f 28 44 24
00776d70: 10 8d 54 24 50 52 8b c8 0f 29 74 24 54 0f 29 54
00776d80: 24 64 0f 29 84 24 84 00 00 00 e8 d1 19 1e 00 b0
00776d90: 01 5b 8b e5 5d c3 8a c3 5b 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
00776c00 <.text+0x375c00>:
  776c00:	55                                              	push   ebp
  776c01:	8b ec                                           	mov    ebp,esp
  776c03:	83 e4 f0                                        	and    esp,0xfffffff0
  776c06:	81 ec 8c 00 00 00                               	sub    esp,0x8c
  776c0c:	53                                              	push   ebx
  776c0d:	32 db                                           	xor    bl,bl
  776c0f:	e8 5c 09 1c 00                                  	call   0x937570
  776c14:	85 c0                                           	test   eax,eax
  776c16:	0f 84 7a 01 00 00                               	je     0x776d96
  776c1c:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  776c1f:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  776c22:	51                                              	push   ecx
  776c23:	52                                              	push   edx
  776c24:	8b c8                                           	mov    ecx,eax
  776c26:	e8 55 13 1c 00                                  	call   0x937f80
  776c2b:	85 c0                                           	test   eax,eax
  776c2d:	0f 84 63 01 00 00                               	je     0x776d96
  776c33:	8b 0d 58 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea158
  776c39:	51                                              	push   ecx
  776c3a:	8b c8                                           	mov    ecx,eax
  776c3c:	e8 1f d6 1b 00                                  	call   0x934260
  776c41:	85 c0                                           	test   eax,eax
  776c43:	0f 84 4d 01 00 00                               	je     0x776d96
  776c49:	f3 0f 10 4d 24                                  	movss  xmm1,DWORD PTR [ebp+0x24]
  776c4e:	f3 0f 10 5d 30                                  	movss  xmm3,DWORD PTR [ebp+0x30]
  776c53:	f3 0f 10 55 2c                                  	movss  xmm2,DWORD PTR [ebp+0x2c]
  776c58:	f3 0f 10 65 20                                  	movss  xmm4,DWORD PTR [ebp+0x20]
  776c5d:	f3 0f 10 7d 1c                                  	movss  xmm7,DWORD PTR [ebp+0x1c]
  776c62:	0f 28 c1                                        	movaps xmm0,xmm1
  776c65:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  776c69:	0f 28 eb                                        	movaps xmm5,xmm3
  776c6c:	f3 0f 59 ec                                     	mulss  xmm5,xmm4
  776c70:	f3 0f 5c c5                                     	subss  xmm0,xmm5
  776c74:	f3 0f 10 6d 28                                  	movss  xmm5,DWORD PTR [ebp+0x28]
  776c79:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  776c7f:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  776c85:	f3 0f 59 fa                                     	mulss  xmm7,xmm2
  776c89:	0f 28 f4                                        	movaps xmm6,xmm4
  776c8c:	f3 0f 59 f5                                     	mulss  xmm6,xmm5
  776c90:	f3 0f 5c f7                                     	subss  xmm6,xmm7
  776c94:	f3 0f 11 74 24 18                               	movss  DWORD PTR [esp+0x18],xmm6
  776c9a:	0f 28 f3                                        	movaps xmm6,xmm3
  776c9d:	f3 0f 59 75 1c                                  	mulss  xmm6,DWORD PTR [ebp+0x1c]
  776ca2:	0f 28 f9                                        	movaps xmm7,xmm1
  776ca5:	f3 0f 59 fd                                     	mulss  xmm7,xmm5
  776ca9:	f3 0f 5c f7                                     	subss  xmm6,xmm7
  776cad:	f3 0f 11 74 24 14                               	movss  DWORD PTR [esp+0x14],xmm6
  776cb3:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  776cb8:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  776cbd:	f3 0f 10 74 24 28                               	movss  xmm6,DWORD PTR [esp+0x28]
  776cc3:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  776cc8:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  776ccd:	0f 57 c0                                        	xorps  xmm0,xmm0
  776cd0:	f3 0f 11 74 24 18                               	movss  DWORD PTR [esp+0x18],xmm6
  776cd6:	f3 0f 10 74 24 34                               	movss  xmm6,DWORD PTR [esp+0x34]
  776cdc:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  776ce2:	f3 0f 11 74 24 14                               	movss  DWORD PTR [esp+0x14],xmm6
  776ce8:	f3 0f 10 74 24 40                               	movss  xmm6,DWORD PTR [esp+0x40]
  776cee:	f3 0f 11 74 24 10                               	movss  DWORD PTR [esp+0x10],xmm6
  776cf4:	0f 28 74 24 10                                  	movaps xmm6,XMMWORD PTR [esp+0x10]
  776cf9:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  776cff:	f3 0f 11 5c 24 18                               	movss  DWORD PTR [esp+0x18],xmm3
  776d05:	f3 0f 11 54 24 14                               	movss  DWORD PTR [esp+0x14],xmm2
  776d0b:	f3 0f 11 6c 24 10                               	movss  DWORD PTR [esp+0x10],xmm5
  776d11:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  776d16:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  776d1c:	f3 0f 10 45 1c                                  	movss  xmm0,DWORD PTR [ebp+0x1c]
  776d21:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  776d27:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  776d2d:	f3 0f 11 64 24 14                               	movss  DWORD PTR [esp+0x14],xmm4
  776d33:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  776d38:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  776d3d:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  776d45:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  776d4b:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
  776d50:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  776d56:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  776d5b:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  776d61:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  776d66:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  776d6c:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  776d71:	8d 54 24 50                                     	lea    edx,[esp+0x50]
  776d75:	52                                              	push   edx
  776d76:	8b c8                                           	mov    ecx,eax
  776d78:	0f 29 74 24 54                                  	movaps XMMWORD PTR [esp+0x54],xmm6
  776d7d:	0f 29 54 24 64                                  	movaps XMMWORD PTR [esp+0x64],xmm2
  776d82:	0f 29 84 24 84 00 00 00                         	movaps XMMWORD PTR [esp+0x84],xmm0
  776d8a:	e8 d1 19 1e 00                                  	call   0x958760
  776d8f:	b0 01                                           	mov    al,0x1
  776d91:	5b                                              	pop    ebx
  776d92:	8b e5                                           	mov    esp,ebp
  776d94:	5d                                              	pop    ebp
  776d95:	c3                                              	ret
  776d96:	8a c3                                           	mov    al,bl
  776d98:	5b                                              	pop    ebx
  776d99:	8b e5                                           	mov    esp,ebp
  776d9b:	5d                                              	pop    ebp
  776d9c:	c3                                              	ret
  776d9d:	cc                                              	int3
  776d9e:	cc                                              	int3
  776d9f:	cc                                              	int3
