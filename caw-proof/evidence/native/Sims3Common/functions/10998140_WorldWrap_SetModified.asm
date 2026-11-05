# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998140 (WorldWrap_SetModified)
Paired Ghidra pseudocode: 10998140_WorldWrap_SetModified.c
Window: [0x10998140, 0x10998150) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998140: 8b 44 24 04 85 c0 74 04 c6 40 40 01 c3 cc cc cc

LINEAR DISASSEMBLY
10998140 <.text+0x997140>:
10998140:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998144:	85 c0                                           	test   eax,eax
10998146:	74 04                                           	je     0x1099814c
10998148:	c6 40 40 01                                     	mov    BYTE PTR [eax+0x40],0x1
1099814c:	c3                                              	ret
1099814d:	cc                                              	int3
1099814e:	cc                                              	int3
1099814f:	cc                                              	int3
