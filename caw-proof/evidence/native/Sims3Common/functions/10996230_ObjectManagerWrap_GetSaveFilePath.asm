# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996230 (ObjectManagerWrap_GetSaveFilePath)
Paired Ghidra pseudocode: 10996230_ObjectManagerWrap_GetSaveFilePath.c
Window: [0x10996230, 0x10996240) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996230: 8b 44 24 04 85 c0 74 04 8b 40 60 c3 33 c0 c3 cc

LINEAR DISASSEMBLY
10996230 <.text+0x995230>:
10996230:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996234:	85 c0                                           	test   eax,eax
10996236:	74 04                                           	je     0x1099623c
10996238:	8b 40 60                                        	mov    eax,DWORD PTR [eax+0x60]
1099623b:	c3                                              	ret
1099623c:	33 c0                                           	xor    eax,eax
1099623e:	c3                                              	ret
1099623f:	cc                                              	int3
