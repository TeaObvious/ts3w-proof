# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105407f0 (Route_GetRouteMetaType)
Paired Ghidra pseudocode: 105407F0_Route_GetRouteMetaType.c
Window: [0x105407f0, 0x10540830) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105407f0: 8b 0d 44 89 c7 10 85 c9 56 74 2e 8b 44 24 08 50
10540800: e8 eb b8 ff ff 8b f0 85 f6 74 1e 8b 16 8b 42 10
10540810: 57 8b ce ff d0 8b 16 8b 42 14 8b be f0 01 00 00
10540820: 8b ce ff d0 8b c7 5f 5e c3 33 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
105407f0 <.text+0x53f7f0>:
105407f0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
105407f6:	85 c9                                           	test   ecx,ecx
105407f8:	56                                              	push   esi
105407f9:	74 2e                                           	je     0x10540829
105407fb:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105407ff:	50                                              	push   eax
10540800:	e8 eb b8 ff ff                                  	call   0x1053c0f0
10540805:	8b f0                                           	mov    esi,eax
10540807:	85 f6                                           	test   esi,esi
10540809:	74 1e                                           	je     0x10540829
1054080b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054080d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10540810:	57                                              	push   edi
10540811:	8b ce                                           	mov    ecx,esi
10540813:	ff d0                                           	call   eax
10540815:	8b 16                                           	mov    edx,DWORD PTR [esi]
10540817:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1054081a:	8b be f0 01 00 00                               	mov    edi,DWORD PTR [esi+0x1f0]
10540820:	8b ce                                           	mov    ecx,esi
10540822:	ff d0                                           	call   eax
10540824:	8b c7                                           	mov    eax,edi
10540826:	5f                                              	pop    edi
10540827:	5e                                              	pop    esi
10540828:	c3                                              	ret
10540829:	33 c0                                           	xor    eax,eax
1054082b:	5e                                              	pop    esi
1054082c:	c3                                              	ret
1054082d:	cc                                              	int3
1054082e:	cc                                              	int3
1054082f:	cc                                              	int3
