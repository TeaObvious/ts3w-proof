# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10571d60 (UIManager_InitUserToolHelperImpl)
Paired Ghidra pseudocode: 10571D60_UIManager_InitUserToolHelperImpl.c
Window: [0x10571d60, 0x10571d70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10571d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10571d60: e9 ab f9 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10571d60 <.text+0x570d60>:
10571d60:	e9 ab f9 ff ff                                  	jmp    0x10571710
10571d65:	cc                                              	int3
10571d66:	cc                                              	int3
10571d67:	cc                                              	int3
10571d68:	cc                                              	int3
10571d69:	cc                                              	int3
10571d6a:	cc                                              	int3
10571d6b:	cc                                              	int3
10571d6c:	cc                                              	int3
10571d6d:	cc                                              	int3
10571d6e:	cc                                              	int3
10571d6f:	cc                                              	int3
