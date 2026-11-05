# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006fe520 <.text+0x2fd520>:
  6fe520:	83 ec 08             	sub    esp,0x8
  6fe523:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  6fe527:	53                   	push   ebx
  6fe528:	56                   	push   esi
  6fe529:	8b f1                	mov    esi,ecx
  6fe52b:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6fe52f:	8d 54 24 08          	lea    edx,[esp+0x8]
  6fe533:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  6fe537:	52                   	push   edx
  6fe538:	8d 44 24 18          	lea    eax,[esp+0x18]
  6fe53c:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  6fe540:	50                   	push   eax
  6fe541:	8d 4e 04             	lea    ecx,[esi+0x4]
  6fe544:	e8 17 f8 ff ff       	call   0x6fdd60
  6fe549:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  6fe54d:	3b 86 28 10 00 00    	cmp    eax,DWORD PTR [esi+0x1028]
  6fe553:	0f 84 98 00 00 00    	je     0x6fe5f1
  6fe559:	85 c0                	test   eax,eax
  6fe55b:	0f 84 90 00 00 00    	je     0x6fe5f1
  6fe561:	8d 48 f8             	lea    ecx,[eax-0x8]
  6fe564:	85 c9                	test   ecx,ecx
  6fe566:	0f 84 85 00 00 00    	je     0x6fe5f1
  6fe56c:	8b 11                	mov    edx,DWORD PTR [ecx]
  6fe56e:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  6fe571:	68 88 1d 7f 01       	push   0x17f1d88
  6fe576:	ff d0                	call   eax
  6fe578:	8b d8                	mov    ebx,eax
  6fe57a:	85 db                	test   ebx,ebx
  6fe57c:	74 73                	je     0x6fe5f1
  6fe57e:	57                   	push   edi
  6fe57f:	33 ff                	xor    edi,edi
  6fe581:	57                   	push   edi
  6fe582:	57                   	push   edi
  6fe583:	57                   	push   edi
  6fe584:	57                   	push   edi
  6fe585:	68 f8 af ff 00       	push   0xffaff8
  6fe58a:	57                   	push   edi
  6fe58b:	6a 08                	push   0x8
  6fe58d:	6a 20                	push   0x20
  6fe58f:	e8 8c 5f de ff       	call   0x4e4520
  6fe594:	83 c4 20             	add    esp,0x20
  6fe597:	85 c0                	test   eax,eax
  6fe599:	74 21                	je     0x6fe5bc
  6fe59b:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  6fe59f:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  6fe5a3:	51                   	push   ecx
  6fe5a4:	52                   	push   edx
  6fe5a5:	8b c8                	mov    ecx,eax
  6fe5a7:	e8 e4 ee fd ff       	call   0x6dd490
  6fe5ac:	8b f0                	mov    esi,eax
  6fe5ae:	85 f6                	test   esi,esi
  6fe5b0:	74 0a                	je     0x6fe5bc
  6fe5b2:	8b 06                	mov    eax,DWORD PTR [esi]
  6fe5b4:	8b 10                	mov    edx,DWORD PTR [eax]
  6fe5b6:	8b ce                	mov    ecx,esi
  6fe5b8:	ff d2                	call   edx
  6fe5ba:	8b fe                	mov    edi,esi
  6fe5bc:	8b 03                	mov    eax,DWORD PTR [ebx]
  6fe5be:	8b 90 80 00 00 00    	mov    edx,DWORD PTR [eax+0x80]
  6fe5c4:	68 2c af ff 00       	push   0xffaf2c
  6fe5c9:	57                   	push   edi
  6fe5ca:	8b cb                	mov    ecx,ebx
  6fe5cc:	ff d2                	call   edx
  6fe5ce:	8d 8b 10 02 00 00    	lea    ecx,[ebx+0x210]
  6fe5d4:	e8 27 e6 fd ff       	call   0x6dcc00
  6fe5d9:	85 ff                	test   edi,edi
  6fe5db:	74 09                	je     0x6fe5e6
  6fe5dd:	8b 07                	mov    eax,DWORD PTR [edi]
  6fe5df:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6fe5e2:	8b cf                	mov    ecx,edi
  6fe5e4:	ff d2                	call   edx
  6fe5e6:	5f                   	pop    edi
  6fe5e7:	5e                   	pop    esi
  6fe5e8:	b0 01                	mov    al,0x1
  6fe5ea:	5b                   	pop    ebx
  6fe5eb:	83 c4 08             	add    esp,0x8
  6fe5ee:	c2 10 00             	ret    0x10
  6fe5f1:	5e                   	pop    esi
  6fe5f2:	32 c0                	xor    al,al
  6fe5f4:	5b                   	pop    ebx
  6fe5f5:	83 c4 08             	add    esp,0x8
  6fe5f8:	c2 10 00             	ret    0x10
