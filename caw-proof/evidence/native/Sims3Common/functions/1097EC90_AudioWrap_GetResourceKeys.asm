# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ec90 (AudioWrap_GetResourceKeys)
Paired Ghidra pseudocode: 1097EC90_AudioWrap_GetResourceKeys.c
Window: [0x1097ec90, 0x1097ee00) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097ee00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ec90: 83 ec 34 53 55 56 57 8b 7c 24 48 33 f6 3b fe 0f
1097eca0: 84 44 01 00 00 8b 6c 24 4c 3b ee 0f 84 38 01 00
1097ecb0: 00 e8 1a 64 f6 ff 8b d8 3b de 0f 84 29 01 00 00
1097ecc0: 55 8d 4c 24 34 e8 26 fb ff ff 83 7c 24 40 ff 0f
1097ecd0: 84 0b 01 00 00 56 56 56 68 62 f6 b9 02 8d 44 24
1097ece0: 30 57 50 89 74 24 28 89 74 24 2c 89 74 24 30 c7
1097ecf0: 44 24 34 b4 62 b9 10 89 74 24 38 89 74 24 3c 89
1097ed00: 74 24 40 89 74 24 44 e8 24 5b f6 ff 83 c4 18 84
1097ed10: c0 0f 84 c0 00 00 00 8b 54 24 20 55 8d 4c 24 14
1097ed20: 51 8b 4c 24 2c 53 83 ec 10 8b c4 89 10 8b 54 24
1097ed30: 44 89 48 04 8b 4c 24 48 89 50 08 89 48 0c e8 1d
1097ed40: fb ff ff 8b 44 24 30 2b 44 24 2c 83 c4 1c c1 f8
1097ed50: 04 0f 84 80 00 00 00 50 56 6a 08 ff 15 e4 b6 aa
1097ed60: 10 8b e8 3b ee 89 6c 24 48 74 6c 55 ff 15 e8 b6
1097ed70: aa 10 85 c0 7c 61 8b 54 24 14 8b 44 24 10 8b 5d
1097ed80: 0c 2b d0 c1 fa 04 74 2c 8b 2d c4 b6 aa 10 33 ff
1097ed90: 8b 04 07 50 ff d5 89 04 b3 8b 4c 24 14 8b 44 24
1097eda0: 10 2b c8 83 c6 01 c1 f9 04 83 c7 10 3b f1 72 e0
1097edb0: 8b 6c 24 48 55 ff 15 ec b6 aa 10 8d 4c 24 10 e8
1097edc0: 1c fe 92 ff 8d 4c 24 30 e8 f3 f9 ff ff 8b c5 5f
1097edd0: 5e 5d 5b 83 c4 34 c3 8d 4c 24 10 e8 00 fe 92 ff
1097ede0: 8d 4c 24 30 e8 d7 f9 ff ff 5f 5e 5d 33 c0 5b 83
1097edf0: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097ec90 <.text+0x97dc90>:
1097ec90:	83 ec 34                                        	sub    esp,0x34
1097ec93:	53                                              	push   ebx
1097ec94:	55                                              	push   ebp
1097ec95:	56                                              	push   esi
1097ec96:	57                                              	push   edi
1097ec97:	8b 7c 24 48                                     	mov    edi,DWORD PTR [esp+0x48]
1097ec9b:	33 f6                                           	xor    esi,esi
1097ec9d:	3b fe                                           	cmp    edi,esi
1097ec9f:	0f 84 44 01 00 00                               	je     0x1097ede9
1097eca5:	8b 6c 24 4c                                     	mov    ebp,DWORD PTR [esp+0x4c]
1097eca9:	3b ee                                           	cmp    ebp,esi
1097ecab:	0f 84 38 01 00 00                               	je     0x1097ede9
1097ecb1:	e8 1a 64 f6 ff                                  	call   0x108e50d0
1097ecb6:	8b d8                                           	mov    ebx,eax
1097ecb8:	3b de                                           	cmp    ebx,esi
1097ecba:	0f 84 29 01 00 00                               	je     0x1097ede9
1097ecc0:	55                                              	push   ebp
1097ecc1:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1097ecc5:	e8 26 fb ff ff                                  	call   0x1097e7f0
1097ecca:	83 7c 24 40 ff                                  	cmp    DWORD PTR [esp+0x40],0xffffffff
1097eccf:	0f 84 0b 01 00 00                               	je     0x1097ede0
1097ecd5:	56                                              	push   esi
1097ecd6:	56                                              	push   esi
1097ecd7:	56                                              	push   esi
1097ecd8:	68 62 f6 b9 02                                  	push   0x2b9f662
1097ecdd:	8d 44 24 30                                     	lea    eax,[esp+0x30]
1097ece1:	57                                              	push   edi
1097ece2:	50                                              	push   eax
1097ece3:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
1097ece7:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
1097eceb:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
1097ecef:	c7 44 24 34 b4 62 b9 10                         	mov    DWORD PTR [esp+0x34],0x10b962b4
1097ecf7:	89 74 24 38                                     	mov    DWORD PTR [esp+0x38],esi
1097ecfb:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
1097ecff:	89 74 24 40                                     	mov    DWORD PTR [esp+0x40],esi
1097ed03:	89 74 24 44                                     	mov    DWORD PTR [esp+0x44],esi
1097ed07:	e8 24 5b f6 ff                                  	call   0x108e4830
1097ed0c:	83 c4 18                                        	add    esp,0x18
1097ed0f:	84 c0                                           	test   al,al
1097ed11:	0f 84 c0 00 00 00                               	je     0x1097edd7
1097ed17:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1097ed1b:	55                                              	push   ebp
1097ed1c:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1097ed20:	51                                              	push   ecx
1097ed21:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1097ed25:	53                                              	push   ebx
1097ed26:	83 ec 10                                        	sub    esp,0x10
1097ed29:	8b c4                                           	mov    eax,esp
1097ed2b:	89 10                                           	mov    DWORD PTR [eax],edx
1097ed2d:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1097ed31:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1097ed34:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1097ed38:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1097ed3b:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1097ed3e:	e8 1d fb ff ff                                  	call   0x1097e860
1097ed43:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1097ed47:	2b 44 24 2c                                     	sub    eax,DWORD PTR [esp+0x2c]
1097ed4b:	83 c4 1c                                        	add    esp,0x1c
1097ed4e:	c1 f8 04                                        	sar    eax,0x4
1097ed51:	0f 84 80 00 00 00                               	je     0x1097edd7
1097ed57:	50                                              	push   eax
1097ed58:	56                                              	push   esi
1097ed59:	6a 08                                           	push   0x8
1097ed5b:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
1097ed61:	8b e8                                           	mov    ebp,eax
1097ed63:	3b ee                                           	cmp    ebp,esi
1097ed65:	89 6c 24 48                                     	mov    DWORD PTR [esp+0x48],ebp
1097ed69:	74 6c                                           	je     0x1097edd7
1097ed6b:	55                                              	push   ebp
1097ed6c:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
1097ed72:	85 c0                                           	test   eax,eax
1097ed74:	7c 61                                           	jl     0x1097edd7
1097ed76:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1097ed7a:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1097ed7e:	8b 5d 0c                                        	mov    ebx,DWORD PTR [ebp+0xc]
1097ed81:	2b d0                                           	sub    edx,eax
1097ed83:	c1 fa 04                                        	sar    edx,0x4
1097ed86:	74 2c                                           	je     0x1097edb4
1097ed88:	8b 2d c4 b6 aa 10                               	mov    ebp,DWORD PTR ds:0x10aab6c4
1097ed8e:	33 ff                                           	xor    edi,edi
1097ed90:	8b 04 07                                        	mov    eax,DWORD PTR [edi+eax*1]
1097ed93:	50                                              	push   eax
1097ed94:	ff d5                                           	call   ebp
1097ed96:	89 04 b3                                        	mov    DWORD PTR [ebx+esi*4],eax
1097ed99:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097ed9d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1097eda1:	2b c8                                           	sub    ecx,eax
1097eda3:	83 c6 01                                        	add    esi,0x1
1097eda6:	c1 f9 04                                        	sar    ecx,0x4
1097eda9:	83 c7 10                                        	add    edi,0x10
1097edac:	3b f1                                           	cmp    esi,ecx
1097edae:	72 e0                                           	jb     0x1097ed90
1097edb0:	8b 6c 24 48                                     	mov    ebp,DWORD PTR [esp+0x48]
1097edb4:	55                                              	push   ebp
1097edb5:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
1097edbb:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1097edbf:	e8 1c fe 92 ff                                  	call   0x102aebe0
1097edc4:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1097edc8:	e8 f3 f9 ff ff                                  	call   0x1097e7c0
1097edcd:	8b c5                                           	mov    eax,ebp
1097edcf:	5f                                              	pop    edi
1097edd0:	5e                                              	pop    esi
1097edd1:	5d                                              	pop    ebp
1097edd2:	5b                                              	pop    ebx
1097edd3:	83 c4 34                                        	add    esp,0x34
1097edd6:	c3                                              	ret
1097edd7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1097eddb:	e8 00 fe 92 ff                                  	call   0x102aebe0
1097ede0:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1097ede4:	e8 d7 f9 ff ff                                  	call   0x1097e7c0
1097ede9:	5f                                              	pop    edi
1097edea:	5e                                              	pop    esi
1097edeb:	5d                                              	pop    ebp
1097edec:	33 c0                                           	xor    eax,eax
1097edee:	5b                                              	pop    ebx
1097edef:	83 c4 34                                        	add    esp,0x34
1097edf2:	c3                                              	ret
1097edf3:	cc                                              	int3
1097edf4:	cc                                              	int3
1097edf5:	cc                                              	int3
1097edf6:	cc                                              	int3
1097edf7:	cc                                              	int3
1097edf8:	cc                                              	int3
1097edf9:	cc                                              	int3
1097edfa:	cc                                              	int3
1097edfb:	cc                                              	int3
1097edfc:	cc                                              	int3
1097edfd:	cc                                              	int3
1097edfe:	cc                                              	int3
1097edff:	cc                                              	int3
