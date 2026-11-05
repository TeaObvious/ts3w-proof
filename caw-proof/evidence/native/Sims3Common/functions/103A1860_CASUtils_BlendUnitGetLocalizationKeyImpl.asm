# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1860 (CASUtils_BlendUnitGetLocalizationKeyImpl)
Paired Ghidra pseudocode: 103A1860_CASUtils_BlendUnitGetLocalizationKeyImpl.c
Window: [0x103a1860, 0x103a18a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a18a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1860: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1870: 35 74 06 33 c0 33 d2 5e c3 e8 a2 98 1b 00 8b 10
103a1880: 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e4 8b
103a1890: 48 48 8b 50 4c 8b c1 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1860 <.text+0x3a0860>:
103a1860:	56                                              	push   esi
103a1861:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1865:	8b c6                                           	mov    eax,esi
103a1867:	25 00 00 00 ff                                  	and    eax,0xff000000
103a186c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1871:	74 06                                           	je     0x103a1879
103a1873:	33 c0                                           	xor    eax,eax
103a1875:	33 d2                                           	xor    edx,edx
103a1877:	5e                                              	pop    esi
103a1878:	c3                                              	ret
103a1879:	e8 a2 98 1b 00                                  	call   0x1055b120
103a187e:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1880:	8b c8                                           	mov    ecx,eax
103a1882:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1888:	56                                              	push   esi
103a1889:	ff d0                                           	call   eax
103a188b:	85 c0                                           	test   eax,eax
103a188d:	74 e4                                           	je     0x103a1873
103a188f:	8b 48 48                                        	mov    ecx,DWORD PTR [eax+0x48]
103a1892:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
103a1895:	8b c1                                           	mov    eax,ecx
103a1897:	5e                                              	pop    esi
103a1898:	c3                                              	ret
103a1899:	cc                                              	int3
103a189a:	cc                                              	int3
103a189b:	cc                                              	int3
103a189c:	cc                                              	int3
103a189d:	cc                                              	int3
103a189e:	cc                                              	int3
103a189f:	cc                                              	int3
