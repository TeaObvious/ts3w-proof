# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996160 (ObjectManagerWrap_IsModified)
Paired Ghidra pseudocode: 10996160_ObjectManagerWrap_IsModified.c
Window: [0x10996160, 0x10996170) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996160: 8b 4c 24 04 33 c0 38 41 76 0f 95 c0 c3 cc cc cc

LINEAR DISASSEMBLY
10996160 <.text+0x995160>:
10996160:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996164:	33 c0                                           	xor    eax,eax
10996166:	38 41 76                                        	cmp    BYTE PTR [ecx+0x76],al
10996169:	0f 95 c0                                        	setne  al
1099616c:	c3                                              	ret
1099616d:	cc                                              	int3
1099616e:	cc                                              	int3
1099616f:	cc                                              	int3
