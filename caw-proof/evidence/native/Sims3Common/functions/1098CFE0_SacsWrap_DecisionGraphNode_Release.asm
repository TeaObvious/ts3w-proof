# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cfe0 (SacsWrap_DecisionGraphNode_Release)
Paired Ghidra pseudocode: 1098CFE0_SacsWrap_DecisionGraphNode_Release.c
Window: [0x1098cfe0, 0x1098cff0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cfe0: 8b 4c 24 04 85 c9 74 07 8b 01 8b 50 04 ff e2 c3

LINEAR DISASSEMBLY
1098cfe0 <.text+0x98bfe0>:
1098cfe0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cfe4:	85 c9                                           	test   ecx,ecx
1098cfe6:	74 07                                           	je     0x1098cfef
1098cfe8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098cfea:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098cfed:	ff e2                                           	jmp    edx
1098cfef:	c3                                              	ret
