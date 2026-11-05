# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1770 (CASUtils_SimBuilderSetFacialBlendImpl)
Paired Ghidra pseudocode: 103A1770_CASUtils_SimBuilderSetFacialBlendImpl.c
Window: [0x103a1770, 0x103a17b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a17b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1770: d9 44 24 18 8b 4c 24 08 8b 54 24 0c 83 ec 14 8b
103a1780: c4 d9 5c 24 10 89 08 8b 4c 24 24 89 50 04 8b 54
103a1790: 24 28 89 48 08 89 50 0c 8b 44 24 18 50 e8 3e e6
103a17a0: ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1770 <.text+0x3a0770>:
103a1770:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
103a1774:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a1778:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a177c:	83 ec 14                                        	sub    esp,0x14
103a177f:	8b c4                                           	mov    eax,esp
103a1781:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
103a1785:	89 08                                           	mov    DWORD PTR [eax],ecx
103a1787:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
103a178b:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a178e:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
103a1792:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a1795:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a1798:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a179c:	50                                              	push   eax
103a179d:	e8 3e e6 ff ff                                  	call   0x1039fde0
103a17a2:	83 c4 18                                        	add    esp,0x18
103a17a5:	c3                                              	ret
103a17a6:	cc                                              	int3
103a17a7:	cc                                              	int3
103a17a8:	cc                                              	int3
103a17a9:	cc                                              	int3
103a17aa:	cc                                              	int3
103a17ab:	cc                                              	int3
103a17ac:	cc                                              	int3
103a17ad:	cc                                              	int3
103a17ae:	cc                                              	int3
103a17af:	cc                                              	int3
