# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fa80 (UIManager_ResetEffectImpl)
Paired Ghidra pseudocode: 1056FA80_UIManager_ResetEffectImpl.c
Window: [0x1056fa80, 0x1056fa90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fa90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fa80: e9 cb f3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fa80 <.text+0x56ea80>:
1056fa80:	e9 cb f3 ff ff                                  	jmp    0x1056ee50
1056fa85:	cc                                              	int3
1056fa86:	cc                                              	int3
1056fa87:	cc                                              	int3
1056fa88:	cc                                              	int3
1056fa89:	cc                                              	int3
1056fa8a:	cc                                              	int3
1056fa8b:	cc                                              	int3
1056fa8c:	cc                                              	int3
1056fa8d:	cc                                              	int3
1056fa8e:	cc                                              	int3
1056fa8f:	cc                                              	int3
