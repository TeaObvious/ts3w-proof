# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056bfa0 (UIManager_GetModalWindowImpl)
Paired Ghidra pseudocode: 1056BFA0_UIManager_GetModalWindowImpl.c
Window: [0x1056bfa0, 0x1056bfe0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056bfe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056bfa0: 56 57 e8 79 f1 fe ff 8b f8 e8 32 13 3d 00 8b 10
1056bfb0: 8b c8 8b 82 8c 00 00 00 ff d0 8b f0 85 f6 74 1a
1056bfc0: 8b 16 8b 02 8b ce ff d0 8b 17 8b 82 c8 00 00 00
1056bfd0: 6a 30 56 8b cf ff d0 5f 5e c3 5f 33 c0 5e c3 cc

LINEAR DISASSEMBLY
1056bfa0 <.text+0x56afa0>:
1056bfa0:	56                                              	push   esi
1056bfa1:	57                                              	push   edi
1056bfa2:	e8 79 f1 fe ff                                  	call   0x1055b120
1056bfa7:	8b f8                                           	mov    edi,eax
1056bfa9:	e8 32 13 3d 00                                  	call   0x1093d2e0
1056bfae:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056bfb0:	8b c8                                           	mov    ecx,eax
1056bfb2:	8b 82 8c 00 00 00                               	mov    eax,DWORD PTR [edx+0x8c]
1056bfb8:	ff d0                                           	call   eax
1056bfba:	8b f0                                           	mov    esi,eax
1056bfbc:	85 f6                                           	test   esi,esi
1056bfbe:	74 1a                                           	je     0x1056bfda
1056bfc0:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056bfc2:	8b 02                                           	mov    eax,DWORD PTR [edx]
1056bfc4:	8b ce                                           	mov    ecx,esi
1056bfc6:	ff d0                                           	call   eax
1056bfc8:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056bfca:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
1056bfd0:	6a 30                                           	push   0x30
1056bfd2:	56                                              	push   esi
1056bfd3:	8b cf                                           	mov    ecx,edi
1056bfd5:	ff d0                                           	call   eax
1056bfd7:	5f                                              	pop    edi
1056bfd8:	5e                                              	pop    esi
1056bfd9:	c3                                              	ret
1056bfda:	5f                                              	pop    edi
1056bfdb:	33 c0                                           	xor    eax,eax
1056bfdd:	5e                                              	pop    esi
1056bfde:	c3                                              	ret
1056bfdf:	cc                                              	int3
