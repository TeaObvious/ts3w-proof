# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a04a0 (CASUtils_SimOutfitDumpImpl)
Paired Ghidra pseudocode: 103A04A0_CASUtils_SimOutfitDumpImpl.c
Window: [0x103a04a0, 0x103a04e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a04e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a04a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a04b0: 35 75 1e e8 68 ac 1b 00 8b 10 8b c8 8b 82 cc 00
103a04c0: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 af 02 04
103a04d0: 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a04a0 <.text+0x39f4a0>:
103a04a0:	56                                              	push   esi
103a04a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a04a5:	8b c6                                           	mov    eax,esi
103a04a7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a04ac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a04b1:	75 1e                                           	jne    0x103a04d1
103a04b3:	e8 68 ac 1b 00                                  	call   0x1055b120
103a04b8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a04ba:	8b c8                                           	mov    ecx,eax
103a04bc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a04c2:	56                                              	push   esi
103a04c3:	ff d0                                           	call   eax
103a04c5:	85 c0                                           	test   eax,eax
103a04c7:	74 08                                           	je     0x103a04d1
103a04c9:	8b c8                                           	mov    ecx,eax
103a04cb:	5e                                              	pop    esi
103a04cc:	e9 af 02 04 00                                  	jmp    0x103e0780
103a04d1:	5e                                              	pop    esi
103a04d2:	c3                                              	ret
103a04d3:	cc                                              	int3
103a04d4:	cc                                              	int3
103a04d5:	cc                                              	int3
103a04d6:	cc                                              	int3
103a04d7:	cc                                              	int3
103a04d8:	cc                                              	int3
103a04d9:	cc                                              	int3
103a04da:	cc                                              	int3
103a04db:	cc                                              	int3
103a04dc:	cc                                              	int3
103a04dd:	cc                                              	int3
103a04de:	cc                                              	int3
103a04df:	cc                                              	int3
