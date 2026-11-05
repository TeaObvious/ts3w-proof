# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1026c890 (CTProductModularObject_FreeImpl)
Paired Ghidra pseudocode: 1026C890_CTProductModularObject_FreeImpl.c
Window: [0x1026c890, 0x1026c8d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1026c8d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1026c890: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1026c8a0: 54 75 20 e8 78 e8 2e 00 8b 10 8b c8 8b 82 d8 00
1026c8b0: 00 00 56 ff d0 85 c0 74 0a 8b 10 8b c8 8b 42 04
1026c8c0: 5e ff e0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1026c890 <.text+0x26b890>:
1026c890:	56                                              	push   esi
1026c891:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1026c895:	8b c6                                           	mov    eax,esi
1026c897:	25 00 00 00 ff                                  	and    eax,0xff000000
1026c89c:	3d 00 00 00 54                                  	cmp    eax,0x54000000
1026c8a1:	75 20                                           	jne    0x1026c8c3
1026c8a3:	e8 78 e8 2e 00                                  	call   0x1055b120
1026c8a8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1026c8aa:	8b c8                                           	mov    ecx,eax
1026c8ac:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
1026c8b2:	56                                              	push   esi
1026c8b3:	ff d0                                           	call   eax
1026c8b5:	85 c0                                           	test   eax,eax
1026c8b7:	74 0a                                           	je     0x1026c8c3
1026c8b9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1026c8bb:	8b c8                                           	mov    ecx,eax
1026c8bd:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1026c8c0:	5e                                              	pop    esi
1026c8c1:	ff e0                                           	jmp    eax
1026c8c3:	5e                                              	pop    esi
1026c8c4:	c3                                              	ret
1026c8c5:	cc                                              	int3
1026c8c6:	cc                                              	int3
1026c8c7:	cc                                              	int3
1026c8c8:	cc                                              	int3
1026c8c9:	cc                                              	int3
1026c8ca:	cc                                              	int3
1026c8cb:	cc                                              	int3
1026c8cc:	cc                                              	int3
1026c8cd:	cc                                              	int3
1026c8ce:	cc                                              	int3
1026c8cf:	cc                                              	int3
