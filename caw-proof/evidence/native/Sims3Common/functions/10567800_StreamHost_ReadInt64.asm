# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567800 (StreamHost_ReadInt64)
Paired Ghidra pseudocode: 10567800_StreamHost_ReadInt64.c
Window: [0x10567800, 0x10567890) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567800: 56 8b 74 24 08 3b 35 a4 b0 c7 10 75 08 8b 0d a8
10567810: b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d 00 00 00
10567820: 60 74 04 33 c9 eb 23 e8 f4 38 ff ff 8b 10 8b c8
10567830: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3 a8 b0
10567840: c7 10 89 35 a4 b0 c7 10 8b c8 85 c9 5e 75 06 b8
10567850: fe ff ff ff c3 8b 44 24 08 c7 00 00 00 00 00 c7
10567860: 40 04 00 00 00 00 8b 11 6a 08 50 8b 42 30 ff d0
10567870: 83 f8 08 74 0f 33 c9 83 f8 ff 0f 95 c1 8d 4c 09
10567880: fd 8b c1 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567800 <.text+0x566800>:
10567800:	56                                              	push   esi
10567801:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567805:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
1056780b:	75 08                                           	jne    0x10567815
1056780d:	8b 0d a8 b0 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7b0a8
10567813:	eb 35                                           	jmp    0x1056784a
10567815:	8b c6                                           	mov    eax,esi
10567817:	25 00 00 00 ff                                  	and    eax,0xff000000
1056781c:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567821:	74 04                                           	je     0x10567827
10567823:	33 c9                                           	xor    ecx,ecx
10567825:	eb 23                                           	jmp    0x1056784a
10567827:	e8 f4 38 ff ff                                  	call   0x1055b120
1056782c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056782e:	8b c8                                           	mov    ecx,eax
10567830:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567836:	56                                              	push   esi
10567837:	ff d0                                           	call   eax
10567839:	85 c0                                           	test   eax,eax
1056783b:	74 0b                                           	je     0x10567848
1056783d:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567842:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10567848:	8b c8                                           	mov    ecx,eax
1056784a:	85 c9                                           	test   ecx,ecx
1056784c:	5e                                              	pop    esi
1056784d:	75 06                                           	jne    0x10567855
1056784f:	b8 fe ff ff ff                                  	mov    eax,0xfffffffe
10567854:	c3                                              	ret
10567855:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10567859:	c7 00 00 00 00 00                               	mov    DWORD PTR [eax],0x0
1056785f:	c7 40 04 00 00 00 00                            	mov    DWORD PTR [eax+0x4],0x0
10567866:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10567868:	6a 08                                           	push   0x8
1056786a:	50                                              	push   eax
1056786b:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
1056786e:	ff d0                                           	call   eax
10567870:	83 f8 08                                        	cmp    eax,0x8
10567873:	74 0f                                           	je     0x10567884
10567875:	33 c9                                           	xor    ecx,ecx
10567877:	83 f8 ff                                        	cmp    eax,0xffffffff
1056787a:	0f 95 c1                                        	setne  cl
1056787d:	8d 4c 09 fd                                     	lea    ecx,[ecx+ecx*1-0x3]
10567881:	8b c1                                           	mov    eax,ecx
10567883:	c3                                              	ret
10567884:	33 c0                                           	xor    eax,eax
10567886:	c3                                              	ret
10567887:	cc                                              	int3
10567888:	cc                                              	int3
10567889:	cc                                              	int3
1056788a:	cc                                              	int3
1056788b:	cc                                              	int3
1056788c:	cc                                              	int3
1056788d:	cc                                              	int3
1056788e:	cc                                              	int3
1056788f:	cc                                              	int3
