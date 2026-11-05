# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056bdd0 (UIManager_GetMainWindowImpl)
Paired Ghidra pseudocode: 1056BDD0_UIManager_GetMainWindowImpl.c
Window: [0x1056bdd0, 0x1056be10) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056be10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056bdd0: 56 57 e8 49 f3 fe ff 8b f8 e8 02 15 3d 00 85 c0
1056bde0: 74 29 8b 10 8b c8 8b 42 04 ff d0 8b f0 85 f6 74
1056bdf0: 1a 8b 16 8b 02 8b ce ff d0 8b 17 8b 82 c8 00 00
1056be00: 00 6a 30 56 8b cf ff d0 5f 5e c3 5f 33 c0 5e c3

LINEAR DISASSEMBLY
1056bdd0 <.text+0x56add0>:
1056bdd0:	56                                              	push   esi
1056bdd1:	57                                              	push   edi
1056bdd2:	e8 49 f3 fe ff                                  	call   0x1055b120
1056bdd7:	8b f8                                           	mov    edi,eax
1056bdd9:	e8 02 15 3d 00                                  	call   0x1093d2e0
1056bdde:	85 c0                                           	test   eax,eax
1056bde0:	74 29                                           	je     0x1056be0b
1056bde2:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056bde4:	8b c8                                           	mov    ecx,eax
1056bde6:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056bde9:	ff d0                                           	call   eax
1056bdeb:	8b f0                                           	mov    esi,eax
1056bded:	85 f6                                           	test   esi,esi
1056bdef:	74 1a                                           	je     0x1056be0b
1056bdf1:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056bdf3:	8b 02                                           	mov    eax,DWORD PTR [edx]
1056bdf5:	8b ce                                           	mov    ecx,esi
1056bdf7:	ff d0                                           	call   eax
1056bdf9:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056bdfb:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
1056be01:	6a 30                                           	push   0x30
1056be03:	56                                              	push   esi
1056be04:	8b cf                                           	mov    ecx,edi
1056be06:	ff d0                                           	call   eax
1056be08:	5f                                              	pop    edi
1056be09:	5e                                              	pop    esi
1056be0a:	c3                                              	ret
1056be0b:	5f                                              	pop    edi
1056be0c:	33 c0                                           	xor    eax,eax
1056be0e:	5e                                              	pop    esi
1056be0f:	c3                                              	ret
