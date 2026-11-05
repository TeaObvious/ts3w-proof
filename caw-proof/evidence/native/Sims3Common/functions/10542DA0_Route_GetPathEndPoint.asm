# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542da0 (Route_GetPathEndPoint)
Paired Ghidra pseudocode: 10542DA0_Route_GetPathEndPoint.c
Window: [0x10542da0, 0x10542db0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542da0: e9 bb ed ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542da0 <.text+0x541da0>:
10542da0:	e9 bb ed ff ff                                  	jmp    0x10541b60
10542da5:	cc                                              	int3
10542da6:	cc                                              	int3
10542da7:	cc                                              	int3
10542da8:	cc                                              	int3
10542da9:	cc                                              	int3
10542daa:	cc                                              	int3
10542dab:	cc                                              	int3
10542dac:	cc                                              	int3
10542dad:	cc                                              	int3
10542dae:	cc                                              	int3
10542daf:	cc                                              	int3
