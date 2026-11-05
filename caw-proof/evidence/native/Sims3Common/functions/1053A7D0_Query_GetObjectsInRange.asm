# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053a7d0 (Query_GetObjectsInRange)
Paired Ghidra pseudocode: 1053A7D0_Query_GetObjectsInRange.c
Window: [0x1053a7d0, 0x1053a860) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053a860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053a7d0: 55 8b ec 83 e4 f0 83 ec 28 56 57 33 f6 e8 5e 35
1053a7e0: f4 ff d9 45 18 8b f8 8d 44 24 10 50 6a 0c 51 8d
1053a7f0: 4c 24 2c d9 1c 24 51 8d 4d 0c 89 74 24 20 89 74
1053a800: 24 24 89 74 24 28 c7 44 24 2c 58 4a ab 10 e8 0d
1053a810: 33 02 00 50 8b cf e8 a5 36 f4 ff 84 c0 74 26 e8
1053a820: fc 08 02 00 8b 4c 24 10 8b 54 24 14 8b 30 2b d1
1053a830: c1 fa 03 52 8b 55 08 51 8b c8 8b 86 c0 00 00 00
1053a840: 52 ff d0 8b f0 8b 44 24 10 85 c0 74 09 50 e8 3d
1053a850: e6 3d 00 83 c4 04 5f 8b c6 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
1053a7d0 <.text+0x5397d0>:
1053a7d0:	55                                              	push   ebp
1053a7d1:	8b ec                                           	mov    ebp,esp
1053a7d3:	83 e4 f0                                        	and    esp,0xfffffff0
1053a7d6:	83 ec 28                                        	sub    esp,0x28
1053a7d9:	56                                              	push   esi
1053a7da:	57                                              	push   edi
1053a7db:	33 f6                                           	xor    esi,esi
1053a7dd:	e8 5e 35 f4 ff                                  	call   0x1047dd40
1053a7e2:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
1053a7e5:	8b f8                                           	mov    edi,eax
1053a7e7:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1053a7eb:	50                                              	push   eax
1053a7ec:	6a 0c                                           	push   0xc
1053a7ee:	51                                              	push   ecx
1053a7ef:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1053a7f3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053a7f6:	51                                              	push   ecx
1053a7f7:	8d 4d 0c                                        	lea    ecx,[ebp+0xc]
1053a7fa:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
1053a7fe:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
1053a802:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
1053a806:	c7 44 24 2c 58 4a ab 10                         	mov    DWORD PTR [esp+0x2c],0x10ab4a58
1053a80e:	e8 0d 33 02 00                                  	call   0x1055db20
1053a813:	50                                              	push   eax
1053a814:	8b cf                                           	mov    ecx,edi
1053a816:	e8 a5 36 f4 ff                                  	call   0x1047dec0
1053a81b:	84 c0                                           	test   al,al
1053a81d:	74 26                                           	je     0x1053a845
1053a81f:	e8 fc 08 02 00                                  	call   0x1055b120
1053a824:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1053a828:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1053a82c:	8b 30                                           	mov    esi,DWORD PTR [eax]
1053a82e:	2b d1                                           	sub    edx,ecx
1053a830:	c1 fa 03                                        	sar    edx,0x3
1053a833:	52                                              	push   edx
1053a834:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1053a837:	51                                              	push   ecx
1053a838:	8b c8                                           	mov    ecx,eax
1053a83a:	8b 86 c0 00 00 00                               	mov    eax,DWORD PTR [esi+0xc0]
1053a840:	52                                              	push   edx
1053a841:	ff d0                                           	call   eax
1053a843:	8b f0                                           	mov    esi,eax
1053a845:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1053a849:	85 c0                                           	test   eax,eax
1053a84b:	74 09                                           	je     0x1053a856
1053a84d:	50                                              	push   eax
1053a84e:	e8 3d e6 3d 00                                  	call   0x10918e90
1053a853:	83 c4 04                                        	add    esp,0x4
1053a856:	5f                                              	pop    edi
1053a857:	8b c6                                           	mov    eax,esi
1053a859:	5e                                              	pop    esi
1053a85a:	8b e5                                           	mov    esp,ebp
1053a85c:	5d                                              	pop    ebp
1053a85d:	c3                                              	ret
1053a85e:	cc                                              	int3
1053a85f:	cc                                              	int3
