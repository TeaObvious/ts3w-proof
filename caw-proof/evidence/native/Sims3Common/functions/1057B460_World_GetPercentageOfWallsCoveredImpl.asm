# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b460 (World_GetPercentageOfWallsCoveredImpl)
Paired Ghidra pseudocode: 1057B460_World_GetPercentageOfWallsCoveredImpl.c
Window: [0x1057b460, 0x1057b4b0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b4b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b460: 51 e8 ba fc fd ff 8b 0d c4 00 c7 10 85 c9 74 2a
1057b470: 8b 44 24 0c 8b 54 24 08 6a 00 50 52 e8 8f bb cb
1057b480: ff 85 c0 74 15 8b 4c 24 14 8b 54 24 10 51 52 50
1057b490: e8 2b 2c b5 ff 83 c4 0c 59 c3 f3 0f 10 05 84 e1
1057b4a0: aa 10 f3 0f 11 04 24 d9 04 24 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
1057b460 <.text+0x57a460>:
1057b460:	51                                              	push   ecx
1057b461:	e8 ba fc fd ff                                  	call   0x1055b120
1057b466:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b46c:	85 c9                                           	test   ecx,ecx
1057b46e:	74 2a                                           	je     0x1057b49a
1057b470:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057b474:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057b478:	6a 00                                           	push   0x0
1057b47a:	50                                              	push   eax
1057b47b:	52                                              	push   edx
1057b47c:	e8 8f bb cb ff                                  	call   0x10237010
1057b481:	85 c0                                           	test   eax,eax
1057b483:	74 15                                           	je     0x1057b49a
1057b485:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1057b489:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1057b48d:	51                                              	push   ecx
1057b48e:	52                                              	push   edx
1057b48f:	50                                              	push   eax
1057b490:	e8 2b 2c b5 ff                                  	call   0x100ce0c0
1057b495:	83 c4 0c                                        	add    esp,0xc
1057b498:	59                                              	pop    ecx
1057b499:	c3                                              	ret
1057b49a:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
1057b4a2:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057b4a7:	d9 04 24                                        	fld    DWORD PTR [esp]
1057b4aa:	59                                              	pop    ecx
1057b4ab:	c3                                              	ret
1057b4ac:	cc                                              	int3
1057b4ad:	cc                                              	int3
1057b4ae:	cc                                              	int3
1057b4af:	cc                                              	int3
