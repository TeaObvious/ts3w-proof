# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994ee0 (ThumbnailManager_ExportPatternThumbnail)
Paired Ghidra pseudocode: 10994EE0_ThumbnailManager_ExportPatternThumbnail.c
Window: [0x10994ee0, 0x109950c0) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x109950c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994ee0: 83 ec 3c 56 e8 77 35 76 ff 8b f0 85 f6 89 74 24
10994ef0: 08 75 07 32 c0 5e 83 c4 3c c3 53 55 57 8d 44 24
10994f00: 6c 50 8d 4c 24 40 51 e8 94 8b bc ff 83 c4 08 33
10994f10: db c7 44 24 10 01 00 00 00 eb 09 eb 03 8d 49 00
10994f20: 8b 74 24 14 8b 54 24 68 85 54 24 10 0f 84 3b 01
10994f30: 00 00 8b 44 24 64 8b 4c 24 60 8b 54 24 5c 50 8b
10994f40: 44 24 5c 51 8b 4c 24 5c 52 8b 54 24 5c 50 51 52
10994f50: 8b ce e8 c9 a5 76 ff 8b e8 85 ed 0f 84 0c 01 00
10994f60: 00 8b 74 24 3c 8b 7c 24 40 b8 44 82 ca 10 89 44
10994f70: 24 1c 89 44 24 20 8d 44 24 3c 50 c7 44 24 2c e4
10994f80: 78 b9 10 c7 44 24 28 46 82 ca 10 e8 60 3b df ff
10994f90: 6a 00 6a 00 6a 00 8d 4c 24 2c 51 8d 54 24 40 03
10994fa0: c3 52 89 74 24 44 89 7c 24 48 89 44 24 4c c7 44
10994fb0: 24 50 00 00 00 00 e8 75 fb f4 ff 6a 00 6a 00 6a
10994fc0: 00 6a 00 68 50 79 b9 10 6a 34 e8 e1 3e f8 ff 83
10994fd0: c4 30 85 c0 0f 84 b4 00 00 00 8b 4c 24 7c 8b 54
10994fe0: 24 1c 51 52 55 8b c8 e8 84 f9 ff ff 8b f0 85 f6
10994ff0: 74 0a 8b 46 08 8b 10 8d 4e 08 ff d2 8b 4c 24 14
10995000: 56 e8 0a 7c 76 ff 80 7e 0c 00 75 31 8d 64 24 00
10995010: 8d 44 24 18 50 c7 44 24 1c 01 00 00 00 e8 ae 12
10995020: f8 ff d9 05 cc e5 ab 10 d9 14 24 51 d9 1c 24 e8
10995030: ec 85 fe ff 83 c4 08 80 7e 0c 00 74 d3 80 7e 0d
10995040: 00 8b 56 08 8b 42 04 8d 4e 08 74 49 ff d0 8b 4c
10995050: 24 24 8b 44 24 1c 2b c8 83 e1 fe 83 f9 02 7e 0d
10995060: 85 c0 74 09 50 e8 26 3e f8 ff 83 c4 04 8b 54 24
10995070: 10 83 c3 01 83 fb 04 8d 04 12 89 44 24 10 0f 82
10995080: 9c fe ff ff 5f 5d 5b b0 01 5e 83 c4 3c c3 33 f6
10995090: e9 67 ff ff ff ff d0 8b 4c 24 24 8b 44 24 1c 2b
109950a0: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 dd
109950b0: 3d f8 ff 83 c4 04 5f 5d 5b 32 c0 5e 83 c4 3c c3

