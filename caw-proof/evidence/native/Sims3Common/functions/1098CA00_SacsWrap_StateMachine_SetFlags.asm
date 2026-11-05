# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ca00 (SacsWrap_StateMachine_SetFlags)
Paired Ghidra pseudocode: 1098CA00_SacsWrap_StateMachine_SetFlags.c
Window: [0x1098ca00, 0x1098ca10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ca10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ca00: 8b 44 24 04 85 c0 74 07 8b 4c 24 08 89 48 3c c3

LINEAR DISASSEMBLY
1098ca00 <.text+0x98ba00>:
1098ca00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ca04:	85 c0                                           	test   eax,eax
1098ca06:	74 07                                           	je     0x1098ca0f
1098ca08:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098ca0c:	89 48 3c                                        	mov    DWORD PTR [eax+0x3c],ecx
1098ca0f:	c3                                              	ret
