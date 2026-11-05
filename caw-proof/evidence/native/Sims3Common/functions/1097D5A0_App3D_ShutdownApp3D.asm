# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d5a0 (App3D_ShutdownApp3D)
Paired Ghidra pseudocode: 1097D5A0_App3D_ShutdownApp3D.c
Window: [0x1097d5a0, 0x1097d610) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d5a0: b9 b0 d7 ca 10 e8 86 ae b0 ff 8b 0d 98 d7 ca 10
1097d5b0: 85 c9 74 11 8b 01 8b 50 0c ff d2 c7 05 98 d7 ca
1097d5c0: 10 00 00 00 00 56 e8 45 89 d0 ff e8 90 3a ba ff
1097d5d0: e8 5b dc 00 00 e8 76 9a a0 ff b9 c0 7d cb 10 e8
1097d5e0: ac b9 a0 ff 6a 00 e8 95 cb a1 ff 8b f0 83 c4 04
1097d5f0: 85 f6 74 13 8b 06 8b 50 04 8b ce ff d2 8b 06 8b
1097d600: 10 6a 01 8b ce ff d2 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d5a0 <.text+0x97c5a0>:
1097d5a0:	b9 b0 d7 ca 10                                  	mov    ecx,0x10cad7b0
1097d5a5:	e8 86 ae b0 ff                                  	call   0x10488430
1097d5aa:	8b 0d 98 d7 ca 10                               	mov    ecx,DWORD PTR ds:0x10cad798
1097d5b0:	85 c9                                           	test   ecx,ecx
1097d5b2:	74 11                                           	je     0x1097d5c5
1097d5b4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097d5b6:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1097d5b9:	ff d2                                           	call   edx
1097d5bb:	c7 05 98 d7 ca 10 00 00 00 00                   	mov    DWORD PTR ds:0x10cad798,0x0
1097d5c5:	56                                              	push   esi
1097d5c6:	e8 45 89 d0 ff                                  	call   0x10685f10
1097d5cb:	e8 90 3a ba ff                                  	call   0x10521060
1097d5d0:	e8 5b dc 00 00                                  	call   0x1098b230
1097d5d5:	e8 76 9a a0 ff                                  	call   0x10387050
1097d5da:	b9 c0 7d cb 10                                  	mov    ecx,0x10cb7dc0
1097d5df:	e8 ac b9 a0 ff                                  	call   0x10388f90
1097d5e4:	6a 00                                           	push   0x0
1097d5e6:	e8 95 cb a1 ff                                  	call   0x1039a180
1097d5eb:	8b f0                                           	mov    esi,eax
1097d5ed:	83 c4 04                                        	add    esp,0x4
1097d5f0:	85 f6                                           	test   esi,esi
1097d5f2:	74 13                                           	je     0x1097d607
1097d5f4:	8b 06                                           	mov    eax,DWORD PTR [esi]
1097d5f6:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1097d5f9:	8b ce                                           	mov    ecx,esi
1097d5fb:	ff d2                                           	call   edx
1097d5fd:	8b 06                                           	mov    eax,DWORD PTR [esi]
1097d5ff:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097d601:	6a 01                                           	push   0x1
1097d603:	8b ce                                           	mov    ecx,esi
1097d605:	ff d2                                           	call   edx
1097d607:	5e                                              	pop    esi
1097d608:	c3                                              	ret
1097d609:	cc                                              	int3
1097d60a:	cc                                              	int3
1097d60b:	cc                                              	int3
1097d60c:	cc                                              	int3
1097d60d:	cc                                              	int3
1097d60e:	cc                                              	int3
1097d60f:	cc                                              	int3
