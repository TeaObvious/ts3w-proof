# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986860 (LotWrap_GetCenterPos)
Paired Ghidra pseudocode: 10986860_LotWrap_GetCenterPos.c
Window: [0x10986860, 0x109868d0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x109868d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986860: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 20 85 c9 74 53
10986870: 8d 04 24 50 e8 87 47 6f ff 0f 28 04 24 8b 45 0c
10986880: 0f 29 04 24 f3 0f 10 0c 24 0f 29 44 24 10 f3 0f
10986890: 11 0c 24 f3 0f 10 4c 24 14 8b 0c 24 0f 29 44 24
109868a0: 10 f3 0f 10 44 24 18 89 08 f3 0f 11 4c 24 04 8b
109868b0: 54 24 04 f3 0f 11 44 24 08 8b 4c 24 08 89 50 04
109868c0: 89 48 08 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986860 <.text+0x985860>:
10986860:	55                                              	push   ebp
10986861:	8b ec                                           	mov    ebp,esp
10986863:	83 e4 f0                                        	and    esp,0xfffffff0
10986866:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10986869:	83 ec 20                                        	sub    esp,0x20
1098686c:	85 c9                                           	test   ecx,ecx
1098686e:	74 53                                           	je     0x109868c3
10986870:	8d 04 24                                        	lea    eax,[esp]
10986873:	50                                              	push   eax
10986874:	e8 87 47 6f ff                                  	call   0x1007b000
10986879:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1098687d:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10986880:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10986884:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
10986889:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098688e:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
10986893:	f3 0f 10 4c 24 14                               	movss  xmm1,DWORD PTR [esp+0x14]
10986899:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098689c:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
109868a1:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
109868a7:	89 08                                           	mov    DWORD PTR [eax],ecx
109868a9:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
109868af:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
109868b3:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
109868b9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
109868bd:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
109868c0:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
109868c3:	8b e5                                           	mov    esp,ebp
109868c5:	5d                                              	pop    ebp
109868c6:	c3                                              	ret
109868c7:	cc                                              	int3
109868c8:	cc                                              	int3
109868c9:	cc                                              	int3
109868ca:	cc                                              	int3
109868cb:	cc                                              	int3
109868cc:	cc                                              	int3
109868cd:	cc                                              	int3
109868ce:	cc                                              	int3
109868cf:	cc                                              	int3
