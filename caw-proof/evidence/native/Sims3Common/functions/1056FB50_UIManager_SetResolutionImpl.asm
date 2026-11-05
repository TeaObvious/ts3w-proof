# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fb50 (UIManager_SetResolutionImpl)
Paired Ghidra pseudocode: 1056FB50_UIManager_SetResolutionImpl.c
Window: [0x1056fb50, 0x1056fb60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fb60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fb50: e9 eb f6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fb50 <.text+0x56eb50>:
1056fb50:	e9 eb f6 ff ff                                  	jmp    0x1056f240
1056fb55:	cc                                              	int3
1056fb56:	cc                                              	int3
1056fb57:	cc                                              	int3
1056fb58:	cc                                              	int3
1056fb59:	cc                                              	int3
1056fb5a:	cc                                              	int3
1056fb5b:	cc                                              	int3
1056fb5c:	cc                                              	int3
1056fb5d:	cc                                              	int3
1056fb5e:	cc                                              	int3
1056fb5f:	cc                                              	int3
