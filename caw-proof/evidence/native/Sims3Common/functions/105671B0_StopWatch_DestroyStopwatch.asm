# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105671b0 (StopWatch_DestroyStopwatch)
Paired Ghidra pseudocode: 105671B0_StopWatch_DestroyStopwatch.c
Window: [0x105671b0, 0x10567200) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105671b0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
105671c0: 10 75 20 e8 58 3f ff ff 8b 10 8b c8 8b 82 d8 00
105671d0: 00 00 56 ff d0 85 c0 74 0a 5e 89 44 24 04 e9 ad
105671e0: 1c 3b 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc
105671f0: 8b 44 24 04 c7 00 08 00 c3 10 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
105671b0 <.text+0x5661b0>:
105671b0:	56                                              	push   esi
105671b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
105671b5:	8b c6                                           	mov    eax,esi
105671b7:	25 00 00 00 ff                                  	and    eax,0xff000000
105671bc:	3d 00 00 00 10                                  	cmp    eax,0x10000000
105671c1:	75 20                                           	jne    0x105671e3
105671c3:	e8 58 3f ff ff                                  	call   0x1055b120
105671c8:	8b 10                                           	mov    edx,DWORD PTR [eax]
105671ca:	8b c8                                           	mov    ecx,eax
105671cc:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
105671d2:	56                                              	push   esi
105671d3:	ff d0                                           	call   eax
105671d5:	85 c0                                           	test   eax,eax
105671d7:	74 0a                                           	je     0x105671e3
105671d9:	5e                                              	pop    esi
105671da:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
105671de:	e9 ad 1c 3b 00                                  	jmp    0x10918e90
105671e3:	5e                                              	pop    esi
105671e4:	c3                                              	ret
105671e5:	cc                                              	int3
105671e6:	cc                                              	int3
105671e7:	cc                                              	int3
105671e8:	cc                                              	int3
105671e9:	cc                                              	int3
105671ea:	cc                                              	int3
105671eb:	cc                                              	int3
105671ec:	cc                                              	int3
105671ed:	cc                                              	int3
105671ee:	cc                                              	int3
105671ef:	cc                                              	int3
105671f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105671f4:	c7 00 08 00 c3 10                               	mov    DWORD PTR [eax],0x10c30008
105671fa:	c2 04 00                                        	ret    0x4
105671fd:	cc                                              	int3
105671fe:	cc                                              	int3
105671ff:	cc                                              	int3
