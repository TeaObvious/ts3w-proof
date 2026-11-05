# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056bd30 (UIManager_ShutdownLayoutImpl)
Paired Ghidra pseudocode: 1056BD30_UIManager_ShutdownLayoutImpl.c
Window: [0x1056bd30, 0x1056bd70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056bd70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056bd30: e8 eb f3 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
1056bd40: ff 81 fa 00 00 00 30 75 1a 8b 10 51 8b c8 8b 82
1056bd50: cc 00 00 00 ff d0 85 c0 74 09 8b 10 8b c8 8b 42
1056bd60: 08 ff e0 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056bd30 <.text+0x56ad30>:
1056bd30:	e8 eb f3 fe ff                                  	call   0x1055b120
1056bd35:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056bd39:	8b d1                                           	mov    edx,ecx
1056bd3b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056bd41:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056bd47:	75 1a                                           	jne    0x1056bd63
1056bd49:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056bd4b:	51                                              	push   ecx
1056bd4c:	8b c8                                           	mov    ecx,eax
1056bd4e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056bd54:	ff d0                                           	call   eax
1056bd56:	85 c0                                           	test   eax,eax
1056bd58:	74 09                                           	je     0x1056bd63
1056bd5a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056bd5c:	8b c8                                           	mov    ecx,eax
1056bd5e:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1056bd61:	ff e0                                           	jmp    eax
1056bd63:	c3                                              	ret
1056bd64:	cc                                              	int3
1056bd65:	cc                                              	int3
1056bd66:	cc                                              	int3
1056bd67:	cc                                              	int3
1056bd68:	cc                                              	int3
1056bd69:	cc                                              	int3
1056bd6a:	cc                                              	int3
1056bd6b:	cc                                              	int3
1056bd6c:	cc                                              	int3
1056bd6d:	cc                                              	int3
1056bd6e:	cc                                              	int3
1056bd6f:	cc                                              	int3
