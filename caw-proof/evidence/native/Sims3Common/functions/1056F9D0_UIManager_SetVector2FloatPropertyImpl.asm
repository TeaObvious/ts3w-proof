# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f9d0 (UIManager_SetVector2FloatPropertyImpl)
Paired Ghidra pseudocode: 1056F9D0_UIManager_SetVector2FloatPropertyImpl.c
Window: [0x1056f9d0, 0x1056f9e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f9e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f9d0: e9 6b e0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f9d0 <.text+0x56e9d0>:
1056f9d0:	e9 6b e0 ff ff                                  	jmp    0x1056da40
1056f9d5:	cc                                              	int3
1056f9d6:	cc                                              	int3
1056f9d7:	cc                                              	int3
1056f9d8:	cc                                              	int3
1056f9d9:	cc                                              	int3
1056f9da:	cc                                              	int3
1056f9db:	cc                                              	int3
1056f9dc:	cc                                              	int3
1056f9dd:	cc                                              	int3
1056f9de:	cc                                              	int3
1056f9df:	cc                                              	int3
