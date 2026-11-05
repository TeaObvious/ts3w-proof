# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fa00 (AnimationComponent_GetBoneParentIndex)
Paired Ghidra pseudocode: 1097FA00_AnimationComponent_GetBoneParentIndex.c
Window: [0x1097fa00, 0x1097fa40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fa40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fa00: 8b 44 24 04 85 c0 56 74 2a 8d 48 08 8b 01 8b 50
1097fa10: 20 ff d2 85 c0 74 1c 8d 70 28 8b ce e8 6f 1c 9f
1097fa20: ff 8b 4c 24 0c 3b c1 76 0a 51 8b ce e8 bf 1c 9f
1097fa30: ff 5e c3 83 c8 ff 5e c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fa00 <.text+0x97ea00>:
1097fa00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097fa04:	85 c0                                           	test   eax,eax
1097fa06:	56                                              	push   esi
1097fa07:	74 2a                                           	je     0x1097fa33
1097fa09:	8d 48 08                                        	lea    ecx,[eax+0x8]
1097fa0c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097fa0e:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1097fa11:	ff d2                                           	call   edx
1097fa13:	85 c0                                           	test   eax,eax
1097fa15:	74 1c                                           	je     0x1097fa33
1097fa17:	8d 70 28                                        	lea    esi,[eax+0x28]
1097fa1a:	8b ce                                           	mov    ecx,esi
1097fa1c:	e8 6f 1c 9f ff                                  	call   0x10371690
1097fa21:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1097fa25:	3b c1                                           	cmp    eax,ecx
1097fa27:	76 0a                                           	jbe    0x1097fa33
1097fa29:	51                                              	push   ecx
1097fa2a:	8b ce                                           	mov    ecx,esi
1097fa2c:	e8 bf 1c 9f ff                                  	call   0x103716f0
1097fa31:	5e                                              	pop    esi
1097fa32:	c3                                              	ret
1097fa33:	83 c8 ff                                        	or     eax,0xffffffff
1097fa36:	5e                                              	pop    esi
1097fa37:	c3                                              	ret
1097fa38:	cc                                              	int3
1097fa39:	cc                                              	int3
1097fa3a:	cc                                              	int3
1097fa3b:	cc                                              	int3
1097fa3c:	cc                                              	int3
1097fa3d:	cc                                              	int3
1097fa3e:	cc                                              	int3
1097fa3f:	cc                                              	int3
