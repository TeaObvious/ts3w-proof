# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00996340,0x009964a5); analyst name DownloadContent_GetImportedSimResourceKeys.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00996340 <.text+0x595340>:
  996340:	83 ec 60             	sub    esp,0x60
  996343:	53                   	push   ebx
  996344:	56                   	push   esi
  996345:	33 db                	xor    ebx,ebx
  996347:	e8 34 9b b1 ff       	call   0x4afe80
  99634c:	8b f0                	mov    esi,eax
  99634e:	85 f6                	test   esi,esi
  996350:	75 06                	jne    0x996358
  996352:	5e                   	pop    esi
  996353:	5b                   	pop    ebx
  996354:	83 c4 60             	add    esp,0x60
  996357:	c3                   	ret
  996358:	38 5c 24 70          	cmp    BYTE PTR [esp+0x70],bl
  99635c:	57                   	push   edi
  99635d:	c7 44 24 0c f0 9e 04 01 	mov    DWORD PTR [esp+0xc],0x1049ef0
  996365:	c7 44 24 10 f8 9e 04 01 	mov    DWORD PTR [esp+0x10],0x1049ef8
  99636d:	8d 7c 24 0c          	lea    edi,[esp+0xc]
  996371:	74 04                	je     0x996377
  996373:	8d 7c 24 10          	lea    edi,[esp+0x10]
  996377:	8d 44 24 14          	lea    eax,[esp+0x14]
  99637b:	50                   	push   eax
  99637c:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  996380:	c7 44 24 18 08 a0 04 01 	mov    DWORD PTR [esp+0x18],0x104a008
  996388:	e8 73 31 e4 ff       	call   0x7d9500
  99638d:	8b 16                	mov    edx,DWORD PTR [esi]
  99638f:	8b 52 20             	mov    edx,DWORD PTR [edx+0x20]
  996392:	6a 00                	push   0x0
  996394:	57                   	push   edi
  996395:	8d 44 24 20          	lea    eax,[esp+0x20]
  996399:	50                   	push   eax
  99639a:	8b ce                	mov    ecx,esi
  99639c:	ff d2                	call   edx
  99639e:	85 c0                	test   eax,eax
  9963a0:	0f 86 e5 00 00 00    	jbe    0x99648b
  9963a6:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  9963aa:	2b 5c 24 18          	sub    ebx,DWORD PTR [esp+0x18]
  9963ae:	68 10 9f 04 01       	push   0x1049f10
  9963b3:	6a 00                	push   0x0
  9963b5:	c1 fb 04             	sar    ebx,0x4
  9963b8:	6a 01                	push   0x1
  9963ba:	8b f3                	mov    esi,ebx
  9963bc:	c1 e6 04             	shl    esi,0x4
  9963bf:	6a 00                	push   0x0
  9963c1:	83 c6 04             	add    esi,0x4
  9963c4:	56                   	push   esi
  9963c5:	6a 00                	push   0x0
  9963c7:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  9963cb:	e8 f0 90 b4 ff       	call   0x4df4c0
  9963d0:	6a 01                	push   0x1
  9963d2:	8d 44 24 44          	lea    eax,[esp+0x44]
  9963d6:	50                   	push   eax
  9963d7:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  9963db:	e8 00 30 e4 ff       	call   0x7d93e0
  9963e0:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  9963e4:	51                   	push   ecx
  9963e5:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  9963e9:	e8 12 26 e4 ff       	call   0x7d8a00
  9963ee:	84 c0                	test   al,al
  9963f0:	75 40                	jne    0x996432
  9963f2:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  9963f6:	e8 95 15 e4 ff       	call   0x7d7990
  9963fb:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  9963ff:	85 c9                	test   ecx,ecx
  996401:	c7 44 24 40 00 6c fb 00 	mov    DWORD PTR [esp+0x40],0xfb6c00
  996409:	74 05                	je     0x996410
  99640b:	e8 f0 89 b4 ff       	call   0x4dee00
  996410:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  996414:	85 c0                	test   eax,eax
  996416:	c7 44 24 40 04 aa fa 00 	mov    DWORD PTR [esp+0x40],0xfaaa04
  99641e:	74 09                	je     0x996429
  996420:	50                   	push   eax
  996421:	e8 ba e0 b4 ff       	call   0x4e44e0
  996426:	83 c4 04             	add    esp,0x4
  996429:	5f                   	pop    edi
  99642a:	5e                   	pop    esi
  99642b:	33 c0                	xor    eax,eax
  99642d:	5b                   	pop    ebx
  99642e:	83 c4 60             	add    esp,0x60
  996431:	c3                   	ret
  996432:	55                   	push   ebp
  996433:	e8 58 2f dd ff       	call   0x769390
  996438:	8b 6c 24 74          	mov    ebp,DWORD PTR [esp+0x74]
  99643c:	8b f8                	mov    edi,eax
  99643e:	8b 17                	mov    edx,DWORD PTR [edi]
  996440:	8b 82 80 00 00 00    	mov    eax,DWORD PTR [edx+0x80]
  996446:	56                   	push   esi
  996447:	55                   	push   ebp
  996448:	8b cf                	mov    ecx,edi
  99644a:	ff d0                	call   eax
  99644c:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  996450:	85 c0                	test   eax,eax
  996452:	74 05                	je     0x996459
  996454:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  996457:	eb 02                	jmp    0x99645b
  996459:	33 c0                	xor    eax,eax
  99645b:	8b 17                	mov    edx,DWORD PTR [edi]
  99645d:	56                   	push   esi
  99645e:	6a 00                	push   0x0
  996460:	50                   	push   eax
  996461:	8b 82 98 00 00 00    	mov    eax,DWORD PTR [edx+0x98]
  996467:	55                   	push   ebp
  996468:	8b cf                	mov    ecx,edi
  99646a:	ff d0                	call   eax
  99646c:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  996470:	e8 1b 15 e4 ff       	call   0x7d7990
  996475:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  996479:	85 c9                	test   ecx,ecx
  99647b:	c7 44 24 44 00 6c fb 00 	mov    DWORD PTR [esp+0x44],0xfb6c00
  996483:	5d                   	pop    ebp
  996484:	74 05                	je     0x99648b
  996486:	e8 75 89 b4 ff       	call   0x4dee00
  99648b:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  99648f:	85 c0                	test   eax,eax
  996491:	74 09                	je     0x99649c
  996493:	50                   	push   eax
  996494:	e8 47 e0 b4 ff       	call   0x4e44e0
  996499:	83 c4 04             	add    esp,0x4
  99649c:	5f                   	pop    edi
  99649d:	5e                   	pop    esi
  99649e:	8b c3                	mov    eax,ebx
  9964a0:	5b                   	pop    ebx
  9964a1:	83 c4 60             	add    esp,0x60
  9964a4:	c3                   	ret
