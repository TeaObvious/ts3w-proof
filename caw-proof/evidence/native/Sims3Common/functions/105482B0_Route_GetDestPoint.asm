# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105482b0 (Route_GetDestPoint)
Paired Ghidra pseudocode: 105482B0_Route_GetDestPoint.c
Window: [0x105482b0, 0x10548300) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105482b0: 8b 0d 44 89 c7 10 85 c9 56 74 36 8b 44 24 08 50
105482c0: e8 2b 3e ff ff 8b f0 85 f6 74 26 8b 16 8b 42 10
105482d0: 53 8b ce ff d0 8b 4c 24 10 51 8b ce e8 5f c4 ff
105482e0: ff 8b 16 8a d8 8b 42 14 8b ce ff d0 8a c3 5b 5e
105482f0: c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105482b0 <.text+0x5472b0>:
105482b0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
105482b6:	85 c9                                           	test   ecx,ecx
105482b8:	56                                              	push   esi
105482b9:	74 36                                           	je     0x105482f1
105482bb:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105482bf:	50                                              	push   eax
105482c0:	e8 2b 3e ff ff                                  	call   0x1053c0f0
105482c5:	8b f0                                           	mov    esi,eax
105482c7:	85 f6                                           	test   esi,esi
105482c9:	74 26                                           	je     0x105482f1
105482cb:	8b 16                                           	mov    edx,DWORD PTR [esi]
105482cd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
105482d0:	53                                              	push   ebx
105482d1:	8b ce                                           	mov    ecx,esi
105482d3:	ff d0                                           	call   eax
105482d5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105482d9:	51                                              	push   ecx
105482da:	8b ce                                           	mov    ecx,esi
105482dc:	e8 5f c4 ff ff                                  	call   0x10544740
105482e1:	8b 16                                           	mov    edx,DWORD PTR [esi]
105482e3:	8a d8                                           	mov    bl,al
105482e5:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
105482e8:	8b ce                                           	mov    ecx,esi
105482ea:	ff d0                                           	call   eax
105482ec:	8a c3                                           	mov    al,bl
105482ee:	5b                                              	pop    ebx
105482ef:	5e                                              	pop    esi
105482f0:	c3                                              	ret
105482f1:	32 c0                                           	xor    al,al
105482f3:	5e                                              	pop    esi
105482f4:	c3                                              	ret
105482f5:	cc                                              	int3
105482f6:	cc                                              	int3
105482f7:	cc                                              	int3
105482f8:	cc                                              	int3
105482f9:	cc                                              	int3
105482fa:	cc                                              	int3
105482fb:	cc                                              	int3
105482fc:	cc                                              	int3
105482fd:	cc                                              	int3
105482fe:	cc                                              	int3
105482ff:	cc                                              	int3
