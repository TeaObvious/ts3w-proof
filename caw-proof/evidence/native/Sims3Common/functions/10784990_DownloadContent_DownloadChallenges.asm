# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784990 (DownloadContent_DownloadChallenges)
Paired Ghidra pseudocode: 10784990_DownloadContent_DownloadChallenges.c
Window: [0x10784990, 0x107849b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x107849b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784990: a1 dc 88 c7 10 85 c0 74 0c 8d 48 f8 85 c9 74 05
107849a0: e9 1b 71 ef ff 32 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784990 <.text+0x783990>:
10784990:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
10784995:	85 c0                                           	test   eax,eax
10784997:	74 0c                                           	je     0x107849a5
10784999:	8d 48 f8                                        	lea    ecx,[eax-0x8]
1078499c:	85 c9                                           	test   ecx,ecx
1078499e:	74 05                                           	je     0x107849a5
107849a0:	e9 1b 71 ef ff                                  	jmp    0x1067bac0
107849a5:	32 c0                                           	xor    al,al
107849a7:	c3                                              	ret
107849a8:	cc                                              	int3
107849a9:	cc                                              	int3
107849aa:	cc                                              	int3
107849ab:	cc                                              	int3
107849ac:	cc                                              	int3
107849ad:	cc                                              	int3
107849ae:	cc                                              	int3
107849af:	cc                                              	int3
