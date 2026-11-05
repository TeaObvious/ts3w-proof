# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1730 (CASUtils_SimBuilderGetIsRigDirtyImpl)
Paired Ghidra pseudocode: 103A1730_CASUtils_SimBuilderGetIsRigDirtyImpl.c
Window: [0x103a1730, 0x103a1770) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1730: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1740: 35 75 1e e8 d8 99 1b 00 8b 10 8b c8 8b 82 cc 00
103a1750: 00 00 56 ff d0 85 c0 74 08 8a 80 04 02 00 00 5e
103a1760: c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1730 <.text+0x3a0730>:
103a1730:	56                                              	push   esi
103a1731:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1735:	8b c6                                           	mov    eax,esi
103a1737:	25 00 00 00 ff                                  	and    eax,0xff000000
103a173c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1741:	75 1e                                           	jne    0x103a1761
103a1743:	e8 d8 99 1b 00                                  	call   0x1055b120
103a1748:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a174a:	8b c8                                           	mov    ecx,eax
103a174c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1752:	56                                              	push   esi
103a1753:	ff d0                                           	call   eax
103a1755:	85 c0                                           	test   eax,eax
103a1757:	74 08                                           	je     0x103a1761
103a1759:	8a 80 04 02 00 00                               	mov    al,BYTE PTR [eax+0x204]
103a175f:	5e                                              	pop    esi
103a1760:	c3                                              	ret
103a1761:	32 c0                                           	xor    al,al
103a1763:	5e                                              	pop    esi
103a1764:	c3                                              	ret
103a1765:	cc                                              	int3
103a1766:	cc                                              	int3
103a1767:	cc                                              	int3
103a1768:	cc                                              	int3
103a1769:	cc                                              	int3
103a176a:	cc                                              	int3
103a176b:	cc                                              	int3
103a176c:	cc                                              	int3
103a176d:	cc                                              	int3
103a176e:	cc                                              	int3
103a176f:	cc                                              	int3
