# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536220 (LookAt_GetAttenuatorYawImpl)
Paired Ghidra pseudocode: 10536220_LookAt_GetAttenuatorYawImpl.c
Window: [0x10536220, 0x10536230) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536220: e9 bb fb ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536220 <.text+0x535220>:
10536220:	e9 bb fb ff ff                                  	jmp    0x10535de0
10536225:	cc                                              	int3
10536226:	cc                                              	int3
10536227:	cc                                              	int3
10536228:	cc                                              	int3
10536229:	cc                                              	int3
1053622a:	cc                                              	int3
1053622b:	cc                                              	int3
1053622c:	cc                                              	int3
1053622d:	cc                                              	int3
1053622e:	cc                                              	int3
1053622f:	cc                                              	int3
