# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105776e0 (World_WallExistsBetweenImpl)
Paired Ghidra pseudocode: 105776E0_World_WallExistsBetweenImpl.c
Window: [0x105776e0, 0x10577790) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577790
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105776e0: 8b 0d c4 00 c7 10 83 ec 18 85 c9 0f 84 91 00 00
105776f0: 00 8b 44 24 20 8b 54 24 1c 6a 00 50 52 e8 0e f9
10577700: cb ff 85 c0 74 7c 8b 80 98 02 00 00 8b 48 64 85
10577710: c9 74 6f f3 0f 10 05 ec 10 b3 10 f3 0f 2a 4c 24
10577720: 24 0f be 54 24 2c 0f be 44 24 38 f3 0f 58 c8 f3
10577730: 0f 11 4c 24 0c f3 0f 2a 4c 24 28 f3 0f 58 c8 f3
10577740: 0f 11 4c 24 10 f3 0f 2a 4c 24 30 89 54 24 14 f3
10577750: 0f 58 c8 6a 00 8d 54 24 04 f3 0f 11 4c 24 04 f3
10577760: 0f 2a 4c 24 38 89 44 24 0c 52 8d 44 24 14 f3 0f
10577770: 58 c8 50 f3 0f 11 4c 24 10 e8 82 d6 c9 ff 83 c4
10577780: 18 c3 32 c0 83 c4 18 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105776e0 <.text+0x5766e0>:
105776e0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105776e6:	83 ec 18                                        	sub    esp,0x18
105776e9:	85 c9                                           	test   ecx,ecx
105776eb:	0f 84 91 00 00 00                               	je     0x10577782
105776f1:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
105776f5:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
105776f9:	6a 00                                           	push   0x0
105776fb:	50                                              	push   eax
105776fc:	52                                              	push   edx
105776fd:	e8 0e f9 cb ff                                  	call   0x10237010
10577702:	85 c0                                           	test   eax,eax
10577704:	74 7c                                           	je     0x10577782
10577706:	8b 80 98 02 00 00                               	mov    eax,DWORD PTR [eax+0x298]
1057770c:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
1057770f:	85 c9                                           	test   ecx,ecx
10577711:	74 6f                                           	je     0x10577782
10577713:	f3 0f 10 05 ec 10 b3 10                         	movss  xmm0,DWORD PTR ds:0x10b310ec
1057771b:	f3 0f 2a 4c 24 24                               	cvtsi2ss xmm1,DWORD PTR [esp+0x24]
10577721:	0f be 54 24 2c                                  	movsx  edx,BYTE PTR [esp+0x2c]
10577726:	0f be 44 24 38                                  	movsx  eax,BYTE PTR [esp+0x38]
1057772b:	f3 0f 58 c8                                     	addss  xmm1,xmm0
1057772f:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
10577735:	f3 0f 2a 4c 24 28                               	cvtsi2ss xmm1,DWORD PTR [esp+0x28]
1057773b:	f3 0f 58 c8                                     	addss  xmm1,xmm0
1057773f:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
10577745:	f3 0f 2a 4c 24 30                               	cvtsi2ss xmm1,DWORD PTR [esp+0x30]
1057774b:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1057774f:	f3 0f 58 c8                                     	addss  xmm1,xmm0
10577753:	6a 00                                           	push   0x0
10577755:	8d 54 24 04                                     	lea    edx,[esp+0x4]
10577759:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1057775f:	f3 0f 2a 4c 24 38                               	cvtsi2ss xmm1,DWORD PTR [esp+0x38]
10577765:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10577769:	52                                              	push   edx
1057776a:	8d 44 24 14                                     	lea    eax,[esp+0x14]
1057776e:	f3 0f 58 c8                                     	addss  xmm1,xmm0
10577772:	50                                              	push   eax
10577773:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
10577779:	e8 82 d6 c9 ff                                  	call   0x10214e00
1057777e:	83 c4 18                                        	add    esp,0x18
10577781:	c3                                              	ret
10577782:	32 c0                                           	xor    al,al
10577784:	83 c4 18                                        	add    esp,0x18
10577787:	c3                                              	ret
10577788:	cc                                              	int3
10577789:	cc                                              	int3
1057778a:	cc                                              	int3
1057778b:	cc                                              	int3
1057778c:	cc                                              	int3
1057778d:	cc                                              	int3
1057778e:	cc                                              	int3
1057778f:	cc                                              	int3
