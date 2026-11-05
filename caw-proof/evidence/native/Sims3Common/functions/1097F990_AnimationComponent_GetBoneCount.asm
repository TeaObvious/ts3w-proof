# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f990 (AnimationComponent_GetBoneCount)
Paired Ghidra pseudocode: 1097F990_AnimationComponent_GetBoneCount.c
Window: [0x1097f990, 0x1097f9c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f9c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f990: 8b 44 24 04 85 c0 74 16 8d 48 08 8b 01 8b 50 20
1097f9a0: ff d2 85 c0 74 08 8d 48 28 e9 e2 1c 9f ff 33 c0
1097f9b0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f990 <.text+0x97e990>:
1097f990:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f994:	85 c0                                           	test   eax,eax
1097f996:	74 16                                           	je     0x1097f9ae
1097f998:	8d 48 08                                        	lea    ecx,[eax+0x8]
1097f99b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097f99d:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1097f9a0:	ff d2                                           	call   edx
1097f9a2:	85 c0                                           	test   eax,eax
1097f9a4:	74 08                                           	je     0x1097f9ae
1097f9a6:	8d 48 28                                        	lea    ecx,[eax+0x28]
1097f9a9:	e9 e2 1c 9f ff                                  	jmp    0x10371690
1097f9ae:	33 c0                                           	xor    eax,eax
1097f9b0:	c3                                              	ret
1097f9b1:	cc                                              	int3
1097f9b2:	cc                                              	int3
1097f9b3:	cc                                              	int3
1097f9b4:	cc                                              	int3
1097f9b5:	cc                                              	int3
1097f9b6:	cc                                              	int3
1097f9b7:	cc                                              	int3
1097f9b8:	cc                                              	int3
1097f9b9:	cc                                              	int3
1097f9ba:	cc                                              	int3
1097f9bb:	cc                                              	int3
1097f9bc:	cc                                              	int3
1097f9bd:	cc                                              	int3
1097f9be:	cc                                              	int3
1097f9bf:	cc                                              	int3
