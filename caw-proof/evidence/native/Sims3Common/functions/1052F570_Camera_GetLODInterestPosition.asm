# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f570 (Camera_GetLODInterestPosition)
Paired Ghidra pseudocode: 1052F570_Camera_GetLODInterestPosition.c
Window: [0x1052f570, 0x1052f5d0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f5d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f570: 56 e8 ba d0 22 00 85 c0 74 30 8b c8 e8 ff 84 40
1052f580: 00 85 c0 74 25 8b c8 e8 c4 d3 22 00 85 c0 74 1a
1052f590: 8b 48 0c e8 a8 31 22 00 8b 74 24 08 50 56 e8 7d
1052f5a0: e6 02 00 83 c4 08 8b c6 5e c3 d9 ee 8b 74 24 08
1052f5b0: 83 ec 0c d9 54 24 08 d9 54 24 04 8b ce d9 1c 24
1052f5c0: e8 7b e4 02 00 8b c6 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f570 <.text+0x52e570>:
1052f570:	56                                              	push   esi
1052f571:	e8 ba d0 22 00                                  	call   0x1075c630
1052f576:	85 c0                                           	test   eax,eax
1052f578:	74 30                                           	je     0x1052f5aa
1052f57a:	8b c8                                           	mov    ecx,eax
1052f57c:	e8 ff 84 40 00                                  	call   0x10937a80
1052f581:	85 c0                                           	test   eax,eax
1052f583:	74 25                                           	je     0x1052f5aa
1052f585:	8b c8                                           	mov    ecx,eax
1052f587:	e8 c4 d3 22 00                                  	call   0x1075c950
1052f58c:	85 c0                                           	test   eax,eax
1052f58e:	74 1a                                           	je     0x1052f5aa
1052f590:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
1052f593:	e8 a8 31 22 00                                  	call   0x10752740
1052f598:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1052f59c:	50                                              	push   eax
1052f59d:	56                                              	push   esi
1052f59e:	e8 7d e6 02 00                                  	call   0x1055dc20
1052f5a3:	83 c4 08                                        	add    esp,0x8
1052f5a6:	8b c6                                           	mov    eax,esi
1052f5a8:	5e                                              	pop    esi
1052f5a9:	c3                                              	ret
1052f5aa:	d9 ee                                           	fldz
1052f5ac:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1052f5b0:	83 ec 0c                                        	sub    esp,0xc
1052f5b3:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
1052f5b7:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1052f5bb:	8b ce                                           	mov    ecx,esi
1052f5bd:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052f5c0:	e8 7b e4 02 00                                  	call   0x1055da40
1052f5c5:	8b c6                                           	mov    eax,esi
1052f5c7:	5e                                              	pop    esi
1052f5c8:	c3                                              	ret
1052f5c9:	cc                                              	int3
1052f5ca:	cc                                              	int3
1052f5cb:	cc                                              	int3
1052f5cc:	cc                                              	int3
1052f5cd:	cc                                              	int3
1052f5ce:	cc                                              	int3
1052f5cf:	cc                                              	int3
