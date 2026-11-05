# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109901a0 (SimBuilderWrap_SetHairHaloLowColor)
Paired Ghidra pseudocode: 109901A0_SimBuilderWrap_SetHairHaloLowColor.c
Window: [0x109901a0, 0x10990220) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109901a0: 55 8b ec 83 e4 f0 83 ec 20 f3 0f 10 4d 14 f3 0f
109901b0: 10 45 0c f3 0f 11 4c 24 18 f3 0f 10 4d 10 f3 0f
109901c0: 11 44 24 1c f3 0f 11 44 24 10 f3 0f 11 4c 24 14
109901d0: 0f 28 44 24 10 0f 29 44 24 10 f3 0f 10 05 d4 b0
109901e0: ac 10 f3 0f 11 44 24 1c 0f 28 44 24 10 8d 44 24
109901f0: 10 50 8d 4c 24 10 0f 29 44 24 14 e8 10 7d a7 ff
10990200: 8b 45 08 8b 4c 24 0c 81 48 1c 04 01 00 00 89 48
10990210: 48 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109901a0 <.text+0x98f1a0>:
109901a0:	55                                              	push   ebp
109901a1:	8b ec                                           	mov    ebp,esp
109901a3:	83 e4 f0                                        	and    esp,0xfffffff0
109901a6:	83 ec 20                                        	sub    esp,0x20
109901a9:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
109901ae:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
109901b3:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
109901b9:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
109901be:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
109901c4:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
109901ca:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
109901d0:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
109901d5:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
109901da:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
109901e2:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
109901e8:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
109901ed:	8d 44 24 10                                     	lea    eax,[esp+0x10]
109901f1:	50                                              	push   eax
109901f2:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
109901f6:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
109901fb:	e8 10 7d a7 ff                                  	call   0x10407f10
10990200:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10990203:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10990207:	81 48 1c 04 01 00 00                            	or     DWORD PTR [eax+0x1c],0x104
1099020e:	89 48 48                                        	mov    DWORD PTR [eax+0x48],ecx
10990211:	8b e5                                           	mov    esp,ebp
10990213:	5d                                              	pop    ebp
10990214:	c3                                              	ret
10990215:	cc                                              	int3
10990216:	cc                                              	int3
10990217:	cc                                              	int3
10990218:	cc                                              	int3
10990219:	cc                                              	int3
1099021a:	cc                                              	int3
1099021b:	cc                                              	int3
1099021c:	cc                                              	int3
1099021d:	cc                                              	int3
1099021e:	cc                                              	int3
1099021f:	cc                                              	int3
