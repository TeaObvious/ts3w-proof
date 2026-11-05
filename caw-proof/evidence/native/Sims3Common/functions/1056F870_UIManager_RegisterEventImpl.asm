# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f870 (UIManager_RegisterEventImpl)
Paired Ghidra pseudocode: 1056F870_UIManager_RegisterEventImpl.c
Window: [0x1056f870, 0x1056f8c0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f8c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f870: e8 ab b8 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
1056f880: ff 81 fa 00 00 00 30 75 34 8b 10 51 8b c8 8b 82
1056f890: cc 00 00 00 ff d0 85 c0 74 23 8b 10 8b c8 8b 42
1056f8a0: 0c 68 18 82 ee ee ff d0 85 c0 74 11 8b 4c 24 08
1056f8b0: 51 8b 0d fc b1 c7 10 50 e8 13 44 fc ff c3 cc cc

LINEAR DISASSEMBLY
1056f870 <.text+0x56e870>:
1056f870:	e8 ab b8 fe ff                                  	call   0x1055b120
1056f875:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056f879:	8b d1                                           	mov    edx,ecx
1056f87b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056f881:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056f887:	75 34                                           	jne    0x1056f8bd
1056f889:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f88b:	51                                              	push   ecx
1056f88c:	8b c8                                           	mov    ecx,eax
1056f88e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056f894:	ff d0                                           	call   eax
1056f896:	85 c0                                           	test   eax,eax
1056f898:	74 23                                           	je     0x1056f8bd
1056f89a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f89c:	8b c8                                           	mov    ecx,eax
1056f89e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1056f8a1:	68 18 82 ee ee                                  	push   0xeeee8218
1056f8a6:	ff d0                                           	call   eax
1056f8a8:	85 c0                                           	test   eax,eax
1056f8aa:	74 11                                           	je     0x1056f8bd
1056f8ac:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1056f8b0:	51                                              	push   ecx
1056f8b1:	8b 0d fc b1 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7b1fc
1056f8b7:	50                                              	push   eax
1056f8b8:	e8 13 44 fc ff                                  	call   0x10533cd0
1056f8bd:	c3                                              	ret
1056f8be:	cc                                              	int3
1056f8bf:	cc                                              	int3
