# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00599380, 0x005995f8).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00599380 <.text+0x198380>:
  599380:	83 ec 2c             	sub    esp,0x2c
  599383:	53                   	push   ebx
  599384:	55                   	push   ebp
  599385:	57                   	push   edi
  599386:	e8 e5 ed 14 00       	call   0x6e8170
  59938b:	33 ed                	xor    ebp,ebp
  59938d:	33 db                	xor    ebx,ebx
  59938f:	3b c5                	cmp    eax,ebp
  599391:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  599395:	74 09                	je     0x5993a0
  599397:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
  59939a:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  59939e:	8b d8                	mov    ebx,eax
  5993a0:	e8 eb 1b f7 ff       	call   0x50af90
  5993a5:	8b f8                	mov    edi,eax
  5993a7:	3b fd                	cmp    edi,ebp
  5993a9:	0f 84 04 02 00 00    	je     0x5995b3
  5993af:	56                   	push   esi
  5993b0:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
  5993b4:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  5993b7:	83 c0 ff             	add    eax,0xffffffff
  5993ba:	83 f8 06             	cmp    eax,0x6
  5993bd:	0f 87 ef 01 00 00    	ja     0x5995b2
  5993c3:	ff 24 85 f8 95 59 00 	jmp    DWORD PTR [eax*4+0x5995f8]
  5993ca:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  5993cd:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  5993d0:	51                   	push   ecx
  5993d1:	52                   	push   edx
  5993d2:	8d 44 24 38          	lea    eax,[esp+0x38]
  5993d6:	50                   	push   eax
  5993d7:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  5993db:	51                   	push   ecx
  5993dc:	c7 44 24 38 08 00 00 	mov    DWORD PTR [esp+0x38],0x8
  5993e3:	00
  5993e4:	e8 87 fe ff ff       	call   0x599270
  5993e9:	0f b6 56 1c          	movzx  edx,BYTE PTR [esi+0x1c]
  5993ed:	52                   	push   edx
  5993ee:	e8 ad fa ff ff       	call   0x598ea0
  5993f3:	8b 6c 24 58          	mov    ebp,DWORD PTR [esp+0x58]
  5993f7:	83 c4 14             	add    esp,0x14
  5993fa:	8d 5d 18             	lea    ebx,[ebp+0x18]
  5993fd:	68 dc a6 fd 00       	push   0xfda6dc
  599402:	8b cb                	mov    ecx,ebx
  599404:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  599408:	e8 f3 87 f4 ff       	call   0x4e1c00
  59940d:	8b 4d 50             	mov    ecx,DWORD PTR [ebp+0x50]
  599410:	8a 45 60             	mov    al,BYTE PTR [ebp+0x60]
  599413:	8b 6d 54             	mov    ebp,DWORD PTR [ebp+0x54]
  599416:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  59941a:	8b cb                	mov    ecx,ebx
  59941c:	88 44 24 13          	mov    BYTE PTR [esp+0x13],al
  599420:	e8 9b 88 f4 ff       	call   0x4e1cc0
  599425:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  59942a:	74 42                	je     0x59946e
  59942c:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  599430:	3b 5e 0c             	cmp    ebx,DWORD PTR [esi+0xc]
  599433:	75 09                	jne    0x59943e
  599435:	3b 6e 10             	cmp    ebp,DWORD PTR [esi+0x10]
  599438:	0f 84 74 01 00 00    	je     0x5995b2
  59943e:	8b 17                	mov    edx,DWORD PTR [edi]
  599440:	8b 52 38             	mov    edx,DWORD PTR [edx+0x38]
  599443:	8d 44 24 20          	lea    eax,[esp+0x20]
  599447:	50                   	push   eax
  599448:	8b cf                	mov    ecx,edi
  59944a:	ff d2                	call   edx
  59944c:	8b 0d d0 eb 1c 01    	mov    ecx,DWORD PTR ds:0x11cebd0
  599452:	85 c9                	test   ecx,ecx
  599454:	0f 84 58 01 00 00    	je     0x5995b2
  59945a:	8b 01                	mov    eax,DWORD PTR [ecx]
  59945c:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
  599462:	55                   	push   ebp
  599463:	53                   	push   ebx
  599464:	ff d2                	call   edx
  599466:	5e                   	pop    esi
  599467:	5f                   	pop    edi
  599468:	5d                   	pop    ebp
  599469:	5b                   	pop    ebx
  59946a:	83 c4 2c             	add    esp,0x2c
  59946d:	c3                   	ret
  59946e:	8b 07                	mov    eax,DWORD PTR [edi]
  599470:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
  599473:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  599477:	51                   	push   ecx
  599478:	8b cf                	mov    ecx,edi
  59947a:	ff d2                	call   edx
  59947c:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  599480:	85 c9                	test   ecx,ecx
  599482:	0f 84 2a 01 00 00    	je     0x5995b2
  599488:	f3 0f 2c 44 24 30    	cvttss2si eax,DWORD PTR [esp+0x30]
  59948e:	f3 0f 2c 54 24 2c    	cvttss2si edx,DWORD PTR [esp+0x2c]
  599494:	50                   	push   eax
  599495:	52                   	push   edx
  599496:	e8 75 58 14 00       	call   0x6ded10
  59949b:	5e                   	pop    esi
  59949c:	5f                   	pop    edi
  59949d:	5d                   	pop    ebp
  59949e:	5b                   	pop    ebx
  59949f:	83 c4 2c             	add    esp,0x2c
  5994a2:	c3                   	ret
  5994a3:	0f b6 46 10          	movzx  eax,BYTE PTR [esi+0x10]
  5994a7:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  5994aa:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  5994ad:	f6 d8                	neg    al
  5994af:	52                   	push   edx
  5994b0:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
  5994b4:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  5994b8:	8d 54 24 30          	lea    edx,[esp+0x30]
  5994bc:	1b c0                	sbb    eax,eax
  5994be:	83 c0 07             	add    eax,0x7
  5994c1:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  5994c5:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  5994c8:	50                   	push   eax
  5994c9:	51                   	push   ecx
  5994ca:	52                   	push   edx
  5994cb:	e8 a0 fd ff ff       	call   0x599270
  5994d0:	0f b6 46 1c          	movzx  eax,BYTE PTR [esi+0x1c]
  5994d4:	50                   	push   eax
  5994d5:	e8 c6 f9 ff ff       	call   0x598ea0
  5994da:	8b 17                	mov    edx,DWORD PTR [edi]
  5994dc:	8b 52 38             	mov    edx,DWORD PTR [edx+0x38]
  5994df:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  5994e3:	83 c4 14             	add    esp,0x14
  5994e6:	8d 44 24 20          	lea    eax,[esp+0x20]
  5994ea:	50                   	push   eax
  5994eb:	8b cf                	mov    ecx,edi
  5994ed:	ff d2                	call   edx
  5994ef:	3b dd                	cmp    ebx,ebp
  5994f1:	0f 84 bb 00 00 00    	je     0x5995b2
  5994f7:	f3 0f 2c 44 24 30    	cvttss2si eax,DWORD PTR [esp+0x30]
  5994fd:	f3 0f 2c 4c 24 2c    	cvttss2si ecx,DWORD PTR [esp+0x2c]
  599503:	50                   	push   eax
  599504:	51                   	push   ecx
  599505:	8b cb                	mov    ecx,ebx
  599507:	e8 04 58 14 00       	call   0x6ded10
  59950c:	5e                   	pop    esi
  59950d:	5f                   	pop    edi
  59950e:	5d                   	pop    ebp
  59950f:	5b                   	pop    ebx
  599510:	83 c4 2c             	add    esp,0x2c
  599513:	c3                   	ret
  599514:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  599517:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  59951a:	52                   	push   edx
  59951b:	50                   	push   eax
  59951c:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  599520:	51                   	push   ecx
  599521:	8d 54 24 38          	lea    edx,[esp+0x38]
  599525:	52                   	push   edx
  599526:	c7 44 24 38 09 00 00 	mov    DWORD PTR [esp+0x38],0x9
  59952d:	00
  59952e:	e8 3d fd ff ff       	call   0x599270
  599533:	0f b6 4e 1c          	movzx  ecx,BYTE PTR [esi+0x1c]
  599537:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  59953a:	51                   	push   ecx
  59953b:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  59953f:	e8 5c f9 ff ff       	call   0x598ea0
  599544:	8b 17                	mov    edx,DWORD PTR [edi]
  599546:	8b 52 38             	mov    edx,DWORD PTR [edx+0x38]
  599549:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  59954d:	83 c4 14             	add    esp,0x14
  599550:	8d 44 24 20          	lea    eax,[esp+0x20]
  599554:	50                   	push   eax
  599555:	8b cf                	mov    ecx,edi
  599557:	ff d2                	call   edx
  599559:	3b dd                	cmp    ebx,ebp
  59955b:	74 55                	je     0x5995b2
  59955d:	f3 0f 2c 44 24 30    	cvttss2si eax,DWORD PTR [esp+0x30]
  599563:	f3 0f 2c 4c 24 2c    	cvttss2si ecx,DWORD PTR [esp+0x2c]
  599569:	50                   	push   eax
  59956a:	51                   	push   ecx
  59956b:	8b cb                	mov    ecx,ebx
  59956d:	e8 9e 57 14 00       	call   0x6ded10
  599572:	5e                   	pop    esi
  599573:	5f                   	pop    edi
  599574:	5d                   	pop    ebp
  599575:	5b                   	pop    ebx
  599576:	83 c4 2c             	add    esp,0x2c
  599579:	c3                   	ret
  59957a:	8a 56 11             	mov    dl,BYTE PTR [esi+0x11]
  59957d:	0f b6 46 10          	movzx  eax,BYTE PTR [esi+0x10]
  599581:	f6 da                	neg    dl
  599583:	50                   	push   eax
  599584:	89 6c 24 30          	mov    DWORD PTR [esp+0x30],ebp
  599588:	1b d2                	sbb    edx,edx
  59958a:	83 c2 02             	add    edx,0x2
  59958d:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  599591:	e8 0a f9 ff ff       	call   0x598ea0
  599596:	83 c4 04             	add    esp,0x4
  599599:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  59959d:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  5995a0:	89 4c 24 30          	mov    DWORD PTR [esp+0x30],ecx
  5995a4:	8b 17                	mov    edx,DWORD PTR [edi]
  5995a6:	8b 52 38             	mov    edx,DWORD PTR [edx+0x38]
  5995a9:	8d 44 24 20          	lea    eax,[esp+0x20]
  5995ad:	50                   	push   eax
  5995ae:	8b cf                	mov    ecx,edi
  5995b0:	ff d2                	call   edx
  5995b2:	5e                   	pop    esi
  5995b3:	5f                   	pop    edi
  5995b4:	5d                   	pop    ebp
  5995b5:	5b                   	pop    ebx
  5995b6:	83 c4 2c             	add    esp,0x2c
  5995b9:	c3                   	ret
  5995ba:	0f b6 46 10          	movzx  eax,BYTE PTR [esi+0x10]
  5995be:	50                   	push   eax
  5995bf:	c7 44 24 2c 05 00 00 	mov    DWORD PTR [esp+0x2c],0x5
  5995c6:	00
  5995c7:	89 6c 24 30          	mov    DWORD PTR [esp+0x30],ebp
  5995cb:	e8 d0 f8 ff ff       	call   0x598ea0
  5995d0:	83 c4 04             	add    esp,0x4
  5995d3:	80 3d c4 f2 1c 01 00 	cmp    BYTE PTR ds:0x11cf2c4,0x0
  5995da:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  5995de:	74 bd                	je     0x59959d
  5995e0:	8b 76 0c             	mov    esi,DWORD PTR [esi+0xc]
  5995e3:	83 fe 7f             	cmp    esi,0x7f
  5995e6:	76 0a                	jbe    0x5995f2
  5995e8:	c7 44 24 30 20 00 00 	mov    DWORD PTR [esp+0x30],0x20
  5995ef:	00
  5995f0:	eb b2                	jmp    0x5995a4
  5995f2:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
  5995f6:	eb ac                	jmp    0x5995a4
