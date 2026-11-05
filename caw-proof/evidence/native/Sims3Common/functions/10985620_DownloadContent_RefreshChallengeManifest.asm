# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985620 (DownloadContent_RefreshChallengeManifest)
Paired Ghidra pseudocode: 10985620_DownloadContent_RefreshChallengeManifest.c
Window: [0x10985620, 0x10985640) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985620: a1 dc 88 c7 10 85 c0 74 0c 8d 48 f8 85 c9 74 05
10985630: e9 bb df ce ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10985620 <.text+0x984620>:
10985620:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
10985625:	85 c0                                           	test   eax,eax
10985627:	74 0c                                           	je     0x10985635
10985629:	8d 48 f8                                        	lea    ecx,[eax-0x8]
1098562c:	85 c9                                           	test   ecx,ecx
1098562e:	74 05                                           	je     0x10985635
10985630:	e9 bb df ce ff                                  	jmp    0x106735f0
10985635:	c3                                              	ret
10985636:	cc                                              	int3
10985637:	cc                                              	int3
10985638:	cc                                              	int3
10985639:	cc                                              	int3
1098563a:	cc                                              	int3
1098563b:	cc                                              	int3
1098563c:	cc                                              	int3
1098563d:	cc                                              	int3
1098563e:	cc                                              	int3
1098563f:	cc                                              	int3
