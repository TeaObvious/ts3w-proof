# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c24d0 (UserToolUtils_ProductGenericImpl)
Paired Ghidra pseudocode: 102C24D0_UserToolUtils_ProductGenericImpl.c
Window: [0x102c24d0, 0x102c24e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c24e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c24d0: e9 2b f0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c24d0 <.text+0x2c14d0>:
102c24d0:	e9 2b f0 ff ff                                  	jmp    0x102c1500
102c24d5:	cc                                              	int3
102c24d6:	cc                                              	int3
102c24d7:	cc                                              	int3
102c24d8:	cc                                              	int3
102c24d9:	cc                                              	int3
102c24da:	cc                                              	int3
102c24db:	cc                                              	int3
102c24dc:	cc                                              	int3
102c24dd:	cc                                              	int3
102c24de:	cc                                              	int3
102c24df:	cc                                              	int3
