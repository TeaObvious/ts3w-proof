# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f500 (Camera_GetTarget)
Paired Ghidra pseudocode: 1052F500_Camera_GetTarget.c
Window: [0x1052f500, 0x1052f570) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f500: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 21 d1 22 00 85
1052f510: c0 74 38 8b c8 e8 66 85 40 00 85 c0 74 2d 8b c8
1052f520: e8 2b d4 22 00 85 c0 74 22 8b 10 8b 52 30 8d 4c
1052f530: 24 10 51 8b c8 ff d2 8b 75 08 50 56 e8 df e6 02
1052f540: 00 83 c4 08 8b c6 5e 8b e5 5d c3 d9 ee 8b 75 08
1052f550: 83 ec 0c d9 54 24 08 d9 54 24 04 8b ce d9 1c 24
1052f560: e8 db e4 02 00 8b c6 5e 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
1052f500 <.text+0x52e500>:
1052f500:	55                                              	push   ebp
1052f501:	8b ec                                           	mov    ebp,esp
1052f503:	83 e4 f0                                        	and    esp,0xfffffff0
1052f506:	83 ec 1c                                        	sub    esp,0x1c
1052f509:	56                                              	push   esi
1052f50a:	e8 21 d1 22 00                                  	call   0x1075c630
1052f50f:	85 c0                                           	test   eax,eax
1052f511:	74 38                                           	je     0x1052f54b
1052f513:	8b c8                                           	mov    ecx,eax
1052f515:	e8 66 85 40 00                                  	call   0x10937a80
1052f51a:	85 c0                                           	test   eax,eax
1052f51c:	74 2d                                           	je     0x1052f54b
1052f51e:	8b c8                                           	mov    ecx,eax
1052f520:	e8 2b d4 22 00                                  	call   0x1075c950
1052f525:	85 c0                                           	test   eax,eax
1052f527:	74 22                                           	je     0x1052f54b
1052f529:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052f52b:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
1052f52e:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1052f532:	51                                              	push   ecx
1052f533:	8b c8                                           	mov    ecx,eax
1052f535:	ff d2                                           	call   edx
1052f537:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
1052f53a:	50                                              	push   eax
1052f53b:	56                                              	push   esi
1052f53c:	e8 df e6 02 00                                  	call   0x1055dc20
1052f541:	83 c4 08                                        	add    esp,0x8
1052f544:	8b c6                                           	mov    eax,esi
1052f546:	5e                                              	pop    esi
1052f547:	8b e5                                           	mov    esp,ebp
1052f549:	5d                                              	pop    ebp
1052f54a:	c3                                              	ret
1052f54b:	d9 ee                                           	fldz
1052f54d:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
1052f550:	83 ec 0c                                        	sub    esp,0xc
1052f553:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
1052f557:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1052f55b:	8b ce                                           	mov    ecx,esi
1052f55d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052f560:	e8 db e4 02 00                                  	call   0x1055da40
1052f565:	8b c6                                           	mov    eax,esi
1052f567:	5e                                              	pop    esi
1052f568:	8b e5                                           	mov    esp,ebp
1052f56a:	5d                                              	pop    ebp
1052f56b:	c3                                              	ret
1052f56c:	cc                                              	int3
1052f56d:	cc                                              	int3
1052f56e:	cc                                              	int3
1052f56f:	cc                                              	int3
