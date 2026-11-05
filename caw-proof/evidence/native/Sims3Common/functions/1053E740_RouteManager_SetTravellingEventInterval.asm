# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053e740 (RouteManager_SetTravellingEventInterval)
Paired Ghidra pseudocode: 1053E740_RouteManager_SetTravellingEventInterval.c
Window: [0x1053e740, 0x1053e7f0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053e7f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053e740: e8 5b ba 1e 00 85 c0 74 36 8b 4c 24 08 8b 54 24
1053e750: 04 51 52 8b c8 e8 56 c4 1e 00 85 c0 74 21 8b 0d
1053e760: 78 d9 c8 10 51 8b c8 e8 34 86 1e 00 85 c0 74 0f
1053e770: d9 44 24 0c 51 8b c8 d9 1c 24 e8 41 63 20 00 c3
1053e780: 0f 57 c9 f3 0f 10 44 24 0c 0f 2f c8 77 0d f3 0f
1053e790: 10 0d d4 b0 ac 10 0f 2f c1 76 06 f3 0f 11 4c 24
1053e7a0: 0c e8 fa b9 1e 00 85 c0 74 3f 8b 4c 24 08 8b 54
1053e7b0: 24 04 51 52 8b c8 e8 f5 c3 1e 00 85 c0 74 2a 8b
1053e7c0: 0d 78 d9 c8 10 51 8b c8 e8 d3 85 1e 00 85 c0 74
1053e7d0: 18 8b 80 0c 01 00 00 85 c0 74 0e f3 0f 10 44 24
1053e7e0: 0c f3 0f 11 80 b0 00 00 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053e740 <.text+0x53d740>:
1053e740:	e8 5b ba 1e 00                                  	call   0x1072a1a0
1053e745:	85 c0                                           	test   eax,eax
1053e747:	74 36                                           	je     0x1053e77f
1053e749:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053e74d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053e751:	51                                              	push   ecx
1053e752:	52                                              	push   edx
1053e753:	8b c8                                           	mov    ecx,eax
1053e755:	e8 56 c4 1e 00                                  	call   0x1072abb0
1053e75a:	85 c0                                           	test   eax,eax
1053e75c:	74 21                                           	je     0x1053e77f
1053e75e:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
1053e764:	51                                              	push   ecx
1053e765:	8b c8                                           	mov    ecx,eax
1053e767:	e8 34 86 1e 00                                  	call   0x10726da0
1053e76c:	85 c0                                           	test   eax,eax
1053e76e:	74 0f                                           	je     0x1053e77f
1053e770:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1053e774:	51                                              	push   ecx
1053e775:	8b c8                                           	mov    ecx,eax
1053e777:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053e77a:	e8 41 63 20 00                                  	call   0x10744ac0
1053e77f:	c3                                              	ret
1053e780:	0f 57 c9                                        	xorps  xmm1,xmm1
1053e783:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
1053e789:	0f 2f c8                                        	comiss xmm1,xmm0
1053e78c:	77 0d                                           	ja     0x1053e79b
1053e78e:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
1053e796:	0f 2f c1                                        	comiss xmm0,xmm1
1053e799:	76 06                                           	jbe    0x1053e7a1
1053e79b:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1053e7a1:	e8 fa b9 1e 00                                  	call   0x1072a1a0
1053e7a6:	85 c0                                           	test   eax,eax
1053e7a8:	74 3f                                           	je     0x1053e7e9
1053e7aa:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053e7ae:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053e7b2:	51                                              	push   ecx
1053e7b3:	52                                              	push   edx
1053e7b4:	8b c8                                           	mov    ecx,eax
1053e7b6:	e8 f5 c3 1e 00                                  	call   0x1072abb0
1053e7bb:	85 c0                                           	test   eax,eax
1053e7bd:	74 2a                                           	je     0x1053e7e9
1053e7bf:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
1053e7c5:	51                                              	push   ecx
1053e7c6:	8b c8                                           	mov    ecx,eax
1053e7c8:	e8 d3 85 1e 00                                  	call   0x10726da0
1053e7cd:	85 c0                                           	test   eax,eax
1053e7cf:	74 18                                           	je     0x1053e7e9
1053e7d1:	8b 80 0c 01 00 00                               	mov    eax,DWORD PTR [eax+0x10c]
1053e7d7:	85 c0                                           	test   eax,eax
1053e7d9:	74 0e                                           	je     0x1053e7e9
1053e7db:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
1053e7e1:	f3 0f 11 80 b0 00 00 00                         	movss  DWORD PTR [eax+0xb0],xmm0
1053e7e9:	c3                                              	ret
1053e7ea:	cc                                              	int3
1053e7eb:	cc                                              	int3
1053e7ec:	cc                                              	int3
1053e7ed:	cc                                              	int3
1053e7ee:	cc                                              	int3
1053e7ef:	cc                                              	int3
