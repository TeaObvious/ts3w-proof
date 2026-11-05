# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d110 (SacsWrap_AnimationNode_SetTimingPriority)
Paired Ghidra pseudocode: 1098D110_SacsWrap_AnimationNode_SetTimingPriority.c
Window: [0x1098d110, 0x1098d120) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d110: 8b 44 24 04 85 c0 74 07 8b 4c 24 08 89 48 5c c3

LINEAR DISASSEMBLY
1098d110 <.text+0x98c110>:
1098d110:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d114:	85 c0                                           	test   eax,eax
1098d116:	74 07                                           	je     0x1098d11f
1098d118:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098d11c:	89 48 5c                                        	mov    DWORD PTR [eax+0x5c],ecx
1098d11f:	c3                                              	ret
