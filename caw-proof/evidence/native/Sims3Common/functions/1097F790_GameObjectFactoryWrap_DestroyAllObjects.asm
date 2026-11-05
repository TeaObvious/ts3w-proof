# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f790 (GameObjectFactoryWrap_DestroyAllObjects)
Paired Ghidra pseudocode: 1097F790_GameObjectFactoryWrap_DestroyAllObjects.c
Window: [0x1097f790, 0x1097f7b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f7b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f790: e8 0b aa da ff 85 c0 74 07 8b c8 e9 c0 b3 da ff
1097f7a0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f790 <.text+0x97e790>:
1097f790:	e8 0b aa da ff                                  	call   0x1072a1a0
1097f795:	85 c0                                           	test   eax,eax
1097f797:	74 07                                           	je     0x1097f7a0
1097f799:	8b c8                                           	mov    ecx,eax
1097f79b:	e9 c0 b3 da ff                                  	jmp    0x1072ab60
1097f7a0:	c3                                              	ret
1097f7a1:	cc                                              	int3
1097f7a2:	cc                                              	int3
1097f7a3:	cc                                              	int3
1097f7a4:	cc                                              	int3
1097f7a5:	cc                                              	int3
1097f7a6:	cc                                              	int3
1097f7a7:	cc                                              	int3
1097f7a8:	cc                                              	int3
1097f7a9:	cc                                              	int3
1097f7aa:	cc                                              	int3
1097f7ab:	cc                                              	int3
1097f7ac:	cc                                              	int3
1097f7ad:	cc                                              	int3
1097f7ae:	cc                                              	int3
1097f7af:	cc                                              	int3
