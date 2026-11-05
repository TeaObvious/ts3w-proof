# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007b6210 <.text+0x3b5210>:
  7b6210:	81 ec 8c 00 00 00    	sub    esp,0x8c
  7b6216:	53                   	push   ebx
  7b6217:	55                   	push   ebp
  7b6218:	56                   	push   esi
  7b6219:	8b e9                	mov    ebp,ecx
  7b621b:	57                   	push   edi
  7b621c:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  7b6220:	8b b4 24 a0 00 00 00 	mov    esi,DWORD PTR [esp+0xa0]
  7b6227:	8b ce                	mov    ecx,esi
  7b6229:	e8 02 39 ff ff       	call   0x7a9b30
  7b622e:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  7b6232:	05 9f 15 ff ff       	add    eax,0xffff159f
  7b6237:	83 f8 08             	cmp    eax,0x8
  7b623a:	0f 87 0f 03 00 00    	ja     0x7b654f
  7b6240:	ff 24 85 6c 65 7b 00 	jmp    DWORD PTR [eax*4+0x7b656c]
  7b6247:	56                   	push   esi
  7b6248:	55                   	push   ebp
  7b6249:	8b cd                	mov    ecx,ebp
  7b624b:	e8 f0 fa ff ff       	call   0x7b5d40
  7b6250:	e9 fa 02 00 00       	jmp    0x7b654f
  7b6255:	8b ce                	mov    ecx,esi
  7b6257:	e8 d4 38 ff ff       	call   0x7a9b30
  7b625c:	8b ce                	mov    ecx,esi
  7b625e:	e8 cd 38 ff ff       	call   0x7a9b30
  7b6263:	33 db                	xor    ebx,ebx
  7b6265:	3b c3                	cmp    eax,ebx
  7b6267:	0f 8e e2 02 00 00    	jle    0x7b654f
  7b626d:	8d 7d 70             	lea    edi,[ebp+0x70]
  7b6270:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  7b6274:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  7b6278:	eb 0d                	jmp    0x7b6287
  7b627a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  7b6280:	8b b4 24 a0 00 00 00 	mov    esi,DWORD PTR [esp+0xa0]
  7b6287:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  7b628b:	e8 80 fb ff ff       	call   0x7b5e10
  7b6290:	56                   	push   esi
  7b6291:	8d 44 24 30          	lea    eax,[esp+0x30]
  7b6295:	50                   	push   eax
  7b6296:	8b cd                	mov    ecx,ebp
  7b6298:	e8 a3 fa ff ff       	call   0x7b5d40
  7b629d:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  7b62a0:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
  7b62a3:	0f 83 bb 00 00 00    	jae    0x7b6364
  7b62a9:	3b cb                	cmp    ecx,ebx
  7b62ab:	8d 51 70             	lea    edx,[ecx+0x70]
  7b62ae:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  7b62b1:	0f 84 ba 00 00 00    	je     0x7b6371
  7b62b7:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  7b62bb:	2b c1                	sub    eax,ecx
  7b62bd:	c7 44 24 14 06 00 00 	mov    DWORD PTR [esp+0x14],0x6
  7b62c4:	00 
  7b62c5:	8d 71 04             	lea    esi,[ecx+0x4]
  7b62c8:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  7b62cc:	eb 06                	jmp    0x7b62d4
  7b62ce:	8b ff                	mov    edi,edi
  7b62d0:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  7b62d4:	89 5e fc             	mov    DWORD PTR [esi-0x4],ebx
  7b62d7:	89 1e                	mov    DWORD PTR [esi],ebx
  7b62d9:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  7b62dc:	8b 4c 30 08          	mov    ecx,DWORD PTR [eax+esi*1+0x8]
  7b62e0:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  7b62e3:	8b 1c 30             	mov    ebx,DWORD PTR [eax+esi*1]
  7b62e6:	8b 6c 30 fc          	mov    ebp,DWORD PTR [eax+esi*1-0x4]
  7b62ea:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  7b62ee:	2b dd                	sub    ebx,ebp
  7b62f0:	8d 7b 01             	lea    edi,[ebx+0x1]
  7b62f3:	83 ff 01             	cmp    edi,0x1
  7b62f6:	76 26                	jbe    0x7b631e
  7b62f8:	68 e7 00 00 00       	push   0xe7
  7b62fd:	68 88 99 f9 00       	push   0xf99988
  7b6302:	6a 00                	push   0x0
  7b6304:	6a 00                	push   0x0
  7b6306:	8b d1                	mov    edx,ecx
  7b6308:	52                   	push   edx
  7b6309:	57                   	push   edi
  7b630a:	e8 f1 e1 d2 ff       	call   0x4e4500
  7b630f:	83 c4 18             	add    esp,0x18
  7b6312:	89 46 fc             	mov    DWORD PTR [esi-0x4],eax
  7b6315:	89 06                	mov    DWORD PTR [esi],eax
  7b6317:	03 c7                	add    eax,edi
  7b6319:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  7b631c:	eb 14                	jmp    0x7b6332
  7b631e:	c7 46 fc 54 8e 1c 01 	mov    DWORD PTR [esi-0x4],0x11c8e54
  7b6325:	c7 06 54 8e 1c 01    	mov    DWORD PTR [esi],0x11c8e54
  7b632b:	c7 46 04 55 8e 1c 01 	mov    DWORD PTR [esi+0x4],0x11c8e55
  7b6332:	8b 7e fc             	mov    edi,DWORD PTR [esi-0x4]
  7b6335:	53                   	push   ebx
  7b6336:	55                   	push   ebp
  7b6337:	57                   	push   edi
  7b6338:	ff 15 88 66 f9 00    	call   DWORD PTR ds:0xf96688
  7b633e:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  7b6342:	2b fd                	sub    edi,ebp
  7b6344:	03 c7                	add    eax,edi
  7b6346:	89 06                	mov    DWORD PTR [esi],eax
  7b6348:	83 c4 0c             	add    esp,0xc
  7b634b:	83 c6 10             	add    esi,0x10
  7b634e:	33 db                	xor    ebx,ebx
  7b6350:	83 6c 24 14 01       	sub    DWORD PTR [esp+0x14],0x1
  7b6355:	c6 00 00             	mov    BYTE PTR [eax],0x0
  7b6358:	0f 89 72 ff ff ff    	jns    0x7b62d0
  7b635e:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  7b6362:	eb 0d                	jmp    0x7b6371
  7b6364:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  7b6368:	52                   	push   edx
  7b6369:	51                   	push   ecx
  7b636a:	8b cf                	mov    ecx,edi
  7b636c:	e8 5f fd ff ff       	call   0x7b60d0
  7b6371:	8d b4 24 9c 00 00 00 	lea    esi,[esp+0x9c]
  7b6378:	bd 06 00 00 00       	mov    ebp,0x6
  7b637d:	8d 49 00             	lea    ecx,[ecx+0x0]
  7b6380:	8b 46 f0             	mov    eax,DWORD PTR [esi-0x10]
  7b6383:	8b 4e f8             	mov    ecx,DWORD PTR [esi-0x8]
  7b6386:	83 ee 10             	sub    esi,0x10
  7b6389:	2b c8                	sub    ecx,eax
  7b638b:	83 f9 01             	cmp    ecx,0x1
  7b638e:	7e 0d                	jle    0x7b639d
  7b6390:	3b c3                	cmp    eax,ebx
  7b6392:	74 09                	je     0x7b639d
  7b6394:	50                   	push   eax
  7b6395:	e8 46 e1 d2 ff       	call   0x4e44e0
  7b639a:	83 c4 04             	add    esp,0x4
  7b639d:	83 ed 01             	sub    ebp,0x1
  7b63a0:	79 de                	jns    0x7b6380
  7b63a2:	83 6c 24 10 01       	sub    DWORD PTR [esp+0x10],0x1
  7b63a7:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  7b63ab:	0f 85 cf fe ff ff    	jne    0x7b6280
  7b63b1:	e9 99 01 00 00       	jmp    0x7b654f
  7b63b6:	8b ce                	mov    ecx,esi
  7b63b8:	e8 73 37 ff ff       	call   0x7a9b30
  7b63bd:	8b ce                	mov    ecx,esi
  7b63bf:	e8 6c 37 ff ff       	call   0x7a9b30
  7b63c4:	85 c0                	test   eax,eax
  7b63c6:	0f 8e 83 01 00 00    	jle    0x7b654f
  7b63cc:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  7b63d0:	eb 15                	jmp    0x7b63e7
  7b63d2:	eb 0c                	jmp    0x7b63e0
  7b63d4:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  7b63db:	eb 03                	jmp    0x7b63e0
  7b63dd:	8d 49 00             	lea    ecx,[ecx+0x0]
  7b63e0:	8b b4 24 a0 00 00 00 	mov    esi,DWORD PTR [esp+0xa0]
  7b63e7:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  7b63eb:	e8 20 fa ff ff       	call   0x7b5e10
  7b63f0:	56                   	push   esi
  7b63f1:	8d 54 24 30          	lea    edx,[esp+0x30]
  7b63f5:	52                   	push   edx
  7b63f6:	8b cd                	mov    ecx,ebp
  7b63f8:	e8 43 f9 ff ff       	call   0x7b5d40
  7b63fd:	8b 95 84 00 00 00    	mov    edx,DWORD PTR [ebp+0x84]
  7b6403:	3b 95 88 00 00 00    	cmp    edx,DWORD PTR [ebp+0x88]
  7b6409:	8d 8d 80 00 00 00    	lea    ecx,[ebp+0x80]
  7b640f:	0f 83 be 00 00 00    	jae    0x7b64d3
  7b6415:	85 d2                	test   edx,edx
  7b6417:	8d 42 70             	lea    eax,[edx+0x70]
  7b641a:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  7b641d:	0f 84 bb 00 00 00    	je     0x7b64de
  7b6423:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  7b6427:	2b c2                	sub    eax,edx
  7b6429:	c7 44 24 10 06 00 00 	mov    DWORD PTR [esp+0x10],0x6
  7b6430:	00 
  7b6431:	8d 72 04             	lea    esi,[edx+0x4]
  7b6434:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  7b6438:	eb 0a                	jmp    0x7b6444
  7b643a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  7b6440:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  7b6444:	33 c9                	xor    ecx,ecx
  7b6446:	89 4e fc             	mov    DWORD PTR [esi-0x4],ecx
  7b6449:	89 0e                	mov    DWORD PTR [esi],ecx
  7b644b:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  7b644e:	8b 54 06 08          	mov    edx,DWORD PTR [esi+eax*1+0x8]
  7b6452:	89 56 08             	mov    DWORD PTR [esi+0x8],edx
  7b6455:	8b 1c 06             	mov    ebx,DWORD PTR [esi+eax*1]
  7b6458:	8b 6c 06 fc          	mov    ebp,DWORD PTR [esi+eax*1-0x4]
  7b645c:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  7b6460:	2b dd                	sub    ebx,ebp
  7b6462:	8d 7b 01             	lea    edi,[ebx+0x1]
  7b6465:	83 ff 01             	cmp    edi,0x1
  7b6468:	76 24                	jbe    0x7b648e
  7b646a:	68 e7 00 00 00       	push   0xe7
  7b646f:	68 88 99 f9 00       	push   0xf99988
  7b6474:	51                   	push   ecx
  7b6475:	51                   	push   ecx
  7b6476:	8b c2                	mov    eax,edx
  7b6478:	50                   	push   eax
  7b6479:	57                   	push   edi
  7b647a:	e8 81 e0 d2 ff       	call   0x4e4500
  7b647f:	83 c4 18             	add    esp,0x18
  7b6482:	89 46 fc             	mov    DWORD PTR [esi-0x4],eax
  7b6485:	89 06                	mov    DWORD PTR [esi],eax
  7b6487:	03 c7                	add    eax,edi
  7b6489:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  7b648c:	eb 14                	jmp    0x7b64a2
  7b648e:	c7 46 fc 54 8e 1c 01 	mov    DWORD PTR [esi-0x4],0x11c8e54
  7b6495:	c7 06 54 8e 1c 01    	mov    DWORD PTR [esi],0x11c8e54
  7b649b:	c7 46 04 55 8e 1c 01 	mov    DWORD PTR [esi+0x4],0x11c8e55
  7b64a2:	8b 7e fc             	mov    edi,DWORD PTR [esi-0x4]
  7b64a5:	53                   	push   ebx
  7b64a6:	55                   	push   ebp
  7b64a7:	57                   	push   edi
  7b64a8:	ff 15 88 66 f9 00    	call   DWORD PTR ds:0xf96688
  7b64ae:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  7b64b2:	2b fd                	sub    edi,ebp
  7b64b4:	8d 04 0f             	lea    eax,[edi+ecx*1]
  7b64b7:	89 06                	mov    DWORD PTR [esi],eax
  7b64b9:	83 c4 0c             	add    esp,0xc
  7b64bc:	83 c6 10             	add    esi,0x10
  7b64bf:	83 6c 24 10 01       	sub    DWORD PTR [esp+0x10],0x1
  7b64c4:	c6 00 00             	mov    BYTE PTR [eax],0x0
  7b64c7:	0f 89 73 ff ff ff    	jns    0x7b6440
  7b64cd:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  7b64d1:	eb 0b                	jmp    0x7b64de
  7b64d3:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  7b64d7:	50                   	push   eax
  7b64d8:	52                   	push   edx
  7b64d9:	e8 f2 fb ff ff       	call   0x7b60d0
  7b64de:	8d b4 24 9c 00 00 00 	lea    esi,[esp+0x9c]
  7b64e5:	bf 06 00 00 00       	mov    edi,0x6
  7b64ea:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  7b64f0:	8b 46 f0             	mov    eax,DWORD PTR [esi-0x10]
  7b64f3:	8b 4e f8             	mov    ecx,DWORD PTR [esi-0x8]
  7b64f6:	83 ee 10             	sub    esi,0x10
  7b64f9:	2b c8                	sub    ecx,eax
  7b64fb:	83 f9 01             	cmp    ecx,0x1
  7b64fe:	7e 0d                	jle    0x7b650d
  7b6500:	85 c0                	test   eax,eax
  7b6502:	74 09                	je     0x7b650d
  7b6504:	50                   	push   eax
  7b6505:	e8 d6 df d2 ff       	call   0x4e44e0
  7b650a:	83 c4 04             	add    esp,0x4
  7b650d:	83 ef 01             	sub    edi,0x1
  7b6510:	79 de                	jns    0x7b64f0
  7b6512:	83 6c 24 14 01       	sub    DWORD PTR [esp+0x14],0x1
  7b6517:	0f 85 c3 fe ff ff    	jne    0x7b63e0
  7b651d:	eb 30                	jmp    0x7b654f
  7b651f:	56                   	push   esi
  7b6520:	8d 95 90 00 00 00    	lea    edx,[ebp+0x90]
  7b6526:	52                   	push   edx
  7b6527:	8b cd                	mov    ecx,ebp
  7b6529:	e8 12 f8 ff ff       	call   0x7b5d40
  7b652e:	eb 1f                	jmp    0x7b654f
  7b6530:	56                   	push   esi
  7b6531:	8d 85 00 01 00 00    	lea    eax,[ebp+0x100]
  7b6537:	50                   	push   eax
  7b6538:	8b cd                	mov    ecx,ebp
  7b653a:	e8 01 f8 ff ff       	call   0x7b5d40
  7b653f:	eb 0e                	jmp    0x7b654f
  7b6541:	8d 8d 70 01 00 00    	lea    ecx,[ebp+0x170]
  7b6547:	51                   	push   ecx
  7b6548:	8b ce                	mov    ecx,esi
  7b654a:	e8 61 37 ff ff       	call   0x7a9cb0
  7b654f:	81 7c 24 28 61 ea 00 	cmp    DWORD PTR [esp+0x28],0xea61
  7b6556:	00 
  7b6557:	0f 85 c3 fc ff ff    	jne    0x7b6220
  7b655d:	5f                   	pop    edi
  7b655e:	5e                   	pop    esi
  7b655f:	5d                   	pop    ebp
  7b6560:	5b                   	pop    ebx
  7b6561:	81 c4 8c 00 00 00    	add    esp,0x8c
  7b6567:	c2 04 00             	ret    0x4
