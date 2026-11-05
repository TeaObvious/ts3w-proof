# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cb10 (SacsWrap_State_GetProperties)
Paired Ghidra pseudocode: 1098CB10_SacsWrap_State_GetProperties.c
Window: [0x1098cb10, 0x1098cb20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cb20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cb10: 8b 4c 24 04 33 c0 85 c9 74 05 e9 91 1e c6 ff c3

LINEAR DISASSEMBLY
1098cb10 <.text+0x98bb10>:
1098cb10:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cb14:	33 c0                                           	xor    eax,eax
1098cb16:	85 c9                                           	test   ecx,ecx
1098cb18:	74 05                                           	je     0x1098cb1f
1098cb1a:	e9 91 1e c6 ff                                  	jmp    0x105ee9b0
1098cb1f:	c3                                              	ret
