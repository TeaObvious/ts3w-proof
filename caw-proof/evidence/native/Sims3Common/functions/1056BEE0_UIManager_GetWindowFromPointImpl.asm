# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056bee0 (UIManager_GetWindowFromPointImpl)
Paired Ghidra pseudocode: 1056BEE0_UIManager_GetWindowFromPointImpl.c
Window: [0x1056bee0, 0x1056bf30) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056bf30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056bee0: 56 57 e8 39 f2 fe ff 8b f8 e8 f2 13 3d 00 8b 4c
1056bef0: 24 0c 8b 10 8b 52 50 51 8b c8 ff d2 8b f0 85 f6
1056bf00: 74 1a 8b 06 8b 10 8b ce ff d2 8b 07 8b 90 c8 00
1056bf10: 00 00 6a 30 56 8b cf ff d2 5f 5e c3 5f 33 c0 5e
1056bf20: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056bee0 <.text+0x56aee0>:
1056bee0:	56                                              	push   esi
1056bee1:	57                                              	push   edi
1056bee2:	e8 39 f2 fe ff                                  	call   0x1055b120
1056bee7:	8b f8                                           	mov    edi,eax
1056bee9:	e8 f2 13 3d 00                                  	call   0x1093d2e0
1056beee:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1056bef2:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056bef4:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1056bef7:	51                                              	push   ecx
1056bef8:	8b c8                                           	mov    ecx,eax
1056befa:	ff d2                                           	call   edx
1056befc:	8b f0                                           	mov    esi,eax
1056befe:	85 f6                                           	test   esi,esi
1056bf00:	74 1a                                           	je     0x1056bf1c
1056bf02:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056bf04:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056bf06:	8b ce                                           	mov    ecx,esi
1056bf08:	ff d2                                           	call   edx
1056bf0a:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056bf0c:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
1056bf12:	6a 30                                           	push   0x30
1056bf14:	56                                              	push   esi
1056bf15:	8b cf                                           	mov    ecx,edi
1056bf17:	ff d2                                           	call   edx
1056bf19:	5f                                              	pop    edi
1056bf1a:	5e                                              	pop    esi
1056bf1b:	c3                                              	ret
1056bf1c:	5f                                              	pop    edi
1056bf1d:	33 c0                                           	xor    eax,eax
1056bf1f:	5e                                              	pop    esi
1056bf20:	c3                                              	ret
1056bf21:	cc                                              	int3
1056bf22:	cc                                              	int3
1056bf23:	cc                                              	int3
1056bf24:	cc                                              	int3
1056bf25:	cc                                              	int3
1056bf26:	cc                                              	int3
1056bf27:	cc                                              	int3
1056bf28:	cc                                              	int3
1056bf29:	cc                                              	int3
1056bf2a:	cc                                              	int3
1056bf2b:	cc                                              	int3
1056bf2c:	cc                                              	int3
1056bf2d:	cc                                              	int3
1056bf2e:	cc                                              	int3
1056bf2f:	cc                                              	int3
