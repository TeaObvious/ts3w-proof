# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fab0 (UIManager_ButtonAutoSizeImpl)
Paired Ghidra pseudocode: 1056FAB0_UIManager_ButtonAutoSizeImpl.c
Window: [0x1056fab0, 0x1056fb00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fb00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fab0: e8 6b b6 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
1056fac0: ff 81 fa 00 00 00 30 75 2c 8b 10 51 8b c8 8b 82
1056fad0: cc 00 00 00 ff d0 85 c0 74 1b 8b 10 8b c8 8b 42
1056fae0: 0c 68 7a 7e d2 8e ff d0 85 c0 74 09 8b 10 8b c8
1056faf0: 8b 42 14 ff e0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fab0 <.text+0x56eab0>:
1056fab0:	e8 6b b6 fe ff                                  	call   0x1055b120
1056fab5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056fab9:	8b d1                                           	mov    edx,ecx
1056fabb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056fac1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056fac7:	75 2c                                           	jne    0x1056faf5
1056fac9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056facb:	51                                              	push   ecx
1056facc:	8b c8                                           	mov    ecx,eax
1056face:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056fad4:	ff d0                                           	call   eax
1056fad6:	85 c0                                           	test   eax,eax
1056fad8:	74 1b                                           	je     0x1056faf5
1056fada:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056fadc:	8b c8                                           	mov    ecx,eax
1056fade:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1056fae1:	68 7a 7e d2 8e                                  	push   0x8ed27e7a
1056fae6:	ff d0                                           	call   eax
1056fae8:	85 c0                                           	test   eax,eax
1056faea:	74 09                                           	je     0x1056faf5
1056faec:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056faee:	8b c8                                           	mov    ecx,eax
1056faf0:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1056faf3:	ff e0                                           	jmp    eax
1056faf5:	c3                                              	ret
1056faf6:	cc                                              	int3
1056faf7:	cc                                              	int3
1056faf8:	cc                                              	int3
1056faf9:	cc                                              	int3
1056fafa:	cc                                              	int3
1056fafb:	cc                                              	int3
1056fafc:	cc                                              	int3
1056fafd:	cc                                              	int3
1056fafe:	cc                                              	int3
1056faff:	cc                                              	int3
