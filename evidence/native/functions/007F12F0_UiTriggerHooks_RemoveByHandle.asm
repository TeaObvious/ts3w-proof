# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x007f12f0 (UiTriggerHooks_RemoveByHandle)
Paired actual Ghidra pseudocode: 007F12F0_UiTriggerHooks_RemoveByHandle.c
Envelope [0x007f12f0,0x007f13a7); 183 bytes; exact owned ranges: [0x007f12f0,0x007f13a7)
Owned: 183 original bytes / 68 instructions.
No nonowned envelope gap bytes. Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
007f12f0 <original>:
  7f12f0:	83 ec 08                                        	sub    esp,0x8
  7f12f3:	53                                              	push   ebx
  7f12f4:	55                                              	push   ebp
  7f12f5:	56                                              	push   esi
  7f12f6:	8b f1                                           	mov    esi,ecx
  7f12f8:	57                                              	push   edi
  7f12f9:	8d ae 80 03 00 00                               	lea    ebp,[esi+0x380]
  7f12ff:	55                                              	push   ebp
  7f1300:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  7f1306:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  7f130a:	50                                              	push   eax
  7f130b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7f130f:	8d 7e 10                                        	lea    edi,[esi+0x10]
  7f1312:	51                                              	push   ecx
  7f1313:	8b cf                                           	mov    ecx,edi
  7f1315:	e8 f6 c5 00 00                                  	call   0x7fd910
  7f131a:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
  7f131d:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  7f1320:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  7f1324:	3b 1c 90                                        	cmp    ebx,DWORD PTR [eax+edx*4]
  7f1327:	74 6b                                           	je     0x7f1394
  7f1329:	83 c3 04                                        	add    ebx,0x4
  7f132c:	53                                              	push   ebx
  7f132d:	8b ce                                           	mov    ecx,esi
  7f132f:	e8 dc ee ff ff                                  	call   0x7f0210
  7f1334:	f6 43 18 10                                     	test   BYTE PTR [ebx+0x18],0x10
  7f1338:	74 29                                           	je     0x7f1363
  7f133a:	8b 5b 14                                        	mov    ebx,DWORD PTR [ebx+0x14]
  7f133d:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7f133f:	8b 86 d0 03 00 00                               	mov    eax,DWORD PTR [esi+0x3d0]
  7f1345:	8b 92 0c 01 00 00                               	mov    edx,DWORD PTR [edx+0x10c]
  7f134b:	50                                              	push   eax
  7f134c:	8b cb                                           	mov    ecx,ebx
  7f134e:	ff d2                                           	call   edx
  7f1350:	8b 8e d4 03 00 00                               	mov    ecx,DWORD PTR [esi+0x3d4]
  7f1356:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  7f1358:	8b 90 0c 01 00 00                               	mov    edx,DWORD PTR [eax+0x10c]
  7f135e:	51                                              	push   ecx
  7f135f:	8b cb                                           	mov    ecx,ebx
  7f1361:	ff d2                                           	call   edx
  7f1363:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7f1367:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  7f136b:	83 ec 08                                        	sub    esp,0x8
  7f136e:	8b c4                                           	mov    eax,esp
  7f1370:	89 08                                           	mov    DWORD PTR [eax],ecx
  7f1372:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  7f1375:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  7f1379:	50                                              	push   eax
  7f137a:	8b cf                                           	mov    ecx,edi
  7f137c:	e8 2f fe ff ff                                  	call   0x7f11b0
  7f1381:	55                                              	push   ebp
  7f1382:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7f1388:	b0 01                                           	mov    al,0x1
  7f138a:	5f                                              	pop    edi
  7f138b:	5e                                              	pop    esi
  7f138c:	5d                                              	pop    ebp
  7f138d:	5b                                              	pop    ebx
  7f138e:	83 c4 08                                        	add    esp,0x8
  7f1391:	c2 04 00                                        	ret    0x4
  7f1394:	55                                              	push   ebp
  7f1395:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7f139b:	5f                                              	pop    edi
  7f139c:	5e                                              	pop    esi
  7f139d:	5d                                              	pop    ebp
  7f139e:	32 c0                                           	xor    al,al
  7f13a0:	5b                                              	pop    ebx
  7f13a1:	83 c4 08                                        	add    esp,0x8
  7f13a4:	c2 04 00                                        	ret    0x4
