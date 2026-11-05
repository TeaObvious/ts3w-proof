# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cb00 (SacsWrap_State_ClearTransitions)
Paired Ghidra pseudocode: 1098CB00_SacsWrap_State_ClearTransitions.c
Window: [0x1098cb00, 0x1098cb10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cb10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cb00: 8b 4c 24 04 85 c9 74 05 e9 23 23 c6 ff c3 cc cc

LINEAR DISASSEMBLY
1098cb00 <.text+0x98bb00>:
1098cb00:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cb04:	85 c9                                           	test   ecx,ecx
1098cb06:	74 05                                           	je     0x1098cb0d
1098cb08:	e9 23 23 c6 ff                                  	jmp    0x105eee30
1098cb0d:	c3                                              	ret
1098cb0e:	cc                                              	int3
1098cb0f:	cc                                              	int3
