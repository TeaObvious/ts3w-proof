# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995ba0 (TrackMask_GetVertexAnimBlendWeight)
Paired Ghidra pseudocode: 10995BA0_TrackMask_GetVertexAnimBlendWeight.c
Window: [0x10995ba0, 0x10995bb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995ba0: 8b 4c 24 04 e9 e7 f2 fc ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995ba0 <.text+0x994ba0>:
10995ba0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10995ba4:	e9 e7 f2 fc ff                                  	jmp    0x10964e90
10995ba9:	cc                                              	int3
10995baa:	cc                                              	int3
10995bab:	cc                                              	int3
10995bac:	cc                                              	int3
10995bad:	cc                                              	int3
10995bae:	cc                                              	int3
10995baf:	cc                                              	int3
