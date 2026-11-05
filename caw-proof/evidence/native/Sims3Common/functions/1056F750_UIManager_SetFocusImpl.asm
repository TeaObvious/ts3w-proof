# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f750 (UIManager_SetFocusImpl)
Paired Ghidra pseudocode: 1056F750_UIManager_SetFocusImpl.c
Window: [0x1056f750, 0x1056f760) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f750: e9 cb d7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f750 <.text+0x56e750>:
1056f750:	e9 cb d7 ff ff                                  	jmp    0x1056cf20
1056f755:	cc                                              	int3
1056f756:	cc                                              	int3
1056f757:	cc                                              	int3
1056f758:	cc                                              	int3
1056f759:	cc                                              	int3
1056f75a:	cc                                              	int3
1056f75b:	cc                                              	int3
1056f75c:	cc                                              	int3
1056f75d:	cc                                              	int3
1056f75e:	cc                                              	int3
1056f75f:	cc                                              	int3
