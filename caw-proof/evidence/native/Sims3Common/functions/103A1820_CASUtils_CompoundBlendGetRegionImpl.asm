# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1820 (CASUtils_CompoundBlendGetRegionImpl)
Paired Ghidra pseudocode: 103A1820_CASUtils_CompoundBlendGetRegionImpl.c
Window: [0x103a1820, 0x103a1860) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1820: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1830: 35 74 04 33 c0 5e c3 e8 e4 98 1b 00 8b 10 8b c8
103a1840: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 40 3c
103a1850: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1820 <.text+0x3a0820>:
103a1820:	56                                              	push   esi
103a1821:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1825:	8b c6                                           	mov    eax,esi
103a1827:	25 00 00 00 ff                                  	and    eax,0xff000000
103a182c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1831:	74 04                                           	je     0x103a1837
103a1833:	33 c0                                           	xor    eax,eax
103a1835:	5e                                              	pop    esi
103a1836:	c3                                              	ret
103a1837:	e8 e4 98 1b 00                                  	call   0x1055b120
103a183c:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a183e:	8b c8                                           	mov    ecx,eax
103a1840:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1846:	56                                              	push   esi
103a1847:	ff d0                                           	call   eax
103a1849:	85 c0                                           	test   eax,eax
103a184b:	74 e6                                           	je     0x103a1833
103a184d:	8b 40 3c                                        	mov    eax,DWORD PTR [eax+0x3c]
103a1850:	5e                                              	pop    esi
103a1851:	c3                                              	ret
103a1852:	cc                                              	int3
103a1853:	cc                                              	int3
103a1854:	cc                                              	int3
103a1855:	cc                                              	int3
103a1856:	cc                                              	int3
103a1857:	cc                                              	int3
103a1858:	cc                                              	int3
103a1859:	cc                                              	int3
103a185a:	cc                                              	int3
103a185b:	cc                                              	int3
103a185c:	cc                                              	int3
103a185d:	cc                                              	int3
103a185e:	cc                                              	int3
103a185f:	cc                                              	int3
