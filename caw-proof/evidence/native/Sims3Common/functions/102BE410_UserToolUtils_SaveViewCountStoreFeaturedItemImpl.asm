# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be410 (UserToolUtils_SaveViewCountStoreFeaturedItemImpl)
Paired Ghidra pseudocode: 102BE410_UserToolUtils_SaveViewCountStoreFeaturedItemImpl.c
Window: [0x102be410, 0x102be420) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be410: 8b 0d 34 05 c7 10 e9 85 45 fa ff cc cc cc cc cc

LINEAR DISASSEMBLY
102be410 <.text+0x2bd410>:
102be410:	8b 0d 34 05 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70534
102be416:	e9 85 45 fa ff                                  	jmp    0x102629a0
102be41b:	cc                                              	int3
102be41c:	cc                                              	int3
102be41d:	cc                                              	int3
102be41e:	cc                                              	int3
102be41f:	cc                                              	int3
