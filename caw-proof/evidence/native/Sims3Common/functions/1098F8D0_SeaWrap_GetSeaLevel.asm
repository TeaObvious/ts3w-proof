# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f8d0 (SeaWrap_GetSeaLevel)
Paired Ghidra pseudocode: 1098F8D0_SeaWrap_GetSeaLevel.c
Window: [0x1098f8d0, 0x1098f8e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f8e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f8d0: 8b 44 24 04 d9 40 14 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f8d0 <.text+0x98e8d0>:
1098f8d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098f8d4:	d9 40 14                                        	fld    DWORD PTR [eax+0x14]
1098f8d7:	c3                                              	ret
1098f8d8:	cc                                              	int3
1098f8d9:	cc                                              	int3
1098f8da:	cc                                              	int3
1098f8db:	cc                                              	int3
1098f8dc:	cc                                              	int3
1098f8dd:	cc                                              	int3
1098f8de:	cc                                              	int3
1098f8df:	cc                                              	int3
