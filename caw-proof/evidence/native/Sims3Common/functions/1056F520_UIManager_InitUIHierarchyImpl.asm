# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f520 (UIManager_InitUIHierarchyImpl)
Paired Ghidra pseudocode: 1056F520_UIManager_InitUIHierarchyImpl.c
Window: [0x1056f520, 0x1056f530) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f520: e9 ab cf ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f520 <.text+0x56e520>:
1056f520:	e9 ab cf ff ff                                  	jmp    0x1056c4d0
1056f525:	cc                                              	int3
1056f526:	cc                                              	int3
1056f527:	cc                                              	int3
1056f528:	cc                                              	int3
1056f529:	cc                                              	int3
1056f52a:	cc                                              	int3
1056f52b:	cc                                              	int3
1056f52c:	cc                                              	int3
1056f52d:	cc                                              	int3
1056f52e:	cc                                              	int3
1056f52f:	cc                                              	int3
