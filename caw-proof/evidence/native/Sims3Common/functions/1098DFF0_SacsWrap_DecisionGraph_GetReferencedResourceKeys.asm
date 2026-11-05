# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098dff0 (SacsWrap_DecisionGraph_GetReferencedResourceKeys)
Paired Ghidra pseudocode: 1098DFF0_SacsWrap_DecisionGraph_GetReferencedResourceKeys.c
Window: [0x1098dff0, 0x1098e100) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098dff0: 83 ec 10 55 57 8b 7c 24 1c 85 ff 0f 84 f4 00 00
1098e000: 00 8b 6c 24 24 85 ed 0f 84 e8 00 00 00 56 6a 00
1098e010: 6a 00 6a 00 6a 00 68 08 71 b9 10 6a 20 e8 8e ae
1098e020: f8 ff 83 c4 18 85 c0 74 18 8d 4c 24 20 51 8b c8
1098e030: c7 44 24 24 78 70 b9 10 e8 03 2d 6c ff 8b f0 eb
1098e040: 02 33 f6 53 56 8b cf e8 94 6c c5 ff 8d 54 24 10
1098e050: 52 8b ce e8 58 75 99 ff 8b 46 08 8b 4e 04 8b 5c
1098e060: 24 28 8b 14 81 33 ff 85 db 89 54 24 18 76 48 8b
1098e070: 54 24 14 8b 44 24 10 8d 4d 08 8d 9b 00 00 00 00
1098e080: 3b 44 24 18 74 31 8b 68 08 89 69 f8 8b 68 0c 89
1098e090: 69 fc 8b 28 89 29 8b 68 04 89 69 04 8b 40 10 85
1098e0a0: c0 75 0a 8b 42 04 83 c2 04 85 c0 74 f6 83 c7 01
1098e0b0: 83 c1 10 3b fb 72 c9 8b 46 08 8b 4e 04 8b 7e 0c
1098e0c0: 50 51 8b ce e8 f7 50 b6 ff 83 7e 08 01 c7 46 0c
1098e0d0: 00 00 00 00 5b 76 0c 8b 56 04 52 e8 b0 ad f8 ff
1098e0e0: 83 c4 04 56 e8 a7 ad f8 ff 83 c4 04 5e 8b c7 5f
1098e0f0: 5d 83 c4 10 c3 5f 33 c0 5d 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
1098dff0 <.text+0x98cff0>:
1098dff0:	83 ec 10                                        	sub    esp,0x10
1098dff3:	55                                              	push   ebp
1098dff4:	57                                              	push   edi
1098dff5:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
1098dff9:	85 ff                                           	test   edi,edi
1098dffb:	0f 84 f4 00 00 00                               	je     0x1098e0f5
1098e001:	8b 6c 24 24                                     	mov    ebp,DWORD PTR [esp+0x24]
1098e005:	85 ed                                           	test   ebp,ebp
1098e007:	0f 84 e8 00 00 00                               	je     0x1098e0f5
1098e00d:	56                                              	push   esi
1098e00e:	6a 00                                           	push   0x0
1098e010:	6a 00                                           	push   0x0
1098e012:	6a 00                                           	push   0x0
1098e014:	6a 00                                           	push   0x0
1098e016:	68 08 71 b9 10                                  	push   0x10b97108
1098e01b:	6a 20                                           	push   0x20
1098e01d:	e8 8e ae f8 ff                                  	call   0x10918eb0
1098e022:	83 c4 18                                        	add    esp,0x18
1098e025:	85 c0                                           	test   eax,eax
1098e027:	74 18                                           	je     0x1098e041
1098e029:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1098e02d:	51                                              	push   ecx
1098e02e:	8b c8                                           	mov    ecx,eax
1098e030:	c7 44 24 24 78 70 b9 10                         	mov    DWORD PTR [esp+0x24],0x10b97078
1098e038:	e8 03 2d 6c ff                                  	call   0x10050d40
1098e03d:	8b f0                                           	mov    esi,eax
1098e03f:	eb 02                                           	jmp    0x1098e043
1098e041:	33 f6                                           	xor    esi,esi
1098e043:	53                                              	push   ebx
1098e044:	56                                              	push   esi
1098e045:	8b cf                                           	mov    ecx,edi
1098e047:	e8 94 6c c5 ff                                  	call   0x105e4ce0
1098e04c:	8d 54 24 10                                     	lea    edx,[esp+0x10]
1098e050:	52                                              	push   edx
1098e051:	8b ce                                           	mov    ecx,esi
1098e053:	e8 58 75 99 ff                                  	call   0x103255b0
1098e058:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
1098e05b:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098e05e:	8b 5c 24 28                                     	mov    ebx,DWORD PTR [esp+0x28]
1098e062:	8b 14 81                                        	mov    edx,DWORD PTR [ecx+eax*4]
1098e065:	33 ff                                           	xor    edi,edi
1098e067:	85 db                                           	test   ebx,ebx
1098e069:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
1098e06d:	76 48                                           	jbe    0x1098e0b7
1098e06f:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1098e073:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098e077:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
1098e07a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1098e080:	3b 44 24 18                                     	cmp    eax,DWORD PTR [esp+0x18]
1098e084:	74 31                                           	je     0x1098e0b7
1098e086:	8b 68 08                                        	mov    ebp,DWORD PTR [eax+0x8]
1098e089:	89 69 f8                                        	mov    DWORD PTR [ecx-0x8],ebp
1098e08c:	8b 68 0c                                        	mov    ebp,DWORD PTR [eax+0xc]
1098e08f:	89 69 fc                                        	mov    DWORD PTR [ecx-0x4],ebp
1098e092:	8b 28                                           	mov    ebp,DWORD PTR [eax]
1098e094:	89 29                                           	mov    DWORD PTR [ecx],ebp
1098e096:	8b 68 04                                        	mov    ebp,DWORD PTR [eax+0x4]
1098e099:	89 69 04                                        	mov    DWORD PTR [ecx+0x4],ebp
1098e09c:	8b 40 10                                        	mov    eax,DWORD PTR [eax+0x10]
1098e09f:	85 c0                                           	test   eax,eax
1098e0a1:	75 0a                                           	jne    0x1098e0ad
1098e0a3:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098e0a6:	83 c2 04                                        	add    edx,0x4
1098e0a9:	85 c0                                           	test   eax,eax
1098e0ab:	74 f6                                           	je     0x1098e0a3
1098e0ad:	83 c7 01                                        	add    edi,0x1
1098e0b0:	83 c1 10                                        	add    ecx,0x10
1098e0b3:	3b fb                                           	cmp    edi,ebx
1098e0b5:	72 c9                                           	jb     0x1098e080
1098e0b7:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
1098e0ba:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098e0bd:	8b 7e 0c                                        	mov    edi,DWORD PTR [esi+0xc]
1098e0c0:	50                                              	push   eax
1098e0c1:	51                                              	push   ecx
1098e0c2:	8b ce                                           	mov    ecx,esi
1098e0c4:	e8 f7 50 b6 ff                                  	call   0x104f31c0
1098e0c9:	83 7e 08 01                                     	cmp    DWORD PTR [esi+0x8],0x1
1098e0cd:	c7 46 0c 00 00 00 00                            	mov    DWORD PTR [esi+0xc],0x0
1098e0d4:	5b                                              	pop    ebx
1098e0d5:	76 0c                                           	jbe    0x1098e0e3
1098e0d7:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
1098e0da:	52                                              	push   edx
1098e0db:	e8 b0 ad f8 ff                                  	call   0x10918e90
1098e0e0:	83 c4 04                                        	add    esp,0x4
1098e0e3:	56                                              	push   esi
1098e0e4:	e8 a7 ad f8 ff                                  	call   0x10918e90
1098e0e9:	83 c4 04                                        	add    esp,0x4
1098e0ec:	5e                                              	pop    esi
1098e0ed:	8b c7                                           	mov    eax,edi
1098e0ef:	5f                                              	pop    edi
1098e0f0:	5d                                              	pop    ebp
1098e0f1:	83 c4 10                                        	add    esp,0x10
1098e0f4:	c3                                              	ret
1098e0f5:	5f                                              	pop    edi
1098e0f6:	33 c0                                           	xor    eax,eax
1098e0f8:	5d                                              	pop    ebp
1098e0f9:	83 c4 10                                        	add    esp,0x10
1098e0fc:	c3                                              	ret
1098e0fd:	cc                                              	int3
1098e0fe:	cc                                              	int3
1098e0ff:	cc                                              	int3
