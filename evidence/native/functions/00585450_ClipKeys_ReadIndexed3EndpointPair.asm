# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00585450 <.text+0x184450>:
  585450:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  585454:	53                   	push   ebx
  585455:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  585459:	55                   	push   ebp
  58545a:	56                   	push   esi
  58545b:	57                   	push   edi
  58545c:	c6 44 24 34 00       	mov    BYTE PTR [esp+0x34],0x0
  585461:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  585465:	51                   	push   ecx
  585466:	8d 04 80             	lea    eax,[eax+eax*4]
  585469:	8d 54 24 18          	lea    edx,[esp+0x18]
  58546d:	52                   	push   edx
  58546e:	8d 3c 43             	lea    edi,[ebx+eax*2]
  585471:	57                   	push   edi
  585472:	53                   	push   ebx
  585473:	e8 d8 f5 ff ff       	call   0x584a50
  585478:	8b f0                	mov    esi,eax
  58547a:	83 c4 10             	add    esp,0x10
  58547d:	3b f7                	cmp    esi,edi
  58547f:	72 03                	jb     0x585484
  585481:	83 ee 0a             	sub    esi,0xa
  585484:	3b f3                	cmp    esi,ebx
  585486:	74 0c                	je     0x585494
  585488:	0f b7 06             	movzx  eax,WORD PTR [esi]
  58548b:	3b 44 24 14          	cmp    eax,DWORD PTR [esp+0x14]
  58548f:	76 03                	jbe    0x585494
  585491:	83 ee 0a             	sub    esi,0xa
  585494:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  585498:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  58549c:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  5854a0:	51                   	push   ecx
  5854a1:	55                   	push   ebp
  5854a2:	53                   	push   ebx
  5854a3:	56                   	push   esi
  5854a4:	e8 07 f6 ff ff       	call   0x584ab0
  5854a9:	8d 46 0a             	lea    eax,[esi+0xa]
  5854ac:	83 c4 10             	add    esp,0x10
  5854af:	3b c7                	cmp    eax,edi
  5854b1:	74 30                	je     0x5854e3
  5854b3:	0f b7 10             	movzx  edx,WORD PTR [eax]
  5854b6:	3b 54 24 20          	cmp    edx,DWORD PTR [esp+0x20]
  5854ba:	77 27                	ja     0x5854e3
  5854bc:	3b c6                	cmp    eax,esi
  5854be:	74 23                	je     0x5854e3
  5854c0:	f6 40 02 80          	test   BYTE PTR [eax+0x2],0x80
  5854c4:	75 1d                	jne    0x5854e3
  5854c6:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  5854ca:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  5854ce:	51                   	push   ecx
  5854cf:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  5854d3:	52                   	push   edx
  5854d4:	51                   	push   ecx
  5854d5:	50                   	push   eax
  5854d6:	e8 d5 f5 ff ff       	call   0x584ab0
  5854db:	83 c4 10             	add    esp,0x10
  5854de:	5f                   	pop    edi
  5854df:	5e                   	pop    esi
  5854e0:	5d                   	pop    ebp
  5854e1:	5b                   	pop    ebx
  5854e2:	c3                   	ret
  5854e3:	d9 03                	fld    DWORD PTR [ebx]
  5854e5:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  5854e9:	d9 18                	fstp   DWORD PTR [eax]
  5854eb:	5f                   	pop    edi
  5854ec:	d9 43 04             	fld    DWORD PTR [ebx+0x4]
  5854ef:	5e                   	pop    esi
  5854f0:	d9 58 04             	fstp   DWORD PTR [eax+0x4]
  5854f3:	d9 43 08             	fld    DWORD PTR [ebx+0x8]
  5854f6:	d9 58 08             	fstp   DWORD PTR [eax+0x8]
  5854f9:	d9 43 0c             	fld    DWORD PTR [ebx+0xc]
  5854fc:	d9 58 0c             	fstp   DWORD PTR [eax+0xc]
  5854ff:	66 8b 55 00          	mov    dx,WORD PTR [ebp+0x0]
  585503:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  585507:	5d                   	pop    ebp
  585508:	66 89 10             	mov    WORD PTR [eax],dx
  58550b:	5b                   	pop    ebx
  58550c:	c3                   	ret
