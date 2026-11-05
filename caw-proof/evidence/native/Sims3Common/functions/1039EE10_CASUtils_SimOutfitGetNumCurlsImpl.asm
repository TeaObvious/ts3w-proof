# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ee10 (CASUtils_SimOutfitGetNumCurlsImpl)
Paired Ghidra pseudocode: 1039EE10_CASUtils_SimOutfitGetNumCurlsImpl.c
Window: [0x1039ee10, 0x1039ee50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ee50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ee10: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039ee20: 35 74 04 d9 ee 5e c3 e8 f4 c2 1b 00 8b 10 8b c8
1039ee30: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 40 7c
1039ee40: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039ee10 <.text+0x39de10>:
1039ee10:	56                                              	push   esi
1039ee11:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ee15:	8b c6                                           	mov    eax,esi
1039ee17:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ee1c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ee21:	74 04                                           	je     0x1039ee27
1039ee23:	d9 ee                                           	fldz
1039ee25:	5e                                              	pop    esi
1039ee26:	c3                                              	ret
1039ee27:	e8 f4 c2 1b 00                                  	call   0x1055b120
1039ee2c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ee2e:	8b c8                                           	mov    ecx,eax
1039ee30:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ee36:	56                                              	push   esi
1039ee37:	ff d0                                           	call   eax
1039ee39:	85 c0                                           	test   eax,eax
1039ee3b:	74 e6                                           	je     0x1039ee23
1039ee3d:	d9 40 7c                                        	fld    DWORD PTR [eax+0x7c]
1039ee40:	5e                                              	pop    esi
1039ee41:	c3                                              	ret
1039ee42:	cc                                              	int3
1039ee43:	cc                                              	int3
1039ee44:	cc                                              	int3
1039ee45:	cc                                              	int3
1039ee46:	cc                                              	int3
1039ee47:	cc                                              	int3
1039ee48:	cc                                              	int3
1039ee49:	cc                                              	int3
1039ee4a:	cc                                              	int3
1039ee4b:	cc                                              	int3
1039ee4c:	cc                                              	int3
1039ee4d:	cc                                              	int3
1039ee4e:	cc                                              	int3
1039ee4f:	cc                                              	int3
