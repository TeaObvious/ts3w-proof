# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d030 (AnimationManager_SetUseFrameDatabase)
Paired Ghidra pseudocode: 1097D030_AnimationManager_SetUseFrameDatabase.c
Window: [0x1097d030, 0x1097d050) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d030: 8b 0d 00 21 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
1097d040: 7c fb 9e ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d030 <.text+0x97c030>:
1097d030:	8b 0d 00 21 c7 10                               	mov    ecx,DWORD PTR ds:0x10c72100
1097d036:	85 c9                                           	test   ecx,ecx
1097d038:	74 0a                                           	je     0x1097d044
1097d03a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097d03e:	50                                              	push   eax
1097d03f:	e8 7c fb 9e ff                                  	call   0x1036cbc0
1097d044:	c3                                              	ret
1097d045:	cc                                              	int3
1097d046:	cc                                              	int3
1097d047:	cc                                              	int3
1097d048:	cc                                              	int3
1097d049:	cc                                              	int3
1097d04a:	cc                                              	int3
1097d04b:	cc                                              	int3
1097d04c:	cc                                              	int3
1097d04d:	cc                                              	int3
1097d04e:	cc                                              	int3
1097d04f:	cc                                              	int3
