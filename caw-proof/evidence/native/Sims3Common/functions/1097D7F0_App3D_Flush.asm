# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d7f0 (App3D_Flush)
Paired Ghidra pseudocode: 1097D7F0_App3D_Flush.c
Window: [0x1097d7f0, 0x1097d850) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d7f0: 56 e8 aa 0b b6 ff 8b f0 85 f6 74 45 6a 00 6a 00
1097d800: 6a 00 6a ff 8b ce e8 75 bf b6 ff 84 c0 74 32 90
1097d810: d9 ee 83 ec 08 d9 54 24 04 d9 1c 24 e8 7f 92 a0
1097d820: ff 83 c4 08 b9 38 26 c7 10 e8 b2 0b a1 ff 6a 00
1097d830: 6a 00 6a 00 6a ff 8b ce e8 43 bf b6 ff 84 c0 75
1097d840: cf 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d7f0 <.text+0x97c7f0>:
1097d7f0:	56                                              	push   esi
1097d7f1:	e8 aa 0b b6 ff                                  	call   0x104de3a0
1097d7f6:	8b f0                                           	mov    esi,eax
1097d7f8:	85 f6                                           	test   esi,esi
1097d7fa:	74 45                                           	je     0x1097d841
1097d7fc:	6a 00                                           	push   0x0
1097d7fe:	6a 00                                           	push   0x0
1097d800:	6a 00                                           	push   0x0
1097d802:	6a ff                                           	push   0xffffffff
1097d804:	8b ce                                           	mov    ecx,esi
1097d806:	e8 75 bf b6 ff                                  	call   0x104e9780
1097d80b:	84 c0                                           	test   al,al
1097d80d:	74 32                                           	je     0x1097d841
1097d80f:	90                                              	nop
1097d810:	d9 ee                                           	fldz
1097d812:	83 ec 08                                        	sub    esp,0x8
1097d815:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1097d819:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1097d81c:	e8 7f 92 a0 ff                                  	call   0x10386aa0
1097d821:	83 c4 08                                        	add    esp,0x8
1097d824:	b9 38 26 c7 10                                  	mov    ecx,0x10c72638
1097d829:	e8 b2 0b a1 ff                                  	call   0x1038e3e0
1097d82e:	6a 00                                           	push   0x0
1097d830:	6a 00                                           	push   0x0
1097d832:	6a 00                                           	push   0x0
1097d834:	6a ff                                           	push   0xffffffff
1097d836:	8b ce                                           	mov    ecx,esi
1097d838:	e8 43 bf b6 ff                                  	call   0x104e9780
1097d83d:	84 c0                                           	test   al,al
1097d83f:	75 cf                                           	jne    0x1097d810
1097d841:	5e                                              	pop    esi
1097d842:	c3                                              	ret
1097d843:	cc                                              	int3
1097d844:	cc                                              	int3
1097d845:	cc                                              	int3
1097d846:	cc                                              	int3
1097d847:	cc                                              	int3
1097d848:	cc                                              	int3
1097d849:	cc                                              	int3
1097d84a:	cc                                              	int3
1097d84b:	cc                                              	int3
1097d84c:	cc                                              	int3
1097d84d:	cc                                              	int3
1097d84e:	cc                                              	int3
1097d84f:	cc                                              	int3
