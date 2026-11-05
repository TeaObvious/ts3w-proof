# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f7d0 (UIManager_InvalidateImpl)
Paired Ghidra pseudocode: 1056F7D0_UIManager_InvalidateImpl.c
Window: [0x1056f7d0, 0x1056f820) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f7d0: e8 4b b9 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
1056f7e0: ff 81 fa 00 00 00 30 75 2f 8b 10 51 8b c8 8b 82
1056f7f0: cc 00 00 00 ff d0 85 c0 74 1e 8b 10 8b c8 8b 42
1056f800: 0c 68 18 82 ee ee ff d0 85 c0 74 0c 8b 10 8b c8
1056f810: 8b 82 90 00 00 00 ff e0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f7d0 <.text+0x56e7d0>:
1056f7d0:	e8 4b b9 fe ff                                  	call   0x1055b120
1056f7d5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056f7d9:	8b d1                                           	mov    edx,ecx
1056f7db:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056f7e1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056f7e7:	75 2f                                           	jne    0x1056f818
1056f7e9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f7eb:	51                                              	push   ecx
1056f7ec:	8b c8                                           	mov    ecx,eax
1056f7ee:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056f7f4:	ff d0                                           	call   eax
1056f7f6:	85 c0                                           	test   eax,eax
1056f7f8:	74 1e                                           	je     0x1056f818
1056f7fa:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f7fc:	8b c8                                           	mov    ecx,eax
1056f7fe:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1056f801:	68 18 82 ee ee                                  	push   0xeeee8218
1056f806:	ff d0                                           	call   eax
1056f808:	85 c0                                           	test   eax,eax
1056f80a:	74 0c                                           	je     0x1056f818
1056f80c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f80e:	8b c8                                           	mov    ecx,eax
1056f810:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
1056f816:	ff e0                                           	jmp    eax
1056f818:	c3                                              	ret
1056f819:	cc                                              	int3
1056f81a:	cc                                              	int3
1056f81b:	cc                                              	int3
1056f81c:	cc                                              	int3
1056f81d:	cc                                              	int3
1056f81e:	cc                                              	int3
1056f81f:	cc                                              	int3
