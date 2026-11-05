# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a17e0 (CASUtils_SimBuilderGetNumBonesImpl)
Paired Ghidra pseudocode: 103A17E0_CASUtils_SimBuilderGetNumBonesImpl.c
Window: [0x103a17e0, 0x103a1820) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a17e0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a17f0: 35 75 1e e8 28 99 1b 00 8b 10 8b c8 8b 82 cc 00
103a1800: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 ff 9c 03
103a1810: 00 33 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a17e0 <.text+0x3a07e0>:
103a17e0:	56                                              	push   esi
103a17e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a17e5:	8b c6                                           	mov    eax,esi
103a17e7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a17ec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a17f1:	75 1e                                           	jne    0x103a1811
103a17f3:	e8 28 99 1b 00                                  	call   0x1055b120
103a17f8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a17fa:	8b c8                                           	mov    ecx,eax
103a17fc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1802:	56                                              	push   esi
103a1803:	ff d0                                           	call   eax
103a1805:	85 c0                                           	test   eax,eax
103a1807:	74 08                                           	je     0x103a1811
103a1809:	8b c8                                           	mov    ecx,eax
103a180b:	5e                                              	pop    esi
103a180c:	e9 ff 9c 03 00                                  	jmp    0x103db510
103a1811:	33 c0                                           	xor    eax,eax
103a1813:	5e                                              	pop    esi
103a1814:	c3                                              	ret
103a1815:	cc                                              	int3
103a1816:	cc                                              	int3
103a1817:	cc                                              	int3
103a1818:	cc                                              	int3
103a1819:	cc                                              	int3
103a181a:	cc                                              	int3
103a181b:	cc                                              	int3
103a181c:	cc                                              	int3
103a181d:	cc                                              	int3
103a181e:	cc                                              	int3
103a181f:	cc                                              	int3
