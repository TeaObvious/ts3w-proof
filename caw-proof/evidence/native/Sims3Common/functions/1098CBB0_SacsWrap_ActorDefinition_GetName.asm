# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cbb0 (SacsWrap_ActorDefinition_GetName)
Paired Ghidra pseudocode: 1098CBB0_SacsWrap_ActorDefinition_GetName.c
Window: [0x1098cbb0, 0x1098cbc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cbc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cbb0: 8b 4c 24 04 85 c9 74 05 e9 f3 1f c6 ff 33 c0 c3

LINEAR DISASSEMBLY
1098cbb0 <.text+0x98bbb0>:
1098cbb0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cbb4:	85 c9                                           	test   ecx,ecx
1098cbb6:	74 05                                           	je     0x1098cbbd
1098cbb8:	e9 f3 1f c6 ff                                  	jmp    0x105eebb0
1098cbbd:	33 c0                                           	xor    eax,eax
1098cbbf:	c3                                              	ret
