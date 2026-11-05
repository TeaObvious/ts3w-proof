# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f5b0 (UIManager_GetClassIDImpl)
Paired Ghidra pseudocode: 1056F5B0_UIManager_GetClassIDImpl.c
Window: [0x1056f5b0, 0x1056f600) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f5b0: e8 6b bb fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
1056f5c0: ff 81 fa 00 00 00 30 75 2c 8b 10 51 8b c8 8b 82
1056f5d0: cc 00 00 00 ff d0 85 c0 74 1b 8b 10 8b c8 8b 42
1056f5e0: 0c 68 82 83 c5 ee ff d0 85 c0 74 09 8b 10 8b c8
1056f5f0: 8b 42 14 ff e0 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f5b0 <.text+0x56e5b0>:
1056f5b0:	e8 6b bb fe ff                                  	call   0x1055b120
1056f5b5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056f5b9:	8b d1                                           	mov    edx,ecx
1056f5bb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056f5c1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056f5c7:	75 2c                                           	jne    0x1056f5f5
1056f5c9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f5cb:	51                                              	push   ecx
1056f5cc:	8b c8                                           	mov    ecx,eax
1056f5ce:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056f5d4:	ff d0                                           	call   eax
1056f5d6:	85 c0                                           	test   eax,eax
1056f5d8:	74 1b                                           	je     0x1056f5f5
1056f5da:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f5dc:	8b c8                                           	mov    ecx,eax
1056f5de:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1056f5e1:	68 82 83 c5 ee                                  	push   0xeec58382
1056f5e6:	ff d0                                           	call   eax
1056f5e8:	85 c0                                           	test   eax,eax
1056f5ea:	74 09                                           	je     0x1056f5f5
1056f5ec:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f5ee:	8b c8                                           	mov    ecx,eax
1056f5f0:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1056f5f3:	ff e0                                           	jmp    eax
1056f5f5:	33 c0                                           	xor    eax,eax
1056f5f7:	c3                                              	ret
1056f5f8:	cc                                              	int3
1056f5f9:	cc                                              	int3
1056f5fa:	cc                                              	int3
1056f5fb:	cc                                              	int3
1056f5fc:	cc                                              	int3
1056f5fd:	cc                                              	int3
1056f5fe:	cc                                              	int3
1056f5ff:	cc                                              	int3
