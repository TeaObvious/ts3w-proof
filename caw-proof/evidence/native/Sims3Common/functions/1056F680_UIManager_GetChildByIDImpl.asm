# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f680 (UIManager_GetChildByIDImpl)
Paired Ghidra pseudocode: 1056F680_UIManager_GetChildByIDImpl.c
Window: [0x1056f680, 0x1056f690) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f680: e9 4b d4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f680 <.text+0x56e680>:
1056f680:	e9 4b d4 ff ff                                  	jmp    0x1056cad0
1056f685:	cc                                              	int3
1056f686:	cc                                              	int3
1056f687:	cc                                              	int3
1056f688:	cc                                              	int3
1056f689:	cc                                              	int3
1056f68a:	cc                                              	int3
1056f68b:	cc                                              	int3
1056f68c:	cc                                              	int3
1056f68d:	cc                                              	int3
1056f68e:	cc                                              	int3
1056f68f:	cc                                              	int3
