# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cba0 (SacsWrap_NextStateNode_SetNextState)
Paired Ghidra pseudocode: 1098CBA0_SacsWrap_NextStateNode_SetNextState.c
Window: [0x1098cba0, 0x1098cbb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cbb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cba0: 8b 44 24 04 85 c0 74 07 8b 4c 24 08 89 48 30 c3

LINEAR DISASSEMBLY
1098cba0 <.text+0x98bba0>:
1098cba0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098cba4:	85 c0                                           	test   eax,eax
1098cba6:	74 07                                           	je     0x1098cbaf
1098cba8:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098cbac:	89 48 30                                        	mov    DWORD PTR [eax+0x30],ecx
1098cbaf:	c3                                              	ret
