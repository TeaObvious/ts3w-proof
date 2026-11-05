# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fb60 (UIManager_UpdateResolutionImpl)
Paired Ghidra pseudocode: 1056FB60_UIManager_UpdateResolutionImpl.c
Window: [0x1056fb60, 0x1056fb70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fb70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fb60: e9 6b f7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fb60 <.text+0x56eb60>:
1056fb60:	e9 6b f7 ff ff                                  	jmp    0x1056f2d0
1056fb65:	cc                                              	int3
1056fb66:	cc                                              	int3
1056fb67:	cc                                              	int3
1056fb68:	cc                                              	int3
1056fb69:	cc                                              	int3
1056fb6a:	cc                                              	int3
1056fb6b:	cc                                              	int3
1056fb6c:	cc                                              	int3
1056fb6d:	cc                                              	int3
1056fb6e:	cc                                              	int3
1056fb6f:	cc                                              	int3
