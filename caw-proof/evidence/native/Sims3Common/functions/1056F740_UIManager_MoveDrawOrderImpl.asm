# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f740 (UIManager_MoveDrawOrderImpl)
Paired Ghidra pseudocode: 1056F740_UIManager_MoveDrawOrderImpl.c
Window: [0x1056f740, 0x1056f750) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f740: e9 5b d7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f740 <.text+0x56e740>:
1056f740:	e9 5b d7 ff ff                                  	jmp    0x1056cea0
1056f745:	cc                                              	int3
1056f746:	cc                                              	int3
1056f747:	cc                                              	int3
1056f748:	cc                                              	int3
1056f749:	cc                                              	int3
1056f74a:	cc                                              	int3
1056f74b:	cc                                              	int3
1056f74c:	cc                                              	int3
1056f74d:	cc                                              	int3
1056f74e:	cc                                              	int3
1056f74f:	cc                                              	int3
