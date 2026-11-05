# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cea0 (SacsWrap_DecisionGraphNode_Clear)
Paired Ghidra pseudocode: 1098CEA0_SacsWrap_DecisionGraphNode_Clear.c
Window: [0x1098cea0, 0x1098ceb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ceb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cea0: 8b 4c 24 04 85 c9 74 07 8b 01 8b 50 1c ff e2 c3

LINEAR DISASSEMBLY
1098cea0 <.text+0x98bea0>:
1098cea0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cea4:	85 c9                                           	test   ecx,ecx
1098cea6:	74 07                                           	je     0x1098ceaf
1098cea8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098ceaa:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
1098cead:	ff e2                                           	jmp    edx
1098ceaf:	c3                                              	ret
