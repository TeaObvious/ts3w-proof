# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10574b10 (UIManager_GetStringPropertyImpl)
Paired Ghidra pseudocode: 10574B10_UIManager_GetStringPropertyImpl.c
Window: [0x10574b10, 0x10574b20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10574b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10574b10: e9 9b d4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10574b10 <.text+0x573b10>:
10574b10:	e9 9b d4 ff ff                                  	jmp    0x10571fb0
10574b15:	cc                                              	int3
10574b16:	cc                                              	int3
10574b17:	cc                                              	int3
10574b18:	cc                                              	int3
10574b19:	cc                                              	int3
10574b1a:	cc                                              	int3
10574b1b:	cc                                              	int3
10574b1c:	cc                                              	int3
10574b1d:	cc                                              	int3
10574b1e:	cc                                              	int3
10574b1f:	cc                                              	int3
