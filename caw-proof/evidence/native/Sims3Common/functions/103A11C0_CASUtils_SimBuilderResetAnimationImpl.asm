# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a11c0 (CASUtils_SimBuilderResetAnimationImpl)
Paired Ghidra pseudocode: 103A11C0_CASUtils_SimBuilderResetAnimationImpl.c
Window: [0x103a11c0, 0x103a1200) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a11c0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a11d0: 35 75 1e e8 48 9f 1b 00 8b 10 8b c8 8b 82 cc 00
103a11e0: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 0f ae 03
103a11f0: 00 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a11c0 <.text+0x3a01c0>:
103a11c0:	56                                              	push   esi
103a11c1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a11c5:	8b c6                                           	mov    eax,esi
103a11c7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a11cc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a11d1:	75 1e                                           	jne    0x103a11f1
103a11d3:	e8 48 9f 1b 00                                  	call   0x1055b120
103a11d8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a11da:	8b c8                                           	mov    ecx,eax
103a11dc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a11e2:	56                                              	push   esi
103a11e3:	ff d0                                           	call   eax
103a11e5:	85 c0                                           	test   eax,eax
103a11e7:	74 08                                           	je     0x103a11f1
103a11e9:	8b c8                                           	mov    ecx,eax
103a11eb:	5e                                              	pop    esi
103a11ec:	e9 0f ae 03 00                                  	jmp    0x103dc000
103a11f1:	32 c0                                           	xor    al,al
103a11f3:	5e                                              	pop    esi
103a11f4:	c3                                              	ret
103a11f5:	cc                                              	int3
103a11f6:	cc                                              	int3
103a11f7:	cc                                              	int3
103a11f8:	cc                                              	int3
103a11f9:	cc                                              	int3
103a11fa:	cc                                              	int3
103a11fb:	cc                                              	int3
103a11fc:	cc                                              	int3
103a11fd:	cc                                              	int3
103a11fe:	cc                                              	int3
103a11ff:	cc                                              	int3
