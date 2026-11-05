# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998150 (WorldWrap_IsModified)
Paired Ghidra pseudocode: 10998150_WorldWrap_IsModified.c
Window: [0x10998150, 0x10998160) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998150: 8b 4c 24 04 33 c0 38 41 40 0f 95 c0 c3 cc cc cc

LINEAR DISASSEMBLY
10998150 <.text+0x997150>:
10998150:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10998154:	33 c0                                           	xor    eax,eax
10998156:	38 41 40                                        	cmp    BYTE PTR [ecx+0x40],al
10998159:	0f 95 c0                                        	setne  al
1099815c:	c3                                              	ret
1099815d:	cc                                              	int3
1099815e:	cc                                              	int3
1099815f:	cc                                              	int3
