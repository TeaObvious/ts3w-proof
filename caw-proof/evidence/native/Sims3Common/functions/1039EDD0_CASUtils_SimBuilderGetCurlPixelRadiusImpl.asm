# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039edd0 (CASUtils_SimBuilderGetCurlPixelRadiusImpl)
Paired Ghidra pseudocode: 1039EDD0_CASUtils_SimBuilderGetCurlPixelRadiusImpl.c
Window: [0x1039edd0, 0x1039ee10) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ee10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039edd0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039ede0: 35 75 1e e8 38 c3 1b 00 8b 10 8b c8 8b 82 cc 00
1039edf0: 00 00 56 ff d0 85 c0 74 08 d9 80 6c 02 00 00 5e
1039ee00: c3 d9 ee 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039edd0 <.text+0x39ddd0>:
1039edd0:	56                                              	push   esi
1039edd1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039edd5:	8b c6                                           	mov    eax,esi
1039edd7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039eddc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ede1:	75 1e                                           	jne    0x1039ee01
1039ede3:	e8 38 c3 1b 00                                  	call   0x1055b120
1039ede8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039edea:	8b c8                                           	mov    ecx,eax
1039edec:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039edf2:	56                                              	push   esi
1039edf3:	ff d0                                           	call   eax
1039edf5:	85 c0                                           	test   eax,eax
1039edf7:	74 08                                           	je     0x1039ee01
1039edf9:	d9 80 6c 02 00 00                               	fld    DWORD PTR [eax+0x26c]
1039edff:	5e                                              	pop    esi
1039ee00:	c3                                              	ret
1039ee01:	d9 ee                                           	fldz
1039ee03:	5e                                              	pop    esi
1039ee04:	c3                                              	ret
1039ee05:	cc                                              	int3
1039ee06:	cc                                              	int3
1039ee07:	cc                                              	int3
1039ee08:	cc                                              	int3
1039ee09:	cc                                              	int3
1039ee0a:	cc                                              	int3
1039ee0b:	cc                                              	int3
1039ee0c:	cc                                              	int3
1039ee0d:	cc                                              	int3
1039ee0e:	cc                                              	int3
1039ee0f:	cc                                              	int3
