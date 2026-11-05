# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a04e0 (CASUtils_SimOutfitGetAgeGenderSpeciesImpl)
Paired Ghidra pseudocode: 103A04E0_CASUtils_SimOutfitGetAgeGenderSpeciesImpl.c
Window: [0x103a04e0, 0x103a0520) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a04e0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a04f0: 35 74 04 33 c0 5e c3 e8 24 ac 1b 00 8b 10 8b c8
103a0500: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 40 38
103a0510: 25 7f ff 00 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a04e0 <.text+0x39f4e0>:
103a04e0:	56                                              	push   esi
103a04e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a04e5:	8b c6                                           	mov    eax,esi
103a04e7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a04ec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a04f1:	74 04                                           	je     0x103a04f7
103a04f3:	33 c0                                           	xor    eax,eax
103a04f5:	5e                                              	pop    esi
103a04f6:	c3                                              	ret
103a04f7:	e8 24 ac 1b 00                                  	call   0x1055b120
103a04fc:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a04fe:	8b c8                                           	mov    ecx,eax
103a0500:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a0506:	56                                              	push   esi
103a0507:	ff d0                                           	call   eax
103a0509:	85 c0                                           	test   eax,eax
103a050b:	74 e6                                           	je     0x103a04f3
103a050d:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
103a0510:	25 7f ff 00 00                                  	and    eax,0xff7f
103a0515:	5e                                              	pop    esi
103a0516:	c3                                              	ret
103a0517:	cc                                              	int3
103a0518:	cc                                              	int3
103a0519:	cc                                              	int3
103a051a:	cc                                              	int3
103a051b:	cc                                              	int3
103a051c:	cc                                              	int3
103a051d:	cc                                              	int3
103a051e:	cc                                              	int3
103a051f:	cc                                              	int3
