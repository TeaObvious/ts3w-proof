# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cb50 (SacsWrap_State_GetDecisionGraph)
Paired Ghidra pseudocode: 1098CB50_SacsWrap_State_GetDecisionGraph.c
Window: [0x1098cb50, 0x1098cb60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cb60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cb50: 8b 44 24 04 85 c0 74 04 8b 40 38 c3 33 c0 c3 cc

LINEAR DISASSEMBLY
1098cb50 <.text+0x98bb50>:
1098cb50:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098cb54:	85 c0                                           	test   eax,eax
1098cb56:	74 04                                           	je     0x1098cb5c
1098cb58:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
1098cb5b:	c3                                              	ret
1098cb5c:	33 c0                                           	xor    eax,eax
1098cb5e:	c3                                              	ret
1098cb5f:	cc                                              	int3
