# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f8c0 (UIManager_DeRegisterEventImpl)
Paired Ghidra pseudocode: 1056F8C0_UIManager_DeRegisterEventImpl.c
Window: [0x1056f8c0, 0x1056f910) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f8c0: e8 5b b8 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
1056f8d0: ff 81 fa 00 00 00 30 75 34 8b 10 51 8b c8 8b 82
1056f8e0: cc 00 00 00 ff d0 85 c0 74 23 8b 10 8b c8 8b 42
1056f8f0: 0c 68 18 82 ee ee ff d0 85 c0 74 11 8b 4c 24 08
1056f900: 51 8b 0d fc b1 c7 10 50 e8 03 43 fc ff c3 cc cc

LINEAR DISASSEMBLY
1056f8c0 <.text+0x56e8c0>:
1056f8c0:	e8 5b b8 fe ff                                  	call   0x1055b120
1056f8c5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056f8c9:	8b d1                                           	mov    edx,ecx
1056f8cb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056f8d1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056f8d7:	75 34                                           	jne    0x1056f90d
1056f8d9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f8db:	51                                              	push   ecx
1056f8dc:	8b c8                                           	mov    ecx,eax
1056f8de:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056f8e4:	ff d0                                           	call   eax
1056f8e6:	85 c0                                           	test   eax,eax
1056f8e8:	74 23                                           	je     0x1056f90d
1056f8ea:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f8ec:	8b c8                                           	mov    ecx,eax
1056f8ee:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1056f8f1:	68 18 82 ee ee                                  	push   0xeeee8218
1056f8f6:	ff d0                                           	call   eax
1056f8f8:	85 c0                                           	test   eax,eax
1056f8fa:	74 11                                           	je     0x1056f90d
1056f8fc:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1056f900:	51                                              	push   ecx
1056f901:	8b 0d fc b1 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7b1fc
1056f907:	50                                              	push   eax
1056f908:	e8 03 43 fc ff                                  	call   0x10533c10
1056f90d:	c3                                              	ret
1056f90e:	cc                                              	int3
1056f90f:	cc                                              	int3
