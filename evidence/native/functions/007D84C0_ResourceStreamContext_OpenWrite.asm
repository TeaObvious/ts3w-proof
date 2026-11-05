# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d84c0 <.text+0x3d74c0>:
  7d84c0:	56                   	push   esi
  7d84c1:	8b f1                	mov    esi,ecx
  7d84c3:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7d84c6:	85 c9                	test   ecx,ecx
  7d84c8:	57                   	push   edi
  7d84c9:	8d 7e 04             	lea    edi,[esi+0x4]
  7d84cc:	74 21                	je     0x7d84ef
  7d84ce:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d84d0:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  7d84d3:	ff d2                	call   edx
  7d84d5:	8b 0f                	mov    ecx,DWORD PTR [edi]
  7d84d7:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d84d9:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  7d84dc:	ff d2                	call   edx
  7d84de:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  7d84e4:	c7 46 08 00 00 00 00 	mov    DWORD PTR [esi+0x8],0x0
  7d84eb:	c6 46 15 00          	mov    BYTE PTR [esi+0x15],0x0
  7d84ef:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  7d84f3:	75 07                	jne    0x7d84fc
  7d84f5:	5f                   	pop    edi
  7d84f6:	32 c0                	xor    al,al
  7d84f8:	5e                   	pop    esi
  7d84f9:	c2 08 00             	ret    0x8
  7d84fc:	e8 3f 6c f5 ff       	call   0x72f140
  7d8501:	8b 10                	mov    edx,DWORD PTR [eax]
  7d8503:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
  7d8506:	33 c9                	xor    ecx,ecx
  7d8508:	38 4c 24 10          	cmp    BYTE PTR [esp+0x10],cl
  7d850c:	6a 06                	push   0x6
  7d850e:	0f 95 c1             	setne  cl
  7d8511:	83 c1 01             	add    ecx,0x1
  7d8514:	51                   	push   ecx
  7d8515:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7d8517:	51                   	push   ecx
  7d8518:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  7d851c:	57                   	push   edi
  7d851d:	51                   	push   ecx
  7d851e:	8b c8                	mov    ecx,eax
  7d8520:	ff d2                	call   edx
  7d8522:	20 46 14             	and    BYTE PTR [esi+0x14],al
  7d8525:	74 0c                	je     0x7d8533
  7d8527:	8b 0f                	mov    ecx,DWORD PTR [edi]
  7d8529:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d852b:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  7d852e:	ff d2                	call   edx
  7d8530:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  7d8533:	8a 46 14             	mov    al,BYTE PTR [esi+0x14]
  7d8536:	5f                   	pop    edi
  7d8537:	5e                   	pop    esi
  7d8538:	c2 08 00             	ret    0x8
