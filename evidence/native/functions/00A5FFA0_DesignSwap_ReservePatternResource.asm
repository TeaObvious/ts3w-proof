# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00a5ffa0 (DesignSwap_ReservePatternResource)
Paired actual Ghidra pseudocode: 00A5FFA0_DesignSwap_ReservePatternResource.c
Envelope [0x00a5ffa0,0x00a600dd); 317 bytes; exact owned ranges: [0x00a5ffa0,0x00a600dd)
Owned: 317 original bytes / 120 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00a5ffa0 <original>:
  a5ffa0:	83 ec 18                                        	sub    esp,0x18
  a5ffa3:	53                                              	push   ebx
  a5ffa4:	56                                              	push   esi
  a5ffa5:	57                                              	push   edi
  a5ffa6:	8b f1                                           	mov    esi,ecx
  a5ffa8:	e8 d3 fe a4 ff                                  	call   0x4afe80
  a5ffad:	8b d8                                           	mov    ebx,eax
  a5ffaf:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  a5ffb3:	50                                              	push   eax
  a5ffb4:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  a5ffb8:	8d 7e 74                                        	lea    edi,[esi+0x74]
  a5ffbb:	51                                              	push   ecx
  a5ffbc:	8b cf                                           	mov    ecx,edi
  a5ffbe:	e8 ed b9 ff ff                                  	call   0xa5b9b0
  a5ffc3:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
  a5ffc6:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  a5ffc9:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  a5ffcd:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
  a5ffd0:	74 27                                           	je     0xa5fff9
  a5ffd2:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  a5ffd5:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  a5ffd9:	8b 51 08                                        	mov    edx,DWORD PTR [ecx+0x8]
  a5ffdc:	89 10                                           	mov    DWORD PTR [eax],edx
  a5ffde:	8b 51 0c                                        	mov    edx,DWORD PTR [ecx+0xc]
  a5ffe1:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  a5ffe4:	8b 51 10                                        	mov    edx,DWORD PTR [ecx+0x10]
  a5ffe7:	8b 49 14                                        	mov    ecx,DWORD PTR [ecx+0x14]
  a5ffea:	5f                                              	pop    edi
  a5ffeb:	5e                                              	pop    esi
  a5ffec:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  a5ffef:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  a5fff2:	5b                                              	pop    ebx
  a5fff3:	83 c4 18                                        	add    esp,0x18
  a5fff6:	c2 08 00                                        	ret    0x8
  a5fff9:	6a 00                                           	push   0x0
  a5fffb:	6a 00                                           	push   0x0
  a5fffd:	6a 00                                           	push   0x0
  a5ffff:	6a 00                                           	push   0x0
  a60001:	68 04 1a 06 01                                  	push   0x1061a04
  a60006:	6a 68                                           	push   0x68
  a60008:	e8 f3 44 a8 ff                                  	call   0x4e4500
  a6000d:	83 c4 18                                        	add    esp,0x18
  a60010:	85 c0                                           	test   eax,eax
  a60012:	74 0b                                           	je     0xa6001f
  a60014:	8b c8                                           	mov    ecx,eax
  a60016:	e8 b5 0a ba ff                                  	call   0x600ad0
  a6001b:	8b f0                                           	mov    esi,eax
  a6001d:	eb 02                                           	jmp    0xa60021
  a6001f:	33 f6                                           	xor    esi,esi
  a60021:	8b 16                                           	mov    edx,DWORD PTR [esi]
  a60023:	8b 02                                           	mov    eax,DWORD PTR [edx]
  a60025:	8b ce                                           	mov    ecx,esi
  a60027:	ff d0                                           	call   eax
  a60029:	e8 72 02 0d 00                                  	call   0xb302a0
  a6002e:	68 c9 ac 41 03                                  	push   0x341acc9
  a60033:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  a60037:	51                                              	push   ecx
  a60038:	8b c8                                           	mov    ecx,eax
  a6003a:	e8 f1 3b 0d 00                                  	call   0xb33c30
  a6003f:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  a60043:	8b d0                                           	mov    edx,eax
  a60045:	0b 54 24 18                                     	or     edx,DWORD PTR [esp+0x18]
  a60049:	75 0b                                           	jne    0xa60056
  a6004b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  a6004d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  a60050:	8b ce                                           	mov    ecx,esi
  a60052:	ff d2                                           	call   edx
  a60054:	eb 5f                                           	jmp    0xa600b5
  a60056:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  a60059:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  a6005d:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  a60060:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  a60064:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
  a60067:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  a6006b:	8b ce                                           	mov    ecx,esi
  a6006d:	89 56 14                                        	mov    DWORD PTR [esi+0x14],edx
  a60070:	e8 5b ea b9 ff                                  	call   0x5fead0
  a60075:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  a60077:	8b 50 5c                                        	mov    edx,DWORD PTR [eax+0x5c]
  a6007a:	6a 01                                           	push   0x1
  a6007c:	56                                              	push   esi
  a6007d:	8b cb                                           	mov    ecx,ebx
  a6007f:	ff d2                                           	call   edx
  a60081:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  a60085:	50                                              	push   eax
  a60086:	8b cf                                           	mov    ecx,edi
  a60088:	e8 23 35 d9 ff                                  	call   0x7f35b0
  a6008d:	8b d8                                           	mov    ebx,eax
  a6008f:	8b 3b                                           	mov    edi,DWORD PTR [ebx]
  a60091:	3b f7                                           	cmp    esi,edi
  a60093:	74 17                                           	je     0xa600ac
  a60095:	8b 16                                           	mov    edx,DWORD PTR [esi]
  a60097:	8b 02                                           	mov    eax,DWORD PTR [edx]
  a60099:	8b ce                                           	mov    ecx,esi
  a6009b:	ff d0                                           	call   eax
  a6009d:	85 ff                                           	test   edi,edi
  a6009f:	89 33                                           	mov    DWORD PTR [ebx],esi
  a600a1:	74 09                                           	je     0xa600ac
  a600a3:	8b 17                                           	mov    edx,DWORD PTR [edi]
  a600a5:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  a600a8:	8b cf                                           	mov    ecx,edi
  a600aa:	ff d0                                           	call   eax
  a600ac:	8b 16                                           	mov    edx,DWORD PTR [esi]
  a600ae:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  a600b1:	8b ce                                           	mov    ecx,esi
  a600b3:	ff d0                                           	call   eax
  a600b5:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  a600b9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  a600bd:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  a600c1:	89 08                                           	mov    DWORD PTR [eax],ecx
  a600c3:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  a600c7:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  a600ca:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  a600ce:	5f                                              	pop    edi
  a600cf:	5e                                              	pop    esi
  a600d0:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  a600d3:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  a600d6:	5b                                              	pop    ebx
  a600d7:	83 c4 18                                        	add    esp,0x18
  a600da:	c2 08 00                                        	ret    0x8
