# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a16f0 (CASUtils_SimBuilderGetIsDirtyImpl)
Paired Ghidra pseudocode: 103A16F0_CASUtils_SimBuilderGetIsDirtyImpl.c
Window: [0x103a16f0, 0x103a1730) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a16f0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1700: 35 75 1f e8 18 9a 1b 00 8b 10 8b c8 8b 82 cc 00
103a1710: 00 00 56 ff d0 85 c0 74 09 83 78 1c 00 5e 0f 95
103a1720: c0 c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a16f0 <.text+0x3a06f0>:
103a16f0:	56                                              	push   esi
103a16f1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a16f5:	8b c6                                           	mov    eax,esi
103a16f7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a16fc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1701:	75 1f                                           	jne    0x103a1722
103a1703:	e8 18 9a 1b 00                                  	call   0x1055b120
103a1708:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a170a:	8b c8                                           	mov    ecx,eax
103a170c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1712:	56                                              	push   esi
103a1713:	ff d0                                           	call   eax
103a1715:	85 c0                                           	test   eax,eax
103a1717:	74 09                                           	je     0x103a1722
103a1719:	83 78 1c 00                                     	cmp    DWORD PTR [eax+0x1c],0x0
103a171d:	5e                                              	pop    esi
103a171e:	0f 95 c0                                        	setne  al
103a1721:	c3                                              	ret
103a1722:	32 c0                                           	xor    al,al
103a1724:	5e                                              	pop    esi
103a1725:	c3                                              	ret
103a1726:	cc                                              	int3
103a1727:	cc                                              	int3
103a1728:	cc                                              	int3
103a1729:	cc                                              	int3
103a172a:	cc                                              	int3
103a172b:	cc                                              	int3
103a172c:	cc                                              	int3
103a172d:	cc                                              	int3
103a172e:	cc                                              	int3
103a172f:	cc                                              	int3
