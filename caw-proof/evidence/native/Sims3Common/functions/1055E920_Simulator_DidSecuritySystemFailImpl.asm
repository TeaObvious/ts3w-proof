# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e920 (Simulator_DidSecuritySystemFailImpl)
Paired Ghidra pseudocode: 1055E920_Simulator_DidSecuritySystemFailImpl.c
Window: [0x1055e920, 0x1055e930) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e920: a0 f4 af c7 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055e920 <.text+0x55d920>:
1055e920:	a0 f4 af c7 10                                  	mov    al,ds:0x10c7aff4
1055e925:	c3                                              	ret
1055e926:	cc                                              	int3
1055e927:	cc                                              	int3
1055e928:	cc                                              	int3
1055e929:	cc                                              	int3
1055e92a:	cc                                              	int3
1055e92b:	cc                                              	int3
1055e92c:	cc                                              	int3
1055e92d:	cc                                              	int3
1055e92e:	cc                                              	int3
1055e92f:	cc                                              	int3
