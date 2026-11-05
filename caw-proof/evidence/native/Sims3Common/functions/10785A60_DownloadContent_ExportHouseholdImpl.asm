# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785a60 (DownloadContent_ExportHouseholdImpl)
Paired Ghidra pseudocode: 10785A60_DownloadContent_ExportHouseholdImpl.c
Window: [0x10785a60, 0x10785be0) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785be0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785a60: 83 ec 54 57 8b 7c 24 5c 85 ff 75 07 32 c0 5f 83
10785a70: c4 54 c3 56 e8 a7 56 dd ff 8b f0 85 f6 0f 84 c9
10785a80: 00 00 00 b8 44 82 ca 10 c7 44 24 14 b8 8d b5 10
10785a90: 89 44 24 08 89 44 24 0c c7 44 24 10 46 82 ca 10
10785aa0: 8b 06 8b 50 58 57 8b ce ff d2 66 83 38 00 8b c8
10785ab0: 74 09 83 c1 02 66 83 39 00 75 f7 2b c8 d1 f9 8d
10785ac0: 0c 48 51 50 8d 4c 24 10 e8 f3 9d 89 ff 68 58 8d
10785ad0: b5 10 6a 00 6a 00 8d 4c 24 3c e8 b1 e5 18 00 d9
10785ae0: e8 83 44 24 3c 01 51 d9 1c 24 6a 01 8d 4c 24 38
10785af0: e8 7b df 18 00 8b 44 24 64 85 c0 74 57 8d 54 24
10785b00: 30 52 50 56 e8 77 e5 ff ff 83 c4 0c 84 c0 75 44
10785b10: 8b 4c 24 34 85 c9 c7 44 24 30 10 ad b8 10 74 05
10785b20: e8 0b df 18 00 8b 4c 24 10 8b 44 24 08 2b c8 83
10785b30: e1 fe 83 f9 02 c7 44 24 30 e4 fe aa 10 7e 0d 85
10785b40: c0 74 09 50 e8 47 33 19 00 83 c4 04 5e 32 c0 5f
10785b50: 83 c4 54 c3 53 6a 00 6a 00 8d 4c 24 3c e8 7e e3
10785b60: 18 00 6a 01 8d 54 24 38 52 8d 4c 24 24 e8 2e 67
10785b70: e4 ff 8d 44 24 1c 50 8d 4c 24 10 51 e8 1f 0f 01
10785b80: 00 83 c4 08 8d 4c 24 1c 8a d8 e8 71 4d e4 ff 8b
10785b90: 4c 24 38 85 c9 c7 44 24 34 10 ad b8 10 74 05 e8
10785ba0: 8c de 18 00 8b 54 24 14 8b 44 24 0c 2b d0 83 e2
10785bb0: fe 83 fa 02 c7 44 24 34 e4 fe aa 10 7e 0d 85 c0
10785bc0: 74 09 50 e8 c8 32 19 00 83 c4 04 8a c3 5b 5e 5f
10785bd0: 83 c4 54 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10785a60 <.text+0x784a60>:
10785a60:	83 ec 54                                        	sub    esp,0x54
10785a63:	57                                              	push   edi
10785a64:	8b 7c 24 5c                                     	mov    edi,DWORD PTR [esp+0x5c]
10785a68:	85 ff                                           	test   edi,edi
10785a6a:	75 07                                           	jne    0x10785a73
10785a6c:	32 c0                                           	xor    al,al
10785a6e:	5f                                              	pop    edi
10785a6f:	83 c4 54                                        	add    esp,0x54
10785a72:	c3                                              	ret
10785a73:	56                                              	push   esi
10785a74:	e8 a7 56 dd ff                                  	call   0x1055b120
10785a79:	8b f0                                           	mov    esi,eax
10785a7b:	85 f6                                           	test   esi,esi
10785a7d:	0f 84 c9 00 00 00                               	je     0x10785b4c
10785a83:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10785a88:	c7 44 24 14 b8 8d b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58db8
10785a90:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10785a94:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10785a98:	c7 44 24 10 46 82 ca 10                         	mov    DWORD PTR [esp+0x10],0x10ca8246
10785aa0:	8b 06                                           	mov    eax,DWORD PTR [esi]
10785aa2:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10785aa5:	57                                              	push   edi
10785aa6:	8b ce                                           	mov    ecx,esi
10785aa8:	ff d2                                           	call   edx
10785aaa:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
10785aae:	8b c8                                           	mov    ecx,eax
10785ab0:	74 09                                           	je     0x10785abb
10785ab2:	83 c1 02                                        	add    ecx,0x2
10785ab5:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
10785ab9:	75 f7                                           	jne    0x10785ab2
10785abb:	2b c8                                           	sub    ecx,eax
10785abd:	d1 f9                                           	sar    ecx,1
10785abf:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
10785ac2:	51                                              	push   ecx
10785ac3:	50                                              	push   eax
10785ac4:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10785ac8:	e8 f3 9d 89 ff                                  	call   0x1001f8c0
10785acd:	68 58 8d b5 10                                  	push   0x10b58d58
10785ad2:	6a 00                                           	push   0x0
10785ad4:	6a 00                                           	push   0x0
10785ad6:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10785ada:	e8 b1 e5 18 00                                  	call   0x10914090
10785adf:	d9 e8                                           	fld1
10785ae1:	83 44 24 3c 01                                  	add    DWORD PTR [esp+0x3c],0x1
10785ae6:	51                                              	push   ecx
10785ae7:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10785aea:	6a 01                                           	push   0x1
10785aec:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10785af0:	e8 7b df 18 00                                  	call   0x10913a70
10785af5:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
10785af9:	85 c0                                           	test   eax,eax
10785afb:	74 57                                           	je     0x10785b54
10785afd:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10785b01:	52                                              	push   edx
10785b02:	50                                              	push   eax
10785b03:	56                                              	push   esi
10785b04:	e8 77 e5 ff ff                                  	call   0x10784080
10785b09:	83 c4 0c                                        	add    esp,0xc
10785b0c:	84 c0                                           	test   al,al
10785b0e:	75 44                                           	jne    0x10785b54
10785b10:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10785b14:	85 c9                                           	test   ecx,ecx
10785b16:	c7 44 24 30 10 ad b8 10                         	mov    DWORD PTR [esp+0x30],0x10b8ad10
10785b1e:	74 05                                           	je     0x10785b25
10785b20:	e8 0b df 18 00                                  	call   0x10913a30
10785b25:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10785b29:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10785b2d:	2b c8                                           	sub    ecx,eax
10785b2f:	83 e1 fe                                        	and    ecx,0xfffffffe
10785b32:	83 f9 02                                        	cmp    ecx,0x2
10785b35:	c7 44 24 30 e4 fe aa 10                         	mov    DWORD PTR [esp+0x30],0x10aafee4
10785b3d:	7e 0d                                           	jle    0x10785b4c
10785b3f:	85 c0                                           	test   eax,eax
10785b41:	74 09                                           	je     0x10785b4c
10785b43:	50                                              	push   eax
10785b44:	e8 47 33 19 00                                  	call   0x10918e90
10785b49:	83 c4 04                                        	add    esp,0x4
10785b4c:	5e                                              	pop    esi
10785b4d:	32 c0                                           	xor    al,al
10785b4f:	5f                                              	pop    edi
10785b50:	83 c4 54                                        	add    esp,0x54
10785b53:	c3                                              	ret
10785b54:	53                                              	push   ebx
10785b55:	6a 00                                           	push   0x0
10785b57:	6a 00                                           	push   0x0
10785b59:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10785b5d:	e8 7e e3 18 00                                  	call   0x10913ee0
10785b62:	6a 01                                           	push   0x1
10785b64:	8d 54 24 38                                     	lea    edx,[esp+0x38]
10785b68:	52                                              	push   edx
10785b69:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10785b6d:	e8 2e 67 e4 ff                                  	call   0x105cc2a0
10785b72:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10785b76:	50                                              	push   eax
10785b77:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10785b7b:	51                                              	push   ecx
10785b7c:	e8 1f 0f 01 00                                  	call   0x10796aa0
10785b81:	83 c4 08                                        	add    esp,0x8
10785b84:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10785b88:	8a d8                                           	mov    bl,al
10785b8a:	e8 71 4d e4 ff                                  	call   0x105ca900
10785b8f:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10785b93:	85 c9                                           	test   ecx,ecx
10785b95:	c7 44 24 34 10 ad b8 10                         	mov    DWORD PTR [esp+0x34],0x10b8ad10
10785b9d:	74 05                                           	je     0x10785ba4
10785b9f:	e8 8c de 18 00                                  	call   0x10913a30
10785ba4:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10785ba8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10785bac:	2b d0                                           	sub    edx,eax
10785bae:	83 e2 fe                                        	and    edx,0xfffffffe
10785bb1:	83 fa 02                                        	cmp    edx,0x2
10785bb4:	c7 44 24 34 e4 fe aa 10                         	mov    DWORD PTR [esp+0x34],0x10aafee4
10785bbc:	7e 0d                                           	jle    0x10785bcb
10785bbe:	85 c0                                           	test   eax,eax
10785bc0:	74 09                                           	je     0x10785bcb
10785bc2:	50                                              	push   eax
10785bc3:	e8 c8 32 19 00                                  	call   0x10918e90
10785bc8:	83 c4 04                                        	add    esp,0x4
10785bcb:	8a c3                                           	mov    al,bl
10785bcd:	5b                                              	pop    ebx
10785bce:	5e                                              	pop    esi
10785bcf:	5f                                              	pop    edi
10785bd0:	83 c4 54                                        	add    esp,0x54
10785bd3:	c3                                              	ret
10785bd4:	cc                                              	int3
10785bd5:	cc                                              	int3
10785bd6:	cc                                              	int3
10785bd7:	cc                                              	int3
10785bd8:	cc                                              	int3
10785bd9:	cc                                              	int3
10785bda:	cc                                              	int3
10785bdb:	cc                                              	int3
10785bdc:	cc                                              	int3
10785bdd:	cc                                              	int3
10785bde:	cc                                              	int3
10785bdf:	cc                                              	int3
