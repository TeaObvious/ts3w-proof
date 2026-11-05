# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056be10 (UIManager_GetFocusImpl)
Paired Ghidra pseudocode: 1056BE10_UIManager_GetFocusImpl.c
Window: [0x1056be10, 0x1056be60) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056be60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056be10: 56 57 e8 09 f3 fe ff 8b f8 e8 c2 14 3d 00 8b 4c
1056be20: 24 0c 8b 10 8b 52 54 51 8b c8 ff d2 8b f0 85 f6
1056be30: 74 1a 8b 06 8b 10 8b ce ff d2 8b 07 8b 90 c8 00
1056be40: 00 00 6a 30 56 8b cf ff d2 5f 5e c3 5f 33 c0 5e
1056be50: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056be10 <.text+0x56ae10>:
1056be10:	56                                              	push   esi
1056be11:	57                                              	push   edi
1056be12:	e8 09 f3 fe ff                                  	call   0x1055b120
1056be17:	8b f8                                           	mov    edi,eax
1056be19:	e8 c2 14 3d 00                                  	call   0x1093d2e0
1056be1e:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1056be22:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056be24:	8b 52 54                                        	mov    edx,DWORD PTR [edx+0x54]
1056be27:	51                                              	push   ecx
1056be28:	8b c8                                           	mov    ecx,eax
1056be2a:	ff d2                                           	call   edx
1056be2c:	8b f0                                           	mov    esi,eax
1056be2e:	85 f6                                           	test   esi,esi
1056be30:	74 1a                                           	je     0x1056be4c
1056be32:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056be34:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056be36:	8b ce                                           	mov    ecx,esi
1056be38:	ff d2                                           	call   edx
1056be3a:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056be3c:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
1056be42:	6a 30                                           	push   0x30
1056be44:	56                                              	push   esi
1056be45:	8b cf                                           	mov    ecx,edi
1056be47:	ff d2                                           	call   edx
1056be49:	5f                                              	pop    edi
1056be4a:	5e                                              	pop    esi
1056be4b:	c3                                              	ret
1056be4c:	5f                                              	pop    edi
1056be4d:	33 c0                                           	xor    eax,eax
1056be4f:	5e                                              	pop    esi
1056be50:	c3                                              	ret
1056be51:	cc                                              	int3
1056be52:	cc                                              	int3
1056be53:	cc                                              	int3
1056be54:	cc                                              	int3
1056be55:	cc                                              	int3
1056be56:	cc                                              	int3
1056be57:	cc                                              	int3
1056be58:	cc                                              	int3
1056be59:	cc                                              	int3
1056be5a:	cc                                              	int3
1056be5b:	cc                                              	int3
1056be5c:	cc                                              	int3
1056be5d:	cc                                              	int3
1056be5e:	cc                                              	int3
1056be5f:	cc                                              	int3
