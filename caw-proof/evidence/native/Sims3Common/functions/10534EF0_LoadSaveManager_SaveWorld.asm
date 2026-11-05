# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534ef0 (LoadSaveManager_SaveWorld)
Paired Ghidra pseudocode: 10534EF0_LoadSaveManager_SaveWorld.c
Window: [0x10534ef0, 0x10534ff0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534ff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534ef0: 83 ec 40 55 33 ed 39 2d c4 00 c7 10 0f 84 d7 00
10534f00: 00 00 56 57 55 55 55 55 68 f0 a8 b1 10 6a 40 e8
10534f10: 9c 3f 3e 00 8b f0 83 c4 18 3b f5 74 2d 8b ce e8
10534f20: fc 05 df ff c7 46 20 d0 04 ab 10 89 6e 28 c7 06
10534f30: 20 a6 b1 10 c7 46 20 10 a6 b1 10 c6 46 24 00 8b
10534f40: 06 8b 50 04 8b ce 8b ee ff d2 e8 d1 61 02 00 8b
10534f50: 7c 24 50 57 8b cd 8b f0 e8 83 fd ff ff 84 c0 75
10534f60: 64 6a 01 8d 4c 24 10 51 88 44 24 24 8b 06 8b 80
10534f70: 34 01 00 00 57 8d 54 24 38 52 8b ce c7 44 24 1c
10534f80: b4 a5 ac 10 66 c7 44 24 26 01 00 66 c7 44 24 24
10534f90: 02 00 ff d0 f6 44 24 34 04 be b4 a5 ac 10 89 74
10534fa0: 24 2c 74 0b 6a 00 8d 4c 24 30 e8 e1 3a 3f 00 f6
10534fb0: 44 24 14 04 89 74 24 0c 74 0b 6a 00 8d 4c 24 10
10534fc0: e8 cb 3a 3f 00 85 ed 5f 5e 74 0e 8b 55 00 8b 42
10534fd0: 08 8b cd 5d 83 c4 40 ff e0 5d 83 c4 40 c3 cc cc
10534fe0: 8b 44 24 04 c7 00 00 f4 c2 10 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
10534ef0 <.text+0x533ef0>:
10534ef0:	83 ec 40                                        	sub    esp,0x40
10534ef3:	55                                              	push   ebp
10534ef4:	33 ed                                           	xor    ebp,ebp
10534ef6:	39 2d c4 00 c7 10                               	cmp    DWORD PTR ds:0x10c700c4,ebp
10534efc:	0f 84 d7 00 00 00                               	je     0x10534fd9
10534f02:	56                                              	push   esi
10534f03:	57                                              	push   edi
10534f04:	55                                              	push   ebp
10534f05:	55                                              	push   ebp
10534f06:	55                                              	push   ebp
10534f07:	55                                              	push   ebp
10534f08:	68 f0 a8 b1 10                                  	push   0x10b1a8f0
10534f0d:	6a 40                                           	push   0x40
10534f0f:	e8 9c 3f 3e 00                                  	call   0x10918eb0
10534f14:	8b f0                                           	mov    esi,eax
10534f16:	83 c4 18                                        	add    esp,0x18
10534f19:	3b f5                                           	cmp    esi,ebp
10534f1b:	74 2d                                           	je     0x10534f4a
10534f1d:	8b ce                                           	mov    ecx,esi
10534f1f:	e8 fc 05 df ff                                  	call   0x10325520
10534f24:	c7 46 20 d0 04 ab 10                            	mov    DWORD PTR [esi+0x20],0x10ab04d0
10534f2b:	89 6e 28                                        	mov    DWORD PTR [esi+0x28],ebp
10534f2e:	c7 06 20 a6 b1 10                               	mov    DWORD PTR [esi],0x10b1a620
10534f34:	c7 46 20 10 a6 b1 10                            	mov    DWORD PTR [esi+0x20],0x10b1a610
10534f3b:	c6 46 24 00                                     	mov    BYTE PTR [esi+0x24],0x0
10534f3f:	8b 06                                           	mov    eax,DWORD PTR [esi]
10534f41:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10534f44:	8b ce                                           	mov    ecx,esi
10534f46:	8b ee                                           	mov    ebp,esi
10534f48:	ff d2                                           	call   edx
10534f4a:	e8 d1 61 02 00                                  	call   0x1055b120
10534f4f:	8b 7c 24 50                                     	mov    edi,DWORD PTR [esp+0x50]
10534f53:	57                                              	push   edi
10534f54:	8b cd                                           	mov    ecx,ebp
10534f56:	8b f0                                           	mov    esi,eax
10534f58:	e8 83 fd ff ff                                  	call   0x10534ce0
10534f5d:	84 c0                                           	test   al,al
10534f5f:	75 64                                           	jne    0x10534fc5
10534f61:	6a 01                                           	push   0x1
10534f63:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10534f67:	51                                              	push   ecx
10534f68:	88 44 24 24                                     	mov    BYTE PTR [esp+0x24],al
10534f6c:	8b 06                                           	mov    eax,DWORD PTR [esi]
10534f6e:	8b 80 34 01 00 00                               	mov    eax,DWORD PTR [eax+0x134]
10534f74:	57                                              	push   edi
10534f75:	8d 54 24 38                                     	lea    edx,[esp+0x38]
10534f79:	52                                              	push   edx
10534f7a:	8b ce                                           	mov    ecx,esi
10534f7c:	c7 44 24 1c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x1c],0x10aca5b4
10534f84:	66 c7 44 24 26 01 00                            	mov    WORD PTR [esp+0x26],0x1
10534f8b:	66 c7 44 24 24 02 00                            	mov    WORD PTR [esp+0x24],0x2
10534f92:	ff d0                                           	call   eax
10534f94:	f6 44 24 34 04                                  	test   BYTE PTR [esp+0x34],0x4
10534f99:	be b4 a5 ac 10                                  	mov    esi,0x10aca5b4
10534f9e:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
10534fa2:	74 0b                                           	je     0x10534faf
10534fa4:	6a 00                                           	push   0x0
10534fa6:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10534faa:	e8 e1 3a 3f 00                                  	call   0x10928a90
10534faf:	f6 44 24 14 04                                  	test   BYTE PTR [esp+0x14],0x4
10534fb4:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
10534fb8:	74 0b                                           	je     0x10534fc5
10534fba:	6a 00                                           	push   0x0
10534fbc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10534fc0:	e8 cb 3a 3f 00                                  	call   0x10928a90
10534fc5:	85 ed                                           	test   ebp,ebp
10534fc7:	5f                                              	pop    edi
10534fc8:	5e                                              	pop    esi
10534fc9:	74 0e                                           	je     0x10534fd9
10534fcb:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
10534fce:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10534fd1:	8b cd                                           	mov    ecx,ebp
10534fd3:	5d                                              	pop    ebp
10534fd4:	83 c4 40                                        	add    esp,0x40
10534fd7:	ff e0                                           	jmp    eax
10534fd9:	5d                                              	pop    ebp
10534fda:	83 c4 40                                        	add    esp,0x40
10534fdd:	c3                                              	ret
10534fde:	cc                                              	int3
10534fdf:	cc                                              	int3
10534fe0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10534fe4:	c7 00 00 f4 c2 10                               	mov    DWORD PTR [eax],0x10c2f400
10534fea:	c2 04 00                                        	ret    0x4
10534fed:	cc                                              	int3
10534fee:	cc                                              	int3
10534fef:	cc                                              	int3
