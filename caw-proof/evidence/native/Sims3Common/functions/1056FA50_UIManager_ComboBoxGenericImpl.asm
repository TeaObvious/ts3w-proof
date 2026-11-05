# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fa50 (UIManager_ComboBoxGenericImpl)
Paired Ghidra pseudocode: 1056FA50_UIManager_ComboBoxGenericImpl.c
Window: [0x1056fa50, 0x1056fa60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fa60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fa50: e9 0b f1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fa50 <.text+0x56ea50>:
1056fa50:	e9 0b f1 ff ff                                  	jmp    0x1056eb60
1056fa55:	cc                                              	int3
1056fa56:	cc                                              	int3
1056fa57:	cc                                              	int3
1056fa58:	cc                                              	int3
1056fa59:	cc                                              	int3
1056fa5a:	cc                                              	int3
1056fa5b:	cc                                              	int3
1056fa5c:	cc                                              	int3
1056fa5d:	cc                                              	int3
1056fa5e:	cc                                              	int3
1056fa5f:	cc                                              	int3
