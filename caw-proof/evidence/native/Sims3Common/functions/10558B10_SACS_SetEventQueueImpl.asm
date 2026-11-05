# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558b10 (SACS_SetEventQueueImpl)
Paired Ghidra pseudocode: 10558B10_SACS_SetEventQueueImpl.c
Window: [0x10558b10, 0x10558b50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558b10: 56 57 e8 09 26 00 00 8b 4c 24 0c 8b f0 8b 06 8b
10558b20: 90 cc 00 00 00 51 8b ce ff d2 8b 4c 24 10 8b f8
10558b30: 8b 06 8b 90 cc 00 00 00 51 8b ce ff d2 85 ff 74
10558b40: 08 50 8b cf e8 e7 8f 09 00 5f 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
10558b10 <.text+0x557b10>:
10558b10:	56                                              	push   esi
10558b11:	57                                              	push   edi
10558b12:	e8 09 26 00 00                                  	call   0x1055b120
10558b17:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10558b1b:	8b f0                                           	mov    esi,eax
10558b1d:	8b 06                                           	mov    eax,DWORD PTR [esi]
10558b1f:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
10558b25:	51                                              	push   ecx
10558b26:	8b ce                                           	mov    ecx,esi
10558b28:	ff d2                                           	call   edx
10558b2a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10558b2e:	8b f8                                           	mov    edi,eax
10558b30:	8b 06                                           	mov    eax,DWORD PTR [esi]
10558b32:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
10558b38:	51                                              	push   ecx
10558b39:	8b ce                                           	mov    ecx,esi
10558b3b:	ff d2                                           	call   edx
10558b3d:	85 ff                                           	test   edi,edi
10558b3f:	74 08                                           	je     0x10558b49
10558b41:	50                                              	push   eax
10558b42:	8b cf                                           	mov    ecx,edi
10558b44:	e8 e7 8f 09 00                                  	call   0x105f1b30
10558b49:	5f                                              	pop    edi
10558b4a:	5e                                              	pop    esi
10558b4b:	c3                                              	ret
10558b4c:	cc                                              	int3
10558b4d:	cc                                              	int3
10558b4e:	cc                                              	int3
10558b4f:	cc                                              	int3
