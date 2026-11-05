# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a5dc0 (CASUtils_TextSearchLookupKeywordResultImpl)
Paired Ghidra pseudocode: 103A5DC0_CASUtils_TextSearchLookupKeywordResultImpl.c
Window: [0x103a5dc0, 0x103a5ec0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5ec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a5dc0: 83 ec 30 57 8b 7c 24 38 8b c7 25 00 00 00 ff 3d
103a5dd0: 00 00 00 35 74 07 33 c0 5f 83 c4 30 c3 56 e8 3d
103a5de0: 53 1b 00 8b f0 8b 16 8b 82 cc 00 00 00 57 8b ce
103a5df0: ff d0 33 ff 3b c7 75 08 5e 33 c0 5f 83 c4 30 c3
103a5e00: 8b 4c 24 44 8b 54 24 40 51 52 8b c8 89 7c 24 10
103a5e10: 89 7c 24 14 89 7c 24 18 c7 44 24 1c 64 a8 af 10
103a5e20: e8 eb f9 ff ff 50 8d 4c 24 0c e8 f1 47 cc ff 6a
103a5e30: 01 6a 10 8d 44 24 10 50 6a 09 6a 13 8d 4c 24 2c
103a5e40: c7 44 24 2c b4 a5 ac 10 66 c7 44 24 36 13 00 66
103a5e50: c7 44 24 34 0b 00 e8 35 2d 58 00 8b 4c 24 10 8b
103a5e60: 44 24 08 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7 74
103a5e70: 09 50 e8 19 30 57 00 83 c4 04 8d 44 24 3c 89 7c
103a5e80: 24 3c 8b 16 8b 52 50 50 8d 4c 24 1c 51 8b ce ff
103a5e90: d2 f6 44 24 20 04 8b 74 24 3c c7 44 24 18 b4 a5
103a5ea0: ac 10 74 0a 57 8d 4c 24 1c e8 e2 2b 58 00 8b c6
103a5eb0: 5e 5f 83 c4 30 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a5dc0 <.text+0x3a4dc0>:
103a5dc0:	83 ec 30                                        	sub    esp,0x30
103a5dc3:	57                                              	push   edi
103a5dc4:	8b 7c 24 38                                     	mov    edi,DWORD PTR [esp+0x38]
103a5dc8:	8b c7                                           	mov    eax,edi
103a5dca:	25 00 00 00 ff                                  	and    eax,0xff000000
103a5dcf:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a5dd4:	74 07                                           	je     0x103a5ddd
103a5dd6:	33 c0                                           	xor    eax,eax
103a5dd8:	5f                                              	pop    edi
103a5dd9:	83 c4 30                                        	add    esp,0x30
103a5ddc:	c3                                              	ret
103a5ddd:	56                                              	push   esi
103a5dde:	e8 3d 53 1b 00                                  	call   0x1055b120
103a5de3:	8b f0                                           	mov    esi,eax
103a5de5:	8b 16                                           	mov    edx,DWORD PTR [esi]
103a5de7:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a5ded:	57                                              	push   edi
103a5dee:	8b ce                                           	mov    ecx,esi
103a5df0:	ff d0                                           	call   eax
103a5df2:	33 ff                                           	xor    edi,edi
103a5df4:	3b c7                                           	cmp    eax,edi
103a5df6:	75 08                                           	jne    0x103a5e00
103a5df8:	5e                                              	pop    esi
103a5df9:	33 c0                                           	xor    eax,eax
103a5dfb:	5f                                              	pop    edi
103a5dfc:	83 c4 30                                        	add    esp,0x30
103a5dff:	c3                                              	ret
103a5e00:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
103a5e04:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
103a5e08:	51                                              	push   ecx
103a5e09:	52                                              	push   edx
103a5e0a:	8b c8                                           	mov    ecx,eax
103a5e0c:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
103a5e10:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
103a5e14:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
103a5e18:	c7 44 24 1c 64 a8 af 10                         	mov    DWORD PTR [esp+0x1c],0x10afa864
103a5e20:	e8 eb f9 ff ff                                  	call   0x103a5810
103a5e25:	50                                              	push   eax
103a5e26:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
103a5e2a:	e8 f1 47 cc ff                                  	call   0x1006a620
103a5e2f:	6a 01                                           	push   0x1
103a5e31:	6a 10                                           	push   0x10
103a5e33:	8d 44 24 10                                     	lea    eax,[esp+0x10]
103a5e37:	50                                              	push   eax
103a5e38:	6a 09                                           	push   0x9
103a5e3a:	6a 13                                           	push   0x13
103a5e3c:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
103a5e40:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
103a5e48:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
103a5e4f:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
103a5e56:	e8 35 2d 58 00                                  	call   0x10928b90
103a5e5b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
103a5e5f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a5e63:	2b c8                                           	sub    ecx,eax
103a5e65:	83 e1 fe                                        	and    ecx,0xfffffffe
103a5e68:	83 f9 02                                        	cmp    ecx,0x2
103a5e6b:	7e 0d                                           	jle    0x103a5e7a
103a5e6d:	3b c7                                           	cmp    eax,edi
103a5e6f:	74 09                                           	je     0x103a5e7a
103a5e71:	50                                              	push   eax
103a5e72:	e8 19 30 57 00                                  	call   0x10918e90
103a5e77:	83 c4 04                                        	add    esp,0x4
103a5e7a:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
103a5e7e:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
103a5e82:	8b 16                                           	mov    edx,DWORD PTR [esi]
103a5e84:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
103a5e87:	50                                              	push   eax
103a5e88:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
103a5e8c:	51                                              	push   ecx
103a5e8d:	8b ce                                           	mov    ecx,esi
103a5e8f:	ff d2                                           	call   edx
103a5e91:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
103a5e96:	8b 74 24 3c                                     	mov    esi,DWORD PTR [esp+0x3c]
103a5e9a:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
103a5ea2:	74 0a                                           	je     0x103a5eae
103a5ea4:	57                                              	push   edi
103a5ea5:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
103a5ea9:	e8 e2 2b 58 00                                  	call   0x10928a90
103a5eae:	8b c6                                           	mov    eax,esi
103a5eb0:	5e                                              	pop    esi
103a5eb1:	5f                                              	pop    edi
103a5eb2:	83 c4 30                                        	add    esp,0x30
103a5eb5:	c3                                              	ret
103a5eb6:	cc                                              	int3
103a5eb7:	cc                                              	int3
103a5eb8:	cc                                              	int3
103a5eb9:	cc                                              	int3
103a5eba:	cc                                              	int3
103a5ebb:	cc                                              	int3
103a5ebc:	cc                                              	int3
103a5ebd:	cc                                              	int3
103a5ebe:	cc                                              	int3
103a5ebf:	cc                                              	int3
