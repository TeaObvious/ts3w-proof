# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581d30 (World_ObjectDesigner_GetCurrentPatternImpl)
Paired Ghidra pseudocode: 10581D30_World_ObjectDesigner_GetCurrentPatternImpl.c
Window: [0x10581d30, 0x10581d70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581d30: 53 55 56 33 f6 57 8b fe 8b de 8b ee e8 1f 67 b7
10581d40: ff 8b 80 a4 00 00 00 85 c0 74 0c 8b 70 10 8b 78
10581d50: 14 8b 58 08 8b 68 0c 8b 44 24 14 89 30 89 78 04
10581d60: 5f 89 58 08 5e 89 68 0c 5d 5b c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10581d30 <.text+0x580d30>:
10581d30:	53                                              	push   ebx
10581d31:	55                                              	push   ebp
10581d32:	56                                              	push   esi
10581d33:	33 f6                                           	xor    esi,esi
10581d35:	57                                              	push   edi
10581d36:	8b fe                                           	mov    edi,esi
10581d38:	8b de                                           	mov    ebx,esi
10581d3a:	8b ee                                           	mov    ebp,esi
10581d3c:	e8 1f 67 b7 ff                                  	call   0x100f8460
10581d41:	8b 80 a4 00 00 00                               	mov    eax,DWORD PTR [eax+0xa4]
10581d47:	85 c0                                           	test   eax,eax
10581d49:	74 0c                                           	je     0x10581d57
10581d4b:	8b 70 10                                        	mov    esi,DWORD PTR [eax+0x10]
10581d4e:	8b 78 14                                        	mov    edi,DWORD PTR [eax+0x14]
10581d51:	8b 58 08                                        	mov    ebx,DWORD PTR [eax+0x8]
10581d54:	8b 68 0c                                        	mov    ebp,DWORD PTR [eax+0xc]
10581d57:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10581d5b:	89 30                                           	mov    DWORD PTR [eax],esi
10581d5d:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
10581d60:	5f                                              	pop    edi
10581d61:	89 58 08                                        	mov    DWORD PTR [eax+0x8],ebx
10581d64:	5e                                              	pop    esi
10581d65:	89 68 0c                                        	mov    DWORD PTR [eax+0xc],ebp
10581d68:	5d                                              	pop    ebp
10581d69:	5b                                              	pop    ebx
10581d6a:	c3                                              	ret
10581d6b:	cc                                              	int3
10581d6c:	cc                                              	int3
10581d6d:	cc                                              	int3
10581d6e:	cc                                              	int3
10581d6f:	cc                                              	int3
