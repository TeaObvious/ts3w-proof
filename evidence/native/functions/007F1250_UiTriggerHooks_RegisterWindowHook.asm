# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x007f1250 (UiTriggerHooks_RegisterWindowHook)
Paired actual Ghidra pseudocode: 007F1250_UiTriggerHooks_RegisterWindowHook.c
Envelope [0x007f1250,0x007f12ef); 159 bytes; exact owned ranges: [0x007f1250,0x007f12ef)
Owned: 159 original bytes / 67 instructions.
No nonowned envelope gap bytes. Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
007f1250 <original>:
  7f1250:	53                                              	push   ebx
  7f1251:	55                                              	push   ebp
  7f1252:	56                                              	push   esi
  7f1253:	57                                              	push   edi
  7f1254:	8b f9                                           	mov    edi,ecx
  7f1256:	57                                              	push   edi
  7f1257:	8d 8f c0 03 00 00                               	lea    ecx,[edi+0x3c0]
  7f125d:	e8 ce fc ff ff                                  	call   0x7f0f30
  7f1262:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  7f1266:	8b 6c 24 20                                     	mov    ebp,DWORD PTR [esp+0x20]
  7f126a:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  7f126e:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  7f1272:	8b d8                                           	mov    ebx,eax
  7f1274:	0f b6 44 24 28                                  	movzx  eax,BYTE PTR [esp+0x28]
  7f1279:	83 c8 10                                        	or     eax,0x10
  7f127c:	50                                              	push   eax
  7f127d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7f1281:	51                                              	push   ecx
  7f1282:	55                                              	push   ebp
  7f1283:	56                                              	push   esi
  7f1284:	52                                              	push   edx
  7f1285:	50                                              	push   eax
  7f1286:	53                                              	push   ebx
  7f1287:	8b cf                                           	mov    ecx,edi
  7f1289:	e8 02 fe ff ff                                  	call   0x7f1090
  7f128e:	84 c0                                           	test   al,al
  7f1290:	74 54                                           	je     0x7f12e6
  7f1292:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7f1294:	8b 87 d0 03 00 00                               	mov    eax,DWORD PTR [edi+0x3d0]
  7f129a:	8b 92 08 01 00 00                               	mov    edx,DWORD PTR [edx+0x108]
  7f12a0:	50                                              	push   eax
  7f12a1:	8b ce                                           	mov    ecx,esi
  7f12a3:	ff d2                                           	call   edx
  7f12a5:	83 fd 01                                        	cmp    ebp,0x1
  7f12a8:	75 33                                           	jne    0x7f12dd
  7f12aa:	8b 8f d4 03 00 00                               	mov    ecx,DWORD PTR [edi+0x3d4]
  7f12b0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7f12b2:	8b 90 08 01 00 00                               	mov    edx,DWORD PTR [eax+0x108]
  7f12b8:	51                                              	push   ecx
  7f12b9:	8b ce                                           	mov    ecx,esi
  7f12bb:	ff d2                                           	call   edx
  7f12bd:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7f12bf:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  7f12c2:	8b ce                                           	mov    ecx,esi
  7f12c4:	ff d2                                           	call   edx
  7f12c6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7f12c8:	8b c8                                           	mov    ecx,eax
  7f12ca:	8b 42 54                                        	mov    eax,DWORD PTR [edx+0x54]
  7f12cd:	6a 02                                           	push   0x2
  7f12cf:	ff d0                                           	call   eax
  7f12d1:	3b c6                                           	cmp    eax,esi
  7f12d3:	75 08                                           	jne    0x7f12dd
  7f12d5:	53                                              	push   ebx
  7f12d6:	8b cf                                           	mov    ecx,edi
  7f12d8:	e8 73 fb ff ff                                  	call   0x7f0e50
  7f12dd:	5f                                              	pop    edi
  7f12de:	5e                                              	pop    esi
  7f12df:	5d                                              	pop    ebp
  7f12e0:	8b c3                                           	mov    eax,ebx
  7f12e2:	5b                                              	pop    ebx
  7f12e3:	c2 18 00                                        	ret    0x18
  7f12e6:	5f                                              	pop    edi
  7f12e7:	5e                                              	pop    esi
  7f12e8:	5d                                              	pop    ebp
  7f12e9:	33 c0                                           	xor    eax,eax
  7f12eb:	5b                                              	pop    ebx
  7f12ec:	c2 18 00                                        	ret    0x18
