# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998000 (WorldWrap_GetTimeOfDay)
Paired Ghidra pseudocode: 10998000_WorldWrap_GetTimeOfDay.c
Window: [0x10998000, 0x10998010) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998010
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998000: 8b 44 24 04 d9 80 24 01 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10998000 <.text+0x997000>:
10998000:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998004:	d9 80 24 01 00 00                               	fld    DWORD PTR [eax+0x124]
1099800a:	c3                                              	ret
1099800b:	cc                                              	int3
1099800c:	cc                                              	int3
1099800d:	cc                                              	int3
1099800e:	cc                                              	int3
1099800f:	cc                                              	int3
