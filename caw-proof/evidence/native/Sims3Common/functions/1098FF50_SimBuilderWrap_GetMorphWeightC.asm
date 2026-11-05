# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ff50 (SimBuilderWrap_GetMorphWeightC)
Paired Ghidra pseudocode: 1098FF50_SimBuilderWrap_GetMorphWeightC.c
Window: [0x1098ff50, 0x1098ff60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ff60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ff50: 8b 44 24 04 d9 40 58 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ff50 <.text+0x98ef50>:
1098ff50:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ff54:	d9 40 58                                        	fld    DWORD PTR [eax+0x58]
1098ff57:	c3                                              	ret
1098ff58:	cc                                              	int3
1098ff59:	cc                                              	int3
1098ff5a:	cc                                              	int3
1098ff5b:	cc                                              	int3
1098ff5c:	cc                                              	int3
1098ff5d:	cc                                              	int3
1098ff5e:	cc                                              	int3
1098ff5f:	cc                                              	int3
