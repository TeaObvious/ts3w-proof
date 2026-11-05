# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1290 (CASUtils_SimBuilderSetMorphWeightBImpl)
Paired Ghidra pseudocode: 103A1290_CASUtils_SimBuilderSetMorphWeightBImpl.c
Window: [0x103a1290, 0x103a12d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a12d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1290: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a12a0: 35 75 25 e8 78 9e 1b 00 8b 10 8b c8 8b 82 cc 00
103a12b0: 00 00 56 ff d0 85 c0 74 0f f3 0f 10 44 24 0c 83
103a12c0: 48 1c 20 f3 0f 11 40 54 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1290 <.text+0x3a0290>:
103a1290:	56                                              	push   esi
103a1291:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1295:	8b c6                                           	mov    eax,esi
103a1297:	25 00 00 00 ff                                  	and    eax,0xff000000
103a129c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a12a1:	75 25                                           	jne    0x103a12c8
103a12a3:	e8 78 9e 1b 00                                  	call   0x1055b120
103a12a8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a12aa:	8b c8                                           	mov    ecx,eax
103a12ac:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a12b2:	56                                              	push   esi
103a12b3:	ff d0                                           	call   eax
103a12b5:	85 c0                                           	test   eax,eax
103a12b7:	74 0f                                           	je     0x103a12c8
103a12b9:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
103a12bf:	83 48 1c 20                                     	or     DWORD PTR [eax+0x1c],0x20
103a12c3:	f3 0f 11 40 54                                  	movss  DWORD PTR [eax+0x54],xmm0
103a12c8:	5e                                              	pop    esi
103a12c9:	c3                                              	ret
103a12ca:	cc                                              	int3
103a12cb:	cc                                              	int3
103a12cc:	cc                                              	int3
103a12cd:	cc                                              	int3
103a12ce:	cc                                              	int3
103a12cf:	cc                                              	int3
