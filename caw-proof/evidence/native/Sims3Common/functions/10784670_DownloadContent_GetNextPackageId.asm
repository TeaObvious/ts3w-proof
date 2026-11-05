# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784670 (DownloadContent_GetNextPackageId)
Paired Ghidra pseudocode: 10784670_DownloadContent_GetNextPackageId.c
Window: [0x10784670, 0x107846e0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x107846e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784670: 83 ec 20 53 56 32 db e8 64 b2 01 00 8b f0 85 f6
10784680: 74 47 8d 4c 24 08 e8 e5 ee 1a 00 8d 44 24 08 50
10784690: 8b ce e8 a9 b0 01 00 8a d8 84 db 74 2c 8d 4c 24
107846a0: 08 51 8d 54 24 1c 52 e8 44 94 dd ff 8b 10 8b 4c
107846b0: 24 34 89 11 8b 50 04 89 51 04 8b 50 08 89 51 08
107846c0: 8b 40 0c 83 c4 08 89 41 0c 5e 8a c3 5b 83 c4 20
107846d0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784670 <.text+0x783670>:
10784670:	83 ec 20                                        	sub    esp,0x20
10784673:	53                                              	push   ebx
10784674:	56                                              	push   esi
10784675:	32 db                                           	xor    bl,bl
10784677:	e8 64 b2 01 00                                  	call   0x1079f8e0
1078467c:	8b f0                                           	mov    esi,eax
1078467e:	85 f6                                           	test   esi,esi
10784680:	74 47                                           	je     0x107846c9
10784682:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10784686:	e8 e5 ee 1a 00                                  	call   0x10933570
1078468b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1078468f:	50                                              	push   eax
10784690:	8b ce                                           	mov    ecx,esi
10784692:	e8 a9 b0 01 00                                  	call   0x1079f740
10784697:	8a d8                                           	mov    bl,al
10784699:	84 db                                           	test   bl,bl
1078469b:	74 2c                                           	je     0x107846c9
1078469d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
107846a1:	51                                              	push   ecx
107846a2:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
107846a6:	52                                              	push   edx
107846a7:	e8 44 94 dd ff                                  	call   0x1055daf0
107846ac:	8b 10                                           	mov    edx,DWORD PTR [eax]
107846ae:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
107846b2:	89 11                                           	mov    DWORD PTR [ecx],edx
107846b4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
107846b7:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
107846ba:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
107846bd:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
107846c0:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
107846c3:	83 c4 08                                        	add    esp,0x8
107846c6:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
107846c9:	5e                                              	pop    esi
107846ca:	8a c3                                           	mov    al,bl
107846cc:	5b                                              	pop    ebx
107846cd:	83 c4 20                                        	add    esp,0x20
107846d0:	c3                                              	ret
107846d1:	cc                                              	int3
107846d2:	cc                                              	int3
107846d3:	cc                                              	int3
107846d4:	cc                                              	int3
107846d5:	cc                                              	int3
107846d6:	cc                                              	int3
107846d7:	cc                                              	int3
107846d8:	cc                                              	int3
107846d9:	cc                                              	int3
107846da:	cc                                              	int3
107846db:	cc                                              	int3
107846dc:	cc                                              	int3
107846dd:	cc                                              	int3
107846de:	cc                                              	int3
107846df:	cc                                              	int3
