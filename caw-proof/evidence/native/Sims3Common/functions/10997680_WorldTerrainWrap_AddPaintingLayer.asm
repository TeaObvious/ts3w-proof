# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997680 (WorldTerrainWrap_AddPaintingLayer)
Paired Ghidra pseudocode: 10997680_WorldTerrainWrap_AddPaintingLayer.c
Window: [0x10997680, 0x10997770) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997680: 83 ec 38 8b 4c 24 3c 32 c0 85 c9 88 44 24 03 0f
10997690: 84 d4 00 00 00 56 8b 71 64 85 f6 0f 84 c7 00 00
109976a0: 00 57 8b ce e8 a7 f3 d1 ff 8b f8 85 ff 0f 84 b0
109976b0: 00 00 00 8d 44 24 0b 50 8b cf e8 41 b2 85 ff 84
109976c0: c0 0f 84 9c 00 00 00 8b 54 24 60 8d 4c 24 44 51
109976d0: 52 8d 4c 24 28 c7 44 24 4c 60 7a b9 10 c7 44 24
109976e0: 14 30 7a b9 10 e8 b6 33 6d ff 8b 54 24 58 50 8b
109976f0: 44 24 60 50 8d 4c 24 14 51 52 8d 4c 24 20 e8 9d
10997700: 33 6d ff 50 8d 44 24 54 50 8d 4c 24 40 51 e8 8d
10997710: 63 bc ff 83 c4 08 50 8b ce e8 d2 53 86 ff 8b 54
10997720: 24 18 8b 44 24 10 2b d0 83 e2 fe 83 fa 02 7e 0d
10997730: 85 c0 74 09 50 e8 56 17 f8 ff 83 c4 04 8b 4c 24
10997740: 28 8b 44 24 20 2b c8 83 e1 fe 83 f9 02 7e 0d 85
10997750: c0 74 09 50 e8 37 17 f8 ff 83 c4 04 8b cf e8 cd
10997760: 8d 85 ff 8a 44 24 0b 5f 5e 83 c4 38 c3 cc cc cc

LINEAR DISASSEMBLY
10997680 <.text+0x996680>:
10997680:	83 ec 38                                        	sub    esp,0x38
10997683:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10997687:	32 c0                                           	xor    al,al
10997689:	85 c9                                           	test   ecx,ecx
1099768b:	88 44 24 03                                     	mov    BYTE PTR [esp+0x3],al
1099768f:	0f 84 d4 00 00 00                               	je     0x10997769
10997695:	56                                              	push   esi
10997696:	8b 71 64                                        	mov    esi,DWORD PTR [ecx+0x64]
10997699:	85 f6                                           	test   esi,esi
1099769b:	0f 84 c7 00 00 00                               	je     0x10997768
109976a1:	57                                              	push   edi
109976a2:	8b ce                                           	mov    ecx,esi
109976a4:	e8 a7 f3 d1 ff                                  	call   0x106b6a50
109976a9:	8b f8                                           	mov    edi,eax
109976ab:	85 ff                                           	test   edi,edi
109976ad:	0f 84 b0 00 00 00                               	je     0x10997763
109976b3:	8d 44 24 0b                                     	lea    eax,[esp+0xb]
109976b7:	50                                              	push   eax
109976b8:	8b cf                                           	mov    ecx,edi
109976ba:	e8 41 b2 85 ff                                  	call   0x101f2900
109976bf:	84 c0                                           	test   al,al
109976c1:	0f 84 9c 00 00 00                               	je     0x10997763
109976c7:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
109976cb:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
109976cf:	51                                              	push   ecx
109976d0:	52                                              	push   edx
109976d1:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
109976d5:	c7 44 24 4c 60 7a b9 10                         	mov    DWORD PTR [esp+0x4c],0x10b97a60
109976dd:	c7 44 24 14 30 7a b9 10                         	mov    DWORD PTR [esp+0x14],0x10b97a30
109976e5:	e8 b6 33 6d ff                                  	call   0x1006aaa0
109976ea:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
109976ee:	50                                              	push   eax
109976ef:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
109976f3:	50                                              	push   eax
109976f4:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
109976f8:	51                                              	push   ecx
109976f9:	52                                              	push   edx
109976fa:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
109976fe:	e8 9d 33 6d ff                                  	call   0x1006aaa0
10997703:	50                                              	push   eax
10997704:	8d 44 24 54                                     	lea    eax,[esp+0x54]
10997708:	50                                              	push   eax
10997709:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
1099770d:	51                                              	push   ecx
1099770e:	e8 8d 63 bc ff                                  	call   0x1055daa0
10997713:	83 c4 08                                        	add    esp,0x8
10997716:	50                                              	push   eax
10997717:	8b ce                                           	mov    ecx,esi
10997719:	e8 d2 53 86 ff                                  	call   0x101fcaf0
1099771e:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10997722:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10997726:	2b d0                                           	sub    edx,eax
10997728:	83 e2 fe                                        	and    edx,0xfffffffe
1099772b:	83 fa 02                                        	cmp    edx,0x2
1099772e:	7e 0d                                           	jle    0x1099773d
10997730:	85 c0                                           	test   eax,eax
10997732:	74 09                                           	je     0x1099773d
10997734:	50                                              	push   eax
10997735:	e8 56 17 f8 ff                                  	call   0x10918e90
1099773a:	83 c4 04                                        	add    esp,0x4
1099773d:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10997741:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10997745:	2b c8                                           	sub    ecx,eax
10997747:	83 e1 fe                                        	and    ecx,0xfffffffe
1099774a:	83 f9 02                                        	cmp    ecx,0x2
1099774d:	7e 0d                                           	jle    0x1099775c
1099774f:	85 c0                                           	test   eax,eax
10997751:	74 09                                           	je     0x1099775c
10997753:	50                                              	push   eax
10997754:	e8 37 17 f8 ff                                  	call   0x10918e90
10997759:	83 c4 04                                        	add    esp,0x4
1099775c:	8b cf                                           	mov    ecx,edi
1099775e:	e8 cd 8d 85 ff                                  	call   0x101f0530
10997763:	8a 44 24 0b                                     	mov    al,BYTE PTR [esp+0xb]
10997767:	5f                                              	pop    edi
10997768:	5e                                              	pop    esi
10997769:	83 c4 38                                        	add    esp,0x38
1099776c:	c3                                              	ret
1099776d:	cc                                              	int3
1099776e:	cc                                              	int3
1099776f:	cc                                              	int3
