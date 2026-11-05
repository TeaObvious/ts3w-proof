# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d2c0 (SacsWrap_ActorOperationNode_GetOperation)
Paired Ghidra pseudocode: 1098D2C0_SacsWrap_ActorOperationNode_GetOperation.c
Window: [0x1098d2c0, 0x1098d2d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d2d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d2c0: 8b 44 24 04 85 c0 74 04 8b 40 54 c3 33 c0 c3 cc

LINEAR DISASSEMBLY
1098d2c0 <.text+0x98c2c0>:
1098d2c0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d2c4:	85 c0                                           	test   eax,eax
1098d2c6:	74 04                                           	je     0x1098d2cc
1098d2c8:	8b 40 54                                        	mov    eax,DWORD PTR [eax+0x54]
1098d2cb:	c3                                              	ret
1098d2cc:	33 c0                                           	xor    eax,eax
1098d2ce:	c3                                              	ret
1098d2cf:	cc                                              	int3
