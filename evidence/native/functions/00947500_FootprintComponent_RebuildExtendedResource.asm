# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00947500, 0x0094765f); analyst name FootprintComponent_RebuildExtendedResource.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00947500 <.text+0x546500>:
  947500:	83 ec 14             	sub    esp,0x14
  947503:	53                   	push   ebx
  947504:	56                   	push   esi
  947505:	8b f1                	mov    esi,ecx
  947507:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  94750a:	57                   	push   edi
  94750b:	33 ff                	xor    edi,edi
  94750d:	3b cf                	cmp    ecx,edi
  94750f:	0f 84 32 01 00 00    	je     0x947647
  947515:	a1 90 a2 1e 01       	mov    eax,ds:0x11ea290
  94751a:	50                   	push   eax
  94751b:	e8 40 cd fe ff       	call   0x934260
  947520:	8b d8                	mov    ebx,eax
  947522:	3b df                	cmp    ebx,edi
  947524:	0f 84 1d 01 00 00    	je     0x947647
  94752a:	8b cb                	mov    ecx,ebx
  94752c:	e8 df 30 01 00       	call   0x95a610
  947531:	83 f8 01             	cmp    eax,0x1
  947534:	0f 86 0d 01 00 00    	jbe    0x947647
  94753a:	39 7e 34             	cmp    DWORD PTR [esi+0x34],edi
  94753d:	75 2d                	jne    0x94756c
  94753f:	57                   	push   edi
  947540:	57                   	push   edi
  947541:	57                   	push   edi
  947542:	57                   	push   edi
  947543:	68 44 4a 04 01       	push   0x1044a44
  947548:	6a 60                	push   0x60
  94754a:	e8 b1 cf b9 ff       	call   0x4e4500
  94754f:	83 c4 18             	add    esp,0x18
  947552:	3b c7                	cmp    eax,edi
  947554:	74 09                	je     0x94755f
  947556:	8b c8                	mov    ecx,eax
  947558:	e8 73 bc fe ff       	call   0x9331d0
  94755d:	eb 02                	jmp    0x947561
  94755f:	33 c0                	xor    eax,eax
  947561:	89 46 34             	mov    DWORD PTR [esi+0x34],eax
  947564:	8b 10                	mov    edx,DWORD PTR [eax]
  947566:	8b c8                	mov    ecx,eax
  947568:	8b 02                	mov    eax,DWORD PTR [edx]
  94756a:	ff d0                	call   eax
  94756c:	55                   	push   ebp
  94756d:	6a 01                	push   0x1
  94756f:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  947573:	51                   	push   ecx
  947574:	8b cb                	mov    ecx,ebx
  947576:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  94757a:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  94757e:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  947582:	c7 44 24 28 14 4a 04 01 	mov    DWORD PTR [esp+0x28],0x1044a14
  94758a:	e8 c1 49 01 00       	call   0x95bf50
  94758f:	39 7e 28             	cmp    DWORD PTR [esi+0x28],edi
  947592:	74 4a                	je     0x9475de
  947594:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  947597:	e8 b4 b7 fe ff       	call   0x932d50
  94759c:	8b e8                	mov    ebp,eax
  94759e:	8b cd                	mov    ecx,ebp
  9475a0:	e8 db ec ff ff       	call   0x946280
  9475a5:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  9475a8:	e8 a3 b7 fe ff       	call   0x932d50
  9475ad:	8b d8                	mov    ebx,eax
  9475af:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  9475b2:	2b 03                	sub    eax,DWORD PTR [ebx]
  9475b4:	c1 f8 06             	sar    eax,0x6
  9475b7:	74 25                	je     0x9475de
  9475b9:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  9475bd:	8d 49 00             	lea    ecx,[ecx+0x0]
  9475c0:	8b 03                	mov    eax,DWORD PTR [ebx]
  9475c2:	8d 54 24 14          	lea    edx,[esp+0x14]
  9475c6:	52                   	push   edx
  9475c7:	03 c7                	add    eax,edi
  9475c9:	50                   	push   eax
  9475ca:	55                   	push   ebp
  9475cb:	8b ce                	mov    ecx,esi
  9475cd:	e8 5e f9 ff ff       	call   0x946f30
  9475d2:	83 c7 40             	add    edi,0x40
  9475d5:	83 6c 24 10 01       	sub    DWORD PTR [esp+0x10],0x1
  9475da:	75 e4                	jne    0x9475c0
  9475dc:	33 ff                	xor    edi,edi
  9475de:	39 7e 30             	cmp    DWORD PTR [esi+0x30],edi
  9475e1:	74 4b                	je     0x94762e
  9475e3:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  9475e6:	e8 75 b7 fe ff       	call   0x932d60
  9475eb:	8b e8                	mov    ebp,eax
  9475ed:	8b cd                	mov    ecx,ebp
  9475ef:	e8 8c ec ff ff       	call   0x946280
  9475f4:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  9475f7:	e8 64 b7 fe ff       	call   0x932d60
  9475fc:	8b d8                	mov    ebx,eax
  9475fe:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  947601:	2b 03                	sub    eax,DWORD PTR [ebx]
  947603:	c1 f8 06             	sar    eax,0x6
  947606:	74 26                	je     0x94762e
  947608:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  94760c:	8d 64 24 00          	lea    esp,[esp+0x0]
  947610:	8b 13                	mov    edx,DWORD PTR [ebx]
  947612:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  947616:	51                   	push   ecx
  947617:	03 d7                	add    edx,edi
  947619:	52                   	push   edx
  94761a:	55                   	push   ebp
  94761b:	8b ce                	mov    ecx,esi
  94761d:	e8 0e f9 ff ff       	call   0x946f30
  947622:	83 c7 40             	add    edi,0x40
  947625:	83 6c 24 10 01       	sub    DWORD PTR [esp+0x10],0x1
  94762a:	75 e4                	jne    0x947610
  94762c:	33 ff                	xor    edi,edi
  94762e:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  947632:	3b c7                	cmp    eax,edi
  947634:	5d                   	pop    ebp
  947635:	74 21                	je     0x947658
  947637:	50                   	push   eax
  947638:	e8 a3 ce b9 ff       	call   0x4e44e0
  94763d:	83 c4 04             	add    esp,0x4
  947640:	5f                   	pop    edi
  947641:	5e                   	pop    esi
  947642:	5b                   	pop    ebx
  947643:	83 c4 14             	add    esp,0x14
  947646:	c3                   	ret
  947647:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  94764a:	3b cf                	cmp    ecx,edi
  94764c:	74 0a                	je     0x947658
  94764e:	8b 01                	mov    eax,DWORD PTR [ecx]
  947650:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  947653:	ff d2                	call   edx
  947655:	89 7e 34             	mov    DWORD PTR [esi+0x34],edi
  947658:	5f                   	pop    edi
  947659:	5e                   	pop    esi
  94765a:	5b                   	pop    ebx
  94765b:	83 c4 14             	add    esp,0x14
  94765e:	c3                   	ret
