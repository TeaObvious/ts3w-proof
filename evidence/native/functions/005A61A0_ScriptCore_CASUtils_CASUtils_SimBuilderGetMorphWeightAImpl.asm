# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a61a0 (ScriptCore.CASUtils::CASUtils_SimBuilderGetMorphWeightAImpl)
Paired Ghidra pseudocode: 005A61A0_ScriptCore_CASUtils_CASUtils_SimBuilderGetMorphWeightAImpl.c
Window: [0x005a61a0, 0x005a61e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a61e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a61a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a61b0: 35 75 1b e8 d8 31 1c 00 8b 10 8b c8 8b 82 cc 00
005a61c0: 00 00 56 ff d0 85 c0 74 05 d9 40 50 5e c3 d9 ee
005a61d0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a61a0 <.text+0x1a51a0>:
  5a61a0:	56                                              	push   esi
  5a61a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a61a5:	8b c6                                           	mov    eax,esi
  5a61a7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a61ac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a61b1:	75 1b                                           	jne    0x5a61ce
  5a61b3:	e8 d8 31 1c 00                                  	call   0x769390
  5a61b8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a61ba:	8b c8                                           	mov    ecx,eax
  5a61bc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a61c2:	56                                              	push   esi
  5a61c3:	ff d0                                           	call   eax
  5a61c5:	85 c0                                           	test   eax,eax
  5a61c7:	74 05                                           	je     0x5a61ce
  5a61c9:	d9 40 50                                        	fld    DWORD PTR [eax+0x50]
  5a61cc:	5e                                              	pop    esi
  5a61cd:	c3                                              	ret
  5a61ce:	d9 ee                                           	fldz
  5a61d0:	5e                                              	pop    esi
  5a61d1:	c3                                              	ret
  5a61d2:	cc                                              	int3
  5a61d3:	cc                                              	int3
  5a61d4:	cc                                              	int3
  5a61d5:	cc                                              	int3
  5a61d6:	cc                                              	int3
  5a61d7:	cc                                              	int3
  5a61d8:	cc                                              	int3
  5a61d9:	cc                                              	int3
  5a61da:	cc                                              	int3
  5a61db:	cc                                              	int3
  5a61dc:	cc                                              	int3
  5a61dd:	cc                                              	int3
  5a61de:	cc                                              	int3
  5a61df:	cc                                              	int3
