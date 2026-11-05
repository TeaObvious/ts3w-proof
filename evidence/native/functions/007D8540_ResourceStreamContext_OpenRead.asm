# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d8540 <.text+0x3d7540>:
  7d8540:	53                   	push   ebx
  7d8541:	56                   	push   esi
  7d8542:	8b f1                	mov    esi,ecx
  7d8544:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7d8547:	57                   	push   edi
  7d8548:	8d 7e 04             	lea    edi,[esi+0x4]
  7d854b:	33 db                	xor    ebx,ebx
  7d854d:	3b cb                	cmp    ecx,ebx
  7d854f:	74 18                	je     0x7d8569
  7d8551:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d8553:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  7d8556:	ff d2                	call   edx
  7d8558:	8b 0f                	mov    ecx,DWORD PTR [edi]
  7d855a:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d855c:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  7d855f:	ff d2                	call   edx
  7d8561:	89 1f                	mov    DWORD PTR [edi],ebx
  7d8563:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
  7d8566:	88 5e 15             	mov    BYTE PTR [esi+0x15],bl
  7d8569:	38 5e 14             	cmp    BYTE PTR [esi+0x14],bl
  7d856c:	75 08                	jne    0x7d8576
  7d856e:	5f                   	pop    edi
  7d856f:	5e                   	pop    esi
  7d8570:	32 c0                	xor    al,al
  7d8572:	5b                   	pop    ebx
  7d8573:	c2 08 00             	ret    0x8
  7d8576:	e8 c5 6b f5 ff       	call   0x72f140
  7d857b:	3b c3                	cmp    eax,ebx
  7d857d:	74 33                	je     0x7d85b2
  7d857f:	8b 10                	mov    edx,DWORD PTR [eax]
  7d8581:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
  7d8584:	33 c9                	xor    ecx,ecx
  7d8586:	38 5c 24 14          	cmp    BYTE PTR [esp+0x14],bl
  7d858a:	6a 06                	push   0x6
  7d858c:	0f 95 c1             	setne  cl
  7d858f:	83 c1 01             	add    ecx,0x1
  7d8592:	51                   	push   ecx
  7d8593:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7d8595:	51                   	push   ecx
  7d8596:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  7d859a:	57                   	push   edi
  7d859b:	51                   	push   ecx
  7d859c:	8b c8                	mov    ecx,eax
  7d859e:	ff d2                	call   edx
  7d85a0:	84 c0                	test   al,al
  7d85a2:	74 0e                	je     0x7d85b2
  7d85a4:	8b 0f                	mov    ecx,DWORD PTR [edi]
  7d85a6:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d85a8:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  7d85ab:	b3 01                	mov    bl,0x1
  7d85ad:	ff d2                	call   edx
  7d85af:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  7d85b2:	5f                   	pop    edi
  7d85b3:	5e                   	pop    esi
  7d85b4:	8a c3                	mov    al,bl
  7d85b6:	5b                   	pop    ebx
  7d85b7:	c2 08 00             	ret    0x8
