# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1026c8d0 (CTProductModularObject_GetModularObjectTypeImpl)
Paired Ghidra pseudocode: 1026C8D0_CTProductModularObject_GetModularObjectTypeImpl.c
Window: [0x1026c8d0, 0x1026c910) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1026c910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1026c8d0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1026c8e0: 54 75 23 e8 38 e8 2e 00 85 c0 74 1a 8b 10 8b c8
1026c8f0: 8b 82 cc 00 00 00 56 ff d0 85 c0 75 09 0f b7 05
1026c900: 38 00 00 00 5e c3 33 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1026c8d0 <.text+0x26b8d0>:
1026c8d0:	56                                              	push   esi
1026c8d1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1026c8d5:	8b c6                                           	mov    eax,esi
1026c8d7:	25 00 00 00 ff                                  	and    eax,0xff000000
1026c8dc:	3d 00 00 00 54                                  	cmp    eax,0x54000000
1026c8e1:	75 23                                           	jne    0x1026c906
1026c8e3:	e8 38 e8 2e 00                                  	call   0x1055b120
1026c8e8:	85 c0                                           	test   eax,eax
1026c8ea:	74 1a                                           	je     0x1026c906
1026c8ec:	8b 10                                           	mov    edx,DWORD PTR [eax]
1026c8ee:	8b c8                                           	mov    ecx,eax
1026c8f0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1026c8f6:	56                                              	push   esi
1026c8f7:	ff d0                                           	call   eax
1026c8f9:	85 c0                                           	test   eax,eax
1026c8fb:	75 09                                           	jne    0x1026c906
1026c8fd:	0f b7 05 38 00 00 00                            	movzx  eax,WORD PTR ds:0x38
1026c904:	5e                                              	pop    esi
1026c905:	c3                                              	ret
1026c906:	33 c0                                           	xor    eax,eax
1026c908:	5e                                              	pop    esi
1026c909:	c3                                              	ret
1026c90a:	cc                                              	int3
1026c90b:	cc                                              	int3
1026c90c:	cc                                              	int3
1026c90d:	cc                                              	int3
1026c90e:	cc                                              	int3
1026c90f:	cc                                              	int3
