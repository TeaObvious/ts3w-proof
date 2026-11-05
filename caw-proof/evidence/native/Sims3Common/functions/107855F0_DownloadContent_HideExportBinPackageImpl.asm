# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107855f0 (DownloadContent_HideExportBinPackageImpl)
Paired Ghidra pseudocode: 107855F0_DownloadContent_HideExportBinPackageImpl.c
Window: [0x107855f0, 0x10785680) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107855f0: 83 ec 10 e8 28 5b dd ff 85 c0 74 71 8b 4c 24 14
10785600: 8b 10 8b 52 58 53 51 8b c8 ff d2 50 8d 4c 24 08
10785610: c7 44 24 08 00 00 00 00 c7 44 24 0c 00 00 00 00
10785620: c7 44 24 10 00 00 00 00 c7 44 24 14 00 8d b5 10
10785630: e8 eb 4f 8e ff 8b 0d 94 de c8 10 8d 44 24 04 50
10785640: e8 1b d9 00 00 8b 4c 24 0c 8a d8 8b 44 24 04 2b
10785650: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 2d
10785660: 38 19 00 83 c4 04 8a c3 5b 83 c4 10 c3 32 c0 83
10785670: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
107855f0 <.text+0x7845f0>:
107855f0:	83 ec 10                                        	sub    esp,0x10
107855f3:	e8 28 5b dd ff                                  	call   0x1055b120
107855f8:	85 c0                                           	test   eax,eax
107855fa:	74 71                                           	je     0x1078566d
107855fc:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10785600:	8b 10                                           	mov    edx,DWORD PTR [eax]
10785602:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10785605:	53                                              	push   ebx
10785606:	51                                              	push   ecx
10785607:	8b c8                                           	mov    ecx,eax
10785609:	ff d2                                           	call   edx
1078560b:	50                                              	push   eax
1078560c:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10785610:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
10785618:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
10785620:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
10785628:	c7 44 24 14 00 8d b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58d00
10785630:	e8 eb 4f 8e ff                                  	call   0x1006a620
10785635:	8b 0d 94 de c8 10                               	mov    ecx,DWORD PTR ds:0x10c8de94
1078563b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1078563f:	50                                              	push   eax
10785640:	e8 1b d9 00 00                                  	call   0x10792f60
10785645:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10785649:	8a d8                                           	mov    bl,al
1078564b:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1078564f:	2b c8                                           	sub    ecx,eax
10785651:	83 e1 fe                                        	and    ecx,0xfffffffe
10785654:	83 f9 02                                        	cmp    ecx,0x2
10785657:	7e 0d                                           	jle    0x10785666
10785659:	85 c0                                           	test   eax,eax
1078565b:	74 09                                           	je     0x10785666
1078565d:	50                                              	push   eax
1078565e:	e8 2d 38 19 00                                  	call   0x10918e90
10785663:	83 c4 04                                        	add    esp,0x4
10785666:	8a c3                                           	mov    al,bl
10785668:	5b                                              	pop    ebx
10785669:	83 c4 10                                        	add    esp,0x10
1078566c:	c3                                              	ret
1078566d:	32 c0                                           	xor    al,al
1078566f:	83 c4 10                                        	add    esp,0x10
10785672:	c3                                              	ret
10785673:	cc                                              	int3
10785674:	cc                                              	int3
10785675:	cc                                              	int3
10785676:	cc                                              	int3
10785677:	cc                                              	int3
10785678:	cc                                              	int3
10785679:	cc                                              	int3
1078567a:	cc                                              	int3
1078567b:	cc                                              	int3
1078567c:	cc                                              	int3
1078567d:	cc                                              	int3
1078567e:	cc                                              	int3
1078567f:	cc                                              	int3
