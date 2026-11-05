# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f830 (UIManager_RegisterWindowCursorImpl)
Paired Ghidra pseudocode: 1056F830_UIManager_RegisterWindowCursorImpl.c
Window: [0x1056f830, 0x1056f840) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f830: e9 8b d9 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f830 <.text+0x56e830>:
1056f830:	e9 8b d9 ff ff                                  	jmp    0x1056d1c0
1056f835:	cc                                              	int3
1056f836:	cc                                              	int3
1056f837:	cc                                              	int3
1056f838:	cc                                              	int3
1056f839:	cc                                              	int3
1056f83a:	cc                                              	int3
1056f83b:	cc                                              	int3
1056f83c:	cc                                              	int3
1056f83d:	cc                                              	int3
1056f83e:	cc                                              	int3
1056f83f:	cc                                              	int3
