# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039fca0 (CASUtils_SimBuilderSetHighlightModeImpl)
Paired Ghidra pseudocode: 1039FCA0_CASUtils_SimBuilderSetHighlightModeImpl.c
Window: [0x1039fca0, 0x1039fce0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039fce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039fca0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039fcb0: 35 75 22 e8 68 b4 1b 00 8b 10 8b c8 8b 82 cc 00
1039fcc0: 00 00 56 ff d0 85 c0 74 0c 8b 4c 24 0c 51 8b c8
1039fcd0: e8 fb b6 03 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039fca0 <.text+0x39eca0>:
1039fca0:	56                                              	push   esi
1039fca1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039fca5:	8b c6                                           	mov    eax,esi
1039fca7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039fcac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039fcb1:	75 22                                           	jne    0x1039fcd5
1039fcb3:	e8 68 b4 1b 00                                  	call   0x1055b120
1039fcb8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039fcba:	8b c8                                           	mov    ecx,eax
1039fcbc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039fcc2:	56                                              	push   esi
1039fcc3:	ff d0                                           	call   eax
1039fcc5:	85 c0                                           	test   eax,eax
1039fcc7:	74 0c                                           	je     0x1039fcd5
1039fcc9:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1039fccd:	51                                              	push   ecx
1039fcce:	8b c8                                           	mov    ecx,eax
1039fcd0:	e8 fb b6 03 00                                  	call   0x103db3d0
1039fcd5:	5e                                              	pop    esi
1039fcd6:	c3                                              	ret
1039fcd7:	cc                                              	int3
1039fcd8:	cc                                              	int3
1039fcd9:	cc                                              	int3
1039fcda:	cc                                              	int3
1039fcdb:	cc                                              	int3
1039fcdc:	cc                                              	int3
1039fcdd:	cc                                              	int3
1039fcde:	cc                                              	int3
1039fcdf:	cc                                              	int3
