# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00950410 <.text+0x54f410>:
  950410:	53                   	push   ebx
  950411:	56                   	push   esi
  950412:	8b f1                	mov    esi,ecx
  950414:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  950417:	33 db                	xor    ebx,ebx
  950419:	3b cb                	cmp    ecx,ebx
  95041b:	57                   	push   edi
  95041c:	74 1b                	je     0x950439
  95041e:	39 59 fc             	cmp    DWORD PTR [ecx-0x4],ebx
  950421:	8d 41 fc             	lea    eax,[ecx-0x4]
  950424:	74 0a                	je     0x950430
  950426:	8b 01                	mov    eax,DWORD PTR [ecx]
  950428:	8b 10                	mov    edx,DWORD PTR [eax]
  95042a:	6a 03                	push   0x3
  95042c:	ff d2                	call   edx
  95042e:	eb 09                	jmp    0x950439
  950430:	50                   	push   eax
  950431:	e8 aa 40 b9 ff       	call   0x4e44e0
  950436:	83 c4 04             	add    esp,0x4
  950439:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  95043c:	3b cb                	cmp    ecx,ebx
  95043e:	89 5e 0c             	mov    DWORD PTR [esi+0xc],ebx
  950441:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
  950444:	74 1b                	je     0x950461
  950446:	39 59 fc             	cmp    DWORD PTR [ecx-0x4],ebx
  950449:	8d 41 fc             	lea    eax,[ecx-0x4]
  95044c:	74 0a                	je     0x950458
  95044e:	8b 01                	mov    eax,DWORD PTR [ecx]
  950450:	8b 10                	mov    edx,DWORD PTR [eax]
  950452:	6a 03                	push   0x3
  950454:	ff d2                	call   edx
  950456:	eb 09                	jmp    0x950461
  950458:	50                   	push   eax
  950459:	e8 82 40 b9 ff       	call   0x4e44e0
  95045e:	83 c4 04             	add    esp,0x4
  950461:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  950464:	3b cb                	cmp    ecx,ebx
  950466:	89 5e 14             	mov    DWORD PTR [esi+0x14],ebx
  950469:	89 5e 10             	mov    DWORD PTR [esi+0x10],ebx
  95046c:	74 1b                	je     0x950489
  95046e:	39 59 fc             	cmp    DWORD PTR [ecx-0x4],ebx
  950471:	8d 41 fc             	lea    eax,[ecx-0x4]
  950474:	74 0a                	je     0x950480
  950476:	8b 01                	mov    eax,DWORD PTR [ecx]
  950478:	8b 10                	mov    edx,DWORD PTR [eax]
  95047a:	6a 03                	push   0x3
  95047c:	ff d2                	call   edx
  95047e:	eb 09                	jmp    0x950489
  950480:	50                   	push   eax
  950481:	e8 5a 40 b9 ff       	call   0x4e44e0
  950486:	83 c4 04             	add    esp,0x4
  950489:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  95048c:	3b cb                	cmp    ecx,ebx
  95048e:	89 5e 1c             	mov    DWORD PTR [esi+0x1c],ebx
  950491:	89 5e 18             	mov    DWORD PTR [esi+0x18],ebx
  950494:	74 1b                	je     0x9504b1
  950496:	39 59 fc             	cmp    DWORD PTR [ecx-0x4],ebx
  950499:	8d 41 fc             	lea    eax,[ecx-0x4]
  95049c:	74 0a                	je     0x9504a8
  95049e:	8b 01                	mov    eax,DWORD PTR [ecx]
  9504a0:	8b 10                	mov    edx,DWORD PTR [eax]
  9504a2:	6a 03                	push   0x3
  9504a4:	ff d2                	call   edx
  9504a6:	eb 09                	jmp    0x9504b1
  9504a8:	50                   	push   eax
  9504a9:	e8 32 40 b9 ff       	call   0x4e44e0
  9504ae:	83 c4 04             	add    esp,0x4
  9504b1:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  9504b4:	3b cb                	cmp    ecx,ebx
  9504b6:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  9504b9:	74 1b                	je     0x9504d6
  9504bb:	39 59 fc             	cmp    DWORD PTR [ecx-0x4],ebx
  9504be:	8d 41 fc             	lea    eax,[ecx-0x4]
  9504c1:	74 0a                	je     0x9504cd
  9504c3:	8b 01                	mov    eax,DWORD PTR [ecx]
  9504c5:	8b 10                	mov    edx,DWORD PTR [eax]
  9504c7:	6a 03                	push   0x3
  9504c9:	ff d2                	call   edx
  9504cb:	eb 09                	jmp    0x9504d6
  9504cd:	50                   	push   eax
  9504ce:	e8 0d 40 b9 ff       	call   0x4e44e0
  9504d3:	83 c4 04             	add    esp,0x4
  9504d6:	89 5e 2c             	mov    DWORD PTR [esi+0x2c],ebx
  9504d9:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  9504dc:	8b 46 58             	mov    eax,DWORD PTR [esi+0x58]
  9504df:	2b 46 54             	sub    eax,DWORD PTR [esi+0x54]
  9504e2:	33 ff                	xor    edi,edi
  9504e4:	c1 f8 02             	sar    eax,0x2
  9504e7:	74 3d                	je     0x950526
  9504e9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  9504f0:	8b 4e 54             	mov    ecx,DWORD PTR [esi+0x54]
  9504f3:	8b 0c b9             	mov    ecx,DWORD PTR [ecx+edi*4]
  9504f6:	8b 11                	mov    edx,DWORD PTR [ecx]
  9504f8:	8b 02                	mov    eax,DWORD PTR [edx]
  9504fa:	53                   	push   ebx
  9504fb:	ff d0                	call   eax
  9504fd:	8b 4e 54             	mov    ecx,DWORD PTR [esi+0x54]
  950500:	8b 04 b9             	mov    eax,DWORD PTR [ecx+edi*4]
  950503:	8b 15 28 a1 1e 01    	mov    edx,DWORD PTR ds:0x11ea128
  950509:	89 10                	mov    DWORD PTR [eax],edx
  95050b:	a3 28 a1 1e 01       	mov    ds:0x11ea128,eax
  950510:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  950513:	89 1c b8             	mov    DWORD PTR [eax+edi*4],ebx
  950516:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  950519:	2b 4e 54             	sub    ecx,DWORD PTR [esi+0x54]
  95051c:	83 c7 01             	add    edi,0x1
  95051f:	c1 f9 02             	sar    ecx,0x2
  950522:	3b f9                	cmp    edi,ecx
  950524:	72 ca                	jb     0x9504f0
  950526:	8b 56 54             	mov    edx,DWORD PTR [esi+0x54]
  950529:	5f                   	pop    edi
  95052a:	89 56 58             	mov    DWORD PTR [esi+0x58],edx
  95052d:	5e                   	pop    esi
  95052e:	5b                   	pop    ebx
  95052f:	c3                   	ret
