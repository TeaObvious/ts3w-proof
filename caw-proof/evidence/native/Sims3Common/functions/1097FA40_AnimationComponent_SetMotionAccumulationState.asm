# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fa40 (AnimationComponent_SetMotionAccumulationState)
Paired Ghidra pseudocode: 1097FA40_AnimationComponent_SetMotionAccumulationState.c
Window: [0x1097fa40, 0x1097fa60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fa60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fa40: 8b 4c 24 04 85 c9 74 17 80 7c 24 08 01 8b 41 2c
1097fa50: 75 07 83 c8 08 89 41 2c c3 83 e0 f7 89 41 2c c3

LINEAR DISASSEMBLY
1097fa40 <.text+0x97ea40>:
1097fa40:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fa44:	85 c9                                           	test   ecx,ecx
1097fa46:	74 17                                           	je     0x1097fa5f
1097fa48:	80 7c 24 08 01                                  	cmp    BYTE PTR [esp+0x8],0x1
1097fa4d:	8b 41 2c                                        	mov    eax,DWORD PTR [ecx+0x2c]
1097fa50:	75 07                                           	jne    0x1097fa59
1097fa52:	83 c8 08                                        	or     eax,0x8
1097fa55:	89 41 2c                                        	mov    DWORD PTR [ecx+0x2c],eax
1097fa58:	c3                                              	ret
1097fa59:	83 e0 f7                                        	and    eax,0xfffffff7
1097fa5c:	89 41 2c                                        	mov    DWORD PTR [ecx+0x2c],eax
1097fa5f:	c3                                              	ret
