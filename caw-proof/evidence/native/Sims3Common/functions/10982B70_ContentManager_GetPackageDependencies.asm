# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982b70 (ContentManager_GetPackageDependencies)
Paired Ghidra pseudocode: 10982B70_ContentManager_GetPackageDependencies.c
Window: [0x10982b70, 0x10982ca0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982b70: 81 ec 88 00 00 00 53 55 56 57 e8 41 19 df ff 8b
10982b80: f8 33 f6 3b fe 0f 84 fa 00 00 00 8b 84 24 9c 00
10982b90: 00 00 6a 10 50 8d 4c 24 30 e8 92 1e fb ff 8d 4c
10982ba0: 24 10 51 83 ec 10 8d 54 24 3c 8b cc 52 89 74 24
10982bb0: 28 89 74 24 2c 89 74 24 30 c7 44 24 34 d4 64 b9
10982bc0: 10 e8 fa 09 fb ff 8b cf e8 43 72 df ff 84 c0 0f
10982bd0: 84 9f 00 00 00 8b 7c 24 14 2b 7c 24 10 c1 ff 04
10982be0: 57 56 6a 08 ff 15 e4 b6 aa 10 8b d8 3b de 89 5c
10982bf0: 24 24 0f 84 7c 00 00 00 53 ff 15 e8 b6 aa 10 85
10982c00: c0 7c 71 3b fe 8b 6b 0c 76 45 33 db 8d 64 24 00
10982c10: 8b 54 24 10 6a 10 8d 44 24 24 50 8d 4c 24 40 51
10982c20: 8d 0c 13 c7 44 24 2c 00 00 00 00 e8 50 1d fb ff
10982c30: 8d 44 24 38 50 ff 15 c4 b6 aa 10 89 44 b5 00 83
10982c40: c6 01 83 c3 10 3b f7 72 c7 8b 5c 24 24 33 f6 53
10982c50: ff 15 ec b6 aa 10 8b 44 24 10 3b c6 74 09 50 e8
10982c60: 2c 62 f9 ff 83 c4 04 8b c3 5f 5e 5d 5b 81 c4 88
10982c70: 00 00 00 c3 8b 44 24 10 3b c6 74 09 50 e8 0e 62
10982c80: f9 ff 83 c4 04 5f 5e 5d 33 c0 5b 81 c4 88 00 00
10982c90: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10982b70 <.text+0x981b70>:
10982b70:	81 ec 88 00 00 00                               	sub    esp,0x88
10982b76:	53                                              	push   ebx
10982b77:	55                                              	push   ebp
10982b78:	56                                              	push   esi
10982b79:	57                                              	push   edi
10982b7a:	e8 41 19 df ff                                  	call   0x107744c0
10982b7f:	8b f8                                           	mov    edi,eax
10982b81:	33 f6                                           	xor    esi,esi
10982b83:	3b fe                                           	cmp    edi,esi
10982b85:	0f 84 fa 00 00 00                               	je     0x10982c85
10982b8b:	8b 84 24 9c 00 00 00                            	mov    eax,DWORD PTR [esp+0x9c]
10982b92:	6a 10                                           	push   0x10
10982b94:	50                                              	push   eax
10982b95:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10982b99:	e8 92 1e fb ff                                  	call   0x10934a30
10982b9e:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10982ba2:	51                                              	push   ecx
10982ba3:	83 ec 10                                        	sub    esp,0x10
10982ba6:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
10982baa:	8b cc                                           	mov    ecx,esp
10982bac:	52                                              	push   edx
10982bad:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
10982bb1:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
10982bb5:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
10982bb9:	c7 44 24 34 d4 64 b9 10                         	mov    DWORD PTR [esp+0x34],0x10b964d4
10982bc1:	e8 fa 09 fb ff                                  	call   0x109335c0
10982bc6:	8b cf                                           	mov    ecx,edi
10982bc8:	e8 43 72 df ff                                  	call   0x10779e10
10982bcd:	84 c0                                           	test   al,al
10982bcf:	0f 84 9f 00 00 00                               	je     0x10982c74
10982bd5:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10982bd9:	2b 7c 24 10                                     	sub    edi,DWORD PTR [esp+0x10]
10982bdd:	c1 ff 04                                        	sar    edi,0x4
10982be0:	57                                              	push   edi
10982be1:	56                                              	push   esi
10982be2:	6a 08                                           	push   0x8
10982be4:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
10982bea:	8b d8                                           	mov    ebx,eax
10982bec:	3b de                                           	cmp    ebx,esi
10982bee:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
10982bf2:	0f 84 7c 00 00 00                               	je     0x10982c74
10982bf8:	53                                              	push   ebx
10982bf9:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
10982bff:	85 c0                                           	test   eax,eax
10982c01:	7c 71                                           	jl     0x10982c74
10982c03:	3b fe                                           	cmp    edi,esi
10982c05:	8b 6b 0c                                        	mov    ebp,DWORD PTR [ebx+0xc]
10982c08:	76 45                                           	jbe    0x10982c4f
10982c0a:	33 db                                           	xor    ebx,ebx
10982c0c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
10982c10:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10982c14:	6a 10                                           	push   0x10
10982c16:	8d 44 24 24                                     	lea    eax,[esp+0x24]
10982c1a:	50                                              	push   eax
10982c1b:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10982c1f:	51                                              	push   ecx
10982c20:	8d 0c 13                                        	lea    ecx,[ebx+edx*1]
10982c23:	c7 44 24 2c 00 00 00 00                         	mov    DWORD PTR [esp+0x2c],0x0
10982c2b:	e8 50 1d fb ff                                  	call   0x10934980
10982c30:	8d 44 24 38                                     	lea    eax,[esp+0x38]
10982c34:	50                                              	push   eax
10982c35:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10982c3b:	89 44 b5 00                                     	mov    DWORD PTR [ebp+esi*4+0x0],eax
10982c3f:	83 c6 01                                        	add    esi,0x1
10982c42:	83 c3 10                                        	add    ebx,0x10
10982c45:	3b f7                                           	cmp    esi,edi
10982c47:	72 c7                                           	jb     0x10982c10
10982c49:	8b 5c 24 24                                     	mov    ebx,DWORD PTR [esp+0x24]
10982c4d:	33 f6                                           	xor    esi,esi
10982c4f:	53                                              	push   ebx
10982c50:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
10982c56:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10982c5a:	3b c6                                           	cmp    eax,esi
10982c5c:	74 09                                           	je     0x10982c67
10982c5e:	50                                              	push   eax
10982c5f:	e8 2c 62 f9 ff                                  	call   0x10918e90
10982c64:	83 c4 04                                        	add    esp,0x4
10982c67:	8b c3                                           	mov    eax,ebx
10982c69:	5f                                              	pop    edi
10982c6a:	5e                                              	pop    esi
10982c6b:	5d                                              	pop    ebp
10982c6c:	5b                                              	pop    ebx
10982c6d:	81 c4 88 00 00 00                               	add    esp,0x88
10982c73:	c3                                              	ret
10982c74:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10982c78:	3b c6                                           	cmp    eax,esi
10982c7a:	74 09                                           	je     0x10982c85
10982c7c:	50                                              	push   eax
10982c7d:	e8 0e 62 f9 ff                                  	call   0x10918e90
10982c82:	83 c4 04                                        	add    esp,0x4
10982c85:	5f                                              	pop    edi
10982c86:	5e                                              	pop    esi
10982c87:	5d                                              	pop    ebp
10982c88:	33 c0                                           	xor    eax,eax
10982c8a:	5b                                              	pop    ebx
10982c8b:	81 c4 88 00 00 00                               	add    esp,0x88
10982c91:	c3                                              	ret
10982c92:	cc                                              	int3
10982c93:	cc                                              	int3
10982c94:	cc                                              	int3
10982c95:	cc                                              	int3
10982c96:	cc                                              	int3
10982c97:	cc                                              	int3
10982c98:	cc                                              	int3
10982c99:	cc                                              	int3
10982c9a:	cc                                              	int3
10982c9b:	cc                                              	int3
10982c9c:	cc                                              	int3
10982c9d:	cc                                              	int3
10982c9e:	cc                                              	int3
10982c9f:	cc                                              	int3
