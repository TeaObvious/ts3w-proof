# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d0f0 (AnimationWrap_ClipIkInfo_GetNumIkSlots)
Paired Ghidra pseudocode: 1097D0F0_AnimationWrap_ClipIkInfo_GetNumIkSlots.c
Window: [0x1097d0f0, 0x1097d110) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d0f0: 8b 4c 24 04 85 c9 74 0b 8b 44 24 08 50 e8 de 6b
1097d100: 9f ff c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d0f0 <.text+0x97c0f0>:
1097d0f0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097d0f4:	85 c9                                           	test   ecx,ecx
1097d0f6:	74 0b                                           	je     0x1097d103
1097d0f8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097d0fc:	50                                              	push   eax
1097d0fd:	e8 de 6b 9f ff                                  	call   0x10373ce0
1097d102:	c3                                              	ret
1097d103:	33 c0                                           	xor    eax,eax
1097d105:	c3                                              	ret
1097d106:	cc                                              	int3
1097d107:	cc                                              	int3
1097d108:	cc                                              	int3
1097d109:	cc                                              	int3
1097d10a:	cc                                              	int3
1097d10b:	cc                                              	int3
1097d10c:	cc                                              	int3
1097d10d:	cc                                              	int3
1097d10e:	cc                                              	int3
1097d10f:	cc                                              	int3
