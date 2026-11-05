# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986570 (LotWrap_UsedForBuild)
Paired Ghidra pseudocode: 10986570_LotWrap_UsedForBuild.c
Window: [0x10986570, 0x10986590) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986570: 8b 44 24 04 85 c0 74 0a 8b 80 30 01 00 00 83 e0
10986580: 01 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986570 <.text+0x985570>:
10986570:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986574:	85 c0                                           	test   eax,eax
10986576:	74 0a                                           	je     0x10986582
10986578:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1098657e:	83 e0 01                                        	and    eax,0x1
10986581:	c3                                              	ret
10986582:	33 c0                                           	xor    eax,eax
10986584:	c3                                              	ret
10986585:	cc                                              	int3
10986586:	cc                                              	int3
10986587:	cc                                              	int3
10986588:	cc                                              	int3
10986589:	cc                                              	int3
1098658a:	cc                                              	int3
1098658b:	cc                                              	int3
1098658c:	cc                                              	int3
1098658d:	cc                                              	int3
1098658e:	cc                                              	int3
1098658f:	cc                                              	int3
