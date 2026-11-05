# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10574b90 (UIManager_GetWorldNameMetadataImpl)
Paired Ghidra pseudocode: 10574B90_UIManager_GetWorldNameMetadataImpl.c
Window: [0x10574b90, 0x10574ba0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10574ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10574b90: e9 7b dc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10574b90 <.text+0x573b90>:
10574b90:	e9 7b dc ff ff                                  	jmp    0x10572810
10574b95:	cc                                              	int3
10574b96:	cc                                              	int3
10574b97:	cc                                              	int3
10574b98:	cc                                              	int3
10574b99:	cc                                              	int3
10574b9a:	cc                                              	int3
10574b9b:	cc                                              	int3
10574b9c:	cc                                              	int3
10574b9d:	cc                                              	int3
10574b9e:	cc                                              	int3
10574b9f:	cc                                              	int3
