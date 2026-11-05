# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989ef0 (ResourceMgr_RecordExists)
Paired Ghidra pseudocode: 10989EF0_ResourceMgr_RecordExists.c
Window: [0x10989ef0, 0x10989fe0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989fe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989ef0: 83 ec 30 56 e8 d7 b1 f5 ff 8b f0 85 f6 75 05 5e
10989f00: 83 c4 30 c3 8b 44 24 40 8b 4c 24 44 8b 54 24 38
10989f10: 89 44 24 04 8b 44 24 3c 89 4c 24 08 89 54 24 0c
10989f20: 89 44 24 10 8b 16 8b 52 44 57 8d 44 24 08 50 8b
10989f30: ce ff d2 85 c0 75 7f 8b 4c 24 0c 8b 54 24 10 8b
10989f40: 44 24 08 89 4c 24 1c 8d 4c 24 18 89 54 24 20 89
10989f50: 44 24 18 8b 44 24 14 51 8d 54 24 2c 52 89 44 24
10989f60: 2c e8 ba 07 c4 ff 8b 08 89 4c 24 10 8b 78 04 89
10989f70: 7c 24 14 8b 50 08 89 54 24 18 8b 40 0c 83 c4 08
10989f80: 3b 4c 24 18 89 44 24 14 75 12 3b 54 24 20 75 0c
10989f90: 3b 44 24 24 75 06 3b 7c 24 1c 74 12 8b 06 8b 50
10989fa0: 44 8d 4c 24 08 51 8b ce ff d2 85 c0 75 08 5f 33
10989fb0: c0 5e 83 c4 30 c3 8b 10 8b 52 34 6a 00 6a 01 6a
10989fc0: 06 6a 01 6a 00 8d 4c 24 1c 51 8b c8 ff d2 f6 d8
10989fd0: 5f 5e 1b c0 f7 d8 83 c4 30 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10989ef0 <.text+0x988ef0>:
10989ef0:	83 ec 30                                        	sub    esp,0x30
10989ef3:	56                                              	push   esi
10989ef4:	e8 d7 b1 f5 ff                                  	call   0x108e50d0
10989ef9:	8b f0                                           	mov    esi,eax
10989efb:	85 f6                                           	test   esi,esi
10989efd:	75 05                                           	jne    0x10989f04
10989eff:	5e                                              	pop    esi
10989f00:	83 c4 30                                        	add    esp,0x30
10989f03:	c3                                              	ret
10989f04:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10989f08:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
10989f0c:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
10989f10:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10989f14:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10989f18:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
10989f1c:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
10989f20:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10989f24:	8b 16                                           	mov    edx,DWORD PTR [esi]
10989f26:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
10989f29:	57                                              	push   edi
10989f2a:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10989f2e:	50                                              	push   eax
10989f2f:	8b ce                                           	mov    ecx,esi
10989f31:	ff d2                                           	call   edx
10989f33:	85 c0                                           	test   eax,eax
10989f35:	75 7f                                           	jne    0x10989fb6
10989f37:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10989f3b:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10989f3f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10989f43:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
10989f47:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10989f4b:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
10989f4f:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
10989f53:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10989f57:	51                                              	push   ecx
10989f58:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
10989f5c:	52                                              	push   edx
10989f5d:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
10989f61:	e8 ba 07 c4 ff                                  	call   0x105ca720
10989f66:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10989f68:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10989f6c:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
10989f6f:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
10989f73:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10989f76:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
10989f7a:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10989f7d:	83 c4 08                                        	add    esp,0x8
10989f80:	3b 4c 24 18                                     	cmp    ecx,DWORD PTR [esp+0x18]
10989f84:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10989f88:	75 12                                           	jne    0x10989f9c
10989f8a:	3b 54 24 20                                     	cmp    edx,DWORD PTR [esp+0x20]
10989f8e:	75 0c                                           	jne    0x10989f9c
10989f90:	3b 44 24 24                                     	cmp    eax,DWORD PTR [esp+0x24]
10989f94:	75 06                                           	jne    0x10989f9c
10989f96:	3b 7c 24 1c                                     	cmp    edi,DWORD PTR [esp+0x1c]
10989f9a:	74 12                                           	je     0x10989fae
10989f9c:	8b 06                                           	mov    eax,DWORD PTR [esi]
10989f9e:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10989fa1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10989fa5:	51                                              	push   ecx
10989fa6:	8b ce                                           	mov    ecx,esi
10989fa8:	ff d2                                           	call   edx
10989faa:	85 c0                                           	test   eax,eax
10989fac:	75 08                                           	jne    0x10989fb6
10989fae:	5f                                              	pop    edi
10989faf:	33 c0                                           	xor    eax,eax
10989fb1:	5e                                              	pop    esi
10989fb2:	83 c4 30                                        	add    esp,0x30
10989fb5:	c3                                              	ret
10989fb6:	8b 10                                           	mov    edx,DWORD PTR [eax]
10989fb8:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
10989fbb:	6a 00                                           	push   0x0
10989fbd:	6a 01                                           	push   0x1
10989fbf:	6a 06                                           	push   0x6
10989fc1:	6a 01                                           	push   0x1
10989fc3:	6a 00                                           	push   0x0
10989fc5:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10989fc9:	51                                              	push   ecx
10989fca:	8b c8                                           	mov    ecx,eax
10989fcc:	ff d2                                           	call   edx
10989fce:	f6 d8                                           	neg    al
10989fd0:	5f                                              	pop    edi
10989fd1:	5e                                              	pop    esi
10989fd2:	1b c0                                           	sbb    eax,eax
10989fd4:	f7 d8                                           	neg    eax
10989fd6:	83 c4 30                                        	add    esp,0x30
10989fd9:	c3                                              	ret
10989fda:	cc                                              	int3
10989fdb:	cc                                              	int3
10989fdc:	cc                                              	int3
10989fdd:	cc                                              	int3
10989fde:	cc                                              	int3
10989fdf:	cc                                              	int3
