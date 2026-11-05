# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990040 (SimBuilderWrap_GetUseCompression)
Paired Ghidra pseudocode: 10990040_SimBuilderWrap_GetUseCompression.c
Window: [0x10990040, 0x10990050) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990040: 8b 44 24 04 8a 40 69 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990040 <.text+0x98f040>:
10990040:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990044:	8a 40 69                                        	mov    al,BYTE PTR [eax+0x69]
10990047:	c3                                              	ret
10990048:	cc                                              	int3
10990049:	cc                                              	int3
1099004a:	cc                                              	int3
1099004b:	cc                                              	int3
1099004c:	cc                                              	int3
1099004d:	cc                                              	int3
1099004e:	cc                                              	int3
1099004f:	cc                                              	int3
