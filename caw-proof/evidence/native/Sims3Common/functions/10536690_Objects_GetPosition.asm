# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536690 (Objects_GetPosition)
Paired Ghidra pseudocode: 10536690_Objects_GetPosition.c
Window: [0x10536690, 0x10536710) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536690: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 01 3b 1f 00 8b
105366a0: 4d 10 8b 55 0c 51 52 8b c8 e8 02 45 1f 00 85 c0
105366b0: 74 32 8b 0d 98 d9 c8 10 51 8b c8 e8 e0 06 1f 00
105366c0: 85 c0 74 20 8d 54 24 10 52 8b c8 e8 e0 3b 21 00
105366d0: 8b 75 08 50 56 e8 46 75 02 00 83 c4 08 8b c6 5e
105366e0: 8b e5 5d c3 d9 ee 8b 75 08 83 ec 0c d9 54 24 08
105366f0: d9 54 24 04 8b ce d9 1c 24 e8 42 73 02 00 8b c6
10536700: 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536690 <.text+0x535690>:
10536690:	55                                              	push   ebp
10536691:	8b ec                                           	mov    ebp,esp
10536693:	83 e4 f0                                        	and    esp,0xfffffff0
10536696:	83 ec 1c                                        	sub    esp,0x1c
10536699:	56                                              	push   esi
1053669a:	e8 01 3b 1f 00                                  	call   0x1072a1a0
1053669f:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
105366a2:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
105366a5:	51                                              	push   ecx
105366a6:	52                                              	push   edx
105366a7:	8b c8                                           	mov    ecx,eax
105366a9:	e8 02 45 1f 00                                  	call   0x1072abb0
105366ae:	85 c0                                           	test   eax,eax
105366b0:	74 32                                           	je     0x105366e4
105366b2:	8b 0d 98 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d998
105366b8:	51                                              	push   ecx
105366b9:	8b c8                                           	mov    ecx,eax
105366bb:	e8 e0 06 1f 00                                  	call   0x10726da0
105366c0:	85 c0                                           	test   eax,eax
105366c2:	74 20                                           	je     0x105366e4
105366c4:	8d 54 24 10                                     	lea    edx,[esp+0x10]
105366c8:	52                                              	push   edx
105366c9:	8b c8                                           	mov    ecx,eax
105366cb:	e8 e0 3b 21 00                                  	call   0x1074a2b0
105366d0:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
105366d3:	50                                              	push   eax
105366d4:	56                                              	push   esi
105366d5:	e8 46 75 02 00                                  	call   0x1055dc20
105366da:	83 c4 08                                        	add    esp,0x8
105366dd:	8b c6                                           	mov    eax,esi
105366df:	5e                                              	pop    esi
105366e0:	8b e5                                           	mov    esp,ebp
105366e2:	5d                                              	pop    ebp
105366e3:	c3                                              	ret
105366e4:	d9 ee                                           	fldz
105366e6:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
105366e9:	83 ec 0c                                        	sub    esp,0xc
105366ec:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
105366f0:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
105366f4:	8b ce                                           	mov    ecx,esi
105366f6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105366f9:	e8 42 73 02 00                                  	call   0x1055da40
105366fe:	8b c6                                           	mov    eax,esi
10536700:	5e                                              	pop    esi
10536701:	8b e5                                           	mov    esp,ebp
10536703:	5d                                              	pop    ebp
10536704:	c3                                              	ret
10536705:	cc                                              	int3
10536706:	cc                                              	int3
10536707:	cc                                              	int3
10536708:	cc                                              	int3
10536709:	cc                                              	int3
1053670a:	cc                                              	int3
1053670b:	cc                                              	int3
1053670c:	cc                                              	int3
1053670d:	cc                                              	int3
1053670e:	cc                                              	int3
1053670f:	cc                                              	int3
