# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581e40 (World_SetMapTagStickToScreenBoundsImpl)
Paired Ghidra pseudocode: 10581E40_World_SetMapTagStickToScreenBoundsImpl.c
Window: [0x10581e40, 0x10581e50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581e50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581e40: e9 db e2 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581e40 <.text+0x580e40>:
10581e40:	e9 db e2 ff ff                                  	jmp    0x10580120
10581e45:	cc                                              	int3
10581e46:	cc                                              	int3
10581e47:	cc                                              	int3
10581e48:	cc                                              	int3
10581e49:	cc                                              	int3
10581e4a:	cc                                              	int3
10581e4b:	cc                                              	int3
10581e4c:	cc                                              	int3
10581e4d:	cc                                              	int3
10581e4e:	cc                                              	int3
10581e4f:	cc                                              	int3
