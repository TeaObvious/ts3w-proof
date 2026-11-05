# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d070 (AnimationManager_GetFireAssertEvents)
Paired Ghidra pseudocode: 1097D070_AnimationManager_GetFireAssertEvents.c
Window: [0x1097d070, 0x1097d090) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d070: a1 00 21 c7 10 85 c0 74 0a 8b 40 28 c1 e8 02 83
1097d080: e0 01 c3 32 c0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d070 <.text+0x97c070>:
1097d070:	a1 00 21 c7 10                                  	mov    eax,ds:0x10c72100
1097d075:	85 c0                                           	test   eax,eax
1097d077:	74 0a                                           	je     0x1097d083
1097d079:	8b 40 28                                        	mov    eax,DWORD PTR [eax+0x28]
1097d07c:	c1 e8 02                                        	shr    eax,0x2
1097d07f:	83 e0 01                                        	and    eax,0x1
1097d082:	c3                                              	ret
1097d083:	32 c0                                           	xor    al,al
1097d085:	c3                                              	ret
1097d086:	cc                                              	int3
1097d087:	cc                                              	int3
1097d088:	cc                                              	int3
1097d089:	cc                                              	int3
1097d08a:	cc                                              	int3
1097d08b:	cc                                              	int3
1097d08c:	cc                                              	int3
1097d08d:	cc                                              	int3
1097d08e:	cc                                              	int3
1097d08f:	cc                                              	int3
