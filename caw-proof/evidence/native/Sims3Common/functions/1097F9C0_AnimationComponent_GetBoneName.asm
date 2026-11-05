# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f9c0 (AnimationComponent_GetBoneName)
Paired Ghidra pseudocode: 1097F9C0_AnimationComponent_GetBoneName.c
Window: [0x1097f9c0, 0x1097fa00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fa00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f9c0: 8b 44 24 04 85 c0 56 74 2a 8d 48 08 8b 01 8b 50
1097f9d0: 20 ff d2 85 c0 74 1c 8d 70 28 8b ce e8 af 1c 9f
1097f9e0: ff 8b 4c 24 0c 3b c1 76 0a 51 8b ce e8 bf 1c 9f
1097f9f0: ff 5e c3 33 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f9c0 <.text+0x97e9c0>:
1097f9c0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f9c4:	85 c0                                           	test   eax,eax
1097f9c6:	56                                              	push   esi
1097f9c7:	74 2a                                           	je     0x1097f9f3
1097f9c9:	8d 48 08                                        	lea    ecx,[eax+0x8]
1097f9cc:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097f9ce:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1097f9d1:	ff d2                                           	call   edx
1097f9d3:	85 c0                                           	test   eax,eax
1097f9d5:	74 1c                                           	je     0x1097f9f3
1097f9d7:	8d 70 28                                        	lea    esi,[eax+0x28]
1097f9da:	8b ce                                           	mov    ecx,esi
1097f9dc:	e8 af 1c 9f ff                                  	call   0x10371690
1097f9e1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1097f9e5:	3b c1                                           	cmp    eax,ecx
1097f9e7:	76 0a                                           	jbe    0x1097f9f3
1097f9e9:	51                                              	push   ecx
1097f9ea:	8b ce                                           	mov    ecx,esi
1097f9ec:	e8 bf 1c 9f ff                                  	call   0x103716b0
1097f9f1:	5e                                              	pop    esi
1097f9f2:	c3                                              	ret
1097f9f3:	33 c0                                           	xor    eax,eax
1097f9f5:	5e                                              	pop    esi
1097f9f6:	c3                                              	ret
1097f9f7:	cc                                              	int3
1097f9f8:	cc                                              	int3
1097f9f9:	cc                                              	int3
1097f9fa:	cc                                              	int3
1097f9fb:	cc                                              	int3
1097f9fc:	cc                                              	int3
1097f9fd:	cc                                              	int3
1097f9fe:	cc                                              	int3
1097f9ff:	cc                                              	int3
