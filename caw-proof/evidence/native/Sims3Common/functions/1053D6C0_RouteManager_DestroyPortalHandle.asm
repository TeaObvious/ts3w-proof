# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d6c0 (RouteManager_DestroyPortalHandle)
Paired Ghidra pseudocode: 1053D6C0_RouteManager_DestroyPortalHandle.c
Window: [0x1053d6c0, 0x1053d6f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d6f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d6c0: e8 5b da 01 00 85 c0 74 1e 8b 4c 24 04 8b 10 8b
1053d6d0: 92 d8 00 00 00 51 8b c8 ff d2 85 c0 74 09 8b 10
1053d6e0: 8b c8 8b 42 04 ff e0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d6c0 <.text+0x53c6c0>:
1053d6c0:	e8 5b da 01 00                                  	call   0x1055b120
1053d6c5:	85 c0                                           	test   eax,eax
1053d6c7:	74 1e                                           	je     0x1053d6e7
1053d6c9:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1053d6cd:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053d6cf:	8b 92 d8 00 00 00                               	mov    edx,DWORD PTR [edx+0xd8]
1053d6d5:	51                                              	push   ecx
1053d6d6:	8b c8                                           	mov    ecx,eax
1053d6d8:	ff d2                                           	call   edx
1053d6da:	85 c0                                           	test   eax,eax
1053d6dc:	74 09                                           	je     0x1053d6e7
1053d6de:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053d6e0:	8b c8                                           	mov    ecx,eax
1053d6e2:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1053d6e5:	ff e0                                           	jmp    eax
1053d6e7:	c3                                              	ret
1053d6e8:	cc                                              	int3
1053d6e9:	cc                                              	int3
1053d6ea:	cc                                              	int3
1053d6eb:	cc                                              	int3
1053d6ec:	cc                                              	int3
1053d6ed:	cc                                              	int3
1053d6ee:	cc                                              	int3
1053d6ef:	cc                                              	int3
