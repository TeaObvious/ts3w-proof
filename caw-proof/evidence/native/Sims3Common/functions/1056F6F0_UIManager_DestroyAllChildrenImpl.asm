# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f6f0 (UIManager_DestroyAllChildrenImpl)
Paired Ghidra pseudocode: 1056F6F0_UIManager_DestroyAllChildrenImpl.c
Window: [0x1056f6f0, 0x1056f740) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f6f0: e8 2b ba fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
1056f700: ff 81 fa 00 00 00 30 75 2f 8b 10 51 8b c8 8b 82
1056f710: cc 00 00 00 ff d0 85 c0 74 1e 8b 10 8b c8 8b 42
1056f720: 0c 68 18 82 ee ee ff d0 85 c0 74 0c 8b 10 8b c8
1056f730: 8b 82 e8 00 00 00 ff e0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f6f0 <.text+0x56e6f0>:
1056f6f0:	e8 2b ba fe ff                                  	call   0x1055b120
1056f6f5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056f6f9:	8b d1                                           	mov    edx,ecx
1056f6fb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056f701:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056f707:	75 2f                                           	jne    0x1056f738
1056f709:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f70b:	51                                              	push   ecx
1056f70c:	8b c8                                           	mov    ecx,eax
1056f70e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056f714:	ff d0                                           	call   eax
1056f716:	85 c0                                           	test   eax,eax
1056f718:	74 1e                                           	je     0x1056f738
1056f71a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f71c:	8b c8                                           	mov    ecx,eax
1056f71e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1056f721:	68 18 82 ee ee                                  	push   0xeeee8218
1056f726:	ff d0                                           	call   eax
1056f728:	85 c0                                           	test   eax,eax
1056f72a:	74 0c                                           	je     0x1056f738
1056f72c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f72e:	8b c8                                           	mov    ecx,eax
1056f730:	8b 82 e8 00 00 00                               	mov    eax,DWORD PTR [edx+0xe8]
1056f736:	ff e0                                           	jmp    eax
1056f738:	c3                                              	ret
1056f739:	cc                                              	int3
1056f73a:	cc                                              	int3
1056f73b:	cc                                              	int3
1056f73c:	cc                                              	int3
1056f73d:	cc                                              	int3
1056f73e:	cc                                              	int3
1056f73f:	cc                                              	int3
