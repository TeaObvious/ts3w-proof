# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997860 (WorldTerrainWrap_UpdatePaintingLayer)
Paired Ghidra pseudocode: 10997860_WorldTerrainWrap_UpdatePaintingLayer.c
Window: [0x10997860, 0x10997960) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997860: 8b 44 24 04 83 ec 30 56 33 f6 3b c6 0f 84 d5 00
10997870: 00 00 57 8b 78 64 3b fe 0f 84 c8 00 00 00 8b 44
10997880: 24 5c 50 8d 4c 24 1c 89 74 24 1c 89 74 24 20 89
10997890: 74 24 24 c7 44 24 28 24 7b b9 10 e8 80 2d 6d ff
109978a0: 8b 4c 24 54 51 8d 4c 24 0c 89 74 24 0c 89 74 24
109978b0: 10 89 74 24 14 c7 44 24 18 f0 7a b9 10 e8 5e 2d
109978c0: 6d ff 8b 44 24 58 8d 54 24 18 52 50 8d 4c 24 10
109978d0: 51 8d 54 24 50 52 8d 44 24 38 50 e8 c0 61 bc ff
109978e0: 0f b6 4c 24 54 83 c4 08 50 51 8b cf e8 4f 3b 86
109978f0: ff 8b 54 24 10 8b 44 24 08 2b d0 83 e2 fe 83 fa
10997900: 02 7e 0d 3b c6 74 09 50 e8 83 15 f8 ff 83 c4 04
10997910: 8b 4c 24 20 8b 44 24 18 2b c8 83 e1 fe 83 f9 02
10997920: 7e 0d 3b c6 74 09 50 e8 64 15 f8 ff 83 c4 04 8b
10997930: cf e8 1a f1 d1 ff 3b c6 74 0c 5f 8b c8 5e 83 c4
10997940: 30 e9 ea 8b 85 ff 5f 5e 83 c4 30 c3 cc cc cc cc
10997950: 8a 44 24 04 88 41 25 c6 41 24 01 c2 04 00 cc cc

LINEAR DISASSEMBLY
10997860 <.text+0x996860>:
10997860:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997864:	83 ec 30                                        	sub    esp,0x30
10997867:	56                                              	push   esi
10997868:	33 f6                                           	xor    esi,esi
1099786a:	3b c6                                           	cmp    eax,esi
1099786c:	0f 84 d5 00 00 00                               	je     0x10997947
10997872:	57                                              	push   edi
10997873:	8b 78 64                                        	mov    edi,DWORD PTR [eax+0x64]
10997876:	3b fe                                           	cmp    edi,esi
10997878:	0f 84 c8 00 00 00                               	je     0x10997946
1099787e:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
10997882:	50                                              	push   eax
10997883:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10997887:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
1099788b:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
1099788f:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
10997893:	c7 44 24 28 24 7b b9 10                         	mov    DWORD PTR [esp+0x28],0x10b97b24
1099789b:	e8 80 2d 6d ff                                  	call   0x1006a620
109978a0:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
109978a4:	51                                              	push   ecx
109978a5:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
109978a9:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
109978ad:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
109978b1:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
109978b5:	c7 44 24 18 f0 7a b9 10                         	mov    DWORD PTR [esp+0x18],0x10b97af0
109978bd:	e8 5e 2d 6d ff                                  	call   0x1006a620
109978c2:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
109978c6:	8d 54 24 18                                     	lea    edx,[esp+0x18]
109978ca:	52                                              	push   edx
109978cb:	50                                              	push   eax
109978cc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
109978d0:	51                                              	push   ecx
109978d1:	8d 54 24 50                                     	lea    edx,[esp+0x50]
109978d5:	52                                              	push   edx
109978d6:	8d 44 24 38                                     	lea    eax,[esp+0x38]
109978da:	50                                              	push   eax
109978db:	e8 c0 61 bc ff                                  	call   0x1055daa0
109978e0:	0f b6 4c 24 54                                  	movzx  ecx,BYTE PTR [esp+0x54]
109978e5:	83 c4 08                                        	add    esp,0x8
109978e8:	50                                              	push   eax
109978e9:	51                                              	push   ecx
109978ea:	8b cf                                           	mov    ecx,edi
109978ec:	e8 4f 3b 86 ff                                  	call   0x101fb440
109978f1:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
109978f5:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109978f9:	2b d0                                           	sub    edx,eax
109978fb:	83 e2 fe                                        	and    edx,0xfffffffe
109978fe:	83 fa 02                                        	cmp    edx,0x2
10997901:	7e 0d                                           	jle    0x10997910
10997903:	3b c6                                           	cmp    eax,esi
10997905:	74 09                                           	je     0x10997910
10997907:	50                                              	push   eax
10997908:	e8 83 15 f8 ff                                  	call   0x10918e90
1099790d:	83 c4 04                                        	add    esp,0x4
10997910:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10997914:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10997918:	2b c8                                           	sub    ecx,eax
1099791a:	83 e1 fe                                        	and    ecx,0xfffffffe
1099791d:	83 f9 02                                        	cmp    ecx,0x2
10997920:	7e 0d                                           	jle    0x1099792f
10997922:	3b c6                                           	cmp    eax,esi
10997924:	74 09                                           	je     0x1099792f
10997926:	50                                              	push   eax
10997927:	e8 64 15 f8 ff                                  	call   0x10918e90
1099792c:	83 c4 04                                        	add    esp,0x4
1099792f:	8b cf                                           	mov    ecx,edi
10997931:	e8 1a f1 d1 ff                                  	call   0x106b6a50
10997936:	3b c6                                           	cmp    eax,esi
10997938:	74 0c                                           	je     0x10997946
1099793a:	5f                                              	pop    edi
1099793b:	8b c8                                           	mov    ecx,eax
1099793d:	5e                                              	pop    esi
1099793e:	83 c4 30                                        	add    esp,0x30
10997941:	e9 ea 8b 85 ff                                  	jmp    0x101f0530
10997946:	5f                                              	pop    edi
10997947:	5e                                              	pop    esi
10997948:	83 c4 30                                        	add    esp,0x30
1099794b:	c3                                              	ret
1099794c:	cc                                              	int3
1099794d:	cc                                              	int3
1099794e:	cc                                              	int3
1099794f:	cc                                              	int3
10997950:	8a 44 24 04                                     	mov    al,BYTE PTR [esp+0x4]
10997954:	88 41 25                                        	mov    BYTE PTR [ecx+0x25],al
10997957:	c6 41 24 01                                     	mov    BYTE PTR [ecx+0x24],0x1
1099795b:	c2 04 00                                        	ret    0x4
1099795e:	cc                                              	int3
1099795f:	cc                                              	int3
