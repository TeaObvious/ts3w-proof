# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f660 (UIManager_IsCustomProxyControlImpl)
Paired Ghidra pseudocode: 1056F660_UIManager_IsCustomProxyControlImpl.c
Window: [0x1056f660, 0x1056f670) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f660: e9 9b d3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f660 <.text+0x56e660>:
1056f660:	e9 9b d3 ff ff                                  	jmp    0x1056ca00
1056f665:	cc                                              	int3
1056f666:	cc                                              	int3
1056f667:	cc                                              	int3
1056f668:	cc                                              	int3
1056f669:	cc                                              	int3
1056f66a:	cc                                              	int3
1056f66b:	cc                                              	int3
1056f66c:	cc                                              	int3
1056f66d:	cc                                              	int3
1056f66e:	cc                                              	int3
1056f66f:	cc                                              	int3
