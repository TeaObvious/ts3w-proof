# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10a62e50 (EATrace_ShouldLogImpl)
Paired Ghidra pseudocode: 10A62E50_EATrace_ShouldLogImpl.c
Window: [0x10a62e50, 0x10a62e60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10a62e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10a62e50: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10a62e50 <.text+0xa61e50>:
10a62e50:	32 c0                                           	xor    al,al
10a62e52:	c3                                              	ret
10a62e53:	cc                                              	int3
10a62e54:	cc                                              	int3
10a62e55:	cc                                              	int3
10a62e56:	cc                                              	int3
10a62e57:	cc                                              	int3
10a62e58:	cc                                              	int3
10a62e59:	cc                                              	int3
10a62e5a:	cc                                              	int3
10a62e5b:	cc                                              	int3
10a62e5c:	cc                                              	int3
10a62e5d:	cc                                              	int3
10a62e5e:	cc                                              	int3
10a62e5f:	cc                                              	int3
