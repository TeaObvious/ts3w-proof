# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10551860 (Route_AddSlotArrayDestination)
Paired Ghidra pseudocode: 10551860_Route_AddSlotArrayDestination.c
Window: [0x10551860, 0x10551a50) (496 bytes; stop exclusive)
Next defined Ghidra entry: 0x10551a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10551860: 83 ec 18 53 55 33 ed 39 2d 44 89 c7 10 56 57 0f
10551870: 84 cd 01 00 00 8b 74 24 4c 3b f5 0f 84 c1 01 00
10551880: 00 e8 9a 98 00 00 8b f8 8d 4c 24 10 51 8d 54 24
10551890: 18 89 6c 24 18 89 6c 24 1c 89 6c 24 14 8b 07 8b
105518a0: 40 6c 52 56 8b cf ff d0 39 6c 24 14 0f 84 90 01
105518b0: 00 00 39 6c 24 10 0f 8e 86 01 00 00 8b 44 24 50
105518c0: 3b c5 74 26 8b 17 8b 52 78 8d 4c 24 1c 51 8d 4c
105518d0: 24 1c 51 50 8b cf 89 6c 24 28 ff d2 8b 44 24 1c
105518e0: 3b 44 24 10 74 04 89 6c 24 18 8b 4c 24 2c 51 8b
105518f0: 0d 44 89 c7 10 e8 f6 a7 fe ff 8b d8 3b dd 0f 84
10551900: 3e 01 00 00 8b 13 8b 42 10 8b cb ff d0 8b cb e8
10551910: 8c 1c ff ff 50 8d 4c 24 20 e8 c2 9e c1 ff 8b 74
10551920: 24 1c 3b f5 0f 84 0f 01 00 00 55 55 55 55 68 d0
10551930: bd b1 10 6a 58 e8 76 75 3c 00 83 c4 18 3b c5 0f
10551940: 84 eb 00 00 00 8b c8 e8 b4 e2 fe ff 8b f0 3b f5
10551950: 0f 84 d6 00 00 00 8b 4c 24 30 f3 0f 10 44 24 34
10551960: 89 4e 28 8b 4c 24 44 f3 0f 11 46 2c 8b 53 40 89
10551970: 56 40 8b 43 44 8b 54 24 48 89 46 44 8b 44 24 40
10551980: 3b c5 89 4e 48 89 56 4c 74 2d 8b 17 8b 52 78 8d
10551990: 4c 24 20 51 8d 4c 24 28 51 50 8b cf 89 6c 24 30
105519a0: 89 6c 24 2c ff d2 8b 44 24 20 8b 4c 24 24 50 51
105519b0: 8b ce e8 79 ad fe ff 8b 54 24 10 8d 7e 30 52 8b
105519c0: cf e8 ba fc ff ff 33 c0 39 6c 24 10 7e 28 8b ff
105519d0: 8b 54 24 14 8b 0f 8b 14 82 89 14 c1 8b 4c 24 18
105519e0: 3b cd 74 09 8b 17 d9 04 81 d9 5c c2 04 83 c0 01
105519f0: 3b 44 24 10 7c da 8b 44 24 38 8a 4c 24 3c 88 4e
10551a00: 54 89 46 50 56 8b 74 24 20 8b ce e8 b0 e0 fe ff
10551a10: 8b 16 8b 42 04 8b ce ff d0 8b 13 8b 42 14 8b cb
10551a20: ff d0 5f 5e 5d b0 01 5b 83 c4 18 c3 8b 74 24 1c
10551a30: 8b 16 8b 42 04 8b ce ff d0 8b 13 8b 42 14 8b cb
10551a40: ff d0 5f 5e 5d 32 c0 5b 83 c4 18 c3 cc cc cc cc

