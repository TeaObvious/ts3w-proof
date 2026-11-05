# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982d20 (ContentManager_GetSourceKeyList)
Paired Ghidra pseudocode: 10982D20_ContentManager_GetSourceKeyList.c
Window: [0x10982d20, 0x10982de0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982d20: 83 ec 20 53 55 56 57 e8 94 17 df ff 8b f0 33 ff
10982d30: 3b f7 0f 84 9d 00 00 00 8b 44 24 34 6a 10 50 8d
10982d40: 4c 24 28 e8 e8 1c fb ff 8d 4c 24 10 51 83 ec 10
10982d50: 8d 54 24 34 8b cc 52 89 7c 24 28 89 7c 24 2c 89
10982d60: 7c 24 30 c7 44 24 34 fc 64 b9 10 e8 50 08 fb ff
10982d70: 8b ce e8 39 7a df ff 8b 44 24 14 8b 74 24 10 3b
10982d80: f0 8b e8 74 32 8b 5c 24 38 8d a4 24 00 00 00 00
10982d90: 3b 7c 24 3c 7d 17 53 56 e8 a3 6f 00 00 83 c6 10
10982da0: 83 c4 08 83 c7 01 83 c3 10 3b f5 75 e3 8b 44 24
10982db0: 14 8b 74 24 10 33 ff 2b c6 c1 f8 04 3b f7 8b d8
10982dc0: 74 09 56 e8 c8 60 f9 ff 83 c4 04 8b c3 5f 5e 5d
10982dd0: 5b 83 c4 20 c3 5f 5e 5d 33 c0 5b 83 c4 20 c3 cc

LINEAR DISASSEMBLY
10982d20 <.text+0x981d20>:
10982d20:	83 ec 20                                        	sub    esp,0x20
10982d23:	53                                              	push   ebx
10982d24:	55                                              	push   ebp
10982d25:	56                                              	push   esi
10982d26:	57                                              	push   edi
10982d27:	e8 94 17 df ff                                  	call   0x107744c0
10982d2c:	8b f0                                           	mov    esi,eax
10982d2e:	33 ff                                           	xor    edi,edi
10982d30:	3b f7                                           	cmp    esi,edi
10982d32:	0f 84 9d 00 00 00                               	je     0x10982dd5
10982d38:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10982d3c:	6a 10                                           	push   0x10
10982d3e:	50                                              	push   eax
10982d3f:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10982d43:	e8 e8 1c fb ff                                  	call   0x10934a30
10982d48:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10982d4c:	51                                              	push   ecx
10982d4d:	83 ec 10                                        	sub    esp,0x10
10982d50:	8d 54 24 34                                     	lea    edx,[esp+0x34]
10982d54:	8b cc                                           	mov    ecx,esp
10982d56:	52                                              	push   edx
10982d57:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
10982d5b:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
10982d5f:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
10982d63:	c7 44 24 34 fc 64 b9 10                         	mov    DWORD PTR [esp+0x34],0x10b964fc
10982d6b:	e8 50 08 fb ff                                  	call   0x109335c0
10982d70:	8b ce                                           	mov    ecx,esi
10982d72:	e8 39 7a df ff                                  	call   0x1077a7b0
10982d77:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10982d7b:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
10982d7f:	3b f0                                           	cmp    esi,eax
10982d81:	8b e8                                           	mov    ebp,eax
10982d83:	74 32                                           	je     0x10982db7
10982d85:	8b 5c 24 38                                     	mov    ebx,DWORD PTR [esp+0x38]
10982d89:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10982d90:	3b 7c 24 3c                                     	cmp    edi,DWORD PTR [esp+0x3c]
10982d94:	7d 17                                           	jge    0x10982dad
10982d96:	53                                              	push   ebx
10982d97:	56                                              	push   esi
10982d98:	e8 a3 6f 00 00                                  	call   0x10989d40
10982d9d:	83 c6 10                                        	add    esi,0x10
10982da0:	83 c4 08                                        	add    esp,0x8
10982da3:	83 c7 01                                        	add    edi,0x1
10982da6:	83 c3 10                                        	add    ebx,0x10
10982da9:	3b f5                                           	cmp    esi,ebp
10982dab:	75 e3                                           	jne    0x10982d90
10982dad:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10982db1:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
10982db5:	33 ff                                           	xor    edi,edi
10982db7:	2b c6                                           	sub    eax,esi
10982db9:	c1 f8 04                                        	sar    eax,0x4
10982dbc:	3b f7                                           	cmp    esi,edi
10982dbe:	8b d8                                           	mov    ebx,eax
10982dc0:	74 09                                           	je     0x10982dcb
10982dc2:	56                                              	push   esi
10982dc3:	e8 c8 60 f9 ff                                  	call   0x10918e90
10982dc8:	83 c4 04                                        	add    esp,0x4
10982dcb:	8b c3                                           	mov    eax,ebx
10982dcd:	5f                                              	pop    edi
10982dce:	5e                                              	pop    esi
10982dcf:	5d                                              	pop    ebp
10982dd0:	5b                                              	pop    ebx
10982dd1:	83 c4 20                                        	add    esp,0x20
10982dd4:	c3                                              	ret
10982dd5:	5f                                              	pop    edi
10982dd6:	5e                                              	pop    esi
10982dd7:	5d                                              	pop    ebp
10982dd8:	33 c0                                           	xor    eax,eax
10982dda:	5b                                              	pop    ebx
10982ddb:	83 c4 20                                        	add    esp,0x20
10982dde:	c3                                              	ret
10982ddf:	cc                                              	int3
