# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ed90 (CASUtils_SimBuilderGetNumCurlsImpl)
Paired Ghidra pseudocode: 1039ED90_CASUtils_SimBuilderGetNumCurlsImpl.c
Window: [0x1039ed90, 0x1039edd0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039edd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ed90: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039eda0: 35 75 1e e8 78 c3 1b 00 8b 10 8b c8 8b 82 cc 00
1039edb0: 00 00 56 ff d0 85 c0 74 08 d9 80 68 02 00 00 5e
1039edc0: c3 d9 ee 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039ed90 <.text+0x39dd90>:
1039ed90:	56                                              	push   esi
1039ed91:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ed95:	8b c6                                           	mov    eax,esi
1039ed97:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ed9c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039eda1:	75 1e                                           	jne    0x1039edc1
1039eda3:	e8 78 c3 1b 00                                  	call   0x1055b120
1039eda8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039edaa:	8b c8                                           	mov    ecx,eax
1039edac:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039edb2:	56                                              	push   esi
1039edb3:	ff d0                                           	call   eax
1039edb5:	85 c0                                           	test   eax,eax
1039edb7:	74 08                                           	je     0x1039edc1
1039edb9:	d9 80 68 02 00 00                               	fld    DWORD PTR [eax+0x268]
1039edbf:	5e                                              	pop    esi
1039edc0:	c3                                              	ret
1039edc1:	d9 ee                                           	fldz
1039edc3:	5e                                              	pop    esi
1039edc4:	c3                                              	ret
1039edc5:	cc                                              	int3
1039edc6:	cc                                              	int3
1039edc7:	cc                                              	int3
1039edc8:	cc                                              	int3
1039edc9:	cc                                              	int3
1039edca:	cc                                              	int3
1039edcb:	cc                                              	int3
1039edcc:	cc                                              	int3
1039edcd:	cc                                              	int3
1039edce:	cc                                              	int3
1039edcf:	cc                                              	int3
