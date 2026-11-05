# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052fd40 (Camera_DisableObjectFollow)
Paired Ghidra pseudocode: 1052FD40_Camera_DisableObjectFollow.c
Window: [0x1052fd40, 0x1052fda0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052fda0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052fd40: e8 eb c8 22 00 85 c0 74 53 8b c8 e8 30 7d 40 00
1052fd50: 85 c0 74 48 56 8b c8 e8 f4 cb 22 00 8b f0 85 f6
1052fd60: 74 39 8b 06 8b 50 0c 57 68 89 dd 0f 11 8b ce ff
1052fd70: d2 8b f8 8b 06 8b 50 0c 68 db 4e 39 4d 8b ce ff
1052fd80: d2 85 ff 74 09 8b cf 5f 5e e9 72 69 23 00 85 c0
1052fd90: 5f 74 08 8b c8 5e e9 45 c9 23 00 5e c3 cc cc cc

LINEAR DISASSEMBLY
1052fd40 <.text+0x52ed40>:
1052fd40:	e8 eb c8 22 00                                  	call   0x1075c630
1052fd45:	85 c0                                           	test   eax,eax
1052fd47:	74 53                                           	je     0x1052fd9c
1052fd49:	8b c8                                           	mov    ecx,eax
1052fd4b:	e8 30 7d 40 00                                  	call   0x10937a80
1052fd50:	85 c0                                           	test   eax,eax
1052fd52:	74 48                                           	je     0x1052fd9c
1052fd54:	56                                              	push   esi
1052fd55:	8b c8                                           	mov    ecx,eax
1052fd57:	e8 f4 cb 22 00                                  	call   0x1075c950
1052fd5c:	8b f0                                           	mov    esi,eax
1052fd5e:	85 f6                                           	test   esi,esi
1052fd60:	74 39                                           	je     0x1052fd9b
1052fd62:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052fd64:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052fd67:	57                                              	push   edi
1052fd68:	68 89 dd 0f 11                                  	push   0x110fdd89
1052fd6d:	8b ce                                           	mov    ecx,esi
1052fd6f:	ff d2                                           	call   edx
1052fd71:	8b f8                                           	mov    edi,eax
1052fd73:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052fd75:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052fd78:	68 db 4e 39 4d                                  	push   0x4d394edb
1052fd7d:	8b ce                                           	mov    ecx,esi
1052fd7f:	ff d2                                           	call   edx
1052fd81:	85 ff                                           	test   edi,edi
1052fd83:	74 09                                           	je     0x1052fd8e
1052fd85:	8b cf                                           	mov    ecx,edi
1052fd87:	5f                                              	pop    edi
1052fd88:	5e                                              	pop    esi
1052fd89:	e9 72 69 23 00                                  	jmp    0x10766700
1052fd8e:	85 c0                                           	test   eax,eax
1052fd90:	5f                                              	pop    edi
1052fd91:	74 08                                           	je     0x1052fd9b
1052fd93:	8b c8                                           	mov    ecx,eax
1052fd95:	5e                                              	pop    esi
1052fd96:	e9 45 c9 23 00                                  	jmp    0x1076c6e0
1052fd9b:	5e                                              	pop    esi
1052fd9c:	c3                                              	ret
1052fd9d:	cc                                              	int3
1052fd9e:	cc                                              	int3
1052fd9f:	cc                                              	int3
