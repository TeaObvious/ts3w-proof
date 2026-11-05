# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1920 (CASUtils_BlendUnitGetSortIndexImpl)
Paired Ghidra pseudocode: 103A1920_CASUtils_BlendUnitGetSortIndexImpl.c
Window: [0x103a1920, 0x103a1960) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1920: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1930: 35 74 04 33 c0 5e c3 e8 e4 97 1b 00 8b 10 8b c8
103a1940: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 40 5c
103a1950: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1920 <.text+0x3a0920>:
103a1920:	56                                              	push   esi
103a1921:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1925:	8b c6                                           	mov    eax,esi
103a1927:	25 00 00 00 ff                                  	and    eax,0xff000000
103a192c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1931:	74 04                                           	je     0x103a1937
103a1933:	33 c0                                           	xor    eax,eax
103a1935:	5e                                              	pop    esi
103a1936:	c3                                              	ret
103a1937:	e8 e4 97 1b 00                                  	call   0x1055b120
103a193c:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a193e:	8b c8                                           	mov    ecx,eax
103a1940:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1946:	56                                              	push   esi
103a1947:	ff d0                                           	call   eax
103a1949:	85 c0                                           	test   eax,eax
103a194b:	74 e6                                           	je     0x103a1933
103a194d:	8b 40 5c                                        	mov    eax,DWORD PTR [eax+0x5c]
103a1950:	5e                                              	pop    esi
103a1951:	c3                                              	ret
103a1952:	cc                                              	int3
103a1953:	cc                                              	int3
103a1954:	cc                                              	int3
103a1955:	cc                                              	int3
103a1956:	cc                                              	int3
103a1957:	cc                                              	int3
103a1958:	cc                                              	int3
103a1959:	cc                                              	int3
103a195a:	cc                                              	int3
103a195b:	cc                                              	int3
103a195c:	cc                                              	int3
103a195d:	cc                                              	int3
103a195e:	cc                                              	int3
103a195f:	cc                                              	int3
