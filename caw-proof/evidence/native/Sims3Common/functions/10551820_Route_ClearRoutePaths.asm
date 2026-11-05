# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10551820 (Route_ClearRoutePaths)
Paired Ghidra pseudocode: 10551820_Route_ClearRoutePaths.c
Window: [0x10551820, 0x10551860) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10551860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10551820: 8b 0d 44 89 c7 10 85 c9 74 2c 8b 44 24 04 56 50
10551830: e8 bb a8 fe ff 8b f0 85 f6 74 1a 8b 16 8b 42 10
10551840: 8b ce ff d0 8b ce e8 c5 94 ff ff 8b 16 8b 42 14
10551850: 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10551820 <.text+0x550820>:
10551820:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10551826:	85 c9                                           	test   ecx,ecx
10551828:	74 2c                                           	je     0x10551856
1055182a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1055182e:	56                                              	push   esi
1055182f:	50                                              	push   eax
10551830:	e8 bb a8 fe ff                                  	call   0x1053c0f0
10551835:	8b f0                                           	mov    esi,eax
10551837:	85 f6                                           	test   esi,esi
10551839:	74 1a                                           	je     0x10551855
1055183b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055183d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10551840:	8b ce                                           	mov    ecx,esi
10551842:	ff d0                                           	call   eax
10551844:	8b ce                                           	mov    ecx,esi
10551846:	e8 c5 94 ff ff                                  	call   0x1054ad10
1055184b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055184d:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10551850:	8b ce                                           	mov    ecx,esi
10551852:	5e                                              	pop    esi
10551853:	ff e0                                           	jmp    eax
10551855:	5e                                              	pop    esi
10551856:	c3                                              	ret
10551857:	cc                                              	int3
10551858:	cc                                              	int3
10551859:	cc                                              	int3
1055185a:	cc                                              	int3
1055185b:	cc                                              	int3
1055185c:	cc                                              	int3
1055185d:	cc                                              	int3
1055185e:	cc                                              	int3
1055185f:	cc                                              	int3
