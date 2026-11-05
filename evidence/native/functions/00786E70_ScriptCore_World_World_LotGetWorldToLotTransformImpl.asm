# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786e70 (ScriptCore.World::World_LotGetWorldToLotTransformImpl)
Paired Ghidra pseudocode: 00786E70_ScriptCore_World_World_LotGetWorldToLotTransformImpl.c
Window: [0x00786e70, 0x00786f70) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786f70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786e70: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 5c 85
00786e80: c9 56 74 33 8b 45 10 8b 55 0c 6a 00 50 52 e8 7d
00786e90: b9 4d 00 85 c0 74 20 8d 4c 24 20 51 8b c8 e8 6d
00786ea0: a7 32 00 8b 75 08 50 56 e8 73 53 fe ff 8b c6 83
00786eb0: c4 08 5e 8b e5 5d c3 0f 57 c0 f3 0f 10 0d f8 98
00786ec0: f9 00 8b 75 08 f3 0f 11 44 24 1c f3 0f 11 44 24
00786ed0: 18 f3 0f 11 44 24 14 f3 0f 11 4c 24 10 0f 28 54
00786ee0: 24 10 f3 0f 11 44 24 1c f3 0f 11 44 24 18 f3 0f
00786ef0: 11 4c 24 14 f3 0f 11 44 24 10 0f 29 54 24 20 0f
00786f00: 28 54 24 10 f3 0f 11 44 24 1c f3 0f 11 4c 24 18
00786f10: f3 0f 11 44 24 14 f3 0f 11 44 24 10 0f 29 54 24
00786f20: 30 0f 28 54 24 10 8d 54 24 20 f3 0f 11 4c 24 1c
00786f30: f3 0f 11 44 24 18 f3 0f 11 44 24 14 f3 0f 11 44
00786f40: 24 10 0f 28 44 24 10 52 56 0f 29 54 24 48 0f 29
00786f50: 44 24 58 e8 c8 52 fe ff 83 c4 08 8b c6 5e 8b e5
00786f60: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786e70 <.text+0x385e70>:
  786e70:	55                                              	push   ebp
  786e71:	8b ec                                           	mov    ebp,esp
  786e73:	83 e4 f0                                        	and    esp,0xfffffff0
  786e76:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786e7c:	83 ec 5c                                        	sub    esp,0x5c
  786e7f:	85 c9                                           	test   ecx,ecx
  786e81:	56                                              	push   esi
  786e82:	74 33                                           	je     0x786eb7
  786e84:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  786e87:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  786e8a:	6a 00                                           	push   0x0
  786e8c:	50                                              	push   eax
  786e8d:	52                                              	push   edx
  786e8e:	e8 7d b9 4d 00                                  	call   0xc62810
  786e93:	85 c0                                           	test   eax,eax
  786e95:	74 20                                           	je     0x786eb7
  786e97:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  786e9b:	51                                              	push   ecx
  786e9c:	8b c8                                           	mov    ecx,eax
  786e9e:	e8 6d a7 32 00                                  	call   0xab1610
  786ea3:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  786ea6:	50                                              	push   eax
  786ea7:	56                                              	push   esi
  786ea8:	e8 73 53 fe ff                                  	call   0x76c220
  786ead:	8b c6                                           	mov    eax,esi
  786eaf:	83 c4 08                                        	add    esp,0x8
  786eb2:	5e                                              	pop    esi
  786eb3:	8b e5                                           	mov    esp,ebp
  786eb5:	5d                                              	pop    ebp
  786eb6:	c3                                              	ret
  786eb7:	0f 57 c0                                        	xorps  xmm0,xmm0
  786eba:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  786ec2:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  786ec5:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  786ecb:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  786ed1:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  786ed7:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  786edd:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  786ee2:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  786ee8:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  786eee:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  786ef4:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  786efa:	0f 29 54 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm2
  786eff:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  786f04:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  786f0a:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  786f10:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  786f16:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  786f1c:	0f 29 54 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm2
  786f21:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  786f26:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  786f2a:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  786f30:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  786f36:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  786f3c:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  786f42:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  786f47:	52                                              	push   edx
  786f48:	56                                              	push   esi
  786f49:	0f 29 54 24 48                                  	movaps XMMWORD PTR [esp+0x48],xmm2
  786f4e:	0f 29 44 24 58                                  	movaps XMMWORD PTR [esp+0x58],xmm0
  786f53:	e8 c8 52 fe ff                                  	call   0x76c220
  786f58:	83 c4 08                                        	add    esp,0x8
  786f5b:	8b c6                                           	mov    eax,esi
  786f5d:	5e                                              	pop    esi
  786f5e:	8b e5                                           	mov    esp,ebp
  786f60:	5d                                              	pop    ebp
  786f61:	c3                                              	ret
  786f62:	cc                                              	int3
  786f63:	cc                                              	int3
  786f64:	cc                                              	int3
  786f65:	cc                                              	int3
  786f66:	cc                                              	int3
  786f67:	cc                                              	int3
  786f68:	cc                                              	int3
  786f69:	cc                                              	int3
  786f6a:	cc                                              	int3
  786f6b:	cc                                              	int3
  786f6c:	cc                                              	int3
  786f6d:	cc                                              	int3
  786f6e:	cc                                              	int3
  786f6f:	cc                                              	int3
