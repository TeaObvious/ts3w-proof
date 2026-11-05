# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d140 (SacsWrap_PlayAnimationNode_SetTrackMask)
Paired Ghidra pseudocode: 1098D140_SacsWrap_PlayAnimationNode_SetTrackMask.c
Window: [0x1098d140, 0x1098d160) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d140: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 de ad
1098d150: c5 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d140 <.text+0x98c140>:
1098d140:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d144:	85 c9                                           	test   ecx,ecx
1098d146:	74 0a                                           	je     0x1098d152
1098d148:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098d14c:	50                                              	push   eax
1098d14d:	e8 de ad c5 ff                                  	call   0x105e7f30
1098d152:	c3                                              	ret
1098d153:	cc                                              	int3
1098d154:	cc                                              	int3
1098d155:	cc                                              	int3
1098d156:	cc                                              	int3
1098d157:	cc                                              	int3
1098d158:	cc                                              	int3
1098d159:	cc                                              	int3
1098d15a:	cc                                              	int3
1098d15b:	cc                                              	int3
1098d15c:	cc                                              	int3
1098d15d:	cc                                              	int3
1098d15e:	cc                                              	int3
1098d15f:	cc                                              	int3
