# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056bf50 (UIManager_GetWindowCursorImpl)
Paired Ghidra pseudocode: 1056BF50_UIManager_GetWindowCursorImpl.c
Window: [0x1056bf50, 0x1056bfa0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056bfa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056bf50: 56 57 e8 c9 f1 fe ff 8b f8 e8 e2 73 07 00 85 c0
1056bf60: 74 2c 8b 4c 24 0c 51 8b c8 e8 a2 7b 07 00 8b f0
1056bf70: 85 f6 74 1a 8b 16 8b 02 8b ce ff d0 8b 17 8b 82
1056bf80: c8 00 00 00 6a 30 56 8b cf ff d0 5f 5e c3 5f 33
1056bf90: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056bf50 <.text+0x56af50>:
1056bf50:	56                                              	push   esi
1056bf51:	57                                              	push   edi
1056bf52:	e8 c9 f1 fe ff                                  	call   0x1055b120
1056bf57:	8b f8                                           	mov    edi,eax
1056bf59:	e8 e2 73 07 00                                  	call   0x105e3340
1056bf5e:	85 c0                                           	test   eax,eax
1056bf60:	74 2c                                           	je     0x1056bf8e
1056bf62:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1056bf66:	51                                              	push   ecx
1056bf67:	8b c8                                           	mov    ecx,eax
1056bf69:	e8 a2 7b 07 00                                  	call   0x105e3b10
1056bf6e:	8b f0                                           	mov    esi,eax
1056bf70:	85 f6                                           	test   esi,esi
1056bf72:	74 1a                                           	je     0x1056bf8e
1056bf74:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056bf76:	8b 02                                           	mov    eax,DWORD PTR [edx]
1056bf78:	8b ce                                           	mov    ecx,esi
1056bf7a:	ff d0                                           	call   eax
1056bf7c:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056bf7e:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
1056bf84:	6a 30                                           	push   0x30
1056bf86:	56                                              	push   esi
1056bf87:	8b cf                                           	mov    ecx,edi
1056bf89:	ff d0                                           	call   eax
1056bf8b:	5f                                              	pop    edi
1056bf8c:	5e                                              	pop    esi
1056bf8d:	c3                                              	ret
1056bf8e:	5f                                              	pop    edi
1056bf8f:	33 c0                                           	xor    eax,eax
1056bf91:	5e                                              	pop    esi
1056bf92:	c3                                              	ret
1056bf93:	cc                                              	int3
1056bf94:	cc                                              	int3
1056bf95:	cc                                              	int3
1056bf96:	cc                                              	int3
1056bf97:	cc                                              	int3
1056bf98:	cc                                              	int3
1056bf99:	cc                                              	int3
1056bf9a:	cc                                              	int3
1056bf9b:	cc                                              	int3
1056bf9c:	cc                                              	int3
1056bf9d:	cc                                              	int3
1056bf9e:	cc                                              	int3
1056bf9f:	cc                                              	int3
