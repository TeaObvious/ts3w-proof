# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785de0 (DownloadContent_ExportLotContentsToExportBinImpl)
Paired Ghidra pseudocode: 10785DE0_DownloadContent_ExportLotContentsToExportBinImpl.c
Window: [0x10785de0, 0x10785fc0) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785de0: 83 ec 58 56 8b 35 94 de c8 10 57 8b 3d d8 e9 c6
10785df0: 10 8b ce e8 c8 a9 00 00 84 c0 8b ce 74 56 b8 44
10785e00: 82 ca 10 89 44 24 18 89 44 24 1c 8d 44 24 18 50
10785e10: c7 44 24 28 50 8e b5 10 c7 44 24 24 46 82 ca 10
10785e20: e8 1b af 00 00 8b 4c 24 20 8b 44 24 18 2b c8 83
10785e30: e1 fe 83 f9 02 0f 8e 73 01 00 00 85 c0 0f 84 6b
10785e40: 01 00 00 50 e8 47 30 19 00 83 c4 04 5f 33 c0 5e
10785e50: 83 c4 58 c3 8d 54 24 10 52 8d 44 24 0c 50 c7 44
10785e60: 24 10 00 00 00 00 c7 44 24 18 00 00 00 00 c7 44
10785e70: 24 1c 00 00 00 00 e8 95 c0 00 00 84 c0 0f 84 18
10785e80: 01 00 00 8b 4c 24 08 6a 01 51 8d 4c 24 30 e8 fd
10785e90: 49 e4 ff 8b 54 24 14 8b 44 24 10 52 8b 54 24 6c
10785ea0: 50 8b 44 24 6c 8d 4c 24 30 51 52 50 8b cf e8 4d
10785eb0: 57 91 ff 84 c0 0f 84 d7 00 00 00 8d 4c 24 18 b8
10785ec0: 44 82 ca 10 51 8b ce c7 44 24 28 2c 8e b5 10 89
10785ed0: 44 24 1c 89 44 24 20 c7 44 24 24 46 82 ca 10 e8
10785ee0: 5c ae 00 00 e8 37 52 dd ff 6a 01 6a 10 8d 54 24
10785ef0: 20 52 6a 09 6a 13 8d 4c 24 54 8b f8 c7 44 24 54
10785f00: b4 a5 ac 10 66 c7 44 24 5e 13 00 66 c7 44 24 5c
10785f10: 0b 00 e8 79 2c 1a 00 8b 07 8b 40 50 8d 4c 24 0c
10785f20: 51 8d 54 24 44 52 8b cf ff d0 8b ce e8 ff ea 00
10785f30: 00 f6 44 24 48 04 8b 74 24 0c c7 44 24 40 b4 a5
10785f40: ac 10 74 0b 6a 00 8d 4c 24 44 e8 41 2b 1a 00 8b
10785f50: 4c 24 20 8b 44 24 18 2b c8 83 e1 fe 83 f9 02 7e
10785f60: 0d 85 c0 74 09 50 e8 25 2f 19 00 83 c4 04 8d 4c
10785f70: 24 28 e8 89 49 e4 ff 8b 44 24 08 85 c0 74 0b 8b
10785f80: 50 04 8d 48 04 8b 42 04 ff d0 5f 8b c6 5e 83 c4
10785f90: 58 c3 8d 4c 24 28 e8 65 49 e4 ff 8b 44 24 08 85
10785fa0: c0 74 0b 8b 50 04 8d 48 04 8b 42 04 ff d0 5f 33
10785fb0: c0 5e 83 c4 58 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10785de0 <.text+0x784de0>:
10785de0:	83 ec 58                                        	sub    esp,0x58
10785de3:	56                                              	push   esi
10785de4:	8b 35 94 de c8 10                               	mov    esi,DWORD PTR ds:0x10c8de94
10785dea:	57                                              	push   edi
10785deb:	8b 3d d8 e9 c6 10                               	mov    edi,DWORD PTR ds:0x10c6e9d8
10785df1:	8b ce                                           	mov    ecx,esi
10785df3:	e8 c8 a9 00 00                                  	call   0x107907c0
10785df8:	84 c0                                           	test   al,al
10785dfa:	8b ce                                           	mov    ecx,esi
10785dfc:	74 56                                           	je     0x10785e54
10785dfe:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10785e03:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
10785e07:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10785e0b:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10785e0f:	50                                              	push   eax
10785e10:	c7 44 24 28 50 8e b5 10                         	mov    DWORD PTR [esp+0x28],0x10b58e50
10785e18:	c7 44 24 24 46 82 ca 10                         	mov    DWORD PTR [esp+0x24],0x10ca8246
10785e20:	e8 1b af 00 00                                  	call   0x10790d40
10785e25:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10785e29:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10785e2d:	2b c8                                           	sub    ecx,eax
10785e2f:	83 e1 fe                                        	and    ecx,0xfffffffe
10785e32:	83 f9 02                                        	cmp    ecx,0x2
10785e35:	0f 8e 73 01 00 00                               	jle    0x10785fae
10785e3b:	85 c0                                           	test   eax,eax
10785e3d:	0f 84 6b 01 00 00                               	je     0x10785fae
10785e43:	50                                              	push   eax
10785e44:	e8 47 30 19 00                                  	call   0x10918e90
10785e49:	83 c4 04                                        	add    esp,0x4
10785e4c:	5f                                              	pop    edi
10785e4d:	33 c0                                           	xor    eax,eax
10785e4f:	5e                                              	pop    esi
10785e50:	83 c4 58                                        	add    esp,0x58
10785e53:	c3                                              	ret
10785e54:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10785e58:	52                                              	push   edx
10785e59:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10785e5d:	50                                              	push   eax
10785e5e:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
10785e66:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
10785e6e:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
10785e76:	e8 95 c0 00 00                                  	call   0x10791f10
10785e7b:	84 c0                                           	test   al,al
10785e7d:	0f 84 18 01 00 00                               	je     0x10785f9b
10785e83:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10785e87:	6a 01                                           	push   0x1
10785e89:	51                                              	push   ecx
10785e8a:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10785e8e:	e8 fd 49 e4 ff                                  	call   0x105ca890
10785e93:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10785e97:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10785e9b:	52                                              	push   edx
10785e9c:	8b 54 24 6c                                     	mov    edx,DWORD PTR [esp+0x6c]
10785ea0:	50                                              	push   eax
10785ea1:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
10785ea5:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10785ea9:	51                                              	push   ecx
10785eaa:	52                                              	push   edx
10785eab:	50                                              	push   eax
10785eac:	8b cf                                           	mov    ecx,edi
10785eae:	e8 4d 57 91 ff                                  	call   0x1009b600
10785eb3:	84 c0                                           	test   al,al
10785eb5:	0f 84 d7 00 00 00                               	je     0x10785f92
10785ebb:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10785ebf:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10785ec4:	51                                              	push   ecx
10785ec5:	8b ce                                           	mov    ecx,esi
10785ec7:	c7 44 24 28 2c 8e b5 10                         	mov    DWORD PTR [esp+0x28],0x10b58e2c
10785ecf:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10785ed3:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
10785ed7:	c7 44 24 24 46 82 ca 10                         	mov    DWORD PTR [esp+0x24],0x10ca8246
10785edf:	e8 5c ae 00 00                                  	call   0x10790d40
10785ee4:	e8 37 52 dd ff                                  	call   0x1055b120
10785ee9:	6a 01                                           	push   0x1
10785eeb:	6a 10                                           	push   0x10
10785eed:	8d 54 24 20                                     	lea    edx,[esp+0x20]
10785ef1:	52                                              	push   edx
10785ef2:	6a 09                                           	push   0x9
10785ef4:	6a 13                                           	push   0x13
10785ef6:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10785efa:	8b f8                                           	mov    edi,eax
10785efc:	c7 44 24 54 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x54],0x10aca5b4
10785f04:	66 c7 44 24 5e 13 00                            	mov    WORD PTR [esp+0x5e],0x13
10785f0b:	66 c7 44 24 5c 0b 00                            	mov    WORD PTR [esp+0x5c],0xb
10785f12:	e8 79 2c 1a 00                                  	call   0x10928b90
10785f17:	8b 07                                           	mov    eax,DWORD PTR [edi]
10785f19:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
10785f1c:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10785f20:	51                                              	push   ecx
10785f21:	8d 54 24 44                                     	lea    edx,[esp+0x44]
10785f25:	52                                              	push   edx
10785f26:	8b cf                                           	mov    ecx,edi
10785f28:	ff d0                                           	call   eax
10785f2a:	8b ce                                           	mov    ecx,esi
10785f2c:	e8 ff ea 00 00                                  	call   0x10794a30
10785f31:	f6 44 24 48 04                                  	test   BYTE PTR [esp+0x48],0x4
10785f36:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
10785f3a:	c7 44 24 40 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x40],0x10aca5b4
10785f42:	74 0b                                           	je     0x10785f4f
10785f44:	6a 00                                           	push   0x0
10785f46:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10785f4a:	e8 41 2b 1a 00                                  	call   0x10928a90
10785f4f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10785f53:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10785f57:	2b c8                                           	sub    ecx,eax
10785f59:	83 e1 fe                                        	and    ecx,0xfffffffe
10785f5c:	83 f9 02                                        	cmp    ecx,0x2
10785f5f:	7e 0d                                           	jle    0x10785f6e
10785f61:	85 c0                                           	test   eax,eax
10785f63:	74 09                                           	je     0x10785f6e
10785f65:	50                                              	push   eax
10785f66:	e8 25 2f 19 00                                  	call   0x10918e90
10785f6b:	83 c4 04                                        	add    esp,0x4
10785f6e:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10785f72:	e8 89 49 e4 ff                                  	call   0x105ca900
10785f77:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10785f7b:	85 c0                                           	test   eax,eax
10785f7d:	74 0b                                           	je     0x10785f8a
10785f7f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785f82:	8d 48 04                                        	lea    ecx,[eax+0x4]
10785f85:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10785f88:	ff d0                                           	call   eax
10785f8a:	5f                                              	pop    edi
10785f8b:	8b c6                                           	mov    eax,esi
10785f8d:	5e                                              	pop    esi
10785f8e:	83 c4 58                                        	add    esp,0x58
10785f91:	c3                                              	ret
10785f92:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10785f96:	e8 65 49 e4 ff                                  	call   0x105ca900
10785f9b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10785f9f:	85 c0                                           	test   eax,eax
10785fa1:	74 0b                                           	je     0x10785fae
10785fa3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785fa6:	8d 48 04                                        	lea    ecx,[eax+0x4]
10785fa9:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10785fac:	ff d0                                           	call   eax
10785fae:	5f                                              	pop    edi
10785faf:	33 c0                                           	xor    eax,eax
10785fb1:	5e                                              	pop    esi
10785fb2:	83 c4 58                                        	add    esp,0x58
10785fb5:	c3                                              	ret
10785fb6:	cc                                              	int3
10785fb7:	cc                                              	int3
10785fb8:	cc                                              	int3
10785fb9:	cc                                              	int3
10785fba:	cc                                              	int3
10785fbb:	cc                                              	int3
10785fbc:	cc                                              	int3
10785fbd:	cc                                              	int3
10785fbe:	cc                                              	int3
10785fbf:	cc                                              	int3
