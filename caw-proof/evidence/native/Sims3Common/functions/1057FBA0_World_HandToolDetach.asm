# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057fba0 (World_HandToolDetach)
Paired Ghidra pseudocode: 1057FBA0_World_HandToolDetach.c
Window: [0x1057fba0, 0x1057fc20) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057fc20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057fba0: e8 8b 62 d5 ff 85 c0 74 2c 56 8b 70 08 57 8b 78
1057fbb0: 0c 8b c6 0b c7 74 17 e8 74 b5 fd ff 8b 10 6a 00
1057fbc0: 6a 00 8b c8 8b 42 18 68 8a d8 5a 04 ff d0 8b d7
1057fbd0: 5f 8b c6 5e c3 33 c0 33 d2 c3 cc cc cc cc cc cc
1057fbe0: 33 c0 56 8b 74 24 08 89 06 89 46 04 89 46 08 89
1057fbf0: 46 0c e8 69 88 b7 ff 8b 80 a4 00 00 00 85 c0 74
1057fc00: 17 8b 48 10 8b 50 14 89 0e 8b 48 08 89 56 04 8b
1057fc10: 50 0c 89 4e 08 89 56 0c 8b c6 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
1057fba0 <.text+0x57eba0>:
1057fba0:	e8 8b 62 d5 ff                                  	call   0x102d5e30
1057fba5:	85 c0                                           	test   eax,eax
1057fba7:	74 2c                                           	je     0x1057fbd5
1057fba9:	56                                              	push   esi
1057fbaa:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
1057fbad:	57                                              	push   edi
1057fbae:	8b 78 0c                                        	mov    edi,DWORD PTR [eax+0xc]
1057fbb1:	8b c6                                           	mov    eax,esi
1057fbb3:	0b c7                                           	or     eax,edi
1057fbb5:	74 17                                           	je     0x1057fbce
1057fbb7:	e8 74 b5 fd ff                                  	call   0x1055b130
1057fbbc:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057fbbe:	6a 00                                           	push   0x0
1057fbc0:	6a 00                                           	push   0x0
1057fbc2:	8b c8                                           	mov    ecx,eax
1057fbc4:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
1057fbc7:	68 8a d8 5a 04                                  	push   0x45ad88a
1057fbcc:	ff d0                                           	call   eax
1057fbce:	8b d7                                           	mov    edx,edi
1057fbd0:	5f                                              	pop    edi
1057fbd1:	8b c6                                           	mov    eax,esi
1057fbd3:	5e                                              	pop    esi
1057fbd4:	c3                                              	ret
1057fbd5:	33 c0                                           	xor    eax,eax
1057fbd7:	33 d2                                           	xor    edx,edx
1057fbd9:	c3                                              	ret
1057fbda:	cc                                              	int3
1057fbdb:	cc                                              	int3
1057fbdc:	cc                                              	int3
1057fbdd:	cc                                              	int3
1057fbde:	cc                                              	int3
1057fbdf:	cc                                              	int3
1057fbe0:	33 c0                                           	xor    eax,eax
1057fbe2:	56                                              	push   esi
1057fbe3:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1057fbe7:	89 06                                           	mov    DWORD PTR [esi],eax
1057fbe9:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1057fbec:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
1057fbef:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
1057fbf2:	e8 69 88 b7 ff                                  	call   0x100f8460
1057fbf7:	8b 80 a4 00 00 00                               	mov    eax,DWORD PTR [eax+0xa4]
1057fbfd:	85 c0                                           	test   eax,eax
1057fbff:	74 17                                           	je     0x1057fc18
1057fc01:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
1057fc04:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1057fc07:	89 0e                                           	mov    DWORD PTR [esi],ecx
1057fc09:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1057fc0c:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
1057fc0f:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1057fc12:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
1057fc15:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
1057fc18:	8b c6                                           	mov    eax,esi
1057fc1a:	5e                                              	pop    esi
1057fc1b:	c3                                              	ret
1057fc1c:	cc                                              	int3
1057fc1d:	cc                                              	int3
1057fc1e:	cc                                              	int3
1057fc1f:	cc                                              	int3
