# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00638450,0x00638705); analyst name LotRouteGraph_AddPortalLocationVariant.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00638450 <.text+0x237450>:
  638450:	83 ec 54             	sub    esp,0x54
  638453:	53                   	push   ebx
  638454:	55                   	push   ebp
  638455:	56                   	push   esi
  638456:	57                   	push   edi
  638457:	8b f9                	mov    edi,ecx
  638459:	80 bf 0d 01 00 00 00 	cmp    BYTE PTR [edi+0x10d],0x0
  638460:	0f 85 93 02 00 00    	jne    0x6386f9
  638466:	8b 74 24 68          	mov    esi,DWORD PTR [esp+0x68]
  63846a:	85 f6                	test   esi,esi
  63846c:	0f 84 87 02 00 00    	je     0x6386f9
  638472:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  638475:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  638478:	51                   	push   ecx
  638479:	50                   	push   eax
  63847a:	8b cf                	mov    ecx,edi
  63847c:	e8 df 0e ff ff       	call   0x629360
  638481:	84 c0                	test   al,al
  638483:	0f 84 70 02 00 00    	je     0x6386f9
  638489:	8b 6c 24 74          	mov    ebp,DWORD PTR [esp+0x74]
  63848d:	85 ed                	test   ebp,ebp
  63848f:	0f 84 64 02 00 00    	je     0x6386f9
  638495:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  638498:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  63849b:	8d 54 24 24          	lea    edx,[esp+0x24]
  63849f:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  6384a3:	52                   	push   edx
  6384a4:	8d 4f 48             	lea    ecx,[edi+0x48]
  6384a7:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  6384ab:	e8 20 6e ff ff       	call   0x62f2d0
  6384b0:	80 bc 24 b0 00 00 00 00 	cmp    BYTE PTR [esp+0xb0],0x0
  6384b8:	f3 0f 10 44 24 78    	movss  xmm0,DWORD PTR [esp+0x78]
  6384be:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  6384c4:	f3 0f 10 44 24 7c    	movss  xmm0,DWORD PTR [esp+0x7c]
  6384ca:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  6384d0:	f3 0f 10 84 24 84 00 00 00 	movss  xmm0,DWORD PTR [esp+0x84]
  6384d9:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6384df:	f3 0f 10 84 24 88 00 00 00 	movss  xmm0,DWORD PTR [esp+0x88]
  6384e8:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  6384ee:	f3 0f 10 84 24 90 00 00 00 	movss  xmm0,DWORD PTR [esp+0x90]
  6384f7:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6384fd:	f3 0f 10 84 24 94 00 00 00 	movss  xmm0,DWORD PTR [esp+0x94]
  638506:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  63850c:	f3 0f 10 84 24 9c 00 00 00 	movss  xmm0,DWORD PTR [esp+0x9c]
  638515:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  63851b:	f3 0f 10 84 24 a0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa0]
  638524:	f3 0f 11 44 24 74    	movss  DWORD PTR [esp+0x74],xmm0
  63852a:	0f 85 c1 00 00 00    	jne    0x6385f1
  638530:	d9 44 24 7c          	fld    DWORD PTR [esp+0x7c]
  638534:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  638537:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  63853a:	8d 54 24 24          	lea    edx,[esp+0x24]
  63853e:	52                   	push   edx
  63853f:	8d 54 24 24          	lea    edx,[esp+0x24]
  638543:	52                   	push   edx
  638544:	83 ec 08             	sub    esp,0x8
  638547:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  63854b:	d9 84 24 88 00 00 00 	fld    DWORD PTR [esp+0x88]
  638552:	d9 1c 24             	fstp   DWORD PTR [esp]
  638555:	51                   	push   ecx
  638556:	50                   	push   eax
  638557:	8b cf                	mov    ecx,edi
  638559:	e8 f2 71 ff ff       	call   0x62f750
  63855e:	d9 84 24 88 00 00 00 	fld    DWORD PTR [esp+0x88]
  638565:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  638568:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  63856b:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  63856f:	52                   	push   edx
  638570:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  638574:	52                   	push   edx
  638575:	83 ec 08             	sub    esp,0x8
  638578:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  63857c:	d9 84 24 94 00 00 00 	fld    DWORD PTR [esp+0x94]
  638583:	d9 1c 24             	fstp   DWORD PTR [esp]
  638586:	51                   	push   ecx
  638587:	50                   	push   eax
  638588:	8b cf                	mov    ecx,edi
  63858a:	e8 c1 71 ff ff       	call   0x62f750
  63858f:	d9 84 24 94 00 00 00 	fld    DWORD PTR [esp+0x94]
  638596:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  638599:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  63859c:	8d 54 24 14          	lea    edx,[esp+0x14]
  6385a0:	52                   	push   edx
  6385a1:	8d 54 24 14          	lea    edx,[esp+0x14]
  6385a5:	52                   	push   edx
  6385a6:	83 ec 08             	sub    esp,0x8
  6385a9:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6385ad:	d9 84 24 a0 00 00 00 	fld    DWORD PTR [esp+0xa0]
  6385b4:	d9 1c 24             	fstp   DWORD PTR [esp]
  6385b7:	51                   	push   ecx
  6385b8:	50                   	push   eax
  6385b9:	8b cf                	mov    ecx,edi
  6385bb:	e8 90 71 ff ff       	call   0x62f750
  6385c0:	d9 84 24 a0 00 00 00 	fld    DWORD PTR [esp+0xa0]
  6385c7:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  6385ca:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  6385cd:	8d 54 24 74          	lea    edx,[esp+0x74]
  6385d1:	52                   	push   edx
  6385d2:	8d 54 24 6c          	lea    edx,[esp+0x6c]
  6385d6:	52                   	push   edx
  6385d7:	83 ec 08             	sub    esp,0x8
  6385da:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6385de:	d9 84 24 ac 00 00 00 	fld    DWORD PTR [esp+0xac]
  6385e5:	d9 1c 24             	fstp   DWORD PTR [esp]
  6385e8:	51                   	push   ecx
  6385e9:	50                   	push   eax
  6385ea:	8b cf                	mov    ecx,edi
  6385ec:	e8 5f 71 ff ff       	call   0x62f750
  6385f1:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [esp+0xac]
  6385f8:	8b 8c 24 a8 00 00 00 	mov    ecx,DWORD PTR [esp+0xa8]
  6385ff:	f3 0f 10 44 24 68    	movss  xmm0,DWORD PTR [esp+0x68]
  638605:	8b 94 24 a4 00 00 00 	mov    edx,DWORD PTR [esp+0xa4]
  63860c:	50                   	push   eax
  63860d:	51                   	push   ecx
  63860e:	8b 8c 24 a0 00 00 00 	mov    ecx,DWORD PTR [esp+0xa0]
  638615:	83 ec 0c             	sub    esp,0xc
  638618:	8b c4                	mov    eax,esp
  63861a:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  63861e:	f3 0f 10 84 24 88 00 00 00 	movss  xmm0,DWORD PTR [esp+0x88]
  638627:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  63862c:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  638632:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  638635:	8b 94 24 a0 00 00 00 	mov    edx,DWORD PTR [esp+0xa0]
  63863c:	83 ec 0c             	sub    esp,0xc
  63863f:	8b c4                	mov    eax,esp
  638641:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  638645:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  63864b:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  638650:	f3 0f 10 44 24 38    	movss  xmm0,DWORD PTR [esp+0x38]
  638656:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  638659:	8b 8c 24 a0 00 00 00 	mov    ecx,DWORD PTR [esp+0xa0]
  638660:	83 ec 0c             	sub    esp,0xc
  638663:	8b c4                	mov    eax,esp
  638665:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  638669:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  63866f:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  638674:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  63867a:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  63867d:	83 ec 0c             	sub    esp,0xc
  638680:	8b c4                	mov    eax,esp
  638682:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  638686:	f3 0f 10 44 24 5c    	movss  xmm0,DWORD PTR [esp+0x5c]
  63868c:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  63868f:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  638693:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  638698:	e8 23 d1 fe ff       	call   0x6257c0
  63869d:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  6386a1:	52                   	push   edx
  6386a2:	8d 4d 5c             	lea    ecx,[ebp+0x5c]
  6386a5:	e8 e6 28 ff ff       	call   0x62af90
  6386aa:	6a 01                	push   0x1
  6386ac:	55                   	push   ebp
  6386ad:	56                   	push   esi
  6386ae:	8b cf                	mov    ecx,edi
  6386b0:	e8 8b da ff ff       	call   0x636140
  6386b5:	84 c0                	test   al,al
  6386b7:	75 40                	jne    0x6386f9
  6386b9:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  6386bc:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  6386bf:	51                   	push   ecx
  6386c0:	50                   	push   eax
  6386c1:	8b cf                	mov    ecx,edi
  6386c3:	e8 f8 9b ff ff       	call   0x6322c0
  6386c8:	8b 4e 48             	mov    ecx,DWORD PTR [esi+0x48]
  6386cb:	8a d8                	mov    bl,al
  6386cd:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  6386d0:	55                   	push   ebp
  6386d1:	50                   	push   eax
  6386d2:	51                   	push   ecx
  6386d3:	8b cf                	mov    ecx,edi
  6386d5:	e8 b6 9e ff ff       	call   0x632590
  6386da:	84 db                	test   bl,bl
  6386dc:	74 0f                	je     0x6386ed
  6386de:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  6386e1:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  6386e4:	52                   	push   edx
  6386e5:	50                   	push   eax
  6386e6:	8b cf                	mov    ecx,edi
  6386e8:	e8 23 9c ff ff       	call   0x632310
  6386ed:	b0 01                	mov    al,0x1
  6386ef:	5f                   	pop    edi
  6386f0:	5e                   	pop    esi
  6386f1:	5d                   	pop    ebp
  6386f2:	5b                   	pop    ebx
  6386f3:	83 c4 54             	add    esp,0x54
  6386f6:	c2 4c 00             	ret    0x4c
  6386f9:	5f                   	pop    edi
  6386fa:	5e                   	pop    esi
  6386fb:	5d                   	pop    ebp
  6386fc:	32 c0                	xor    al,al
  6386fe:	5b                   	pop    ebx
  6386ff:	83 c4 54             	add    esp,0x54
  638702:	c2 4c 00             	ret    0x4c
