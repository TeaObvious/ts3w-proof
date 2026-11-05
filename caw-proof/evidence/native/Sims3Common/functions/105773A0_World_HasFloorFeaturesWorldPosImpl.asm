# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105773a0 (World_HasFloorFeaturesWorldPosImpl)
Paired Ghidra pseudocode: 105773A0_World_HasFloorFeaturesWorldPosImpl.c
Window: [0x105773a0, 0x10577400) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105773a0: 55 8b ec 83 e4 f0 83 ec 10 83 7d 14 04 75 3f f3
105773b0: 0f 10 4d 10 f3 0f 10 45 08 f3 0f 11 4c 24 08 f3
105773c0: 0f 10 4d 0c f3 0f 11 44 24 0c f3 0f 11 4c 24 04
105773d0: f3 0f 11 04 24 0f 28 04 24 8d 04 24 50 0f 29 44
105773e0: 24 04 e8 59 00 dd ff 83 c4 04 8b e5 5d c3 32 c0
105773f0: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105773a0 <.text+0x5763a0>:
105773a0:	55                                              	push   ebp
105773a1:	8b ec                                           	mov    ebp,esp
105773a3:	83 e4 f0                                        	and    esp,0xfffffff0
105773a6:	83 ec 10                                        	sub    esp,0x10
105773a9:	83 7d 14 04                                     	cmp    DWORD PTR [ebp+0x14],0x4
105773ad:	75 3f                                           	jne    0x105773ee
105773af:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
105773b4:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
105773b9:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
105773bf:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
105773c4:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
105773ca:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
105773d0:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
105773d5:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
105773d9:	8d 04 24                                        	lea    eax,[esp]
105773dc:	50                                              	push   eax
105773dd:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
105773e2:	e8 59 00 dd ff                                  	call   0x10347440
105773e7:	83 c4 04                                        	add    esp,0x4
105773ea:	8b e5                                           	mov    esp,ebp
105773ec:	5d                                              	pop    ebp
105773ed:	c3                                              	ret
105773ee:	32 c0                                           	xor    al,al
105773f0:	8b e5                                           	mov    esp,ebp
105773f2:	5d                                              	pop    ebp
105773f3:	c3                                              	ret
105773f4:	cc                                              	int3
105773f5:	cc                                              	int3
105773f6:	cc                                              	int3
105773f7:	cc                                              	int3
105773f8:	cc                                              	int3
105773f9:	cc                                              	int3
105773fa:	cc                                              	int3
105773fb:	cc                                              	int3
105773fc:	cc                                              	int3
105773fd:	cc                                              	int3
105773fe:	cc                                              	int3
105773ff:	cc                                              	int3
