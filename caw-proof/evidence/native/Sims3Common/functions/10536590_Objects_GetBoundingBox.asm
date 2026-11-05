# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536590 (Objects_GetBoundingBox)
Paired Ghidra pseudocode: 10536590_Objects_GetBoundingBox.c
Window: [0x10536590, 0x10536610) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536590: 56 e8 0a 3c 1f 00 8b 4c 24 10 8b 54 24 0c 51 52
105365a0: 8b c8 e8 09 46 1f 00 85 c0 74 2b 8b 0d 04 d8 c8
105365b0: 10 51 8b c8 e8 e7 07 1f 00 85 c0 74 19 8b c8 e8
105365c0: 3c 49 20 00 8b 74 24 08 50 56 e8 a1 76 02 00 83
105365d0: c4 08 8b c6 5e c3 d9 ee 8b 74 24 08 83 ec 0c d9
105365e0: 54 24 08 d9 54 24 04 8b ce d9 1c 24 e8 4f 74 02
105365f0: 00 d9 ee 83 ec 0c d9 54 24 08 d9 54 24 04 8d 4e
10536600: 0c d9 1c 24 e8 37 74 02 00 8b c6 5e c3 cc cc cc

LINEAR DISASSEMBLY
10536590 <.text+0x535590>:
10536590:	56                                              	push   esi
10536591:	e8 0a 3c 1f 00                                  	call   0x1072a1a0
10536596:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1053659a:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1053659e:	51                                              	push   ecx
1053659f:	52                                              	push   edx
105365a0:	8b c8                                           	mov    ecx,eax
105365a2:	e8 09 46 1f 00                                  	call   0x1072abb0
105365a7:	85 c0                                           	test   eax,eax
105365a9:	74 2b                                           	je     0x105365d6
105365ab:	8b 0d 04 d8 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d804
105365b1:	51                                              	push   ecx
105365b2:	8b c8                                           	mov    ecx,eax
105365b4:	e8 e7 07 1f 00                                  	call   0x10726da0
105365b9:	85 c0                                           	test   eax,eax
105365bb:	74 19                                           	je     0x105365d6
105365bd:	8b c8                                           	mov    ecx,eax
105365bf:	e8 3c 49 20 00                                  	call   0x1073af00
105365c4:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
105365c8:	50                                              	push   eax
105365c9:	56                                              	push   esi
105365ca:	e8 a1 76 02 00                                  	call   0x1055dc70
105365cf:	83 c4 08                                        	add    esp,0x8
105365d2:	8b c6                                           	mov    eax,esi
105365d4:	5e                                              	pop    esi
105365d5:	c3                                              	ret
105365d6:	d9 ee                                           	fldz
105365d8:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
105365dc:	83 ec 0c                                        	sub    esp,0xc
105365df:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
105365e3:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
105365e7:	8b ce                                           	mov    ecx,esi
105365e9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105365ec:	e8 4f 74 02 00                                  	call   0x1055da40
105365f1:	d9 ee                                           	fldz
105365f3:	83 ec 0c                                        	sub    esp,0xc
105365f6:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
105365fa:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
105365fe:	8d 4e 0c                                        	lea    ecx,[esi+0xc]
10536601:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10536604:	e8 37 74 02 00                                  	call   0x1055da40
10536609:	8b c6                                           	mov    eax,esi
1053660b:	5e                                              	pop    esi
1053660c:	c3                                              	ret
1053660d:	cc                                              	int3
1053660e:	cc                                              	int3
1053660f:	cc                                              	int3
