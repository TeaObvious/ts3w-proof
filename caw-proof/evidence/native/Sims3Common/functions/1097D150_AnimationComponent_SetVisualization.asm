# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d150 (AnimationComponent_SetVisualization)
Paired Ghidra pseudocode: 1097D150_AnimationComponent_SetVisualization.c
Window: [0x1097d150, 0x1097d170) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d150: 8b 44 24 04 85 c0 74 16 80 7c 24 08 00 74 08 81
1097d160: 48 2c 80 00 00 00 c3 81 60 2c 7f ff ff ff c3 cc

LINEAR DISASSEMBLY
1097d150 <.text+0x97c150>:
1097d150:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097d154:	85 c0                                           	test   eax,eax
1097d156:	74 16                                           	je     0x1097d16e
1097d158:	80 7c 24 08 00                                  	cmp    BYTE PTR [esp+0x8],0x0
1097d15d:	74 08                                           	je     0x1097d167
1097d15f:	81 48 2c 80 00 00 00                            	or     DWORD PTR [eax+0x2c],0x80
1097d166:	c3                                              	ret
1097d167:	81 60 2c 7f ff ff ff                            	and    DWORD PTR [eax+0x2c],0xffffff7f
1097d16e:	c3                                              	ret
1097d16f:	cc                                              	int3
