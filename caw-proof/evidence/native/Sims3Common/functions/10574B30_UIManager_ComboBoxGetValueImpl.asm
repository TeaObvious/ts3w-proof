# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10574b30 (UIManager_ComboBoxGetValueImpl)
Paired Ghidra pseudocode: 10574B30_UIManager_ComboBoxGetValueImpl.c
Window: [0x10574b30, 0x10574b40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10574b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10574b30: e9 8b d7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10574b30 <.text+0x573b30>:
10574b30:	e9 8b d7 ff ff                                  	jmp    0x105722c0
10574b35:	cc                                              	int3
10574b36:	cc                                              	int3
10574b37:	cc                                              	int3
10574b38:	cc                                              	int3
10574b39:	cc                                              	int3
10574b3a:	cc                                              	int3
10574b3b:	cc                                              	int3
10574b3c:	cc                                              	int3
10574b3d:	cc                                              	int3
10574b3e:	cc                                              	int3
10574b3f:	cc                                              	int3
