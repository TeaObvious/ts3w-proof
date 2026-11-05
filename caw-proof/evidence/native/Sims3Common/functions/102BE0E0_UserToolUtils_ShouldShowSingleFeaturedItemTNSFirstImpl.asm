# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be0e0 (UserToolUtils_ShouldShowSingleFeaturedItemTNSFirstImpl)
Paired Ghidra pseudocode: 102BE0E0_UserToolUtils_ShouldShowSingleFeaturedItemTNSFirstImpl.c
Window: [0x102be0e0, 0x102be0f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be0f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be0e0: 8b 0d 34 05 c7 10 e9 65 3d fa ff cc cc cc cc cc

LINEAR DISASSEMBLY
102be0e0 <.text+0x2bd0e0>:
102be0e0:	8b 0d 34 05 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70534
102be0e6:	e9 65 3d fa ff                                  	jmp    0x10261e50
102be0eb:	cc                                              	int3
102be0ec:	cc                                              	int3
102be0ed:	cc                                              	int3
102be0ee:	cc                                              	int3
102be0ef:	cc                                              	int3
