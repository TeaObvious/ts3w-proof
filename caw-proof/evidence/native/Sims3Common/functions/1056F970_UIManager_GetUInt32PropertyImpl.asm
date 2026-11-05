# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f970 (UIManager_GetUInt32PropertyImpl)
Paired Ghidra pseudocode: 1056F970_UIManager_GetUInt32PropertyImpl.c
Window: [0x1056f970, 0x1056f980) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f970: e9 8b db ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f970 <.text+0x56e970>:
1056f970:	e9 8b db ff ff                                  	jmp    0x1056d500
1056f975:	cc                                              	int3
1056f976:	cc                                              	int3
1056f977:	cc                                              	int3
1056f978:	cc                                              	int3
1056f979:	cc                                              	int3
1056f97a:	cc                                              	int3
1056f97b:	cc                                              	int3
1056f97c:	cc                                              	int3
1056f97d:	cc                                              	int3
1056f97e:	cc                                              	int3
1056f97f:	cc                                              	int3
