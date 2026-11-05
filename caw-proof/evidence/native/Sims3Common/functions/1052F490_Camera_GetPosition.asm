# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f490 (Camera_GetPosition)
Paired Ghidra pseudocode: 1052F490_Camera_GetPosition.c
Window: [0x1052f490, 0x1052f500) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f490: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 91 d1 22 00 85
1052f4a0: c0 74 38 8b c8 e8 d6 85 40 00 85 c0 74 2d 8b c8
1052f4b0: e8 9b d4 22 00 85 c0 74 22 8b 10 8b 52 34 8d 4c
1052f4c0: 24 10 51 8b c8 ff d2 8b 75 08 50 56 e8 4f e7 02
1052f4d0: 00 83 c4 08 8b c6 5e 8b e5 5d c3 d9 ee 8b 75 08
1052f4e0: 83 ec 0c d9 54 24 08 d9 54 24 04 8b ce d9 1c 24
1052f4f0: e8 4b e5 02 00 8b c6 5e 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
1052f490 <.text+0x52e490>:
1052f490:	55                                              	push   ebp
1052f491:	8b ec                                           	mov    ebp,esp
1052f493:	83 e4 f0                                        	and    esp,0xfffffff0
1052f496:	83 ec 1c                                        	sub    esp,0x1c
1052f499:	56                                              	push   esi
1052f49a:	e8 91 d1 22 00                                  	call   0x1075c630
1052f49f:	85 c0                                           	test   eax,eax
1052f4a1:	74 38                                           	je     0x1052f4db
1052f4a3:	8b c8                                           	mov    ecx,eax
1052f4a5:	e8 d6 85 40 00                                  	call   0x10937a80
1052f4aa:	85 c0                                           	test   eax,eax
1052f4ac:	74 2d                                           	je     0x1052f4db
1052f4ae:	8b c8                                           	mov    ecx,eax
1052f4b0:	e8 9b d4 22 00                                  	call   0x1075c950
1052f4b5:	85 c0                                           	test   eax,eax
1052f4b7:	74 22                                           	je     0x1052f4db
1052f4b9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052f4bb:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
1052f4be:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1052f4c2:	51                                              	push   ecx
1052f4c3:	8b c8                                           	mov    ecx,eax
1052f4c5:	ff d2                                           	call   edx
1052f4c7:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
1052f4ca:	50                                              	push   eax
1052f4cb:	56                                              	push   esi
1052f4cc:	e8 4f e7 02 00                                  	call   0x1055dc20
1052f4d1:	83 c4 08                                        	add    esp,0x8
1052f4d4:	8b c6                                           	mov    eax,esi
1052f4d6:	5e                                              	pop    esi
1052f4d7:	8b e5                                           	mov    esp,ebp
1052f4d9:	5d                                              	pop    ebp
1052f4da:	c3                                              	ret
1052f4db:	d9 ee                                           	fldz
1052f4dd:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
1052f4e0:	83 ec 0c                                        	sub    esp,0xc
1052f4e3:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
1052f4e7:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1052f4eb:	8b ce                                           	mov    ecx,esi
1052f4ed:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052f4f0:	e8 4b e5 02 00                                  	call   0x1055da40
1052f4f5:	8b c6                                           	mov    eax,esi
1052f4f7:	5e                                              	pop    esi
1052f4f8:	8b e5                                           	mov    esp,ebp
1052f4fa:	5d                                              	pop    ebp
1052f4fb:	c3                                              	ret
1052f4fc:	cc                                              	int3
1052f4fd:	cc                                              	int3
1052f4fe:	cc                                              	int3
1052f4ff:	cc                                              	int3
