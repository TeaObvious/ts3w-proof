# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056faa0 (UIManager_FrameDrawableGenericImpl)
Paired Ghidra pseudocode: 1056FAA0_UIManager_FrameDrawableGenericImpl.c
Window: [0x1056faa0, 0x1056fab0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056faa0: e9 0b f7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056faa0 <.text+0x56eaa0>:
1056faa0:	e9 0b f7 ff ff                                  	jmp    0x1056f1b0
1056faa5:	cc                                              	int3
1056faa6:	cc                                              	int3
1056faa7:	cc                                              	int3
1056faa8:	cc                                              	int3
1056faa9:	cc                                              	int3
1056faaa:	cc                                              	int3
1056faab:	cc                                              	int3
1056faac:	cc                                              	int3
1056faad:	cc                                              	int3
1056faae:	cc                                              	int3
1056faaf:	cc                                              	int3
