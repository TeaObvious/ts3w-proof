# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fe00 (SlotComponent_PointSlot_GetBoneIndex)
Paired Ghidra pseudocode: 1097FE00_SlotComponent_PointSlot_GetBoneIndex.c
Window: [0x1097fe00, 0x1097fe20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fe20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fe00: 8b 4c 24 04 85 c9 74 0f 8b 44 24 08 85 c0 74 07
1097fe10: 50 e8 3a f3 c7 ff c3 83 c8 ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1097fe00 <.text+0x97ee00>:
1097fe00:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fe04:	85 c9                                           	test   ecx,ecx
1097fe06:	74 0f                                           	je     0x1097fe17
1097fe08:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097fe0c:	85 c0                                           	test   eax,eax
1097fe0e:	74 07                                           	je     0x1097fe17
1097fe10:	50                                              	push   eax
1097fe11:	e8 3a f3 c7 ff                                  	call   0x105ff150
1097fe16:	c3                                              	ret
1097fe17:	83 c8 ff                                        	or     eax,0xffffffff
1097fe1a:	c3                                              	ret
1097fe1b:	cc                                              	int3
1097fe1c:	cc                                              	int3
1097fe1d:	cc                                              	int3
1097fe1e:	cc                                              	int3
1097fe1f:	cc                                              	int3
