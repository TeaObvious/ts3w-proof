# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562540 (SocialFeaturesHost_GetSystemWallPostAuthorImage)
Paired Ghidra pseudocode: 10562540_SocialFeaturesHost_GetSystemWallPostAuthorImage.c
Window: [0x10562540, 0x10562590) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562540: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 10 50
10562550: 8b 44 24 1c 51 52 50 8d 4c 24 10 51 e8 cf c7 2a
10562560: 00 8b 4c 24 28 8b 10 89 11 8b 50 04 89 51 04 8b
10562570: 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4 24
10562580: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562540 <.text+0x561540>:
10562540:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10562544:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10562548:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1056254c:	83 ec 10                                        	sub    esp,0x10
1056254f:	50                                              	push   eax
10562550:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10562554:	51                                              	push   ecx
10562555:	52                                              	push   edx
10562556:	50                                              	push   eax
10562557:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1056255b:	51                                              	push   ecx
1056255c:	e8 cf c7 2a 00                                  	call   0x1080ed30
10562561:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10562565:	8b 10                                           	mov    edx,DWORD PTR [eax]
10562567:	89 11                                           	mov    DWORD PTR [ecx],edx
10562569:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1056256c:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1056256f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10562572:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10562575:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10562578:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
1056257b:	8b c1                                           	mov    eax,ecx
1056257d:	83 c4 24                                        	add    esp,0x24
10562580:	c3                                              	ret
10562581:	cc                                              	int3
10562582:	cc                                              	int3
10562583:	cc                                              	int3
10562584:	cc                                              	int3
10562585:	cc                                              	int3
10562586:	cc                                              	int3
10562587:	cc                                              	int3
10562588:	cc                                              	int3
10562589:	cc                                              	int3
1056258a:	cc                                              	int3
1056258b:	cc                                              	int3
1056258c:	cc                                              	int3
1056258d:	cc                                              	int3
1056258e:	cc                                              	int3
1056258f:	cc                                              	int3
