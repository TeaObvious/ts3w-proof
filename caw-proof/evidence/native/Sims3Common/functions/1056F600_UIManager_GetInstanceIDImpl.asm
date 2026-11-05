# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f600 (UIManager_GetInstanceIDImpl)
Paired Ghidra pseudocode: 1056F600_UIManager_GetInstanceIDImpl.c
Window: [0x1056f600, 0x1056f650) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f650
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f600: e8 1b bb fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
1056f610: ff 81 fa 00 00 00 30 75 2c 8b 10 51 8b c8 8b 82
1056f620: cc 00 00 00 ff d0 85 c0 74 1b 8b 10 8b c8 8b 42
1056f630: 0c 68 18 82 ee ee ff d0 85 c0 74 09 8b 10 8b c8
1056f640: 8b 42 18 ff e0 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f600 <.text+0x56e600>:
1056f600:	e8 1b bb fe ff                                  	call   0x1055b120
1056f605:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056f609:	8b d1                                           	mov    edx,ecx
1056f60b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056f611:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056f617:	75 2c                                           	jne    0x1056f645
1056f619:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f61b:	51                                              	push   ecx
1056f61c:	8b c8                                           	mov    ecx,eax
1056f61e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056f624:	ff d0                                           	call   eax
1056f626:	85 c0                                           	test   eax,eax
1056f628:	74 1b                                           	je     0x1056f645
1056f62a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f62c:	8b c8                                           	mov    ecx,eax
1056f62e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1056f631:	68 18 82 ee ee                                  	push   0xeeee8218
1056f636:	ff d0                                           	call   eax
1056f638:	85 c0                                           	test   eax,eax
1056f63a:	74 09                                           	je     0x1056f645
1056f63c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f63e:	8b c8                                           	mov    ecx,eax
1056f640:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
1056f643:	ff e0                                           	jmp    eax
1056f645:	33 c0                                           	xor    eax,eax
1056f647:	c3                                              	ret
1056f648:	cc                                              	int3
1056f649:	cc                                              	int3
1056f64a:	cc                                              	int3
1056f64b:	cc                                              	int3
1056f64c:	cc                                              	int3
1056f64d:	cc                                              	int3
1056f64e:	cc                                              	int3
1056f64f:	cc                                              	int3
