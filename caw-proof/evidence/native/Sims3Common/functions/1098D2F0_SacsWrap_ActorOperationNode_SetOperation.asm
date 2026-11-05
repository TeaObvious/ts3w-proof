# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d2f0 (SacsWrap_ActorOperationNode_SetOperation)
Paired Ghidra pseudocode: 1098D2F0_SacsWrap_ActorOperationNode_SetOperation.c
Window: [0x1098d2f0, 0x1098d300) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d2f0: 8b 44 24 04 85 c0 74 07 8b 4c 24 08 89 48 54 c3

LINEAR DISASSEMBLY
1098d2f0 <.text+0x98c2f0>:
1098d2f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d2f4:	85 c0                                           	test   eax,eax
1098d2f6:	74 07                                           	je     0x1098d2ff
1098d2f8:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098d2fc:	89 48 54                                        	mov    DWORD PTR [eax+0x54],ecx
1098d2ff:	c3                                              	ret
