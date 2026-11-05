# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00799910 (MaterialParams_AppendEntryPayload)
Paired actual Ghidra pseudocode: 00799910_MaterialParams_AppendEntryPayload.c
Envelope [0x00799910,0x007999c3); 179 bytes; exact owned ranges: [0x00799910,0x007999c3)
Owned: 179 original bytes / 70 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00799910 <original>:
  799910:	83 ec 10                                        	sub    esp,0x10
  799913:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  799917:	53                                              	push   ebx
  799918:	8b 5c 24 24                                     	mov    ebx,DWORD PTR [esp+0x24]
  79991c:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  799920:	56                                              	push   esi
  799921:	8b f1                                           	mov    esi,ecx
  799923:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  799926:	2b 06                                           	sub    eax,DWORD PTR [esi]
  799928:	8b 56 14                                        	mov    edx,DWORD PTR [esi+0x14]
  79992b:	c1 f8 02                                        	sar    eax,0x2
  79992e:	8d 4e 10                                        	lea    ecx,[esi+0x10]
  799931:	03 c0                                           	add    eax,eax
  799933:	57                                              	push   edi
  799934:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  799938:	03 c0                                           	add    eax,eax
  79993a:	3b 51 08                                        	cmp    edx,DWORD PTR [ecx+0x8]
  79993d:	89 7c 24 0c                                     	mov    DWORD PTR [esp+0xc],edi
  799941:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  799945:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  799949:	73 1d                                           	jae    0x799968
  79994b:	85 d2                                           	test   edx,edx
  79994d:	55                                              	push   ebp
  79994e:	8d 6a 10                                        	lea    ebp,[edx+0x10]
  799951:	89 69 04                                        	mov    DWORD PTR [ecx+0x4],ebp
  799954:	5d                                              	pop    ebp
  799955:	74 1c                                           	je     0x799973
  799957:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  79995b:	89 3a                                           	mov    DWORD PTR [edx],edi
  79995d:	89 4a 04                                        	mov    DWORD PTR [edx+0x4],ecx
  799960:	89 5a 08                                        	mov    DWORD PTR [edx+0x8],ebx
  799963:	89 42 0c                                        	mov    DWORD PTR [edx+0xc],eax
  799966:	eb 0b                                           	jmp    0x799973
  799968:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  79996c:	50                                              	push   eax
  79996d:	52                                              	push   edx
  79996e:	e8 3d 07 53 00                                  	call   0xcca0b0
  799973:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  799977:	85 c0                                           	test   eax,eax
  799979:	74 20                                           	je     0x79999b
  79997b:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  79997f:	51                                              	push   ecx
  799980:	8b d3                                           	mov    edx,ebx
  799982:	8d 0c 90                                        	lea    ecx,[eax+edx*4]
  799985:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  799988:	51                                              	push   ecx
  799989:	50                                              	push   eax
  79998a:	52                                              	push   edx
  79998b:	8b ce                                           	mov    ecx,esi
  79998d:	e8 be 98 21 00                                  	call   0x9b3250
  799992:	5f                                              	pop    edi
  799993:	5e                                              	pop    esi
  799994:	5b                                              	pop    ebx
  799995:	83 c4 10                                        	add    esp,0x10
  799998:	c2 10 00                                        	ret    0x10
  79999b:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  79999e:	2b 0e                                           	sub    ecx,DWORD PTR [esi]
  7999a0:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  7999a4:	c1 f9 02                                        	sar    ecx,0x2
  7999a7:	03 cb                                           	add    ecx,ebx
  7999a9:	50                                              	push   eax
  7999aa:	51                                              	push   ecx
  7999ab:	8b ce                                           	mov    ecx,esi
  7999ad:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
  7999b5:	e8 26 0b 49 00                                  	call   0xc2a4e0
  7999ba:	5f                                              	pop    edi
  7999bb:	5e                                              	pop    esi
  7999bc:	5b                                              	pop    ebx
  7999bd:	83 c4 10                                        	add    esp,0x10
  7999c0:	c2 10 00                                        	ret    0x10
