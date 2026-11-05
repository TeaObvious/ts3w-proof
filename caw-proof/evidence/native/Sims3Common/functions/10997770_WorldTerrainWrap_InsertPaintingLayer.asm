# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997770 (WorldTerrainWrap_InsertPaintingLayer)
Paired Ghidra pseudocode: 10997770_WorldTerrainWrap_InsertPaintingLayer.c
Window: [0x10997770, 0x10997860) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997770: 8b 44 24 04 83 ec 34 85 c0 0f 84 dc 00 00 00 56
10997780: 8b 70 64 85 f6 0f 84 cf 00 00 00 57 8b ce e8 bd
10997790: f2 d1 ff 8b f8 85 ff 0f 84 bc 00 00 00 53 8b 5c
109977a0: 24 48 53 8b cf e8 26 b2 85 ff 84 c0 0f 84 a6 00
109977b0: 00 00 8b 4c 24 64 8d 44 24 44 50 51 8d 4c 24 28
109977c0: c7 44 24 4c c0 7a b9 10 c7 44 24 14 8c 7a b9 10
109977d0: e8 cb 32 6d ff 8b 54 24 60 8b 4c 24 5c 50 52 8d
109977e0: 44 24 14 50 51 8d 4c 24 20 e8 b2 32 6d ff 50 8d
109977f0: 54 24 58 52 8d 44 24 40 50 e8 a2 62 bc ff 83 c4
10997800: 08 0f b6 cb 50 51 8b ce e8 f3 53 86 ff 8b 54 24
10997810: 18 8b 44 24 10 2b d0 83 e2 fe 83 fa 02 7e 0d 85
10997820: c0 74 09 50 e8 67 16 f8 ff 83 c4 04 8b 4c 24 28
10997830: 8b 44 24 20 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0
10997840: 74 09 50 e8 48 16 f8 ff 83 c4 04 5b 8b cf 5f 5e
10997850: 83 c4 34 e9 d8 8c 85 ff 5b 5f 5e 83 c4 34 c3 cc

LINEAR DISASSEMBLY
10997770 <.text+0x996770>:
10997770:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997774:	83 ec 34                                        	sub    esp,0x34
10997777:	85 c0                                           	test   eax,eax
10997779:	0f 84 dc 00 00 00                               	je     0x1099785b
1099777f:	56                                              	push   esi
10997780:	8b 70 64                                        	mov    esi,DWORD PTR [eax+0x64]
10997783:	85 f6                                           	test   esi,esi
10997785:	0f 84 cf 00 00 00                               	je     0x1099785a
1099778b:	57                                              	push   edi
1099778c:	8b ce                                           	mov    ecx,esi
1099778e:	e8 bd f2 d1 ff                                  	call   0x106b6a50
10997793:	8b f8                                           	mov    edi,eax
10997795:	85 ff                                           	test   edi,edi
10997797:	0f 84 bc 00 00 00                               	je     0x10997859
1099779d:	53                                              	push   ebx
1099779e:	8b 5c 24 48                                     	mov    ebx,DWORD PTR [esp+0x48]
109977a2:	53                                              	push   ebx
109977a3:	8b cf                                           	mov    ecx,edi
109977a5:	e8 26 b2 85 ff                                  	call   0x101f29d0
109977aa:	84 c0                                           	test   al,al
109977ac:	0f 84 a6 00 00 00                               	je     0x10997858
109977b2:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
109977b6:	8d 44 24 44                                     	lea    eax,[esp+0x44]
109977ba:	50                                              	push   eax
109977bb:	51                                              	push   ecx
109977bc:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
109977c0:	c7 44 24 4c c0 7a b9 10                         	mov    DWORD PTR [esp+0x4c],0x10b97ac0
109977c8:	c7 44 24 14 8c 7a b9 10                         	mov    DWORD PTR [esp+0x14],0x10b97a8c
109977d0:	e8 cb 32 6d ff                                  	call   0x1006aaa0
109977d5:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
109977d9:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
109977dd:	50                                              	push   eax
109977de:	52                                              	push   edx
109977df:	8d 44 24 14                                     	lea    eax,[esp+0x14]
109977e3:	50                                              	push   eax
109977e4:	51                                              	push   ecx
109977e5:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
109977e9:	e8 b2 32 6d ff                                  	call   0x1006aaa0
109977ee:	50                                              	push   eax
109977ef:	8d 54 24 58                                     	lea    edx,[esp+0x58]
109977f3:	52                                              	push   edx
109977f4:	8d 44 24 40                                     	lea    eax,[esp+0x40]
109977f8:	50                                              	push   eax
109977f9:	e8 a2 62 bc ff                                  	call   0x1055daa0
109977fe:	83 c4 08                                        	add    esp,0x8
10997801:	0f b6 cb                                        	movzx  ecx,bl
10997804:	50                                              	push   eax
10997805:	51                                              	push   ecx
10997806:	8b ce                                           	mov    ecx,esi
10997808:	e8 f3 53 86 ff                                  	call   0x101fcc00
1099780d:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10997811:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10997815:	2b d0                                           	sub    edx,eax
10997817:	83 e2 fe                                        	and    edx,0xfffffffe
1099781a:	83 fa 02                                        	cmp    edx,0x2
1099781d:	7e 0d                                           	jle    0x1099782c
1099781f:	85 c0                                           	test   eax,eax
10997821:	74 09                                           	je     0x1099782c
10997823:	50                                              	push   eax
10997824:	e8 67 16 f8 ff                                  	call   0x10918e90
10997829:	83 c4 04                                        	add    esp,0x4
1099782c:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10997830:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10997834:	2b c8                                           	sub    ecx,eax
10997836:	83 e1 fe                                        	and    ecx,0xfffffffe
10997839:	83 f9 02                                        	cmp    ecx,0x2
1099783c:	7e 0d                                           	jle    0x1099784b
1099783e:	85 c0                                           	test   eax,eax
10997840:	74 09                                           	je     0x1099784b
10997842:	50                                              	push   eax
10997843:	e8 48 16 f8 ff                                  	call   0x10918e90
10997848:	83 c4 04                                        	add    esp,0x4
1099784b:	5b                                              	pop    ebx
1099784c:	8b cf                                           	mov    ecx,edi
1099784e:	5f                                              	pop    edi
1099784f:	5e                                              	pop    esi
10997850:	83 c4 34                                        	add    esp,0x34
10997853:	e9 d8 8c 85 ff                                  	jmp    0x101f0530
10997858:	5b                                              	pop    ebx
10997859:	5f                                              	pop    edi
1099785a:	5e                                              	pop    esi
1099785b:	83 c4 34                                        	add    esp,0x34
1099785e:	c3                                              	ret
1099785f:	cc                                              	int3
