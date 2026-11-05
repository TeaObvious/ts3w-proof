# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039fce0 (CASUtils_SimBuilderSetHighlightIndexImpl)
Paired Ghidra pseudocode: 1039FCE0_CASUtils_SimBuilderSetHighlightIndexImpl.c
Window: [0x1039fce0, 0x1039fd20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039fd20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039fce0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039fcf0: 35 75 22 e8 28 b4 1b 00 8b 10 8b c8 8b 82 cc 00
1039fd00: 00 00 56 ff d0 85 c0 74 0c 8b 4c 24 0c 51 8b c8
1039fd10: e8 8b c2 03 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039fce0 <.text+0x39ece0>:
1039fce0:	56                                              	push   esi
1039fce1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039fce5:	8b c6                                           	mov    eax,esi
1039fce7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039fcec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039fcf1:	75 22                                           	jne    0x1039fd15
1039fcf3:	e8 28 b4 1b 00                                  	call   0x1055b120
1039fcf8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039fcfa:	8b c8                                           	mov    ecx,eax
1039fcfc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039fd02:	56                                              	push   esi
1039fd03:	ff d0                                           	call   eax
1039fd05:	85 c0                                           	test   eax,eax
1039fd07:	74 0c                                           	je     0x1039fd15
1039fd09:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1039fd0d:	51                                              	push   ecx
1039fd0e:	8b c8                                           	mov    ecx,eax
1039fd10:	e8 8b c2 03 00                                  	call   0x103dbfa0
1039fd15:	5e                                              	pop    esi
1039fd16:	c3                                              	ret
1039fd17:	cc                                              	int3
1039fd18:	cc                                              	int3
1039fd19:	cc                                              	int3
1039fd1a:	cc                                              	int3
1039fd1b:	cc                                              	int3
1039fd1c:	cc                                              	int3
1039fd1d:	cc                                              	int3
1039fd1e:	cc                                              	int3
1039fd1f:	cc                                              	int3
