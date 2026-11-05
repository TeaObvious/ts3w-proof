# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00943430 <.text+0x542430>:
  943430:	83 ec 2c             	sub    esp,0x2c
  943433:	55                   	push   ebp
  943434:	8b e9                	mov    ebp,ecx
  943436:	80 7d 4c 00          	cmp    BYTE PTR [ebp+0x4c],0x0
  94343a:	0f 85 d9 00 00 00    	jne    0x943519
  943440:	56                   	push   esi
  943441:	8d 75 20             	lea    esi,[ebp+0x20]
  943444:	c6 45 4c 01          	mov    BYTE PTR [ebp+0x4c],0x1
  943448:	8b 06                	mov    eax,DWORD PTR [esi]
  94344a:	3b 46 04             	cmp    eax,DWORD PTR [esi+0x4]
  94344d:	0f 84 bc 00 00 00    	je     0x94350f
  943453:	57                   	push   edi
  943454:	56                   	push   esi
  943455:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  943459:	e8 82 ff ff ff       	call   0x9433e0
  94345e:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  943461:	8b 16                	mov    edx,DWORD PTR [esi]
  943463:	51                   	push   ecx
  943464:	52                   	push   edx
  943465:	8b ce                	mov    ecx,esi
  943467:	e8 04 f0 ff ff       	call   0x942470
  94346c:	8b 06                	mov    eax,DWORD PTR [esi]
  94346e:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  943472:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  943475:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  943479:	3b f8                	cmp    edi,eax
  94347b:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  94347f:	74 6b                	je     0x9434ec
  943481:	53                   	push   ebx
  943482:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  943485:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
  943488:	8d 5f 04             	lea    ebx,[edi+0x4]
  94348b:	74 1b                	je     0x9434a8
  94348d:	8b 07                	mov    eax,DWORD PTR [edi]
  94348f:	a9 00 00 00 40       	test   eax,0x40000000
  943494:	75 12                	jne    0x9434a8
  943496:	25 ff ff ff 3f       	and    eax,0x3fffffff
  94349b:	50                   	push   eax
  94349c:	6a 00                	push   0x0
  94349e:	6a 01                	push   0x1
  9434a0:	51                   	push   ecx
  9434a1:	8b cd                	mov    ecx,ebp
  9434a3:	e8 78 f8 ff ff       	call   0x942d20
  9434a8:	f7 07 00 00 00 40    	test   DWORD PTR [edi],0x40000000
  9434ae:	74 2a                	je     0x9434da
  9434b0:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  9434b3:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  9434b6:	73 19                	jae    0x9434d1
  9434b8:	85 c0                	test   eax,eax
  9434ba:	8d 48 14             	lea    ecx,[eax+0x14]
  9434bd:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  9434c0:	74 18                	je     0x9434da
  9434c2:	8b 17                	mov    edx,DWORD PTR [edi]
  9434c4:	53                   	push   ebx
  9434c5:	8d 48 04             	lea    ecx,[eax+0x4]
  9434c8:	89 10                	mov    DWORD PTR [eax],edx
  9434ca:	e8 f1 24 ac ff       	call   0x4059c0
  9434cf:	eb 09                	jmp    0x9434da
  9434d1:	57                   	push   edi
  9434d2:	50                   	push   eax
  9434d3:	8b ce                	mov    ecx,esi
  9434d5:	e8 c6 f2 ff ff       	call   0x9427a0
  9434da:	83 c7 14             	add    edi,0x14
  9434dd:	3b 7c 24 10          	cmp    edi,DWORD PTR [esp+0x10]
  9434e1:	75 9f                	jne    0x943482
  9434e3:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  9434e7:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  9434eb:	5b                   	pop    ebx
  9434ec:	50                   	push   eax
  9434ed:	57                   	push   edi
  9434ee:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  9434f2:	e8 79 ef ff ff       	call   0x942470
  9434f7:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  9434fb:	85 c0                	test   eax,eax
  9434fd:	5f                   	pop    edi
  9434fe:	74 0f                	je     0x94350f
  943500:	3b 44 24 1c          	cmp    eax,DWORD PTR [esp+0x1c]
  943504:	74 09                	je     0x94350f
  943506:	50                   	push   eax
  943507:	e8 d4 0f ba ff       	call   0x4e44e0
  94350c:	83 c4 04             	add    esp,0x4
  94350f:	5e                   	pop    esi
  943510:	b0 01                	mov    al,0x1
  943512:	5d                   	pop    ebp
  943513:	83 c4 2c             	add    esp,0x2c
  943516:	c2 04 00             	ret    0x4
  943519:	b0 01                	mov    al,0x1
  94351b:	5d                   	pop    ebp
  94351c:	83 c4 2c             	add    esp,0x2c
  94351f:	c2 04 00             	ret    0x4
