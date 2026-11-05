# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a15e0 (CASUtils_SimBuilderSetSelectionIndexImpl)
Paired Ghidra pseudocode: 103A15E0_CASUtils_SimBuilderSetSelectionIndexImpl.c
Window: [0x103a15e0, 0x103a1620) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a15e0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a15f0: 35 75 22 e8 28 9b 1b 00 8b 10 8b c8 8b 82 cc 00
103a1600: 00 00 56 ff d0 85 c0 74 0c 8b 4c 24 0c 51 8b c8
103a1610: e8 bb a9 03 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a15e0 <.text+0x3a05e0>:
103a15e0:	56                                              	push   esi
103a15e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a15e5:	8b c6                                           	mov    eax,esi
103a15e7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a15ec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a15f1:	75 22                                           	jne    0x103a1615
103a15f3:	e8 28 9b 1b 00                                  	call   0x1055b120
103a15f8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a15fa:	8b c8                                           	mov    ecx,eax
103a15fc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1602:	56                                              	push   esi
103a1603:	ff d0                                           	call   eax
103a1605:	85 c0                                           	test   eax,eax
103a1607:	74 0c                                           	je     0x103a1615
103a1609:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a160d:	51                                              	push   ecx
103a160e:	8b c8                                           	mov    ecx,eax
103a1610:	e8 bb a9 03 00                                  	call   0x103dbfd0
103a1615:	5e                                              	pop    esi
103a1616:	c3                                              	ret
103a1617:	cc                                              	int3
103a1618:	cc                                              	int3
103a1619:	cc                                              	int3
103a161a:	cc                                              	int3
103a161b:	cc                                              	int3
103a161c:	cc                                              	int3
103a161d:	cc                                              	int3
103a161e:	cc                                              	int3
103a161f:	cc                                              	int3
