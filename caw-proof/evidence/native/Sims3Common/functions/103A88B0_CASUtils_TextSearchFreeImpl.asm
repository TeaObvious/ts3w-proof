# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a88b0 (CASUtils_TextSearchFreeImpl)
Paired Ghidra pseudocode: 103A88B0_CASUtils_TextSearchFreeImpl.c
Window: [0x103a88b0, 0x103a8930) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a8930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a88b0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a88c0: 35 75 28 e8 58 28 1b 00 8b 10 8b c8 8b 82 cc 00
103a88d0: 00 00 56 ff d0 8b f0 85 f6 74 10 8b ce e8 2e fe
103a88e0: ff ff 56 e8 a8 05 57 00 83 c4 04 5e c3 cc cc cc
103a88f0: 8b 44 24 04 c7 00 38 48 c2 10 c2 04 00 cc cc cc
103a8900: 8b 4c 24 04 8b 41 28 83 e8 01 8b 49 18 74 0a 6a
103a8910: 03 e8 0a 3a 23 00 b0 01 c3 6a 02 e8 00 3a 23 00
103a8920: b0 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a88b0 <.text+0x3a78b0>:
103a88b0:	56                                              	push   esi
103a88b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a88b5:	8b c6                                           	mov    eax,esi
103a88b7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a88bc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a88c1:	75 28                                           	jne    0x103a88eb
103a88c3:	e8 58 28 1b 00                                  	call   0x1055b120
103a88c8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a88ca:	8b c8                                           	mov    ecx,eax
103a88cc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a88d2:	56                                              	push   esi
103a88d3:	ff d0                                           	call   eax
103a88d5:	8b f0                                           	mov    esi,eax
103a88d7:	85 f6                                           	test   esi,esi
103a88d9:	74 10                                           	je     0x103a88eb
103a88db:	8b ce                                           	mov    ecx,esi
103a88dd:	e8 2e fe ff ff                                  	call   0x103a8710
103a88e2:	56                                              	push   esi
103a88e3:	e8 a8 05 57 00                                  	call   0x10918e90
103a88e8:	83 c4 04                                        	add    esp,0x4
103a88eb:	5e                                              	pop    esi
103a88ec:	c3                                              	ret
103a88ed:	cc                                              	int3
103a88ee:	cc                                              	int3
103a88ef:	cc                                              	int3
103a88f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
103a88f4:	c7 00 38 48 c2 10                               	mov    DWORD PTR [eax],0x10c24838
103a88fa:	c2 04 00                                        	ret    0x4
103a88fd:	cc                                              	int3
103a88fe:	cc                                              	int3
103a88ff:	cc                                              	int3
103a8900:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a8904:	8b 41 28                                        	mov    eax,DWORD PTR [ecx+0x28]
103a8907:	83 e8 01                                        	sub    eax,0x1
103a890a:	8b 49 18                                        	mov    ecx,DWORD PTR [ecx+0x18]
103a890d:	74 0a                                           	je     0x103a8919
103a890f:	6a 03                                           	push   0x3
103a8911:	e8 0a 3a 23 00                                  	call   0x105dc320
103a8916:	b0 01                                           	mov    al,0x1
103a8918:	c3                                              	ret
103a8919:	6a 02                                           	push   0x2
103a891b:	e8 00 3a 23 00                                  	call   0x105dc320
103a8920:	b0 01                                           	mov    al,0x1
103a8922:	c3                                              	ret
103a8923:	cc                                              	int3
103a8924:	cc                                              	int3
103a8925:	cc                                              	int3
103a8926:	cc                                              	int3
103a8927:	cc                                              	int3
103a8928:	cc                                              	int3
103a8929:	cc                                              	int3
103a892a:	cc                                              	int3
103a892b:	cc                                              	int3
103a892c:	cc                                              	int3
103a892d:	cc                                              	int3
103a892e:	cc                                              	int3
103a892f:	cc                                              	int3
