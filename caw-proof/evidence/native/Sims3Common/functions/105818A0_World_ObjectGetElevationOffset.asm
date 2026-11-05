# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105818a0 (World_ObjectGetElevationOffset)
Paired Ghidra pseudocode: 105818A0_World_ObjectGetElevationOffset.c
Window: [0x105818a0, 0x105818f0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x105818f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105818a0: 51 e8 fa 88 1a 00 85 c0 74 36 8b 4c 24 0c 8b 54
105818b0: 24 08 51 52 8b c8 e8 f5 92 1a 00 85 c0 74 21 8b
105818c0: 0d 08 04 c7 10 51 8b c8 e8 d3 54 1a 00 85 c0 74
105818d0: 0f f3 0f 10 40 24 f3 0f 11 04 24 d9 04 24 59 c3
105818e0: 0f 57 c0 f3 0f 11 04 24 d9 04 24 59 c3 cc cc cc

LINEAR DISASSEMBLY
105818a0 <.text+0x5808a0>:
105818a0:	51                                              	push   ecx
105818a1:	e8 fa 88 1a 00                                  	call   0x1072a1a0
105818a6:	85 c0                                           	test   eax,eax
105818a8:	74 36                                           	je     0x105818e0
105818aa:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105818ae:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105818b2:	51                                              	push   ecx
105818b3:	52                                              	push   edx
105818b4:	8b c8                                           	mov    ecx,eax
105818b6:	e8 f5 92 1a 00                                  	call   0x1072abb0
105818bb:	85 c0                                           	test   eax,eax
105818bd:	74 21                                           	je     0x105818e0
105818bf:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
105818c5:	51                                              	push   ecx
105818c6:	8b c8                                           	mov    ecx,eax
105818c8:	e8 d3 54 1a 00                                  	call   0x10726da0
105818cd:	85 c0                                           	test   eax,eax
105818cf:	74 0f                                           	je     0x105818e0
105818d1:	f3 0f 10 40 24                                  	movss  xmm0,DWORD PTR [eax+0x24]
105818d6:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
105818db:	d9 04 24                                        	fld    DWORD PTR [esp]
105818de:	59                                              	pop    ecx
105818df:	c3                                              	ret
105818e0:	0f 57 c0                                        	xorps  xmm0,xmm0
105818e3:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
105818e8:	d9 04 24                                        	fld    DWORD PTR [esp]
105818eb:	59                                              	pop    ecx
105818ec:	c3                                              	ret
105818ed:	cc                                              	int3
105818ee:	cc                                              	int3
105818ef:	cc                                              	int3
