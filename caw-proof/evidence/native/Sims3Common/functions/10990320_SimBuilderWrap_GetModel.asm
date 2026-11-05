# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990320 (SimBuilderWrap_GetModel)
Paired Ghidra pseudocode: 10990320_SimBuilderWrap_GetModel.c
Window: [0x10990320, 0x10990330) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990320: 8b 44 24 04 8b 80 ec 01 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10990320 <.text+0x98f320>:
10990320:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990324:	8b 80 ec 01 00 00                               	mov    eax,DWORD PTR [eax+0x1ec]
1099032a:	c3                                              	ret
1099032b:	cc                                              	int3
1099032c:	cc                                              	int3
1099032d:	cc                                              	int3
1099032e:	cc                                              	int3
1099032f:	cc                                              	int3
