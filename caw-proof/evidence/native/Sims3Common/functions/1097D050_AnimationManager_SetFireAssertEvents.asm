# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d050 (AnimationManager_SetFireAssertEvents)
Paired Ghidra pseudocode: 1097D050_AnimationManager_SetFireAssertEvents.c
Window: [0x1097d050, 0x1097d070) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d050: 8b 0d 00 21 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
1097d060: 7c fb 9e ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d050 <.text+0x97c050>:
1097d050:	8b 0d 00 21 c7 10                               	mov    ecx,DWORD PTR ds:0x10c72100
1097d056:	85 c9                                           	test   ecx,ecx
1097d058:	74 0a                                           	je     0x1097d064
1097d05a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097d05e:	50                                              	push   eax
1097d05f:	e8 7c fb 9e ff                                  	call   0x1036cbe0
1097d064:	c3                                              	ret
1097d065:	cc                                              	int3
1097d066:	cc                                              	int3
1097d067:	cc                                              	int3
1097d068:	cc                                              	int3
1097d069:	cc                                              	int3
1097d06a:	cc                                              	int3
1097d06b:	cc                                              	int3
1097d06c:	cc                                              	int3
1097d06d:	cc                                              	int3
1097d06e:	cc                                              	int3
1097d06f:	cc                                              	int3