LINEAR DISASSEMBLY
10994ee0 <.text+0x993ee0>:
10994ee0:	83 ec 3c                                        	sub    esp,0x3c
10994ee3:	56                                              	push   esi
10994ee4:	e8 77 35 76 ff                                  	call   0x100f8460
10994ee9:	8b f0                                           	mov    esi,eax
10994eeb:	85 f6                                           	test   esi,esi
10994eed:	89 74 24 08                                     	mov    DWORD PTR [esp+0x8],esi
10994ef1:	75 07                                           	jne    0x10994efa
10994ef3:	32 c0                                           	xor    al,al
10994ef5:	5e                                              	pop    esi
10994ef6:	83 c4 3c                                        	add    esp,0x3c
10994ef9:	c3                                              	ret
10994efa:	53                                              	push   ebx
10994efb:	55                                              	push   ebp
10994efc:	57                                              	push   edi
10994efd:	8d 44 24 6c                                     	lea    eax,[esp+0x6c]
10994f01:	50                                              	push   eax
10994f02:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10994f06:	51                                              	push   ecx
10994f07:	e8 94 8b bc ff                                  	call   0x1055daa0
10994f0c:	83 c4 08                                        	add    esp,0x8
10994f0f:	33 db                                           	xor    ebx,ebx
10994f11:	c7 44 24 10 01 00 00 00                         	mov    DWORD PTR [esp+0x10],0x1
10994f19:	eb 09                                           	jmp    0x10994f24
10994f1b:	eb 03                                           	jmp    0x10994f20
10994f1d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10994f20:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
10994f24:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
10994f28:	85 54 24 10                                     	test   DWORD PTR [esp+0x10],edx
10994f2c:	0f 84 3b 01 00 00                               	je     0x1099506d
10994f32:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
10994f36:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
10994f3a:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
10994f3e:	50                                              	push   eax
10994f3f:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
10994f43:	51                                              	push   ecx
10994f44:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
10994f48:	52                                              	push   edx
10994f49:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
10994f4d:	50                                              	push   eax
10994f4e:	51                                              	push   ecx
10994f4f:	52                                              	push   edx
10994f50:	8b ce                                           	mov    ecx,esi
10994f52:	e8 c9 a5 76 ff                                  	call   0x100ff520
10994f57:	8b e8                                           	mov    ebp,eax
10994f59:	85 ed                                           	test   ebp,ebp
10994f5b:	0f 84 0c 01 00 00                               	je     0x1099506d
10994f61:	8b 74 24 3c                                     	mov    esi,DWORD PTR [esp+0x3c]
10994f65:	8b 7c 24 40                                     	mov    edi,DWORD PTR [esp+0x40]
10994f69:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10994f6e:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10994f72:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
10994f76:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
10994f7a:	50                                              	push   eax
10994f7b:	c7 44 24 2c e4 78 b9 10                         	mov    DWORD PTR [esp+0x2c],0x10b978e4
10994f83:	c7 44 24 28 46 82 ca 10                         	mov    DWORD PTR [esp+0x28],0x10ca8246
10994f8b:	e8 60 3b df ff                                  	call   0x10788af0
10994f90:	6a 00                                           	push   0x0
10994f92:	6a 00                                           	push   0x0
10994f94:	6a 00                                           	push   0x0
10994f96:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10994f9a:	51                                              	push   ecx
10994f9b:	8d 54 24 40                                     	lea    edx,[esp+0x40]
10994f9f:	03 c3                                           	add    eax,ebx
10994fa1:	52                                              	push   edx
10994fa2:	89 74 24 44                                     	mov    DWORD PTR [esp+0x44],esi
10994fa6:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
10994faa:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
10994fae:	c7 44 24 50 00 00 00 00                         	mov    DWORD PTR [esp+0x50],0x0
10994fb6:	e8 75 fb f4 ff                                  	call   0x108e4b30
10994fbb:	6a 00                                           	push   0x0
10994fbd:	6a 00                                           	push   0x0
10994fbf:	6a 00                                           	push   0x0
10994fc1:	6a 00                                           	push   0x0
10994fc3:	68 50 79 b9 10                                  	push   0x10b97950
10994fc8:	6a 34                                           	push   0x34
10994fca:	e8 e1 3e f8 ff                                  	call   0x10918eb0
10994fcf:	83 c4 30                                        	add    esp,0x30
10994fd2:	85 c0                                           	test   eax,eax
10994fd4:	0f 84 b4 00 00 00                               	je     0x1099508e
10994fda:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
10994fde:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10994fe2:	51                                              	push   ecx
10994fe3:	52                                              	push   edx
10994fe4:	55                                              	push   ebp
10994fe5:	8b c8                                           	mov    ecx,eax
10994fe7:	e8 84 f9 ff ff                                  	call   0x10994970
10994fec:	8b f0                                           	mov    esi,eax
10994fee:	85 f6                                           	test   esi,esi
10994ff0:	74 0a                                           	je     0x10994ffc
10994ff2:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
10994ff5:	8b 10                                           	mov    edx,DWORD PTR [eax]
10994ff7:	8d 4e 08                                        	lea    ecx,[esi+0x8]
10994ffa:	ff d2                                           	call   edx
10994ffc:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10995000:	56                                              	push   esi
10995001:	e8 0a 7c 76 ff                                  	call   0x100fcc10
10995006:	80 7e 0c 00                                     	cmp    BYTE PTR [esi+0xc],0x0
1099500a:	75 31                                           	jne    0x1099503d
1099500c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
10995010:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10995014:	50                                              	push   eax
10995015:	c7 44 24 1c 01 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x1
1099501d:	e8 ae 12 f8 ff                                  	call   0x109162d0
10995022:	d9 05 cc e5 ab 10                               	fld    DWORD PTR ds:0x10abe5cc
10995028:	d9 14 24                                        	fst    DWORD PTR [esp]
1099502b:	51                                              	push   ecx
1099502c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1099502f:	e8 ec 85 fe ff                                  	call   0x1097d620
10995034:	83 c4 08                                        	add    esp,0x8
10995037:	80 7e 0c 00                                     	cmp    BYTE PTR [esi+0xc],0x0
1099503b:	74 d3                                           	je     0x10995010
1099503d:	80 7e 0d 00                                     	cmp    BYTE PTR [esi+0xd],0x0
10995041:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
10995044:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995047:	8d 4e 08                                        	lea    ecx,[esi+0x8]
1099504a:	74 49                                           	je     0x10995095
1099504c:	ff d0                                           	call   eax
1099504e:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10995052:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10995056:	2b c8                                           	sub    ecx,eax
10995058:	83 e1 fe                                        	and    ecx,0xfffffffe
1099505b:	83 f9 02                                        	cmp    ecx,0x2
1099505e:	7e 0d                                           	jle    0x1099506d
10995060:	85 c0                                           	test   eax,eax
10995062:	74 09                                           	je     0x1099506d
10995064:	50                                              	push   eax
10995065:	e8 26 3e f8 ff                                  	call   0x10918e90
1099506a:	83 c4 04                                        	add    esp,0x4
1099506d:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10995071:	83 c3 01                                        	add    ebx,0x1
10995074:	83 fb 04                                        	cmp    ebx,0x4
10995077:	8d 04 12                                        	lea    eax,[edx+edx*1]
1099507a:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1099507e:	0f 82 9c fe ff ff                               	jb     0x10994f20
10995084:	5f                                              	pop    edi
10995085:	5d                                              	pop    ebp
10995086:	5b                                              	pop    ebx
10995087:	b0 01                                           	mov    al,0x1
10995089:	5e                                              	pop    esi
1099508a:	83 c4 3c                                        	add    esp,0x3c
1099508d:	c3                                              	ret
1099508e:	33 f6                                           	xor    esi,esi
10995090:	e9 67 ff ff ff                                  	jmp    0x10994ffc
10995095:	ff d0                                           	call   eax
10995097:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1099509b:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1099509f:	2b c8                                           	sub    ecx,eax
109950a1:	83 e1 fe                                        	and    ecx,0xfffffffe
109950a4:	83 f9 02                                        	cmp    ecx,0x2
109950a7:	7e 0d                                           	jle    0x109950b6
109950a9:	85 c0                                           	test   eax,eax
109950ab:	74 09                                           	je     0x109950b6
109950ad:	50                                              	push   eax
109950ae:	e8 dd 3d f8 ff                                  	call   0x10918e90
109950b3:	83 c4 04                                        	add    esp,0x4
109950b6:	5f                                              	pop    edi
109950b7:	5d                                              	pop    ebp
109950b8:	5b                                              	pop    ebx
109950b9:	32 c0                                           	xor    al,al
109950bb:	5e                                              	pop    esi
109950bc:	83 c4 3c                                        	add    esp,0x3c
109950bf:	c3                                              	ret
