# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10574b80 (UIManager_GetWorldMetadataImpl)
Paired Ghidra pseudocode: 10574B80_UIManager_GetWorldMetadataImpl.c
Window: [0x10574b80, 0x10574b90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10574b90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10574b80: e9 8b da ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10574b80 <.text+0x573b80>:
10574b80:	e9 8b da ff ff                                  	jmp    0x10572610
10574b85:	cc                                              	int3
10574b86:	cc                                              	int3
10574b87:	cc                                              	int3
10574b88:	cc                                              	int3
10574b89:	cc                                              	int3
10574b8a:	cc                                              	int3
10574b8b:	cc                                              	int3
10574b8c:	cc                                              	int3
10574b8d:	cc                                              	int3
10574b8e:	cc                                              	int3
10574b8f:	cc                                              	int3
