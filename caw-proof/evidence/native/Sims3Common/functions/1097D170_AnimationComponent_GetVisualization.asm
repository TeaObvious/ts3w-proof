# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d170 (AnimationComponent_GetVisualization)
Paired Ghidra pseudocode: 1097D170_AnimationComponent_GetVisualization.c
Window: [0x1097d170, 0x1097d190) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d170: 8b 44 24 04 85 c0 74 0a 8b 40 2c c1 e8 07 83 e0
1097d180: 01 c3 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d170 <.text+0x97c170>:
1097d170:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097d174:	85 c0                                           	test   eax,eax
1097d176:	74 0a                                           	je     0x1097d182
1097d178:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
1097d17b:	c1 e8 07                                        	shr    eax,0x7
1097d17e:	83 e0 01                                        	and    eax,0x1
1097d181:	c3                                              	ret
1097d182:	32 c0                                           	xor    al,al
1097d184:	c3                                              	ret
1097d185:	cc                                              	int3
1097d186:	cc                                              	int3
1097d187:	cc                                              	int3
1097d188:	cc                                              	int3
1097d189:	cc                                              	int3
1097d18a:	cc                                              	int3
1097d18b:	cc                                              	int3
1097d18c:	cc                                              	int3
1097d18d:	cc                                              	int3
1097d18e:	cc                                              	int3
1097d18f:	cc                                              	int3
