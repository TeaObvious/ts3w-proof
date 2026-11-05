# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784470 (DownloadContent_GenerateGUIDImpl)
Paired Ghidra pseudocode: 10784470_DownloadContent_GenerateGUIDImpl.c
Window: [0x10784470, 0x10784480) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784470: 6a 00 e8 99 f2 e3 ff 83 c4 04 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10784470 <.text+0x783470>:
10784470:	6a 00                                           	push   0x0
10784472:	e8 99 f2 e3 ff                                  	call   0x105c3710
10784477:	83 c4 04                                        	add    esp,0x4
1078447a:	c3                                              	ret
1078447b:	cc                                              	int3
1078447c:	cc                                              	int3
1078447d:	cc                                              	int3
1078447e:	cc                                              	int3
1078447f:	cc                                              	int3
