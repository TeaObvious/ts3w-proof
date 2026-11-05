# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10574b20 (UIManager_GridGetCellTextValueImpl)
Paired Ghidra pseudocode: 10574B20_UIManager_GridGetCellTextValueImpl.c
Window: [0x10574b20, 0x10574b30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10574b30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10574b20: e9 4b d6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10574b20 <.text+0x573b20>:
10574b20:	e9 4b d6 ff ff                                  	jmp    0x10572170
10574b25:	cc                                              	int3
10574b26:	cc                                              	int3
10574b27:	cc                                              	int3
10574b28:	cc                                              	int3
10574b29:	cc                                              	int3
10574b2a:	cc                                              	int3
10574b2b:	cc                                              	int3
10574b2c:	cc                                              	int3
10574b2d:	cc                                              	int3
10574b2e:	cc                                              	int3
10574b2f:	cc                                              	int3
