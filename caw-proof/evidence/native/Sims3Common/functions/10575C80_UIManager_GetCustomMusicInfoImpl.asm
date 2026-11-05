# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575c80 (UIManager_GetCustomMusicInfoImpl)
Paired Ghidra pseudocode: 10575C80_UIManager_GetCustomMusicInfoImpl.c
Window: [0x10575c80, 0x10575c90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575c90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575c80: e9 2b fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10575c80 <.text+0x574c80>:
10575c80:	e9 2b fd ff ff                                  	jmp    0x105759b0
10575c85:	cc                                              	int3
10575c86:	cc                                              	int3
10575c87:	cc                                              	int3
10575c88:	cc                                              	int3
10575c89:	cc                                              	int3
10575c8a:	cc                                              	int3
10575c8b:	cc                                              	int3
10575c8c:	cc                                              	int3
10575c8d:	cc                                              	int3
10575c8e:	cc                                              	int3
10575c8f:	cc                                              	int3
