# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998950 (WorldWrap_CloneLot)
Paired Ghidra pseudocode: 10998950_WorldWrap_CloneLot.c
Window: [0x10998950, 0x10998be0) (656 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998be0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998950: 55 8b ec 83 e4 f0 81 ec 94 01 00 00 8b 45 10 d9
10998960: 45 14 f3 0f 10 48 08 f3 0f 10 00 53 56 57 8b 7d
10998970: 0c 8b 8f 08 04 00 00 8b 97 74 01 00 00 6a 00 6a
10998980: 00 51 51 d9 1c 24 f3 0f 11 4c 24 38 f3 0f 10 48
10998990: 04 8b 87 78 01 00 00 8d 4c 24 60 51 8b 4d 08 50
109989a0: f3 0f 11 44 24 44 f3 0f 11 4c 24 3c f3 0f 11 44
109989b0: 24 38 0f 28 44 24 38 52 0f 29 44 24 6c e8 ce ab
109989c0: 89 ff 8b d8 85 db 89 5c 24 44 75 07 5f 5e 5b 8b
109989d0: e5 5d c3 8b 97 80 01 00 00 8b 87 7c 01 00 00 52
109989e0: 50 8b cb e8 58 bb 6f ff 8b 8b 98 02 00 00 8b b7
109989f0: 98 02 00 00 89 4c 24 40 8b ce e8 51 89 77 ff 85
10998a00: c0 89 44 24 4c c7 44 24 3c 00 00 00 00 0f 86 7a
10998a10: 01 00 00 80 cb ff 8b 44 24 3c 8d 54 24 20 52 50
10998a20: 8b ce 88 5c 24 28 88 5c 24 29 c6 44 24 2a 00 88
10998a30: 5c 24 2b 88 5c 24 2c c6 44 24 2d 00 e8 2f 89 77
10998a40: ff 6a 00 8d 4c 24 24 51 8b ce e8 b1 88 77 ff 8d
10998a50: 54 24 10 8b f8 52 8d 44 24 24 50 8b ce 88 5c 24
10998a60: 20 88 5c 24 21 c6 44 24 22 00 88 5c 24 23 88 5c
10998a70: 24 24 c6 44 24 25 00 88 5c 24 18 88 5c 24 19 c6
10998a80: 44 24 1a 00 88 5c 24 1b 88 5c 24 1c c6 44 24 1d
10998a90: 00 e8 ba 87 77 ff 66 8b 4c 24 13 8a 54 24 15 66
10998aa0: 8b 44 24 10 66 89 4c 24 18 8a 4c 24 12 88 54 24
10998ab0: 1a 8d 54 24 18 88 4c 24 1d 52 8b ce 66 89 44 24
10998ac0: 1f e8 4a ba 77 ff 89 44 24 48 8d 44 24 10 50 8b
10998ad0: ce e8 3a ba 77 ff 68 b0 ed c6 10 68 b0 ed c6 10
10998ae0: 68 b0 ed c6 10 50 8d 8c 24 f0 00 00 00 e8 fe 9c
10998af0: 72 ff 8b 4c 24 48 68 b0 ed c6 10 68 b0 ed c6 10
10998b00: 68 b0 ed c6 10 51 8d 8c 24 b0 00 00 00 e8 de 9c
10998b10: 72 ff 8d 94 24 a0 00 00 00 52 8d 84 24 e4 00 00
10998b20: 00 50 8d 8c 24 28 01 00 00 e8 f2 9b 72 ff 8d 4c
10998b30: 24 60 e8 19 9c 72 ff 57 e8 b3 6c 89 ff 83 c4 04
10998b40: 84 c0 74 11 8d 4c 24 60 51 8d 54 24 24 52 8b ce
10998b50: e8 0b c0 77 ff 8d 44 24 60 50 8d 4c 24 14 51 8b
10998b60: 4c 24 48 8d 94 24 28 01 00 00 52 57 e8 5f 37 78
10998b70: ff 8b 44 24 3c 83 c0 01 3b 44 24 4c 89 44 24 3c
10998b80: 0f 82 90 fe ff ff 8b 7d 0c 8b 5c 24 44 e8 0e 16
10998b90: d9 ff 85 c0 74 1b 8d 4c 24 20 51 6a 00 68 f0 87
10998ba0: 99 10 8b c8 89 7c 24 2c 89 5c 24 30 e8 8f 20 d9
10998bb0: ff 8b 7f 10 85 ff 53 75 11 8b 4d 08 e8 1f 17 8a
10998bc0: ff 8b c3 5f 5e 5b 8b e5 5d c3 8b 17 8b 42 44 8b
10998bd0: cf ff d0 5f 5e 8b c3 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
10998950 <.text+0x997950>:
10998950:	55                                              	push   ebp
10998951:	8b ec                                           	mov    ebp,esp
10998953:	83 e4 f0                                        	and    esp,0xfffffff0
10998956:	81 ec 94 01 00 00                               	sub    esp,0x194
1099895c:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1099895f:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
10998962:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
10998967:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1099896b:	53                                              	push   ebx
1099896c:	56                                              	push   esi
1099896d:	57                                              	push   edi
1099896e:	8b 7d 0c                                        	mov    edi,DWORD PTR [ebp+0xc]
10998971:	8b 8f 08 04 00 00                               	mov    ecx,DWORD PTR [edi+0x408]
10998977:	8b 97 74 01 00 00                               	mov    edx,DWORD PTR [edi+0x174]
1099897d:	6a 00                                           	push   0x0
1099897f:	6a 00                                           	push   0x0
10998981:	51                                              	push   ecx
10998982:	51                                              	push   ecx
10998983:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10998986:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
1099898c:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10998991:	8b 87 78 01 00 00                               	mov    eax,DWORD PTR [edi+0x178]
10998997:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1099899b:	51                                              	push   ecx
1099899c:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1099899f:	50                                              	push   eax
109989a0:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
109989a6:	f3 0f 11 4c 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm1
109989ac:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
109989b2:	0f 28 44 24 38                                  	movaps xmm0,XMMWORD PTR [esp+0x38]
109989b7:	52                                              	push   edx
109989b8:	0f 29 44 24 6c                                  	movaps XMMWORD PTR [esp+0x6c],xmm0
109989bd:	e8 ce ab 89 ff                                  	call   0x10233590
109989c2:	8b d8                                           	mov    ebx,eax
109989c4:	85 db                                           	test   ebx,ebx
109989c6:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
109989ca:	75 07                                           	jne    0x109989d3
109989cc:	5f                                              	pop    edi
109989cd:	5e                                              	pop    esi
109989ce:	5b                                              	pop    ebx
109989cf:	8b e5                                           	mov    esp,ebp
109989d1:	5d                                              	pop    ebp
109989d2:	c3                                              	ret
109989d3:	8b 97 80 01 00 00                               	mov    edx,DWORD PTR [edi+0x180]
109989d9:	8b 87 7c 01 00 00                               	mov    eax,DWORD PTR [edi+0x17c]
109989df:	52                                              	push   edx
109989e0:	50                                              	push   eax
109989e1:	8b cb                                           	mov    ecx,ebx
109989e3:	e8 58 bb 6f ff                                  	call   0x10094540
109989e8:	8b 8b 98 02 00 00                               	mov    ecx,DWORD PTR [ebx+0x298]
109989ee:	8b b7 98 02 00 00                               	mov    esi,DWORD PTR [edi+0x298]
109989f4:	89 4c 24 40                                     	mov    DWORD PTR [esp+0x40],ecx
109989f8:	8b ce                                           	mov    ecx,esi
109989fa:	e8 51 89 77 ff                                  	call   0x10111350
109989ff:	85 c0                                           	test   eax,eax
10998a01:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
10998a05:	c7 44 24 3c 00 00 00 00                         	mov    DWORD PTR [esp+0x3c],0x0
10998a0d:	0f 86 7a 01 00 00                               	jbe    0x10998b8d
10998a13:	80 cb ff                                        	or     bl,0xff
10998a16:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10998a1a:	8d 54 24 20                                     	lea    edx,[esp+0x20]
10998a1e:	52                                              	push   edx
10998a1f:	50                                              	push   eax
10998a20:	8b ce                                           	mov    ecx,esi
10998a22:	88 5c 24 28                                     	mov    BYTE PTR [esp+0x28],bl
10998a26:	88 5c 24 29                                     	mov    BYTE PTR [esp+0x29],bl
10998a2a:	c6 44 24 2a 00                                  	mov    BYTE PTR [esp+0x2a],0x0
10998a2f:	88 5c 24 2b                                     	mov    BYTE PTR [esp+0x2b],bl
10998a33:	88 5c 24 2c                                     	mov    BYTE PTR [esp+0x2c],bl
10998a37:	c6 44 24 2d 00                                  	mov    BYTE PTR [esp+0x2d],0x0
10998a3c:	e8 2f 89 77 ff                                  	call   0x10111370
10998a41:	6a 00                                           	push   0x0
10998a43:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10998a47:	51                                              	push   ecx
10998a48:	8b ce                                           	mov    ecx,esi
10998a4a:	e8 b1 88 77 ff                                  	call   0x10111300
10998a4f:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10998a53:	8b f8                                           	mov    edi,eax
10998a55:	52                                              	push   edx
10998a56:	8d 44 24 24                                     	lea    eax,[esp+0x24]
10998a5a:	50                                              	push   eax
10998a5b:	8b ce                                           	mov    ecx,esi
10998a5d:	88 5c 24 20                                     	mov    BYTE PTR [esp+0x20],bl
10998a61:	88 5c 24 21                                     	mov    BYTE PTR [esp+0x21],bl
10998a65:	c6 44 24 22 00                                  	mov    BYTE PTR [esp+0x22],0x0
10998a6a:	88 5c 24 23                                     	mov    BYTE PTR [esp+0x23],bl
10998a6e:	88 5c 24 24                                     	mov    BYTE PTR [esp+0x24],bl
10998a72:	c6 44 24 25 00                                  	mov    BYTE PTR [esp+0x25],0x0
10998a77:	88 5c 24 18                                     	mov    BYTE PTR [esp+0x18],bl
10998a7b:	88 5c 24 19                                     	mov    BYTE PTR [esp+0x19],bl
10998a7f:	c6 44 24 1a 00                                  	mov    BYTE PTR [esp+0x1a],0x0
10998a84:	88 5c 24 1b                                     	mov    BYTE PTR [esp+0x1b],bl
10998a88:	88 5c 24 1c                                     	mov    BYTE PTR [esp+0x1c],bl
10998a8c:	c6 44 24 1d 00                                  	mov    BYTE PTR [esp+0x1d],0x0
10998a91:	e8 ba 87 77 ff                                  	call   0x10111250
10998a96:	66 8b 4c 24 13                                  	mov    cx,WORD PTR [esp+0x13]
10998a9b:	8a 54 24 15                                     	mov    dl,BYTE PTR [esp+0x15]
10998a9f:	66 8b 44 24 10                                  	mov    ax,WORD PTR [esp+0x10]
10998aa4:	66 89 4c 24 18                                  	mov    WORD PTR [esp+0x18],cx
10998aa9:	8a 4c 24 12                                     	mov    cl,BYTE PTR [esp+0x12]
10998aad:	88 54 24 1a                                     	mov    BYTE PTR [esp+0x1a],dl
10998ab1:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10998ab5:	88 4c 24 1d                                     	mov    BYTE PTR [esp+0x1d],cl
10998ab9:	52                                              	push   edx
10998aba:	8b ce                                           	mov    ecx,esi
10998abc:	66 89 44 24 1f                                  	mov    WORD PTR [esp+0x1f],ax
10998ac1:	e8 4a ba 77 ff                                  	call   0x10114510
10998ac6:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
10998aca:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10998ace:	50                                              	push   eax
10998acf:	8b ce                                           	mov    ecx,esi
10998ad1:	e8 3a ba 77 ff                                  	call   0x10114510
10998ad6:	68 b0 ed c6 10                                  	push   0x10c6edb0
10998adb:	68 b0 ed c6 10                                  	push   0x10c6edb0
10998ae0:	68 b0 ed c6 10                                  	push   0x10c6edb0
10998ae5:	50                                              	push   eax
10998ae6:	8d 8c 24 f0 00 00 00                            	lea    ecx,[esp+0xf0]
10998aed:	e8 fe 9c 72 ff                                  	call   0x100c27f0
10998af2:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
10998af6:	68 b0 ed c6 10                                  	push   0x10c6edb0
10998afb:	68 b0 ed c6 10                                  	push   0x10c6edb0
10998b00:	68 b0 ed c6 10                                  	push   0x10c6edb0
10998b05:	51                                              	push   ecx
10998b06:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
10998b0d:	e8 de 9c 72 ff                                  	call   0x100c27f0
10998b12:	8d 94 24 a0 00 00 00                            	lea    edx,[esp+0xa0]
10998b19:	52                                              	push   edx
10998b1a:	8d 84 24 e4 00 00 00                            	lea    eax,[esp+0xe4]
10998b21:	50                                              	push   eax
10998b22:	8d 8c 24 28 01 00 00                            	lea    ecx,[esp+0x128]
10998b29:	e8 f2 9b 72 ff                                  	call   0x100c2720
10998b2e:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10998b32:	e8 19 9c 72 ff                                  	call   0x100c2750
10998b37:	57                                              	push   edi
10998b38:	e8 b3 6c 89 ff                                  	call   0x1022f7f0
10998b3d:	83 c4 04                                        	add    esp,0x4
10998b40:	84 c0                                           	test   al,al
10998b42:	74 11                                           	je     0x10998b55
10998b44:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10998b48:	51                                              	push   ecx
10998b49:	8d 54 24 24                                     	lea    edx,[esp+0x24]
10998b4d:	52                                              	push   edx
10998b4e:	8b ce                                           	mov    ecx,esi
10998b50:	e8 0b c0 77 ff                                  	call   0x10114b60
10998b55:	8d 44 24 60                                     	lea    eax,[esp+0x60]
10998b59:	50                                              	push   eax
10998b5a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10998b5e:	51                                              	push   ecx
10998b5f:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
10998b63:	8d 94 24 28 01 00 00                            	lea    edx,[esp+0x128]
10998b6a:	52                                              	push   edx
10998b6b:	57                                              	push   edi
10998b6c:	e8 5f 37 78 ff                                  	call   0x1011c2d0
10998b71:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10998b75:	83 c0 01                                        	add    eax,0x1
10998b78:	3b 44 24 4c                                     	cmp    eax,DWORD PTR [esp+0x4c]
10998b7c:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
10998b80:	0f 82 90 fe ff ff                               	jb     0x10998a16
10998b86:	8b 7d 0c                                        	mov    edi,DWORD PTR [ebp+0xc]
10998b89:	8b 5c 24 44                                     	mov    ebx,DWORD PTR [esp+0x44]
10998b8d:	e8 0e 16 d9 ff                                  	call   0x1072a1a0
10998b92:	85 c0                                           	test   eax,eax
10998b94:	74 1b                                           	je     0x10998bb1
10998b96:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10998b9a:	51                                              	push   ecx
10998b9b:	6a 00                                           	push   0x0
10998b9d:	68 f0 87 99 10                                  	push   0x109987f0
10998ba2:	8b c8                                           	mov    ecx,eax
10998ba4:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
10998ba8:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
10998bac:	e8 8f 20 d9 ff                                  	call   0x1072ac40
10998bb1:	8b 7f 10                                        	mov    edi,DWORD PTR [edi+0x10]
10998bb4:	85 ff                                           	test   edi,edi
10998bb6:	53                                              	push   ebx
10998bb7:	75 11                                           	jne    0x10998bca
10998bb9:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10998bbc:	e8 1f 17 8a ff                                  	call   0x1023a2e0
10998bc1:	8b c3                                           	mov    eax,ebx
10998bc3:	5f                                              	pop    edi
10998bc4:	5e                                              	pop    esi
10998bc5:	5b                                              	pop    ebx
10998bc6:	8b e5                                           	mov    esp,ebp
10998bc8:	5d                                              	pop    ebp
10998bc9:	c3                                              	ret
10998bca:	8b 17                                           	mov    edx,DWORD PTR [edi]
10998bcc:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
10998bcf:	8b cf                                           	mov    ecx,edi
10998bd1:	ff d0                                           	call   eax
10998bd3:	5f                                              	pop    edi
10998bd4:	5e                                              	pop    esi
10998bd5:	8b c3                                           	mov    eax,ebx
10998bd7:	5b                                              	pop    ebx
10998bd8:	8b e5                                           	mov    esp,ebp
10998bda:	5d                                              	pop    ebp
10998bdb:	c3                                              	ret
10998bdc:	cc                                              	int3
10998bdd:	cc                                              	int3
10998bde:	cc                                              	int3
10998bdf:	cc                                              	int3
