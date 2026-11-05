# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054a6f0 (Route_SetLoopStart)
Paired Ghidra pseudocode: 1054A6F0_Route_SetLoopStart.c
Window: [0x1054a6f0, 0x1054a740) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054a740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054a6f0: 8b 0d 44 89 c7 10 85 c9 74 3e 8b 44 24 04 56 50
1054a700: e8 eb 19 ff ff 8b f0 85 f6 74 2c 8b 16 8b 42 10
1054a710: 8b ce ff d0 8b 44 24 0c 3b 86 f0 00 00 00 74 0d
1054a720: 8b ce 89 86 f0 00 00 00 e8 33 e2 ff ff 8b 16 8b
1054a730: 42 14 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054a6f0 <.text+0x5496f0>:
1054a6f0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1054a6f6:	85 c9                                           	test   ecx,ecx
1054a6f8:	74 3e                                           	je     0x1054a738
1054a6fa:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1054a6fe:	56                                              	push   esi
1054a6ff:	50                                              	push   eax
1054a700:	e8 eb 19 ff ff                                  	call   0x1053c0f0
1054a705:	8b f0                                           	mov    esi,eax
1054a707:	85 f6                                           	test   esi,esi
1054a709:	74 2c                                           	je     0x1054a737
1054a70b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054a70d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1054a710:	8b ce                                           	mov    ecx,esi
1054a712:	ff d0                                           	call   eax
1054a714:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1054a718:	3b 86 f0 00 00 00                               	cmp    eax,DWORD PTR [esi+0xf0]
1054a71e:	74 0d                                           	je     0x1054a72d
1054a720:	8b ce                                           	mov    ecx,esi
1054a722:	89 86 f0 00 00 00                               	mov    DWORD PTR [esi+0xf0],eax
1054a728:	e8 33 e2 ff ff                                  	call   0x10548960
1054a72d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054a72f:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1054a732:	8b ce                                           	mov    ecx,esi
1054a734:	5e                                              	pop    esi
1054a735:	ff e0                                           	jmp    eax
1054a737:	5e                                              	pop    esi
1054a738:	c3                                              	ret
1054a739:	cc                                              	int3
1054a73a:	cc                                              	int3
1054a73b:	cc                                              	int3
1054a73c:	cc                                              	int3
1054a73d:	cc                                              	int3
1054a73e:	cc                                              	int3
1054a73f:	cc                                              	int3
