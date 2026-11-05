# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d1a0 (AnimationManager_GenerateClipInstanceVariations)
Paired Ghidra pseudocode: 1097D1A0_AnimationManager_GenerateClipInstanceVariations.c
Window: [0x1097d1a0, 0x1097d1c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d1c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d1a0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
1097d1b0: 08 51 52 50 e8 d7 8d 9f ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
1097d1a0 <.text+0x97c1a0>:
1097d1a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1097d1a4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1097d1a8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1097d1ac:	50                                              	push   eax
1097d1ad:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097d1b1:	51                                              	push   ecx
1097d1b2:	52                                              	push   edx
1097d1b3:	50                                              	push   eax
1097d1b4:	e8 d7 8d 9f ff                                  	call   0x10375f90
1097d1b9:	83 c4 10                                        	add    esp,0x10
1097d1bc:	c3                                              	ret
1097d1bd:	cc                                              	int3
1097d1be:	cc                                              	int3
1097d1bf:	cc                                              	int3
