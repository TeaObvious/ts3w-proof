# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056be60 (UIManager_GetCaptureTargetImpl)
Paired Ghidra pseudocode: 1056BE60_UIManager_GetCaptureTargetImpl.c
Window: [0x1056be60, 0x1056beb0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056beb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056be60: 56 57 e8 b9 f2 fe ff 8b f8 e8 72 14 3d 00 8b 4c
1056be70: 24 0c 8b 10 8b 52 60 51 8b c8 ff d2 8b f0 85 f6
1056be80: 74 1a 8b 06 8b 10 8b ce ff d2 8b 07 8b 90 c8 00
1056be90: 00 00 6a 30 56 8b cf ff d2 5f 5e c3 5f 33 c0 5e
1056bea0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056be60 <.text+0x56ae60>:
1056be60:	56                                              	push   esi
1056be61:	57                                              	push   edi
1056be62:	e8 b9 f2 fe ff                                  	call   0x1055b120
1056be67:	8b f8                                           	mov    edi,eax
1056be69:	e8 72 14 3d 00                                  	call   0x1093d2e0
1056be6e:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1056be72:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056be74:	8b 52 60                                        	mov    edx,DWORD PTR [edx+0x60]
1056be77:	51                                              	push   ecx
1056be78:	8b c8                                           	mov    ecx,eax
1056be7a:	ff d2                                           	call   edx
1056be7c:	8b f0                                           	mov    esi,eax
1056be7e:	85 f6                                           	test   esi,esi
1056be80:	74 1a                                           	je     0x1056be9c
1056be82:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056be84:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056be86:	8b ce                                           	mov    ecx,esi
1056be88:	ff d2                                           	call   edx
1056be8a:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056be8c:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
1056be92:	6a 30                                           	push   0x30
1056be94:	56                                              	push   esi
1056be95:	8b cf                                           	mov    ecx,edi
1056be97:	ff d2                                           	call   edx
1056be99:	5f                                              	pop    edi
1056be9a:	5e                                              	pop    esi
1056be9b:	c3                                              	ret
1056be9c:	5f                                              	pop    edi
1056be9d:	33 c0                                           	xor    eax,eax
1056be9f:	5e                                              	pop    esi
1056bea0:	c3                                              	ret
1056bea1:	cc                                              	int3
1056bea2:	cc                                              	int3
1056bea3:	cc                                              	int3
1056bea4:	cc                                              	int3
1056bea5:	cc                                              	int3
1056bea6:	cc                                              	int3
1056bea7:	cc                                              	int3
1056bea8:	cc                                              	int3
1056bea9:	cc                                              	int3
1056beaa:	cc                                              	int3
1056beab:	cc                                              	int3
1056beac:	cc                                              	int3
1056bead:	cc                                              	int3
1056beae:	cc                                              	int3
1056beaf:	cc                                              	int3
