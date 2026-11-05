# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fd20 (SharedInitWrap_AddGimexSupport)
Paired Ghidra pseudocode: 1098FD20_SharedInitWrap_AddGimexSupport.c
Window: [0x1098fd20, 0x1098fd30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fd30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fd20: e9 3b cc c3 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fd20 <.text+0x98ed20>:
1098fd20:	e9 3b cc c3 ff                                  	jmp    0x105cc960
1098fd25:	cc                                              	int3
1098fd26:	cc                                              	int3
1098fd27:	cc                                              	int3
1098fd28:	cc                                              	int3
1098fd29:	cc                                              	int3
1098fd2a:	cc                                              	int3
1098fd2b:	cc                                              	int3
1098fd2c:	cc                                              	int3
1098fd2d:	cc                                              	int3
1098fd2e:	cc                                              	int3
1098fd2f:	cc                                              	int3
