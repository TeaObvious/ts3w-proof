# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009cb0d0,0x009cb6f9); analyst name SimStorage_WriteSimRecordAndDependencies.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009cb0d0 <.text+0x5ca0d0>:
  9cb0d0:	81 ec cc 00 00 00    	sub    esp,0xcc
  9cb0d6:	55                   	push   ebp
  9cb0d7:	33 ed                	xor    ebp,ebp
  9cb0d9:	39 ac 24 dc 00 00 00 	cmp    DWORD PTR [esp+0xdc],ebp
  9cb0e0:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  9cb0e4:	75 0c                	jne    0x9cb0f2
  9cb0e6:	32 c0                	xor    al,al
  9cb0e8:	5d                   	pop    ebp
  9cb0e9:	81 c4 cc 00 00 00    	add    esp,0xcc
  9cb0ef:	c2 18 00             	ret    0x18
  9cb0f2:	8b 8c 24 d4 00 00 00 	mov    ecx,DWORD PTR [esp+0xd4]
  9cb0f9:	56                   	push   esi
  9cb0fa:	8b b4 24 e4 00 00 00 	mov    esi,DWORD PTR [esp+0xe4]
  9cb101:	57                   	push   edi
  9cb102:	8b bc 24 f0 00 00 00 	mov    edi,DWORD PTR [esp+0xf0]
  9cb109:	3b fd                	cmp    edi,ebp
  9cb10b:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
  9cb10f:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  9cb113:	89 6c 24 20          	mov    DWORD PTR [esp+0x20],ebp
  9cb117:	89 6c 24 24          	mov    DWORD PTR [esp+0x24],ebp
  9cb11b:	74 24                	je     0x9cb141
  9cb11d:	8b 07                	mov    eax,DWORD PTR [edi]
  9cb11f:	0b 47 04             	or     eax,DWORD PTR [edi+0x4]
  9cb122:	74 1d                	je     0x9cb141
  9cb124:	8b 0f                	mov    ecx,DWORD PTR [edi]
  9cb126:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  9cb129:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  9cb12c:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  9cb130:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  9cb133:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  9cb137:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  9cb13b:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  9cb13f:	eb 44                	jmp    0x9cb185
  9cb141:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb143:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  9cb146:	ff d0                	call   eax
  9cb148:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  9cb14c:	51                   	push   ecx
  9cb14d:	8d 54 24 5c          	lea    edx,[esp+0x5c]
  9cb151:	52                   	push   edx
  9cb152:	89 6c 24 50          	mov    DWORD PTR [esp+0x50],ebp
  9cb156:	89 6c 24 54          	mov    DWORD PTR [esp+0x54],ebp
  9cb15a:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  9cb15e:	89 74 24 5c          	mov    DWORD PTR [esp+0x5c],esi
  9cb162:	e8 69 f8 fc ff       	call   0x99a9d0
  9cb167:	8b 08                	mov    ecx,DWORD PTR [eax]
  9cb169:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  9cb16d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9cb170:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  9cb174:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  9cb177:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  9cb17b:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  9cb17e:	83 c4 08             	add    esp,0x8
  9cb181:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  9cb185:	8b 8c 24 e0 00 00 00 	mov    ecx,DWORD PTR [esp+0xe0]
  9cb18c:	83 e6 01             	and    esi,0x1
  9cb18f:	8b c5                	mov    eax,ebp
  9cb191:	0f 95 c0             	setne  al
  9cb194:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
  9cb198:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
  9cb19c:	83 c0 01             	add    eax,0x1
  9cb19f:	3b cd                	cmp    ecx,ebp
  9cb1a1:	0f 84 44 05 00 00    	je     0x9cb6eb
  9cb1a7:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb1a9:	8b 52 34             	mov    edx,DWORD PTR [edx+0x34]
  9cb1ac:	55                   	push   ebp
  9cb1ad:	6a 01                	push   0x1
  9cb1af:	50                   	push   eax
  9cb1b0:	6a 02                	push   0x2
  9cb1b2:	8d 44 24 20          	lea    eax,[esp+0x20]
  9cb1b6:	50                   	push   eax
  9cb1b7:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  9cb1bb:	50                   	push   eax
  9cb1bc:	ff d2                	call   edx
  9cb1be:	84 c0                	test   al,al
  9cb1c0:	0f 84 16 05 00 00    	je     0x9cb6dc
  9cb1c6:	3b fd                	cmp    edi,ebp
  9cb1c8:	74 1b                	je     0x9cb1e5
  9cb1ca:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  9cb1ce:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  9cb1d2:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  9cb1d6:	89 07                	mov    DWORD PTR [edi],eax
  9cb1d8:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  9cb1dc:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  9cb1df:	89 57 08             	mov    DWORD PTR [edi+0x8],edx
  9cb1e2:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
  9cb1e5:	8b 8c 24 dc 00 00 00 	mov    ecx,DWORD PTR [esp+0xdc]
  9cb1ec:	83 c1 28             	add    ecx,0x28
  9cb1ef:	53                   	push   ebx
  9cb1f0:	51                   	push   ecx
  9cb1f1:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  9cb1f5:	e8 86 4c be ff       	call   0x5afe80
  9cb1fa:	8d 54 24 38          	lea    edx,[esp+0x38]
  9cb1fe:	52                   	push   edx
  9cb1ff:	e8 2c 4c ae ff       	call   0x4afe30
  9cb204:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
  9cb208:	83 c4 04             	add    esp,0x4
  9cb20b:	89 74 24 48          	mov    DWORD PTR [esp+0x48],esi
  9cb20f:	e8 6c 4c ae ff       	call   0x4afe80
  9cb214:	8b d8                	mov    ebx,eax
  9cb216:	3b dd                	cmp    ebx,ebp
  9cb218:	75 33                	jne    0x9cb24d
  9cb21a:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  9cb21e:	3b c5                	cmp    eax,ebp
  9cb220:	74 09                	je     0x9cb22b
  9cb222:	50                   	push   eax
  9cb223:	e8 b8 92 b1 ff       	call   0x4e44e0
  9cb228:	83 c4 04             	add    esp,0x4
  9cb22b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  9cb22f:	3b cd                	cmp    ecx,ebp
  9cb231:	0f 84 73 03 00 00    	je     0x9cb5aa
  9cb237:	8b 01                	mov    eax,DWORD PTR [ecx]
  9cb239:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  9cb23c:	ff d2                	call   edx
  9cb23e:	5b                   	pop    ebx
  9cb23f:	5f                   	pop    edi
  9cb240:	5e                   	pop    esi
  9cb241:	32 c0                	xor    al,al
  9cb243:	5d                   	pop    ebp
  9cb244:	81 c4 cc 00 00 00    	add    esp,0xcc
  9cb24a:	c2 18 00             	ret    0x18
  9cb24d:	39 6c 24 34          	cmp    DWORD PTR [esp+0x34],ebp
  9cb251:	8b 84 24 e4 00 00 00 	mov    eax,DWORD PTR [esp+0xe4]
  9cb258:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  9cb25c:	74 16                	je     0x9cb274
  9cb25e:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  9cb262:	8b 81 a4 00 00 00    	mov    eax,DWORD PTR [ecx+0xa4]
  9cb268:	3b c5                	cmp    eax,ebp
  9cb26a:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  9cb26e:	0f 84 16 03 00 00    	je     0x9cb58a
  9cb274:	8b 8c 24 f0 00 00 00 	mov    ecx,DWORD PTR [esp+0xf0]
  9cb27b:	3b cd                	cmp    ecx,ebp
  9cb27d:	8b 7c 24 38          	mov    edi,DWORD PTR [esp+0x38]
  9cb281:	74 32                	je     0x9cb2b5
  9cb283:	3b fe                	cmp    edi,esi
  9cb285:	8b c7                	mov    eax,edi
  9cb287:	74 25                	je     0x9cb2ae
  9cb289:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  9cb290:	81 78 08 f4 d6 5e 02 	cmp    DWORD PTR [eax+0x8],0x25ed6f4
  9cb297:	75 0e                	jne    0x9cb2a7
  9cb299:	8b 10                	mov    edx,DWORD PTR [eax]
  9cb29b:	3b 11                	cmp    edx,DWORD PTR [ecx]
  9cb29d:	75 08                	jne    0x9cb2a7
  9cb29f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9cb2a2:	3b 51 04             	cmp    edx,DWORD PTR [ecx+0x4]
  9cb2a5:	74 0e                	je     0x9cb2b5
  9cb2a7:	83 c0 10             	add    eax,0x10
  9cb2aa:	3b c6                	cmp    eax,esi
  9cb2ac:	75 e2                	jne    0x9cb290
  9cb2ae:	89 ac 24 f0 00 00 00 	mov    DWORD PTR [esp+0xf0],ebp
  9cb2b5:	3b fe                	cmp    edi,esi
  9cb2b7:	0f 84 c0 01 00 00    	je     0x9cb47d
  9cb2bd:	8d 49 00             	lea    ecx,[ecx+0x0]
  9cb2c0:	81 7f 08 f4 d6 5e 02 	cmp    DWORD PTR [edi+0x8],0x25ed6f4
  9cb2c7:	0f 85 03 01 00 00    	jne    0x9cb3d0
  9cb2cd:	8b 84 24 f0 00 00 00 	mov    eax,DWORD PTR [esp+0xf0]
  9cb2d4:	3b c5                	cmp    eax,ebp
  9cb2d6:	74 1d                	je     0x9cb2f5
  9cb2d8:	8b 00                	mov    eax,DWORD PTR [eax]
  9cb2da:	3b 07                	cmp    eax,DWORD PTR [edi]
  9cb2dc:	0f 85 8e 01 00 00    	jne    0x9cb470
  9cb2e2:	8b 8c 24 f0 00 00 00 	mov    ecx,DWORD PTR [esp+0xf0]
  9cb2e9:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  9cb2ec:	3b 57 04             	cmp    edx,DWORD PTR [edi+0x4]
  9cb2ef:	0f 85 7b 01 00 00    	jne    0x9cb470
  9cb2f5:	8b 03                	mov    eax,DWORD PTR [ebx]
  9cb2f7:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  9cb2fa:	55                   	push   ebp
  9cb2fb:	55                   	push   ebp
  9cb2fc:	55                   	push   ebp
  9cb2fd:	55                   	push   ebp
  9cb2fe:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  9cb302:	51                   	push   ecx
  9cb303:	57                   	push   edi
  9cb304:	8b cb                	mov    ecx,ebx
  9cb306:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
  9cb30a:	ff d2                	call   edx
  9cb30c:	84 c0                	test   al,al
  9cb30e:	0f 84 a4 00 00 00    	je     0x9cb3b8
  9cb314:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  9cb318:	3b cd                	cmp    ecx,ebp
  9cb31a:	0f 84 50 01 00 00    	je     0x9cb470
  9cb320:	8b 01                	mov    eax,DWORD PTR [ecx]
  9cb322:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  9cb325:	68 08 d7 5e 02       	push   0x25ed708
  9cb32a:	ff d2                	call   edx
  9cb32c:	8b f0                	mov    esi,eax
  9cb32e:	3b f5                	cmp    esi,ebp
  9cb330:	0f 84 82 00 00 00    	je     0x9cb3b8
  9cb336:	8b 06                	mov    eax,DWORD PTR [esi]
  9cb338:	8b 10                	mov    edx,DWORD PTR [eax]
  9cb33a:	8b ce                	mov    ecx,esi
  9cb33c:	ff d2                	call   edx
  9cb33e:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  9cb342:	8b 01                	mov    eax,DWORD PTR [ecx]
  9cb344:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
  9cb347:	55                   	push   ebp
  9cb348:	6a 01                	push   0x1
  9cb34a:	6a 02                	push   0x2
  9cb34c:	6a 02                	push   0x2
  9cb34e:	8d 54 24 28          	lea    edx,[esp+0x28]
  9cb352:	52                   	push   edx
  9cb353:	57                   	push   edi
  9cb354:	89 6c 24 30          	mov    DWORD PTR [esp+0x30],ebp
  9cb358:	ff d0                	call   eax
  9cb35a:	84 c0                	test   al,al
  9cb35c:	0f 84 f6 01 00 00    	je     0x9cb558
  9cb362:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  9cb366:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb368:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  9cb36b:	ff d0                	call   eax
  9cb36d:	55                   	push   ebp
  9cb36e:	55                   	push   ebp
  9cb36f:	55                   	push   ebp
  9cb370:	50                   	push   eax
  9cb371:	8b ce                	mov    ecx,esi
  9cb373:	e8 a8 c9 c1 ff       	call   0x5e7d20
  9cb378:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  9cb37c:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb37e:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  9cb381:	ff d0                	call   eax
  9cb383:	39 6c 24 34          	cmp    DWORD PTR [esp+0x34],ebp
  9cb387:	74 17                	je     0x9cb3a0
  9cb389:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  9cb38d:	8b 94 24 e0 00 00 00 	mov    edx,DWORD PTR [esp+0xe0]
  9cb394:	51                   	push   ecx
  9cb395:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  9cb399:	52                   	push   edx
  9cb39a:	56                   	push   esi
  9cb39b:	e8 40 fb ff ff       	call   0x9caee0
  9cb3a0:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  9cb3a4:	3b cd                	cmp    ecx,ebp
  9cb3a6:	74 07                	je     0x9cb3af
  9cb3a8:	8b 01                	mov    eax,DWORD PTR [ecx]
  9cb3aa:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  9cb3ad:	ff d2                	call   edx
  9cb3af:	8b 06                	mov    eax,DWORD PTR [esi]
  9cb3b1:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9cb3b4:	8b ce                	mov    ecx,esi
  9cb3b6:	ff d2                	call   edx
  9cb3b8:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  9cb3bc:	3b cd                	cmp    ecx,ebp
  9cb3be:	0f 84 ac 00 00 00    	je     0x9cb470
  9cb3c4:	8b 01                	mov    eax,DWORD PTR [ecx]
  9cb3c6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9cb3c9:	ff d2                	call   edx
  9cb3cb:	e9 a0 00 00 00       	jmp    0x9cb470
  9cb3d0:	57                   	push   edi
  9cb3d1:	e8 3a 89 fc ff       	call   0x993d10
  9cb3d6:	83 c4 04             	add    esp,0x4
  9cb3d9:	85 c0                	test   eax,eax
  9cb3db:	0f 85 8f 00 00 00    	jne    0x9cb470
  9cb3e1:	81 7f 08 82 d8 b2 00 	cmp    DWORD PTR [edi+0x8],0xb2d882
  9cb3e8:	75 43                	jne    0x9cb42d
  9cb3ea:	8b 03                	mov    eax,DWORD PTR [ebx]
  9cb3ec:	8b 50 58             	mov    edx,DWORD PTR [eax+0x58]
  9cb3ef:	57                   	push   edi
  9cb3f0:	8b cb                	mov    ecx,ebx
  9cb3f2:	ff d2                	call   edx
  9cb3f4:	85 c0                	test   eax,eax
  9cb3f6:	75 35                	jne    0x9cb42d
  9cb3f8:	8b 03                	mov    eax,DWORD PTR [ebx]
  9cb3fa:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
  9cb3fd:	57                   	push   edi
  9cb3fe:	8b cb                	mov    ecx,ebx
  9cb400:	ff d2                	call   edx
  9cb402:	8b f0                	mov    esi,eax
  9cb404:	3b f5                	cmp    esi,ebp
  9cb406:	74 68                	je     0x9cb470
  9cb408:	57                   	push   edi
  9cb409:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  9cb40d:	e8 8e e3 d3 ff       	call   0x7097a0
  9cb412:	8b 8c 24 e4 00 00 00 	mov    ecx,DWORD PTR [esp+0xe4]
  9cb419:	55                   	push   ebp
  9cb41a:	55                   	push   ebp
  9cb41b:	55                   	push   ebp
  9cb41c:	8d 44 24 68          	lea    eax,[esp+0x68]
  9cb420:	50                   	push   eax
  9cb421:	56                   	push   esi
  9cb422:	51                   	push   ecx
  9cb423:	e8 08 dd e0 ff       	call   0x7d9130
  9cb428:	83 c4 18             	add    esp,0x18
  9cb42b:	eb 43                	jmp    0x9cb470
  9cb42d:	8b 13                	mov    edx,DWORD PTR [ebx]
  9cb42f:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
  9cb432:	55                   	push   ebp
  9cb433:	55                   	push   ebp
  9cb434:	55                   	push   ebp
  9cb435:	55                   	push   ebp
  9cb436:	8d 44 24 20          	lea    eax,[esp+0x20]
  9cb43a:	50                   	push   eax
  9cb43b:	57                   	push   edi
  9cb43c:	8b cb                	mov    ecx,ebx
  9cb43e:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
  9cb442:	ff d2                	call   edx
  9cb444:	84 c0                	test   al,al
  9cb446:	74 19                	je     0x9cb461
  9cb448:	8b 8c 24 e4 00 00 00 	mov    ecx,DWORD PTR [esp+0xe4]
  9cb44f:	8b 03                	mov    eax,DWORD PTR [ebx]
  9cb451:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  9cb455:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
  9cb458:	55                   	push   ebp
  9cb459:	55                   	push   ebp
  9cb45a:	51                   	push   ecx
  9cb45b:	55                   	push   ebp
  9cb45c:	52                   	push   edx
  9cb45d:	8b cb                	mov    ecx,ebx
  9cb45f:	ff d0                	call   eax
  9cb461:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  9cb465:	3b cd                	cmp    ecx,ebp
  9cb467:	74 07                	je     0x9cb470
  9cb469:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb46b:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9cb46e:	ff d0                	call   eax
  9cb470:	83 c7 10             	add    edi,0x10
  9cb473:	3b 7c 24 48          	cmp    edi,DWORD PTR [esp+0x48]
  9cb477:	0f 85 43 fe ff ff    	jne    0x9cb2c0
  9cb47d:	39 6c 24 34          	cmp    DWORD PTR [esp+0x34],ebp
  9cb481:	74 23                	je     0x9cb4a6
  9cb483:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  9cb487:	8b 8c 24 e0 00 00 00 	mov    ecx,DWORD PTR [esp+0xe0]
  9cb48e:	05 94 00 00 00       	add    eax,0x94
  9cb493:	83 c1 78             	add    ecx,0x78
  9cb496:	3b c1                	cmp    eax,ecx
  9cb498:	74 0c                	je     0x9cb4a6
  9cb49a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9cb49d:	8b 00                	mov    eax,DWORD PTR [eax]
  9cb49f:	52                   	push   edx
  9cb4a0:	50                   	push   eax
  9cb4a1:	e8 ba d8 a3 ff       	call   0x408d60
  9cb4a6:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  9cb4aa:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb4ac:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  9cb4af:	ff d0                	call   eax
  9cb4b1:	8b 8c 24 e0 00 00 00 	mov    ecx,DWORD PTR [esp+0xe0]
  9cb4b8:	55                   	push   ebp
  9cb4b9:	50                   	push   eax
  9cb4ba:	e8 e1 b2 fd ff       	call   0x9a67a0
  9cb4bf:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  9cb4c3:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb4c5:	8a d8                	mov    bl,al
  9cb4c7:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  9cb4ca:	ff d0                	call   eax
  9cb4cc:	8b 84 24 e8 00 00 00 	mov    eax,DWORD PTR [esp+0xe8]
  9cb4d3:	8b 78 34             	mov    edi,DWORD PTR [eax+0x34]
  9cb4d6:	8b 70 30             	mov    esi,DWORD PTR [eax+0x30]
  9cb4d9:	3b f7                	cmp    esi,edi
  9cb4db:	0f 84 e3 00 00 00    	je     0x9cb5c4
  9cb4e1:	8b 06                	mov    eax,DWORD PTR [esi]
  9cb4e3:	32 db                	xor    bl,bl
  9cb4e5:	39 68 40             	cmp    DWORD PTR [eax+0x40],ebp
  9cb4e8:	8d 48 08             	lea    ecx,[eax+0x8]
  9cb4eb:	74 62                	je     0x9cb54f
  9cb4ed:	39 68 44             	cmp    DWORD PTR [eax+0x44],ebp
  9cb4f0:	74 5d                	je     0x9cb54f
  9cb4f2:	8b 94 24 e4 00 00 00 	mov    edx,DWORD PTR [esp+0xe4]
  9cb4f9:	8b 02                	mov    eax,DWORD PTR [edx]
  9cb4fb:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
  9cb4fe:	55                   	push   ebp
  9cb4ff:	6a 01                	push   0x1
  9cb501:	6a 02                	push   0x2
  9cb503:	6a 02                	push   0x2
  9cb505:	8d 54 24 20          	lea    edx,[esp+0x20]
  9cb509:	52                   	push   edx
  9cb50a:	51                   	push   ecx
  9cb50b:	8b 8c 24 fc 00 00 00 	mov    ecx,DWORD PTR [esp+0xfc]
  9cb512:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
  9cb516:	ff d0                	call   eax
  9cb518:	84 c0                	test   al,al
  9cb51a:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  9cb51e:	0f 84 95 00 00 00    	je     0x9cb5b9
  9cb524:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb526:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  9cb529:	ff d0                	call   eax
  9cb52b:	8b 0e                	mov    ecx,DWORD PTR [esi]
  9cb52d:	50                   	push   eax
  9cb52e:	e8 4d 85 39 00       	call   0xd63a80
  9cb533:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  9cb537:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb539:	8a d8                	mov    bl,al
  9cb53b:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  9cb53e:	ff d0                	call   eax
  9cb540:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  9cb544:	3b cd                	cmp    ecx,ebp
  9cb546:	74 07                	je     0x9cb54f
  9cb548:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb54a:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  9cb54d:	ff d0                	call   eax
  9cb54f:	83 c6 04             	add    esi,0x4
  9cb552:	3b f7                	cmp    esi,edi
  9cb554:	75 8b                	jne    0x9cb4e1
  9cb556:	eb 6c                	jmp    0x9cb5c4
  9cb558:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  9cb55c:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb55e:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  9cb561:	ff d0                	call   eax
  9cb563:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  9cb567:	3b cd                	cmp    ecx,ebp
  9cb569:	74 07                	je     0x9cb572
  9cb56b:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb56d:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  9cb570:	ff d0                	call   eax
  9cb572:	8b 16                	mov    edx,DWORD PTR [esi]
  9cb574:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9cb577:	8b ce                	mov    ecx,esi
  9cb579:	ff d0                	call   eax
  9cb57b:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  9cb57f:	3b cd                	cmp    ecx,ebp
  9cb581:	74 07                	je     0x9cb58a
  9cb583:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb585:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9cb588:	ff d0                	call   eax
  9cb58a:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  9cb58e:	3b c5                	cmp    eax,ebp
  9cb590:	74 09                	je     0x9cb59b
  9cb592:	50                   	push   eax
  9cb593:	e8 48 8f b1 ff       	call   0x4e44e0
  9cb598:	83 c4 04             	add    esp,0x4
  9cb59b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  9cb59f:	3b cd                	cmp    ecx,ebp
  9cb5a1:	74 07                	je     0x9cb5aa
  9cb5a3:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb5a5:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  9cb5a8:	ff d0                	call   eax
  9cb5aa:	5b                   	pop    ebx
  9cb5ab:	5f                   	pop    edi
  9cb5ac:	5e                   	pop    esi
  9cb5ad:	32 c0                	xor    al,al
  9cb5af:	5d                   	pop    ebp
  9cb5b0:	81 c4 cc 00 00 00    	add    esp,0xcc
  9cb5b6:	c2 18 00             	ret    0x18
  9cb5b9:	3b cd                	cmp    ecx,ebp
  9cb5bb:	74 07                	je     0x9cb5c4
  9cb5bd:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb5bf:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  9cb5c2:	ff d0                	call   eax
  9cb5c4:	39 2d 58 a9 1e 01    	cmp    DWORD PTR ds:0x11ea958,ebp
  9cb5ca:	0f 84 dd 00 00 00    	je     0x9cb6ad
  9cb5d0:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  9cb5d4:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  9cb5d8:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  9cb5dc:	bf f4 a6 fb 00       	mov    edi,0xfba6f4
  9cb5e1:	89 8c 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],ecx
  9cb5e8:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  9cb5ec:	89 84 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],eax
  9cb5f3:	b8 0a 00 00 00       	mov    eax,0xa
  9cb5f8:	89 7c 24 7c          	mov    DWORD PTR [esp+0x7c],edi
  9cb5fc:	89 94 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],edx
  9cb603:	66 c7 84 24 86 00 00 00 0c 00 	mov    WORD PTR [esp+0x86],0xc
  9cb60d:	66 89 ac 24 84 00 00 00 	mov    WORD PTR [esp+0x84],bp
  9cb615:	89 bc 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],edi
  9cb61c:	66 89 84 24 a6 00 00 00 	mov    WORD PTR [esp+0xa6],ax
  9cb624:	66 89 ac 24 a4 00 00 00 	mov    WORD PTR [esp+0xa4],bp
  9cb62c:	89 bc 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],edi
  9cb633:	89 8c 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],ecx
  9cb63a:	66 89 84 24 c6 00 00 00 	mov    WORD PTR [esp+0xc6],ax
  9cb642:	66 89 ac 24 c4 00 00 00 	mov    WORD PTR [esp+0xc4],bp
  9cb64a:	e8 41 dd d9 ff       	call   0x769390
  9cb64f:	8b 10                	mov    edx,DWORD PTR [eax]
  9cb651:	8b 92 34 01 00 00    	mov    edx,DWORD PTR [edx+0x134]
  9cb657:	6a 03                	push   0x3
  9cb659:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  9cb660:	51                   	push   ecx
  9cb661:	8b 0d 58 a9 1e 01    	mov    ecx,DWORD PTR ds:0x11ea958
  9cb667:	51                   	push   ecx
  9cb668:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  9cb66c:	51                   	push   ecx
  9cb66d:	8b c8                	mov    ecx,eax
  9cb66f:	ff d2                	call   edx
  9cb671:	f6 44 24 64 04       	test   BYTE PTR [esp+0x64],0x4
  9cb676:	89 7c 24 5c          	mov    DWORD PTR [esp+0x5c],edi
  9cb67a:	74 0a                	je     0x9cb686
  9cb67c:	55                   	push   ebp
  9cb67d:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  9cb681:	e8 da a0 b2 ff       	call   0x4f5760
  9cb686:	8d b4 24 dc 00 00 00 	lea    esi,[esp+0xdc]
  9cb68d:	bd 02 00 00 00       	mov    ebp,0x2
  9cb692:	83 ee 20             	sub    esi,0x20
  9cb695:	f6 46 08 04          	test   BYTE PTR [esi+0x8],0x4
  9cb699:	89 3e                	mov    DWORD PTR [esi],edi
  9cb69b:	74 09                	je     0x9cb6a6
  9cb69d:	6a 00                	push   0x0
  9cb69f:	8b ce                	mov    ecx,esi
  9cb6a1:	e8 ba a0 b2 ff       	call   0x4f5760
  9cb6a6:	83 ed 01             	sub    ebp,0x1
  9cb6a9:	79 e7                	jns    0x9cb692
  9cb6ab:	33 ed                	xor    ebp,ebp
  9cb6ad:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  9cb6b1:	3b c5                	cmp    eax,ebp
  9cb6b3:	74 09                	je     0x9cb6be
  9cb6b5:	50                   	push   eax
  9cb6b6:	e8 25 8e b1 ff       	call   0x4e44e0
  9cb6bb:	83 c4 04             	add    esp,0x4
  9cb6be:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  9cb6c2:	3b cd                	cmp    ecx,ebp
  9cb6c4:	74 07                	je     0x9cb6cd
  9cb6c6:	8b 01                	mov    eax,DWORD PTR [ecx]
  9cb6c8:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  9cb6cb:	ff d2                	call   edx
  9cb6cd:	8a c3                	mov    al,bl
  9cb6cf:	5b                   	pop    ebx
  9cb6d0:	5f                   	pop    edi
  9cb6d1:	5e                   	pop    esi
  9cb6d2:	5d                   	pop    ebp
  9cb6d3:	81 c4 cc 00 00 00    	add    esp,0xcc
  9cb6d9:	c2 18 00             	ret    0x18
  9cb6dc:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  9cb6e0:	3b cd                	cmp    ecx,ebp
  9cb6e2:	74 07                	je     0x9cb6eb
  9cb6e4:	8b 01                	mov    eax,DWORD PTR [ecx]
  9cb6e6:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  9cb6e9:	ff d2                	call   edx
  9cb6eb:	5f                   	pop    edi
  9cb6ec:	5e                   	pop    esi
  9cb6ed:	32 c0                	xor    al,al
  9cb6ef:	5d                   	pop    ebp
  9cb6f0:	81 c4 cc 00 00 00    	add    esp,0xcc
  9cb6f6:	c2 18 00             	ret    0x18
