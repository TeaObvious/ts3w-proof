# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1670 (CASUtils_SimBuilderSetCacheAtlasesImpl)
Paired Ghidra pseudocode: 103A1670_CASUtils_SimBuilderSetCacheAtlasesImpl.c
Window: [0x103a1670, 0x103a16b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a16b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1670: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1680: 35 75 1d e8 98 9a 1b 00 8b 10 8b c8 8b 82 cc 00
103a1690: 00 00 56 ff d0 85 c0 74 07 8a 4c 24 0c 88 48 6b
103a16a0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1670 <.text+0x3a0670>:
103a1670:	56                                              	push   esi
103a1671:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1675:	8b c6                                           	mov    eax,esi
103a1677:	25 00 00 00 ff                                  	and    eax,0xff000000
103a167c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1681:	75 1d                                           	jne    0x103a16a0
103a1683:	e8 98 9a 1b 00                                  	call   0x1055b120
103a1688:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a168a:	8b c8                                           	mov    ecx,eax
103a168c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1692:	56                                              	push   esi
103a1693:	ff d0                                           	call   eax
103a1695:	85 c0                                           	test   eax,eax
103a1697:	74 07                                           	je     0x103a16a0
103a1699:	8a 4c 24 0c                                     	mov    cl,BYTE PTR [esp+0xc]
103a169d:	88 48 6b                                        	mov    BYTE PTR [eax+0x6b],cl
103a16a0:	5e                                              	pop    esi
103a16a1:	c3                                              	ret
103a16a2:	cc                                              	int3
103a16a3:	cc                                              	int3
103a16a4:	cc                                              	int3
103a16a5:	cc                                              	int3
103a16a6:	cc                                              	int3
103a16a7:	cc                                              	int3
103a16a8:	cc                                              	int3
103a16a9:	cc                                              	int3
103a16aa:	cc                                              	int3
103a16ab:	cc                                              	int3
103a16ac:	cc                                              	int3
103a16ad:	cc                                              	int3
103a16ae:	cc                                              	int3
103a16af:	cc                                              	int3
