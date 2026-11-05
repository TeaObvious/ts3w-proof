# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578550 (World_SetWallCutawayFocusPosImpl)
Paired Ghidra pseudocode: 10578550_World_SetWallCutawayFocusPosImpl.c
Window: [0x10578550, 0x105785a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x105785a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578550: 55 8b ec 83 e4 f0 8b 0d c4 00 c7 10 83 ec 10 85
10578560: c9 74 38 f3 0f 10 4d 10 f3 0f 10 45 08 f3 0f 11
10578570: 4c 24 08 f3 0f 10 4d 0c f3 0f 11 44 24 0c f3 0f
10578580: 11 4c 24 04 f3 0f 11 04 24 0f 28 04 24 8d 04 24
10578590: 50 0f 29 44 24 04 e8 55 62 cc ff 8b e5 5d c3 cc

LINEAR DISASSEMBLY
10578550 <.text+0x577550>:
10578550:	55                                              	push   ebp
10578551:	8b ec                                           	mov    ebp,esp
10578553:	83 e4 f0                                        	and    esp,0xfffffff0
10578556:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057855c:	83 ec 10                                        	sub    esp,0x10
1057855f:	85 c9                                           	test   ecx,ecx
10578561:	74 38                                           	je     0x1057859b
10578563:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10578568:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
1057856d:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10578573:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
10578578:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1057857e:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10578584:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10578589:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1057858d:	8d 04 24                                        	lea    eax,[esp]
10578590:	50                                              	push   eax
10578591:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
10578596:	e8 55 62 cc ff                                  	call   0x1023e7f0
1057859b:	8b e5                                           	mov    esp,ebp
1057859d:	5d                                              	pop    ebp
1057859e:	c3                                              	ret
1057859f:	cc                                              	int3
