# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c3520 (UserToolUtils_SetCollectionOrderImpl)
Paired Ghidra pseudocode: 102C3520_UserToolUtils_SetCollectionOrderImpl.c
Window: [0x102c3520, 0x102c3530) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c3530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c3520: e9 6b ff ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c3520 <.text+0x2c2520>:
102c3520:	e9 6b ff ff ff                                  	jmp    0x102c3490
102c3525:	cc                                              	int3
102c3526:	cc                                              	int3
102c3527:	cc                                              	int3
102c3528:	cc                                              	int3
102c3529:	cc                                              	int3
102c352a:	cc                                              	int3
102c352b:	cc                                              	int3
102c352c:	cc                                              	int3
102c352d:	cc                                              	int3
102c352e:	cc                                              	int3
102c352f:	cc                                              	int3
