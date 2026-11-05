# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f580 (GetAppCommandLine)
Paired Ghidra pseudocode: 1097F580_GetAppCommandLine.c
Window: [0x1097f580, 0x1097f590) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f580: b8 e0 7d cb 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f580 <.text+0x97e580>:
1097f580:	b8 e0 7d cb 10                                  	mov    eax,0x10cb7de0
1097f585:	c3                                              	ret
1097f586:	cc                                              	int3
1097f587:	cc                                              	int3
1097f588:	cc                                              	int3
1097f589:	cc                                              	int3
1097f58a:	cc                                              	int3
1097f58b:	cc                                              	int3
1097f58c:	cc                                              	int3
1097f58d:	cc                                              	int3
1097f58e:	cc                                              	int3
1097f58f:	cc                                              	int3
