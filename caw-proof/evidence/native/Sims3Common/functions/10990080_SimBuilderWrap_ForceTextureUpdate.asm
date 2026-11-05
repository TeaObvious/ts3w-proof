# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990080 (SimBuilderWrap_ForceTextureUpdate)
Paired Ghidra pseudocode: 10990080_SimBuilderWrap_ForceTextureUpdate.c
Window: [0x10990080, 0x10990090) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990080: 8b 4c 24 04 e9 67 af a4 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990080 <.text+0x98f080>:
10990080:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10990084:	e9 67 af a4 ff                                  	jmp    0x103daff0
10990089:	cc                                              	int3
1099008a:	cc                                              	int3
1099008b:	cc                                              	int3
1099008c:	cc                                              	int3
1099008d:	cc                                              	int3
1099008e:	cc                                              	int3
1099008f:	cc                                              	int3
