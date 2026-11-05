# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039eec0 (CASUtils_SimOutfitGetCurlPixelRadiusImpl)
Paired Ghidra pseudocode: 1039EEC0_CASUtils_SimOutfitGetCurlPixelRadiusImpl.c
Window: [0x1039eec0, 0x1039ef00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ef00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039eec0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039eed0: 35 74 04 d9 ee 5e c3 e8 44 c2 1b 00 8b 10 8b c8
1039eee0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 80 80
1039eef0: 00 00 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039eec0 <.text+0x39dec0>:
1039eec0:	56                                              	push   esi
1039eec1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039eec5:	8b c6                                           	mov    eax,esi
1039eec7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039eecc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039eed1:	74 04                                           	je     0x1039eed7
1039eed3:	d9 ee                                           	fldz
1039eed5:	5e                                              	pop    esi
1039eed6:	c3                                              	ret
1039eed7:	e8 44 c2 1b 00                                  	call   0x1055b120
1039eedc:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039eede:	8b c8                                           	mov    ecx,eax
1039eee0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039eee6:	56                                              	push   esi
1039eee7:	ff d0                                           	call   eax
1039eee9:	85 c0                                           	test   eax,eax
1039eeeb:	74 e6                                           	je     0x1039eed3
1039eeed:	d9 80 80 00 00 00                               	fld    DWORD PTR [eax+0x80]
1039eef3:	5e                                              	pop    esi
1039eef4:	c3                                              	ret
1039eef5:	cc                                              	int3
1039eef6:	cc                                              	int3
1039eef7:	cc                                              	int3
1039eef8:	cc                                              	int3
1039eef9:	cc                                              	int3
1039eefa:	cc                                              	int3
1039eefb:	cc                                              	int3
1039eefc:	cc                                              	int3
1039eefd:	cc                                              	int3
1039eefe:	cc                                              	int3
1039eeff:	cc                                              	int3
