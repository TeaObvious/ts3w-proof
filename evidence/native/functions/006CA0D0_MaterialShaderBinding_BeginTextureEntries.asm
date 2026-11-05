# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x006ca0d0 (MaterialShaderBinding_BeginTextureEntries)
Paired actual Ghidra pseudocode: 006CA0D0_MaterialShaderBinding_BeginTextureEntries.c
Envelope [0x006ca0d0,0x006ca218); 328 bytes; exact owned ranges: [0x006ca0d0,0x006ca218)
Owned: 328 original bytes / 121 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
006ca0d0 <original>:
  6ca0d0:	83 ec 08                                        	sub    esp,0x8
  6ca0d3:	53                                              	push   ebx
  6ca0d4:	56                                              	push   esi
  6ca0d5:	8b d9                                           	mov    ebx,ecx
  6ca0d7:	57                                              	push   edi
  6ca0d8:	8d 73 28                                        	lea    esi,[ebx+0x28]
  6ca0db:	6a 02                                           	push   0x2
  6ca0dd:	8b ce                                           	mov    ecx,esi
  6ca0df:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  6ca0e3:	e8 a8 46 01 00                                  	call   0x6de790
  6ca0e8:	8b 43 68                                        	mov    eax,DWORD PTR [ebx+0x68]
  6ca0eb:	8b 7b 64                                        	mov    edi,DWORD PTR [ebx+0x64]
  6ca0ee:	3b f8                                           	cmp    edi,eax
  6ca0f0:	c7 43 48 01 00 00 00                            	mov    DWORD PTR [ebx+0x48],0x1
  6ca0f7:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  6ca0fb:	0f 84 ed 00 00 00                               	je     0x6ca1ee
  6ca101:	55                                              	push   ebp
  6ca102:	80 7f 1e 06                                     	cmp    BYTE PTR [edi+0x1e],0x6
  6ca106:	75 58                                           	jne    0x6ca160
  6ca108:	83 7f 14 00                                     	cmp    DWORD PTR [edi+0x14],0x0
  6ca10c:	74 52                                           	je     0x6ca160
  6ca10e:	6a 00                                           	push   0x0
  6ca110:	6a 00                                           	push   0x0
  6ca112:	6a 00                                           	push   0x0
  6ca114:	6a 00                                           	push   0x0
  6ca116:	68 94 6a ff 00                                  	push   0xff6a94
  6ca11b:	6a 00                                           	push   0x0
  6ca11d:	6a 04                                           	push   0x4
  6ca11f:	6a 48                                           	push   0x48
  6ca121:	e8 fa a3 e1 ff                                  	call   0x4e4520
  6ca126:	83 c4 20                                        	add    esp,0x20
  6ca129:	85 c0                                           	test   eax,eax
  6ca12b:	0f 84 dc 00 00 00                               	je     0x6ca20d
  6ca131:	8b c8                                           	mov    ecx,eax
  6ca133:	e8 78 50 00 00                                  	call   0x6cf1b0
  6ca138:	8b f0                                           	mov    esi,eax
  6ca13a:	85 f6                                           	test   esi,esi
  6ca13c:	74 08                                           	je     0x6ca146
  6ca13e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  6ca140:	8b 10                                           	mov    edx,DWORD PTR [eax]
  6ca142:	8b ce                                           	mov    ecx,esi
  6ca144:	ff d2                                           	call   edx
  6ca146:	8b 47 14                                        	mov    eax,DWORD PTR [edi+0x14]
  6ca149:	50                                              	push   eax
  6ca14a:	56                                              	push   esi
  6ca14b:	57                                              	push   edi
  6ca14c:	8b cb                                           	mov    ecx,ebx
  6ca14e:	e8 7d f7 ff ff                                  	call   0x6c98d0
  6ca153:	85 f6                                           	test   esi,esi
  6ca155:	74 09                                           	je     0x6ca160
  6ca157:	8b 16                                           	mov    edx,DWORD PTR [esi]
  6ca159:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  6ca15c:	8b ce                                           	mov    ecx,esi
  6ca15e:	ff d0                                           	call   eax
  6ca160:	80 7f 1e 04                                     	cmp    BYTE PTR [edi+0x1e],0x4
  6ca164:	75 76                                           	jne    0x6ca1dc
  6ca166:	8b 6f 14                                        	mov    ebp,DWORD PTR [edi+0x14]
  6ca169:	83 7d 08 ff                                     	cmp    DWORD PTR [ebp+0x8],0xffffffff
  6ca16d:	74 70                                           	je     0x6ca1df
  6ca16f:	6a 00                                           	push   0x0
  6ca171:	6a 00                                           	push   0x0
  6ca173:	6a 00                                           	push   0x0
  6ca175:	6a 00                                           	push   0x0
  6ca177:	68 94 6a ff 00                                  	push   0xff6a94
  6ca17c:	6a 00                                           	push   0x0
  6ca17e:	6a 04                                           	push   0x4
  6ca180:	6a 48                                           	push   0x48
  6ca182:	e8 99 a3 e1 ff                                  	call   0x4e4520
  6ca187:	83 c4 20                                        	add    esp,0x20
  6ca18a:	85 c0                                           	test   eax,eax
  6ca18c:	0f 84 82 00 00 00                               	je     0x6ca214
  6ca192:	8b c8                                           	mov    ecx,eax
  6ca194:	e8 17 50 00 00                                  	call   0x6cf1b0
  6ca199:	8b f0                                           	mov    esi,eax
  6ca19b:	85 f6                                           	test   esi,esi
  6ca19d:	74 08                                           	je     0x6ca1a7
  6ca19f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  6ca1a1:	8b 02                                           	mov    eax,DWORD PTR [edx]
  6ca1a3:	8b ce                                           	mov    ecx,esi
  6ca1a5:	ff d0                                           	call   eax
  6ca1a7:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  6ca1ab:	51                                              	push   ecx
  6ca1ac:	55                                              	push   ebp
  6ca1ad:	56                                              	push   esi
  6ca1ae:	57                                              	push   edi
  6ca1af:	8b cb                                           	mov    ecx,ebx
  6ca1b1:	e8 9a fc ff ff                                  	call   0x6c9e50
  6ca1b6:	81 7d 08 f6 80 fb 8f                            	cmp    DWORD PTR [ebp+0x8],0x8ffb80f6
  6ca1bd:	75 10                                           	jne    0x6ca1cf
  6ca1bf:	55                                              	push   ebp
  6ca1c0:	e8 bb 99 31 00                                  	call   0x9e3b80
  6ca1c5:	8b c8                                           	mov    ecx,eax
  6ca1c7:	e8 24 aa 31 00                                  	call   0x9e4bf0
  6ca1cc:	89 43 74                                        	mov    DWORD PTR [ebx+0x74],eax
  6ca1cf:	85 f6                                           	test   esi,esi
  6ca1d1:	74 09                                           	je     0x6ca1dc
  6ca1d3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  6ca1d5:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  6ca1d8:	8b ce                                           	mov    ecx,esi
  6ca1da:	ff d0                                           	call   eax
  6ca1dc:	83 c7 20                                        	add    edi,0x20
  6ca1df:	3b 7c 24 10                                     	cmp    edi,DWORD PTR [esp+0x10]
  6ca1e3:	0f 85 19 ff ff ff                               	jne    0x6ca102
  6ca1e9:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  6ca1ed:	5d                                              	pop    ebp
  6ca1ee:	8b cb                                           	mov    ecx,ebx
  6ca1f0:	e8 db f5 ff ff                                  	call   0x6c97d0
  6ca1f5:	83 43 48 ff                                     	add    DWORD PTR [ebx+0x48],0xffffffff
  6ca1f9:	75 09                                           	jne    0x6ca204
  6ca1fb:	6a 03                                           	push   0x3
  6ca1fd:	8b ce                                           	mov    ecx,esi
  6ca1ff:	e8 8c 45 01 00                                  	call   0x6de790
  6ca204:	5f                                              	pop    edi
  6ca205:	5e                                              	pop    esi
  6ca206:	5b                                              	pop    ebx
  6ca207:	83 c4 08                                        	add    esp,0x8
  6ca20a:	c2 04 00                                        	ret    0x4
  6ca20d:	33 f6                                           	xor    esi,esi
  6ca20f:	e9 32 ff ff ff                                  	jmp    0x6ca146
  6ca214:	33 f6                                           	xor    esi,esi
  6ca216:	eb 8f                                           	jmp    0x6ca1a7
