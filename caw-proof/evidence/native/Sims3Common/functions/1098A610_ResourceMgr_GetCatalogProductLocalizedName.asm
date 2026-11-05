# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a610 (ResourceMgr_GetCatalogProductLocalizedName)
Paired Ghidra pseudocode: 1098A610_ResourceMgr_GetCatalogProductLocalizedName.c
Window: [0x1098a610, 0x1098a730) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a610: 83 ec 24 e8 b8 aa f5 ff 85 c0 0f 84 06 01 00 00
1098a620: 8b 54 24 28 8b 4a 08 89 4c 24 14 8b 4a 0c 6a 00
1098a630: 89 4c 24 1c 8b 0a 8b 52 04 6a 00 89 4c 24 24 6a
1098a640: 00 6a 00 8d 4c 24 10 51 89 54 24 34 c7 44 24 14
1098a650: 00 00 00 00 8b 10 8b 52 0c 8d 4c 24 28 51 8b c8
1098a660: ff d2 84 c0 0f 84 ae 00 00 00 8b 0c 24 85 c9 0f
1098a670: 84 b1 00 00 00 8b 01 8b 50 0c 68 25 4f 9e 51 ff
1098a680: d2 85 c0 0f 84 8f 00 00 00 b9 44 82 ca 10 89 4c
1098a690: 24 04 89 4c 24 08 8d 4c 24 04 51 8b c8 c7 44 24
1098a6a0: 14 64 6e b9 10 c7 44 24 10 46 82 ca 10 e8 2e f8
1098a6b0: 8d ff 84 c0 74 43 8b 54 24 04 56 52 ff 15 c4 b6
1098a6c0: aa 10 8b 4c 24 10 8b f0 8b 44 24 08 2b c8 83 e1
1098a6d0: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 b0 e7 f8 ff
1098a6e0: 83 c4 04 8b 4c 24 04 85 c9 74 07 8b 11 8b 42 04
1098a6f0: ff d0 8b c6 5e 83 c4 24 c3 8b 4c 24 0c 8b 44 24
1098a700: 04 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50
1098a710: e8 7b e7 f8 ff 83 c4 04 8b 0c 24 85 c9 74 07 8b
1098a720: 11 8b 42 04 ff d0 33 c0 83 c4 24 c3 cc cc cc cc

LINEAR DISASSEMBLY
1098a610 <.text+0x989610>:
1098a610:	83 ec 24                                        	sub    esp,0x24
1098a613:	e8 b8 aa f5 ff                                  	call   0x108e50d0
1098a618:	85 c0                                           	test   eax,eax
1098a61a:	0f 84 06 01 00 00                               	je     0x1098a726
1098a620:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1098a624:	8b 4a 08                                        	mov    ecx,DWORD PTR [edx+0x8]
1098a627:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
1098a62b:	8b 4a 0c                                        	mov    ecx,DWORD PTR [edx+0xc]
1098a62e:	6a 00                                           	push   0x0
1098a630:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
1098a634:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098a636:	8b 52 04                                        	mov    edx,DWORD PTR [edx+0x4]
1098a639:	6a 00                                           	push   0x0
1098a63b:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
1098a63f:	6a 00                                           	push   0x0
1098a641:	6a 00                                           	push   0x0
1098a643:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1098a647:	51                                              	push   ecx
1098a648:	89 54 24 34                                     	mov    DWORD PTR [esp+0x34],edx
1098a64c:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1098a654:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098a656:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1098a659:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1098a65d:	51                                              	push   ecx
1098a65e:	8b c8                                           	mov    ecx,eax
1098a660:	ff d2                                           	call   edx
1098a662:	84 c0                                           	test   al,al
1098a664:	0f 84 ae 00 00 00                               	je     0x1098a718
1098a66a:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098a66d:	85 c9                                           	test   ecx,ecx
1098a66f:	0f 84 b1 00 00 00                               	je     0x1098a726
1098a675:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a677:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098a67a:	68 25 4f 9e 51                                  	push   0x519e4f25
1098a67f:	ff d2                                           	call   edx
1098a681:	85 c0                                           	test   eax,eax
1098a683:	0f 84 8f 00 00 00                               	je     0x1098a718
1098a689:	b9 44 82 ca 10                                  	mov    ecx,0x10ca8244
1098a68e:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
1098a692:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1098a696:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1098a69a:	51                                              	push   ecx
1098a69b:	8b c8                                           	mov    ecx,eax
1098a69d:	c7 44 24 14 64 6e b9 10                         	mov    DWORD PTR [esp+0x14],0x10b96e64
1098a6a5:	c7 44 24 10 46 82 ca 10                         	mov    DWORD PTR [esp+0x10],0x10ca8246
1098a6ad:	e8 2e f8 8d ff                                  	call   0x10269ee0
1098a6b2:	84 c0                                           	test   al,al
1098a6b4:	74 43                                           	je     0x1098a6f9
1098a6b6:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098a6ba:	56                                              	push   esi
1098a6bb:	52                                              	push   edx
1098a6bc:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1098a6c2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098a6c6:	8b f0                                           	mov    esi,eax
1098a6c8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098a6cc:	2b c8                                           	sub    ecx,eax
1098a6ce:	83 e1 fe                                        	and    ecx,0xfffffffe
1098a6d1:	83 f9 02                                        	cmp    ecx,0x2
1098a6d4:	7e 0d                                           	jle    0x1098a6e3
1098a6d6:	85 c0                                           	test   eax,eax
1098a6d8:	74 09                                           	je     0x1098a6e3
1098a6da:	50                                              	push   eax
1098a6db:	e8 b0 e7 f8 ff                                  	call   0x10918e90
1098a6e0:	83 c4 04                                        	add    esp,0x4
1098a6e3:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098a6e7:	85 c9                                           	test   ecx,ecx
1098a6e9:	74 07                                           	je     0x1098a6f2
1098a6eb:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098a6ed:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098a6f0:	ff d0                                           	call   eax
1098a6f2:	8b c6                                           	mov    eax,esi
1098a6f4:	5e                                              	pop    esi
1098a6f5:	83 c4 24                                        	add    esp,0x24
1098a6f8:	c3                                              	ret
1098a6f9:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098a6fd:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098a701:	2b c8                                           	sub    ecx,eax
1098a703:	83 e1 fe                                        	and    ecx,0xfffffffe
1098a706:	83 f9 02                                        	cmp    ecx,0x2
1098a709:	7e 0d                                           	jle    0x1098a718
1098a70b:	85 c0                                           	test   eax,eax
1098a70d:	74 09                                           	je     0x1098a718
1098a70f:	50                                              	push   eax
1098a710:	e8 7b e7 f8 ff                                  	call   0x10918e90
1098a715:	83 c4 04                                        	add    esp,0x4
1098a718:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098a71b:	85 c9                                           	test   ecx,ecx
1098a71d:	74 07                                           	je     0x1098a726
1098a71f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098a721:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098a724:	ff d0                                           	call   eax
1098a726:	33 c0                                           	xor    eax,eax
1098a728:	83 c4 24                                        	add    esp,0x24
1098a72b:	c3                                              	ret
1098a72c:	cc                                              	int3
1098a72d:	cc                                              	int3
1098a72e:	cc                                              	int3
1098a72f:	cc                                              	int3
