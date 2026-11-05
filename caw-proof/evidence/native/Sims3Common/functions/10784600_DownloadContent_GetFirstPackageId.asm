# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784600 (DownloadContent_GetFirstPackageId)
Paired Ghidra pseudocode: 10784600_DownloadContent_GetFirstPackageId.c
Window: [0x10784600, 0x10784670) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784600: 83 ec 20 53 56 32 db e8 d4 b2 01 00 8b f0 85 f6
10784610: 74 47 8d 4c 24 08 e8 55 ef 1a 00 8d 44 24 08 50
10784620: 8b ce e8 f9 b0 01 00 8a d8 84 db 74 2c 8d 4c 24
10784630: 08 51 8d 54 24 1c 52 e8 b4 94 dd ff 8b 10 8b 4c
10784640: 24 34 89 11 8b 50 04 89 51 04 8b 50 08 89 51 08
10784650: 8b 40 0c 83 c4 08 89 41 0c 5e 8a c3 5b 83 c4 20
10784660: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784600 <.text+0x783600>:
10784600:	83 ec 20                                        	sub    esp,0x20
10784603:	53                                              	push   ebx
10784604:	56                                              	push   esi
10784605:	32 db                                           	xor    bl,bl
10784607:	e8 d4 b2 01 00                                  	call   0x1079f8e0
1078460c:	8b f0                                           	mov    esi,eax
1078460e:	85 f6                                           	test   esi,esi
10784610:	74 47                                           	je     0x10784659
10784612:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10784616:	e8 55 ef 1a 00                                  	call   0x10933570
1078461b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1078461f:	50                                              	push   eax
10784620:	8b ce                                           	mov    ecx,esi
10784622:	e8 f9 b0 01 00                                  	call   0x1079f720
10784627:	8a d8                                           	mov    bl,al
10784629:	84 db                                           	test   bl,bl
1078462b:	74 2c                                           	je     0x10784659
1078462d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10784631:	51                                              	push   ecx
10784632:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
10784636:	52                                              	push   edx
10784637:	e8 b4 94 dd ff                                  	call   0x1055daf0
1078463c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1078463e:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10784642:	89 11                                           	mov    DWORD PTR [ecx],edx
10784644:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10784647:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1078464a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1078464d:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10784650:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10784653:	83 c4 08                                        	add    esp,0x8
10784656:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10784659:	5e                                              	pop    esi
1078465a:	8a c3                                           	mov    al,bl
1078465c:	5b                                              	pop    ebx
1078465d:	83 c4 20                                        	add    esp,0x20
10784660:	c3                                              	ret
10784661:	cc                                              	int3
10784662:	cc                                              	int3
10784663:	cc                                              	int3
10784664:	cc                                              	int3
10784665:	cc                                              	int3
10784666:	cc                                              	int3
10784667:	cc                                              	int3
10784668:	cc                                              	int3
10784669:	cc                                              	int3
1078466a:	cc                                              	int3
1078466b:	cc                                              	int3
1078466c:	cc                                              	int3
1078466d:	cc                                              	int3
1078466e:	cc                                              	int3
1078466f:	cc                                              	int3
