# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105780d0 (World_IsDeckFoundationAtLotLocImpl)
Paired Ghidra pseudocode: 105780D0_World_IsDeckFoundationAtLotLocImpl.c
Window: [0x105780d0, 0x10578130) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105780d0: 8b 0d c4 00 c7 10 83 ec 0c 85 c9 74 46 8b 44 24
105780e0: 14 8b 54 24 10 6a 00 50 52 e8 22 ef cb ff 85 c0
105780f0: 74 31 f3 0f 10 44 24 18 8b 4c 24 20 8d 14 24 52
10578100: f3 0f 11 44 24 04 f3 0f 10 44 24 20 50 f3 0f 11
10578110: 44 24 0c 89 4c 24 10 e8 e4 de b4 ff 83 c4 08 83
10578120: c4 0c c3 32 c0 83 c4 0c c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105780d0 <.text+0x5770d0>:
105780d0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105780d6:	83 ec 0c                                        	sub    esp,0xc
105780d9:	85 c9                                           	test   ecx,ecx
105780db:	74 46                                           	je     0x10578123
105780dd:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
105780e1:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105780e5:	6a 00                                           	push   0x0
105780e7:	50                                              	push   eax
105780e8:	52                                              	push   edx
105780e9:	e8 22 ef cb ff                                  	call   0x10237010
105780ee:	85 c0                                           	test   eax,eax
105780f0:	74 31                                           	je     0x10578123
105780f2:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
105780f8:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
105780fc:	8d 14 24                                        	lea    edx,[esp]
105780ff:	52                                              	push   edx
10578100:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10578106:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
1057810c:	50                                              	push   eax
1057810d:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10578113:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10578117:	e8 e4 de b4 ff                                  	call   0x100c6000
1057811c:	83 c4 08                                        	add    esp,0x8
1057811f:	83 c4 0c                                        	add    esp,0xc
10578122:	c3                                              	ret
10578123:	32 c0                                           	xor    al,al
10578125:	83 c4 0c                                        	add    esp,0xc
10578128:	c3                                              	ret
10578129:	cc                                              	int3
1057812a:	cc                                              	int3
1057812b:	cc                                              	int3
1057812c:	cc                                              	int3
1057812d:	cc                                              	int3
1057812e:	cc                                              	int3
1057812f:	cc                                              	int3
