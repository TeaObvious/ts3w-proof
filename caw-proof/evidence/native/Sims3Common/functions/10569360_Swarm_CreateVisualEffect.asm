# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569360 (Swarm_CreateVisualEffect)
Paired Ghidra pseudocode: 10569360_Swarm_CreateVisualEffect.c
Window: [0x10569360, 0x10569370) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569370
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569360: e9 cb fb ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569360 <.text+0x568360>:
10569360:	e9 cb fb ff ff                                  	jmp    0x10568f30
10569365:	cc                                              	int3
10569366:	cc                                              	int3
10569367:	cc                                              	int3
10569368:	cc                                              	int3
10569369:	cc                                              	int3
1056936a:	cc                                              	int3
1056936b:	cc                                              	int3
1056936c:	cc                                              	int3
1056936d:	cc                                              	int3
1056936e:	cc                                              	int3
1056936f:	cc                                              	int3
