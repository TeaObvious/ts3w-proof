# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057aeb0 (World_GetUpdateLightRigsImpl)
Paired Ghidra pseudocode: 1057AEB0_World_GetUpdateLightRigsImpl.c
Window: [0x1057aeb0, 0x1057aec0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057aec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057aeb0: 8b 0d c4 00 c7 10 e9 25 86 cb ff cc cc cc cc cc

LINEAR DISASSEMBLY
1057aeb0 <.text+0x579eb0>:
1057aeb0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057aeb6:	e9 25 86 cb ff                                  	jmp    0x102334e0
1057aebb:	cc                                              	int3
1057aebc:	cc                                              	int3
1057aebd:	cc                                              	int3
1057aebe:	cc                                              	int3
1057aebf:	cc                                              	int3
