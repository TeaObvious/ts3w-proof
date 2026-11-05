# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107847e0 (DownloadContent_IsCustomContentEnabled)
Paired Ghidra pseudocode: 107847E0_DownloadContent_IsCustomContentEnabled.c
Window: [0x107847e0, 0x10784800) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107847e0: e8 db fc fe ff 85 c0 75 03 32 c0 c3 8a 80 d5 00
107847f0: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
107847e0 <.text+0x7837e0>:
107847e0:	e8 db fc fe ff                                  	call   0x107744c0
107847e5:	85 c0                                           	test   eax,eax
107847e7:	75 03                                           	jne    0x107847ec
107847e9:	32 c0                                           	xor    al,al
107847eb:	c3                                              	ret
107847ec:	8a 80 d5 00 00 00                               	mov    al,BYTE PTR [eax+0xd5]
107847f2:	c3                                              	ret
107847f3:	cc                                              	int3
107847f4:	cc                                              	int3
107847f5:	cc                                              	int3
107847f6:	cc                                              	int3
107847f7:	cc                                              	int3
107847f8:	cc                                              	int3
107847f9:	cc                                              	int3
107847fa:	cc                                              	int3
107847fb:	cc                                              	int3
107847fc:	cc                                              	int3
107847fd:	cc                                              	int3
107847fe:	cc                                              	int3
107847ff:	cc                                              	int3
