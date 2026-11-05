# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056bd70 (UIManager_DestroyDrawableImpl)
Paired Ghidra pseudocode: 1056BD70_UIManager_DestroyDrawableImpl.c
Window: [0x1056bd70, 0x1056bdb0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056bdb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056bd70: e8 ab f3 fe ff 85 c0 74 2e 8b 4c 24 04 8b d1 81
1056bd80: e2 00 00 00 ff 81 fa 00 00 00 30 75 1a 8b 10 51
1056bd90: 8b c8 8b 82 d8 00 00 00 ff d0 85 c0 74 09 8b 10
1056bda0: 8b c8 8b 42 04 ff e0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056bd70 <.text+0x56ad70>:
1056bd70:	e8 ab f3 fe ff                                  	call   0x1055b120
1056bd75:	85 c0                                           	test   eax,eax
1056bd77:	74 2e                                           	je     0x1056bda7
1056bd79:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056bd7d:	8b d1                                           	mov    edx,ecx
1056bd7f:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056bd85:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056bd8b:	75 1a                                           	jne    0x1056bda7
1056bd8d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056bd8f:	51                                              	push   ecx
1056bd90:	8b c8                                           	mov    ecx,eax
1056bd92:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
1056bd98:	ff d0                                           	call   eax
1056bd9a:	85 c0                                           	test   eax,eax
1056bd9c:	74 09                                           	je     0x1056bda7
1056bd9e:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056bda0:	8b c8                                           	mov    ecx,eax
1056bda2:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056bda5:	ff e0                                           	jmp    eax
1056bda7:	c3                                              	ret
1056bda8:	cc                                              	int3
1056bda9:	cc                                              	int3
1056bdaa:	cc                                              	int3
1056bdab:	cc                                              	int3
1056bdac:	cc                                              	int3
1056bdad:	cc                                              	int3
1056bdae:	cc                                              	int3
1056bdaf:	cc                                              	int3
