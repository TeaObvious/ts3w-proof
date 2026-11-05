# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a570 (ResourceMgr_IsCatalogProductVisibleInWB)
Paired Ghidra pseudocode: 1098A570_ResourceMgr_IsCatalogProductVisibleInWB.c
Window: [0x1098a570, 0x1098a610) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a570: 83 ec 14 e8 58 ab f5 ff 85 c0 0f 84 87 00 00 00
1098a580: 8b 54 24 18 8b 4a 08 89 4c 24 04 8b 4a 0c 6a 00
1098a590: 89 4c 24 0c 8b 0a 8b 52 04 6a 00 89 4c 24 14 6a
1098a5a0: 00 6a 00 8d 4c 24 10 51 89 54 24 24 c7 44 24 14
1098a5b0: 00 00 00 00 8b 10 8b 52 0c 8d 4c 24 18 51 8b c8
1098a5c0: ff d2 84 c0 74 33 8b 0c 24 85 c9 74 3a 8b 01 8b
1098a5d0: 50 0c 68 25 4f 9e 51 ff d2 85 c0 74 1c 8b 0c 24
1098a5e0: 85 c9 53 8a 98 87 00 00 00 74 07 8b 01 8b 50 04
1098a5f0: ff d2 8a c3 5b 83 c4 14 c3 8b 0c 24 85 c9 74 07
1098a600: 8b 01 8b 50 04 ff d2 32 c0 83 c4 14 c3 cc cc cc

LINEAR DISASSEMBLY
1098a570 <.text+0x989570>:
1098a570:	83 ec 14                                        	sub    esp,0x14
1098a573:	e8 58 ab f5 ff                                  	call   0x108e50d0
1098a578:	85 c0                                           	test   eax,eax
1098a57a:	0f 84 87 00 00 00                               	je     0x1098a607
1098a580:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1098a584:	8b 4a 08                                        	mov    ecx,DWORD PTR [edx+0x8]
1098a587:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
1098a58b:	8b 4a 0c                                        	mov    ecx,DWORD PTR [edx+0xc]
1098a58e:	6a 00                                           	push   0x0
1098a590:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
1098a594:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098a596:	8b 52 04                                        	mov    edx,DWORD PTR [edx+0x4]
1098a599:	6a 00                                           	push   0x0
1098a59b:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
1098a59f:	6a 00                                           	push   0x0
1098a5a1:	6a 00                                           	push   0x0
1098a5a3:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1098a5a7:	51                                              	push   ecx
1098a5a8:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1098a5ac:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1098a5b4:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098a5b6:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1098a5b9:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098a5bd:	51                                              	push   ecx
1098a5be:	8b c8                                           	mov    ecx,eax
1098a5c0:	ff d2                                           	call   edx
1098a5c2:	84 c0                                           	test   al,al
1098a5c4:	74 33                                           	je     0x1098a5f9
1098a5c6:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098a5c9:	85 c9                                           	test   ecx,ecx
1098a5cb:	74 3a                                           	je     0x1098a607
1098a5cd:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a5cf:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098a5d2:	68 25 4f 9e 51                                  	push   0x519e4f25
1098a5d7:	ff d2                                           	call   edx
1098a5d9:	85 c0                                           	test   eax,eax
1098a5db:	74 1c                                           	je     0x1098a5f9
1098a5dd:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098a5e0:	85 c9                                           	test   ecx,ecx
1098a5e2:	53                                              	push   ebx
1098a5e3:	8a 98 87 00 00 00                               	mov    bl,BYTE PTR [eax+0x87]
1098a5e9:	74 07                                           	je     0x1098a5f2
1098a5eb:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a5ed:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098a5f0:	ff d2                                           	call   edx
1098a5f2:	8a c3                                           	mov    al,bl
1098a5f4:	5b                                              	pop    ebx
1098a5f5:	83 c4 14                                        	add    esp,0x14
1098a5f8:	c3                                              	ret
1098a5f9:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098a5fc:	85 c9                                           	test   ecx,ecx
1098a5fe:	74 07                                           	je     0x1098a607
1098a600:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a602:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098a605:	ff d2                                           	call   edx
1098a607:	32 c0                                           	xor    al,al
1098a609:	83 c4 14                                        	add    esp,0x14
1098a60c:	c3                                              	ret
1098a60d:	cc                                              	int3
1098a60e:	cc                                              	int3
1098a60f:	cc                                              	int3
