# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784750 (DownloadContent_GetNextPackageEnableData)
Paired Ghidra pseudocode: 10784750_DownloadContent_GetNextPackageEnableData.c
Window: [0x10784750, 0x107847c0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x107847c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784750: 83 ec 20 53 56 32 db e8 84 b1 01 00 8b f0 85 f6
10784760: 74 4c 8d 4c 24 08 e8 05 ee 1a 00 8b 44 24 30 50
10784770: 8d 4c 24 0c 51 8b ce e8 34 b0 01 00 8a d8 84 db
10784780: 74 2c 8d 54 24 08 52 8d 44 24 1c 50 e8 5f 93 dd
10784790: ff 8b 10 8b 4c 24 34 89 11 8b 50 04 89 51 04 8b
107847a0: 50 08 89 51 08 8b 40 0c 83 c4 08 89 41 0c 5e 8a
107847b0: c3 5b 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784750 <.text+0x783750>:
10784750:	83 ec 20                                        	sub    esp,0x20
10784753:	53                                              	push   ebx
10784754:	56                                              	push   esi
10784755:	32 db                                           	xor    bl,bl
10784757:	e8 84 b1 01 00                                  	call   0x1079f8e0
1078475c:	8b f0                                           	mov    esi,eax
1078475e:	85 f6                                           	test   esi,esi
10784760:	74 4c                                           	je     0x107847ae
10784762:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10784766:	e8 05 ee 1a 00                                  	call   0x10933570
1078476b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1078476f:	50                                              	push   eax
10784770:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10784774:	51                                              	push   ecx
10784775:	8b ce                                           	mov    ecx,esi
10784777:	e8 34 b0 01 00                                  	call   0x1079f7b0
1078477c:	8a d8                                           	mov    bl,al
1078477e:	84 db                                           	test   bl,bl
10784780:	74 2c                                           	je     0x107847ae
10784782:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10784786:	52                                              	push   edx
10784787:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1078478b:	50                                              	push   eax
1078478c:	e8 5f 93 dd ff                                  	call   0x1055daf0
10784791:	8b 10                                           	mov    edx,DWORD PTR [eax]
10784793:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10784797:	89 11                                           	mov    DWORD PTR [ecx],edx
10784799:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1078479c:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1078479f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
107847a2:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
107847a5:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
107847a8:	83 c4 08                                        	add    esp,0x8
107847ab:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
107847ae:	5e                                              	pop    esi
107847af:	8a c3                                           	mov    al,bl
107847b1:	5b                                              	pop    ebx
107847b2:	83 c4 20                                        	add    esp,0x20
107847b5:	c3                                              	ret
107847b6:	cc                                              	int3
107847b7:	cc                                              	int3
107847b8:	cc                                              	int3
107847b9:	cc                                              	int3
107847ba:	cc                                              	int3
107847bb:	cc                                              	int3
107847bc:	cc                                              	int3
107847bd:	cc                                              	int3
107847be:	cc                                              	int3
107847bf:	cc                                              	int3
