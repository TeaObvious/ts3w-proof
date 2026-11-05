# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540830 (Route_SetLockKeys)
Paired Ghidra pseudocode: 10540830_Route_SetLockKeys.c
Window: [0x10540830, 0x10540840) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540830: e9 4b d7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540830 <.text+0x53f830>:
10540830:	e9 4b d7 ff ff                                  	jmp    0x1053df80
10540835:	cc                                              	int3
10540836:	cc                                              	int3
10540837:	cc                                              	int3
10540838:	cc                                              	int3
10540839:	cc                                              	int3
1054083a:	cc                                              	int3
1054083b:	cc                                              	int3
1054083c:	cc                                              	int3
1054083d:	cc                                              	int3
1054083e:	cc                                              	int3
1054083f:	cc                                              	int3
