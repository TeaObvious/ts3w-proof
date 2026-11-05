# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996150 (ObjectManagerWrap_SetModified)
Paired Ghidra pseudocode: 10996150_ObjectManagerWrap_SetModified.c
Window: [0x10996150, 0x10996160) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996150: 8b 44 24 04 85 c0 74 04 c6 40 76 01 c3 cc cc cc

LINEAR DISASSEMBLY
10996150 <.text+0x995150>:
10996150:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996154:	85 c0                                           	test   eax,eax
10996156:	74 04                                           	je     0x1099615c
10996158:	c6 40 76 01                                     	mov    BYTE PTR [eax+0x76],0x1
1099615c:	c3                                              	ret
1099615d:	cc                                              	int3
1099615e:	cc                                              	int3
1099615f:	cc                                              	int3
