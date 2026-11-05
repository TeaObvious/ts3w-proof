# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cfd0 (SacsWrap_NextStateNode_GetNextState)
Paired Ghidra pseudocode: 1098CFD0_SacsWrap_NextStateNode_GetNextState.c
Window: [0x1098cfd0, 0x1098cfe0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cfe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cfd0: 8b 44 24 04 85 c0 74 04 8b 40 30 c3 33 c0 c3 cc

LINEAR DISASSEMBLY
1098cfd0 <.text+0x98bfd0>:
1098cfd0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098cfd4:	85 c0                                           	test   eax,eax
1098cfd6:	74 04                                           	je     0x1098cfdc
1098cfd8:	8b 40 30                                        	mov    eax,DWORD PTR [eax+0x30]
1098cfdb:	c3                                              	ret
1098cfdc:	33 c0                                           	xor    eax,eax
1098cfde:	c3                                              	ret
1098cfdf:	cc                                              	int3
