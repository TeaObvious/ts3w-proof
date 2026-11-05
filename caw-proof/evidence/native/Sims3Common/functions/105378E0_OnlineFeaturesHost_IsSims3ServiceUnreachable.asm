# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105378e0 (OnlineFeaturesHost_IsSims3ServiceUnreachable)
Paired Ghidra pseudocode: 105378E0_OnlineFeaturesHost_IsSims3ServiceUnreachable.c
Window: [0x105378e0, 0x10537900) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105378e0: a1 dc 88 c7 10 85 c0 74 07 8d 48 f8 85 c9 75 03
105378f0: 32 c0 c3 e9 18 b8 13 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105378e0 <.text+0x5368e0>:
105378e0:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
105378e5:	85 c0                                           	test   eax,eax
105378e7:	74 07                                           	je     0x105378f0
105378e9:	8d 48 f8                                        	lea    ecx,[eax-0x8]
105378ec:	85 c9                                           	test   ecx,ecx
105378ee:	75 03                                           	jne    0x105378f3
105378f0:	32 c0                                           	xor    al,al
105378f2:	c3                                              	ret
105378f3:	e9 18 b8 13 00                                  	jmp    0x10673110
105378f8:	cc                                              	int3
105378f9:	cc                                              	int3
105378fa:	cc                                              	int3
105378fb:	cc                                              	int3
105378fc:	cc                                              	int3
105378fd:	cc                                              	int3
105378fe:	cc                                              	int3
105378ff:	cc                                              	int3
