# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009ca280,0x009ca41b); analyst name SimStorage_ReplaceDatabaseSlotPath.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009ca280 <.text+0x5c9280>:
  9ca280:	55                   	push   ebp
  9ca281:	8b ec                	mov    ebp,esp
  9ca283:	83 e4 f8             	and    esp,0xfffffff8
  9ca286:	81 ec 24 04 00 00    	sub    esp,0x424
  9ca28c:	53                   	push   ebx
  9ca28d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  9ca290:	56                   	push   esi
  9ca291:	8b 73 30             	mov    esi,DWORD PTR [ebx+0x30]
  9ca294:	85 f6                	test   esi,esi
  9ca296:	57                   	push   edi
  9ca297:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  9ca29b:	74 3a                	je     0x9ca2d7
  9ca29d:	e8 de 5b ae ff       	call   0x4afe80
  9ca2a2:	85 f6                	test   esi,esi
  9ca2a4:	74 12                	je     0x9ca2b8
  9ca2a6:	85 c0                	test   eax,eax
  9ca2a8:	74 0e                	je     0x9ca2b8
  9ca2aa:	8b 10                	mov    edx,DWORD PTR [eax]
  9ca2ac:	6a 00                	push   0x0
  9ca2ae:	56                   	push   esi
  9ca2af:	8b c8                	mov    ecx,eax
  9ca2b1:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
  9ca2b4:	6a 00                	push   0x0
  9ca2b6:	ff d0                	call   eax
  9ca2b8:	8b 4b 30             	mov    ecx,DWORD PTR [ebx+0x30]
  9ca2bb:	8b 11                	mov    edx,DWORD PTR [ecx]
  9ca2bd:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  9ca2c0:	ff d0                	call   eax
  9ca2c2:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
  9ca2c5:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9ca2c8:	8d 48 04             	lea    ecx,[eax+0x4]
  9ca2cb:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9ca2ce:	ff d0                	call   eax
  9ca2d0:	c7 43 30 00 00 00 00 	mov    DWORD PTR [ebx+0x30],0x0
  9ca2d7:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  9ca2da:	85 f6                	test   esi,esi
  9ca2dc:	75 42                	jne    0x9ca320
  9ca2de:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  9ca2e1:	3b 43 14             	cmp    eax,DWORD PTR [ebx+0x14]
  9ca2e4:	74 09                	je     0x9ca2ef
  9ca2e6:	66 89 30             	mov    WORD PTR [eax],si
  9ca2e9:	8b 4b 10             	mov    ecx,DWORD PTR [ebx+0x10]
  9ca2ec:	89 4b 14             	mov    DWORD PTR [ebx+0x14],ecx
  9ca2ef:	8b 03                	mov    eax,DWORD PTR [ebx]
  9ca2f1:	3b 43 04             	cmp    eax,DWORD PTR [ebx+0x4]
  9ca2f4:	74 0a                	je     0x9ca300
  9ca2f6:	66 c7 00 00 00       	mov    WORD PTR [eax],0x0
  9ca2fb:	8b 13                	mov    edx,DWORD PTR [ebx]
  9ca2fd:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
  9ca300:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
  9ca303:	3b 43 24             	cmp    eax,DWORD PTR [ebx+0x24]
  9ca306:	0f 84 06 01 00 00    	je     0x9ca412
  9ca30c:	66 c7 00 00 00       	mov    WORD PTR [eax],0x0
  9ca311:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
  9ca314:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
  9ca317:	5f                   	pop    edi
  9ca318:	5e                   	pop    esi
  9ca319:	5b                   	pop    ebx
  9ca31a:	8b e5                	mov    esp,ebp
  9ca31c:	5d                   	pop    ebp
  9ca31d:	c2 10 00             	ret    0x10
  9ca320:	b9 04 01 00 00       	mov    ecx,0x104
  9ca325:	8d 7c 24 20          	lea    edi,[esp+0x20]
  9ca329:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  9ca32b:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  9ca32e:	6a 00                	push   0x0
  9ca330:	57                   	push   edi
  9ca331:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  9ca335:	e8 c6 40 b2 ff       	call   0x4ee400
  9ca33a:	6a 00                	push   0x0
  9ca33c:	6a 00                	push   0x0
  9ca33e:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  9ca342:	e8 a9 3b b2 ff       	call   0x4edef0
  9ca347:	8b f0                	mov    esi,eax
  9ca349:	33 c0                	xor    eax,eax
  9ca34b:	3b f0                	cmp    esi,eax
  9ca34d:	0f 84 bf 00 00 00    	je     0x9ca412
  9ca353:	8d 4e 02             	lea    ecx,[esi+0x2]
  9ca356:	51                   	push   ecx
  9ca357:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  9ca35b:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  9ca35f:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  9ca363:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  9ca367:	c7 44 24 20 58 19 05 01 	mov    DWORD PTR [esp+0x20],0x1051958
  9ca36f:	e8 6c 52 cb ff       	call   0x67f5e0
  9ca374:	83 c6 01             	add    esi,0x1
  9ca377:	56                   	push   esi
  9ca378:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  9ca37c:	56                   	push   esi
  9ca37d:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  9ca381:	e8 6a 3b b2 ff       	call   0x4edef0
  9ca386:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  9ca38a:	e8 11 ae e1 ff       	call   0x7e51a0
  9ca38f:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  9ca393:	8b c8                	mov    ecx,eax
  9ca395:	74 09                	je     0x9ca3a0
  9ca397:	83 c1 02             	add    ecx,0x2
  9ca39a:	66 83 39 00          	cmp    WORD PTR [ecx],0x0
  9ca39e:	75 f7                	jne    0x9ca397
  9ca3a0:	2b c8                	sub    ecx,eax
  9ca3a2:	d1 f9                	sar    ecx,1
  9ca3a4:	8d 14 48             	lea    edx,[eax+ecx*2]
  9ca3a7:	52                   	push   edx
  9ca3a8:	50                   	push   eax
  9ca3a9:	8d 4b 10             	lea    ecx,[ebx+0x10]
  9ca3ac:	e8 af e9 a3 ff       	call   0x408d60
  9ca3b1:	66 83 3e 00          	cmp    WORD PTR [esi],0x0
  9ca3b5:	8b c6                	mov    eax,esi
  9ca3b7:	74 10                	je     0x9ca3c9
  9ca3b9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  9ca3c0:	83 c0 02             	add    eax,0x2
  9ca3c3:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  9ca3c7:	75 f7                	jne    0x9ca3c0
  9ca3c9:	2b c6                	sub    eax,esi
  9ca3cb:	d1 f8                	sar    eax,1
  9ca3cd:	8d 04 46             	lea    eax,[esi+eax*2]
  9ca3d0:	50                   	push   eax
  9ca3d1:	56                   	push   esi
  9ca3d2:	8b cb                	mov    ecx,ebx
  9ca3d4:	e8 87 e9 a3 ff       	call   0x408d60
  9ca3d9:	66 83 3f 00          	cmp    WORD PTR [edi],0x0
  9ca3dd:	8b c7                	mov    eax,edi
  9ca3df:	74 09                	je     0x9ca3ea
  9ca3e1:	83 c0 02             	add    eax,0x2
  9ca3e4:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  9ca3e8:	75 f7                	jne    0x9ca3e1
  9ca3ea:	2b c7                	sub    eax,edi
  9ca3ec:	d1 f8                	sar    eax,1
  9ca3ee:	8d 0c 47             	lea    ecx,[edi+eax*2]
  9ca3f1:	51                   	push   ecx
  9ca3f2:	57                   	push   edi
  9ca3f3:	8d 4b 20             	lea    ecx,[ebx+0x20]
  9ca3f6:	e8 65 e9 a3 ff       	call   0x408d60
  9ca3fb:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  9ca3fe:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  9ca402:	52                   	push   edx
  9ca403:	53                   	push   ebx
  9ca404:	e8 e7 ea ff ff       	call   0x9c8ef0
  9ca409:	56                   	push   esi
  9ca40a:	e8 d1 a0 b1 ff       	call   0x4e44e0
  9ca40f:	83 c4 04             	add    esp,0x4
  9ca412:	5f                   	pop    edi
  9ca413:	5e                   	pop    esi
  9ca414:	5b                   	pop    ebx
  9ca415:	8b e5                	mov    esp,ebp
  9ca417:	5d                   	pop    ebp
  9ca418:	c2 10 00             	ret    0x10
