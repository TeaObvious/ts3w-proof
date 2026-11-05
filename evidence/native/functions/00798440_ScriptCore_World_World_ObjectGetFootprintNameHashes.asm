# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00798440, 0x0079855d); analyst name World_ObjectGetFootprintNameHashes.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00798440 <.text+0x397440>:
  798440:	83 ec 14             	sub    esp,0x14
  798443:	56                   	push   esi
  798444:	33 f6                	xor    esi,esi
  798446:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  79844a:	e8 21 f1 19 00       	call   0x937570
  79844f:	3b c6                	cmp    eax,esi
  798451:	0f 84 fd 00 00 00    	je     0x798554
  798457:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  79845b:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  79845f:	51                   	push   ecx
  798460:	52                   	push   edx
  798461:	8b c8                	mov    ecx,eax
  798463:	e8 18 fb 19 00       	call   0x937f80
  798468:	3b c6                	cmp    eax,esi
  79846a:	0f 84 e4 00 00 00    	je     0x798554
  798470:	8b 0d a8 9f 1e 01    	mov    ecx,DWORD PTR ds:0x11e9fa8
  798476:	51                   	push   ecx
  798477:	8b c8                	mov    ecx,eax
  798479:	e8 e2 bd 19 00       	call   0x934260
  79847e:	3b c6                	cmp    eax,esi
  798480:	0f 84 ce 00 00 00    	je     0x798554
  798486:	8b 48 28             	mov    ecx,DWORD PTR [eax+0x28]
  798489:	3b ce                	cmp    ecx,esi
  79848b:	0f 84 c3 00 00 00    	je     0x798554
  798491:	53                   	push   ebx
  798492:	55                   	push   ebp
  798493:	33 db                	xor    ebx,ebx
  798495:	57                   	push   edi
  798496:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  79849a:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  79849e:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  7984a2:	c7 44 24 20 28 1c 01 01 	mov    DWORD PTR [esp+0x20],0x1011c28
  7984aa:	e8 a1 a8 19 00       	call   0x932d50
  7984af:	8b 68 04             	mov    ebp,DWORD PTR [eax+0x4]
  7984b2:	8b 38                	mov    edi,DWORD PTR [eax]
  7984b4:	3b fd                	cmp    edi,ebp
  7984b6:	74 4c                	je     0x798504
  7984b8:	3b de                	cmp    ebx,esi
  7984ba:	8b c3                	mov    eax,ebx
  7984bc:	74 13                	je     0x7984d1
  7984be:	8b 0f                	mov    ecx,DWORD PTR [edi]
  7984c0:	39 08                	cmp    DWORD PTR [eax],ecx
  7984c2:	74 09                	je     0x7984cd
  7984c4:	83 c0 04             	add    eax,0x4
  7984c7:	3b c6                	cmp    eax,esi
  7984c9:	75 f5                	jne    0x7984c0
  7984cb:	eb 04                	jmp    0x7984d1
  7984cd:	3b c6                	cmp    eax,esi
  7984cf:	75 2c                	jne    0x7984fd
  7984d1:	3b 74 24 1c          	cmp    esi,DWORD PTR [esp+0x1c]
  7984d5:	73 13                	jae    0x7984ea
  7984d7:	8b c6                	mov    eax,esi
  7984d9:	83 c6 04             	add    esi,0x4
  7984dc:	85 c0                	test   eax,eax
  7984de:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  7984e2:	74 19                	je     0x7984fd
  7984e4:	8b 17                	mov    edx,DWORD PTR [edi]
  7984e6:	89 10                	mov    DWORD PTR [eax],edx
  7984e8:	eb 13                	jmp    0x7984fd
  7984ea:	57                   	push   edi
  7984eb:	56                   	push   esi
  7984ec:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  7984f0:	e8 2b 9f 1e 00       	call   0x982420
  7984f5:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  7984f9:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  7984fd:	83 c7 40             	add    edi,0x40
  798500:	3b fd                	cmp    edi,ebp
  798502:	75 b4                	jne    0x7984b8
  798504:	e8 87 0e fd ff       	call   0x769390
  798509:	8b f8                	mov    edi,eax
  79850b:	85 ff                	test   edi,edi
  79850d:	74 2c                	je     0x79853b
  79850f:	8b 07                	mov    eax,DWORD PTR [edi]
  798511:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
  798517:	2b f3                	sub    esi,ebx
  798519:	c1 fe 02             	sar    esi,0x2
  79851c:	56                   	push   esi
  79851d:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  798521:	51                   	push   ecx
  798522:	8b cf                	mov    ecx,edi
  798524:	ff d2                	call   edx
  798526:	8b 07                	mov    eax,DWORD PTR [edi]
  798528:	8b 90 9c 00 00 00    	mov    edx,DWORD PTR [eax+0x9c]
  79852e:	56                   	push   esi
  79852f:	6a 00                	push   0x0
  798531:	53                   	push   ebx
  798532:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  798536:	51                   	push   ecx
  798537:	8b cf                	mov    ecx,edi
  798539:	ff d2                	call   edx
  79853b:	85 db                	test   ebx,ebx
  79853d:	74 09                	je     0x798548
  79853f:	53                   	push   ebx
  798540:	e8 9b bf d4 ff       	call   0x4e44e0
  798545:	83 c4 04             	add    esp,0x4
  798548:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  79854c:	5f                   	pop    edi
  79854d:	5d                   	pop    ebp
  79854e:	5b                   	pop    ebx
  79854f:	5e                   	pop    esi
  798550:	83 c4 14             	add    esp,0x14
  798553:	c3                   	ret
  798554:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  798558:	5e                   	pop    esi
  798559:	83 c4 14             	add    esp,0x14
  79855c:	c3                   	ret
