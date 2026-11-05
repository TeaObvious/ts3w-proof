# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fa60 (AnimationComponent_GetMotionAccumulationState)
Paired Ghidra pseudocode: 1097FA60_AnimationComponent_GetMotionAccumulationState.c
Window: [0x1097fa60, 0x1097fa80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fa80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fa60: 8b 44 24 04 85 c0 74 0a 8b 40 2c c1 e8 03 83 e0
1097fa70: 01 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fa60 <.text+0x97ea60>:
1097fa60:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097fa64:	85 c0                                           	test   eax,eax
1097fa66:	74 0a                                           	je     0x1097fa72
1097fa68:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
1097fa6b:	c1 e8 03                                        	shr    eax,0x3
1097fa6e:	83 e0 01                                        	and    eax,0x1
1097fa71:	c3                                              	ret
1097fa72:	33 c0                                           	xor    eax,eax
1097fa74:	c3                                              	ret
1097fa75:	cc                                              	int3
1097fa76:	cc                                              	int3
1097fa77:	cc                                              	int3
1097fa78:	cc                                              	int3
1097fa79:	cc                                              	int3
1097fa7a:	cc                                              	int3
1097fa7b:	cc                                              	int3
1097fa7c:	cc                                              	int3
1097fa7d:	cc                                              	int3
1097fa7e:	cc                                              	int3
1097fa7f:	cc                                              	int3
