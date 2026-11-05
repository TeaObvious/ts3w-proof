# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00758350,0x0075844c); analyst name RouteManager_SetPortalAgeGenderFlags.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00758350 <.text+0x357350>:
  758350:	83 ec 10             	sub    esp,0x10
  758353:	53                   	push   ebx
  758354:	55                   	push   ebp
  758355:	56                   	push   esi
  758356:	57                   	push   edi
  758357:	e8 94 09 0d 00       	call   0x828cf0
  75835c:	33 ff                	xor    edi,edi
  75835e:	3b c7                	cmp    eax,edi
  758360:	74 0b                	je     0x75836d
  758362:	8b c8                	mov    ecx,eax
  758364:	e8 57 12 0d 00       	call   0x8295c0
  758369:	8b e8                	mov    ebp,eax
  75836b:	eb 02                	jmp    0x75836f
  75836d:	33 ed                	xor    ebp,ebp
  75836f:	e8 fc f1 1d 00       	call   0x937570
  758374:	3b c7                	cmp    eax,edi
  758376:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
  75837a:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  75837e:	74 28                	je     0x7583a8
  758380:	56                   	push   esi
  758381:	53                   	push   ebx
  758382:	8b c8                	mov    ecx,eax
  758384:	e8 f7 fb 1d 00       	call   0x937f80
  758389:	3b c7                	cmp    eax,edi
  75838b:	74 1b                	je     0x7583a8
  75838d:	8b c8                	mov    ecx,eax
  75838f:	e8 9c 6d f3 ff       	call   0x68f130
  758394:	3b c7                	cmp    eax,edi
  758396:	74 10                	je     0x7583a8
  758398:	8b 10                	mov    edx,DWORD PTR [eax]
  75839a:	8b c8                	mov    ecx,eax
  75839c:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  75839f:	68 0e 6b 56 90       	push   0x90566b0e
  7583a4:	ff d0                	call   eax
  7583a6:	eb 02                	jmp    0x7583aa
  7583a8:	33 c0                	xor    eax,eax
  7583aa:	3b ef                	cmp    ebp,edi
  7583ac:	0f 84 90 00 00 00    	je     0x758442
  7583b2:	3b c7                	cmp    eax,edi
  7583b4:	0f 84 88 00 00 00    	je     0x758442
  7583ba:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  7583be:	51                   	push   ecx
  7583bf:	56                   	push   esi
  7583c0:	53                   	push   ebx
  7583c1:	50                   	push   eax
  7583c2:	8b cd                	mov    ecx,ebp
  7583c4:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  7583c8:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  7583cc:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  7583d0:	c7 44 24 2c 00 56 00 01 	mov    DWORD PTR [esp+0x2c],0x1005600
  7583d8:	e8 a3 7b ed ff       	call   0x62ff80
  7583dd:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7583e1:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  7583e5:	3b c1                	cmp    eax,ecx
  7583e7:	0f 95 c3             	setne  bl
  7583ea:	3b c1                	cmp    eax,ecx
  7583ec:	8b f1                	mov    esi,ecx
  7583ee:	74 1b                	je     0x75840b
  7583f0:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  7583f4:	8b 08                	mov    ecx,DWORD PTR [eax]
  7583f6:	83 c0 04             	add    eax,0x4
  7583f9:	3b c6                	cmp    eax,esi
  7583fb:	89 51 78             	mov    DWORD PTR [ecx+0x78],edx
  7583fe:	89 79 7c             	mov    DWORD PTR [ecx+0x7c],edi
  758401:	75 f1                	jne    0x7583f4
  758403:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  758407:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  75840b:	3b c1                	cmp    eax,ecx
  75840d:	8b e9                	mov    ebp,ecx
  75840f:	8b f0                	mov    esi,eax
  758411:	73 18                	jae    0x75842b
  758413:	8b 0e                	mov    ecx,DWORD PTR [esi]
  758415:	3b cf                	cmp    ecx,edi
  758417:	74 07                	je     0x758420
  758419:	8b 11                	mov    edx,DWORD PTR [ecx]
  75841b:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  75841e:	ff d0                	call   eax
  758420:	83 c6 04             	add    esi,0x4
  758423:	3b f5                	cmp    esi,ebp
  758425:	72 ec                	jb     0x758413
  758427:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  75842b:	3b c7                	cmp    eax,edi
  75842d:	74 09                	je     0x758438
  75842f:	50                   	push   eax
  758430:	e8 ab c0 d8 ff       	call   0x4e44e0
  758435:	83 c4 04             	add    esp,0x4
  758438:	5f                   	pop    edi
  758439:	5e                   	pop    esi
  75843a:	5d                   	pop    ebp
  75843b:	8a c3                	mov    al,bl
  75843d:	5b                   	pop    ebx
  75843e:	83 c4 10             	add    esp,0x10
  758441:	c3                   	ret
  758442:	5f                   	pop    edi
  758443:	5e                   	pop    esi
  758444:	5d                   	pop    ebp
  758445:	32 c0                	xor    al,al
  758447:	5b                   	pop    ebx
  758448:	83 c4 10             	add    esp,0x10
  75844b:	c3                   	ret