LINEAR DISASSEMBLY
10551860 <.text+0x550860>:
10551860:	83 ec 18                                        	sub    esp,0x18
10551863:	53                                              	push   ebx
10551864:	55                                              	push   ebp
10551865:	33 ed                                           	xor    ebp,ebp
10551867:	39 2d 44 89 c7 10                               	cmp    DWORD PTR ds:0x10c78944,ebp
1055186d:	56                                              	push   esi
1055186e:	57                                              	push   edi
1055186f:	0f 84 cd 01 00 00                               	je     0x10551a42
10551875:	8b 74 24 4c                                     	mov    esi,DWORD PTR [esp+0x4c]
10551879:	3b f5                                           	cmp    esi,ebp
1055187b:	0f 84 c1 01 00 00                               	je     0x10551a42
10551881:	e8 9a 98 00 00                                  	call   0x1055b120
10551886:	8b f8                                           	mov    edi,eax
10551888:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1055188c:	51                                              	push   ecx
1055188d:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10551891:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
10551895:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
10551899:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
1055189d:	8b 07                                           	mov    eax,DWORD PTR [edi]
1055189f:	8b 40 6c                                        	mov    eax,DWORD PTR [eax+0x6c]
105518a2:	52                                              	push   edx
105518a3:	56                                              	push   esi
105518a4:	8b cf                                           	mov    ecx,edi
105518a6:	ff d0                                           	call   eax
105518a8:	39 6c 24 14                                     	cmp    DWORD PTR [esp+0x14],ebp
105518ac:	0f 84 90 01 00 00                               	je     0x10551a42
105518b2:	39 6c 24 10                                     	cmp    DWORD PTR [esp+0x10],ebp
105518b6:	0f 8e 86 01 00 00                               	jle    0x10551a42
105518bc:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
105518c0:	3b c5                                           	cmp    eax,ebp
105518c2:	74 26                                           	je     0x105518ea
105518c4:	8b 17                                           	mov    edx,DWORD PTR [edi]
105518c6:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
105518c9:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
105518cd:	51                                              	push   ecx
105518ce:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
105518d2:	51                                              	push   ecx
105518d3:	50                                              	push   eax
105518d4:	8b cf                                           	mov    ecx,edi
105518d6:	89 6c 24 28                                     	mov    DWORD PTR [esp+0x28],ebp
105518da:	ff d2                                           	call   edx
105518dc:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
105518e0:	3b 44 24 10                                     	cmp    eax,DWORD PTR [esp+0x10]
105518e4:	74 04                                           	je     0x105518ea
105518e6:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
105518ea:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
105518ee:	51                                              	push   ecx
105518ef:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
105518f5:	e8 f6 a7 fe ff                                  	call   0x1053c0f0
105518fa:	8b d8                                           	mov    ebx,eax
105518fc:	3b dd                                           	cmp    ebx,ebp
105518fe:	0f 84 3e 01 00 00                               	je     0x10551a42
10551904:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10551906:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10551909:	8b cb                                           	mov    ecx,ebx
1055190b:	ff d0                                           	call   eax
1055190d:	8b cb                                           	mov    ecx,ebx
1055190f:	e8 8c 1c ff ff                                  	call   0x105435a0
10551914:	50                                              	push   eax
10551915:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10551919:	e8 c2 9e c1 ff                                  	call   0x1016b7e0
1055191e:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
10551922:	3b f5                                           	cmp    esi,ebp
10551924:	0f 84 0f 01 00 00                               	je     0x10551a39
1055192a:	55                                              	push   ebp
1055192b:	55                                              	push   ebp
1055192c:	55                                              	push   ebp
1055192d:	55                                              	push   ebp
1055192e:	68 d0 bd b1 10                                  	push   0x10b1bdd0
10551933:	6a 58                                           	push   0x58
10551935:	e8 76 75 3c 00                                  	call   0x10918eb0
1055193a:	83 c4 18                                        	add    esp,0x18
1055193d:	3b c5                                           	cmp    eax,ebp
1055193f:	0f 84 eb 00 00 00                               	je     0x10551a30
10551945:	8b c8                                           	mov    ecx,eax
10551947:	e8 b4 e2 fe ff                                  	call   0x1053fc00
1055194c:	8b f0                                           	mov    esi,eax
1055194e:	3b f5                                           	cmp    esi,ebp
10551950:	0f 84 d6 00 00 00                               	je     0x10551a2c
10551956:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1055195a:	f3 0f 10 44 24 34                               	movss  xmm0,DWORD PTR [esp+0x34]
10551960:	89 4e 28                                        	mov    DWORD PTR [esi+0x28],ecx
10551963:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
10551967:	f3 0f 11 46 2c                                  	movss  DWORD PTR [esi+0x2c],xmm0
1055196c:	8b 53 40                                        	mov    edx,DWORD PTR [ebx+0x40]
1055196f:	89 56 40                                        	mov    DWORD PTR [esi+0x40],edx
10551972:	8b 43 44                                        	mov    eax,DWORD PTR [ebx+0x44]
10551975:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
10551979:	89 46 44                                        	mov    DWORD PTR [esi+0x44],eax
1055197c:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10551980:	3b c5                                           	cmp    eax,ebp
10551982:	89 4e 48                                        	mov    DWORD PTR [esi+0x48],ecx
10551985:	89 56 4c                                        	mov    DWORD PTR [esi+0x4c],edx
10551988:	74 2d                                           	je     0x105519b7
1055198a:	8b 17                                           	mov    edx,DWORD PTR [edi]
1055198c:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
1055198f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10551993:	51                                              	push   ecx
10551994:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10551998:	51                                              	push   ecx
10551999:	50                                              	push   eax
1055199a:	8b cf                                           	mov    ecx,edi
1055199c:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
105519a0:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
105519a4:	ff d2                                           	call   edx
105519a6:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
105519aa:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
105519ae:	50                                              	push   eax
105519af:	51                                              	push   ecx
105519b0:	8b ce                                           	mov    ecx,esi
105519b2:	e8 79 ad fe ff                                  	call   0x1053c730
105519b7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105519bb:	8d 7e 30                                        	lea    edi,[esi+0x30]
105519be:	52                                              	push   edx
105519bf:	8b cf                                           	mov    ecx,edi
105519c1:	e8 ba fc ff ff                                  	call   0x10551680
105519c6:	33 c0                                           	xor    eax,eax
105519c8:	39 6c 24 10                                     	cmp    DWORD PTR [esp+0x10],ebp
105519cc:	7e 28                                           	jle    0x105519f6
105519ce:	8b ff                                           	mov    edi,edi
105519d0:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
105519d4:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
105519d6:	8b 14 82                                        	mov    edx,DWORD PTR [edx+eax*4]
105519d9:	89 14 c1                                        	mov    DWORD PTR [ecx+eax*8],edx
105519dc:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105519e0:	3b cd                                           	cmp    ecx,ebp
105519e2:	74 09                                           	je     0x105519ed
105519e4:	8b 17                                           	mov    edx,DWORD PTR [edi]
105519e6:	d9 04 81                                        	fld    DWORD PTR [ecx+eax*4]
105519e9:	d9 5c c2 04                                     	fstp   DWORD PTR [edx+eax*8+0x4]
105519ed:	83 c0 01                                        	add    eax,0x1
105519f0:	3b 44 24 10                                     	cmp    eax,DWORD PTR [esp+0x10]
105519f4:	7c da                                           	jl     0x105519d0
105519f6:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
105519fa:	8a 4c 24 3c                                     	mov    cl,BYTE PTR [esp+0x3c]
105519fe:	88 4e 54                                        	mov    BYTE PTR [esi+0x54],cl
10551a01:	89 46 50                                        	mov    DWORD PTR [esi+0x50],eax
10551a04:	56                                              	push   esi
10551a05:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
10551a09:	8b ce                                           	mov    ecx,esi
10551a0b:	e8 b0 e0 fe ff                                  	call   0x1053fac0
10551a10:	8b 16                                           	mov    edx,DWORD PTR [esi]
10551a12:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10551a15:	8b ce                                           	mov    ecx,esi
10551a17:	ff d0                                           	call   eax
10551a19:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10551a1b:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10551a1e:	8b cb                                           	mov    ecx,ebx
10551a20:	ff d0                                           	call   eax
10551a22:	5f                                              	pop    edi
10551a23:	5e                                              	pop    esi
10551a24:	5d                                              	pop    ebp
10551a25:	b0 01                                           	mov    al,0x1
10551a27:	5b                                              	pop    ebx
10551a28:	83 c4 18                                        	add    esp,0x18
10551a2b:	c3                                              	ret
10551a2c:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
10551a30:	8b 16                                           	mov    edx,DWORD PTR [esi]
10551a32:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10551a35:	8b ce                                           	mov    ecx,esi
10551a37:	ff d0                                           	call   eax
10551a39:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10551a3b:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10551a3e:	8b cb                                           	mov    ecx,ebx
10551a40:	ff d0                                           	call   eax
10551a42:	5f                                              	pop    edi
10551a43:	5e                                              	pop    esi
10551a44:	5d                                              	pop    ebp
10551a45:	32 c0                                           	xor    al,al
10551a47:	5b                                              	pop    ebx
10551a48:	83 c4 18                                        	add    esp,0x18
10551a4b:	c3                                              	ret
10551a4c:	cc                                              	int3
10551a4d:	cc                                              	int3
10551a4e:	cc                                              	int3
10551a4f:	cc                                              	int3
