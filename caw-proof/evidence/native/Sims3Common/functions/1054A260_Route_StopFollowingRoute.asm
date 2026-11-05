# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054a260 (Route_StopFollowingRoute)
Paired Ghidra pseudocode: 1054A260_Route_StopFollowingRoute.c
Window: [0x1054a260, 0x1054a2b0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054a2b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054a260: 8b 0d 44 89 c7 10 85 c9 56 74 36 8b 44 24 08 50
1054a270: e8 7b 1e ff ff 8b f0 85 f6 74 26 8b 16 8b 42 10
1054a280: 53 8b ce ff d0 8b 4c 24 10 51 8b ce e8 0f a4 ff
1054a290: ff 8b 16 8a d8 8b 42 14 8b ce ff d0 8a c3 5b 5e
1054a2a0: c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054a260 <.text+0x549260>:
1054a260:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1054a266:	85 c9                                           	test   ecx,ecx
1054a268:	56                                              	push   esi
1054a269:	74 36                                           	je     0x1054a2a1
1054a26b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1054a26f:	50                                              	push   eax
1054a270:	e8 7b 1e ff ff                                  	call   0x1053c0f0
1054a275:	8b f0                                           	mov    esi,eax
1054a277:	85 f6                                           	test   esi,esi
1054a279:	74 26                                           	je     0x1054a2a1
1054a27b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054a27d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1054a280:	53                                              	push   ebx
1054a281:	8b ce                                           	mov    ecx,esi
1054a283:	ff d0                                           	call   eax
1054a285:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1054a289:	51                                              	push   ecx
1054a28a:	8b ce                                           	mov    ecx,esi
1054a28c:	e8 0f a4 ff ff                                  	call   0x105446a0
1054a291:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054a293:	8a d8                                           	mov    bl,al
1054a295:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1054a298:	8b ce                                           	mov    ecx,esi
1054a29a:	ff d0                                           	call   eax
1054a29c:	8a c3                                           	mov    al,bl
1054a29e:	5b                                              	pop    ebx
1054a29f:	5e                                              	pop    esi
1054a2a0:	c3                                              	ret
1054a2a1:	32 c0                                           	xor    al,al
1054a2a3:	5e                                              	pop    esi
1054a2a4:	c3                                              	ret
1054a2a5:	cc                                              	int3
1054a2a6:	cc                                              	int3
1054a2a7:	cc                                              	int3
1054a2a8:	cc                                              	int3
1054a2a9:	cc                                              	int3
1054a2aa:	cc                                              	int3
1054a2ab:	cc                                              	int3
1054a2ac:	cc                                              	int3
1054a2ad:	cc                                              	int3
1054a2ae:	cc                                              	int3
1054a2af:	cc                                              	int3
