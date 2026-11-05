# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006da990 <.text+0x2d9990>:
  6da990:	55                   	push   ebp
  6da991:	56                   	push   esi
  6da992:	8b f1                	mov    esi,ecx
  6da994:	83 7e 40 00          	cmp    DWORD PTR [esi+0x40],0x0
  6da998:	57                   	push   edi
  6da999:	74 43                	je     0x6da9de
  6da99b:	33 ff                	xor    edi,edi
  6da99d:	39 7e 44             	cmp    DWORD PTR [esi+0x44],edi
  6da9a0:	76 22                	jbe    0x6da9c4
  6da9a2:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  6da9a5:	8b 2c b8             	mov    ebp,DWORD PTR [eax+edi*4]
  6da9a8:	85 ed                	test   ebp,ebp
  6da9aa:	74 10                	je     0x6da9bc
  6da9ac:	8b cd                	mov    ecx,ebp
  6da9ae:	e8 4d 57 fb ff       	call   0x690100
  6da9b3:	55                   	push   ebp
  6da9b4:	e8 27 9b e0 ff       	call   0x4e44e0
  6da9b9:	83 c4 04             	add    esp,0x4
  6da9bc:	83 c7 01             	add    edi,0x1
  6da9bf:	3b 7e 44             	cmp    edi,DWORD PTR [esi+0x44]
  6da9c2:	72 de                	jb     0x6da9a2
  6da9c4:	8b 4e 40             	mov    ecx,DWORD PTR [esi+0x40]
  6da9c7:	51                   	push   ecx
  6da9c8:	e8 13 9b e0 ff       	call   0x4e44e0
  6da9cd:	83 c4 04             	add    esp,0x4
  6da9d0:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  6da9d7:	c7 46 44 00 00 00 00 	mov    DWORD PTR [esi+0x44],0x0
  6da9de:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  6da9e2:	85 ed                	test   ebp,ebp
  6da9e4:	0f 84 a7 00 00 00    	je     0x6daa91
  6da9ea:	33 c9                	xor    ecx,ecx
  6da9ec:	8b c5                	mov    eax,ebp
  6da9ee:	ba 04 00 00 00       	mov    edx,0x4
  6da9f3:	f7 e2                	mul    edx
  6da9f5:	6a 00                	push   0x0
  6da9f7:	0f 90 c1             	seto   cl
  6da9fa:	6a 00                	push   0x0
  6da9fc:	6a 00                	push   0x0
  6da9fe:	6a 00                	push   0x0
  6daa00:	68 c8 7e ff 00       	push   0xff7ec8
  6daa05:	f7 d9                	neg    ecx
  6daa07:	0b c8                	or     ecx,eax
  6daa09:	51                   	push   ecx
  6daa0a:	e8 f1 9a e0 ff       	call   0x4e4500
  6daa0f:	83 c4 18             	add    esp,0x18
  6daa12:	85 c0                	test   eax,eax
  6daa14:	89 46 40             	mov    DWORD PTR [esi+0x40],eax
  6daa17:	75 08                	jne    0x6daa21
  6daa19:	5f                   	pop    edi
  6daa1a:	5e                   	pop    esi
  6daa1b:	32 c0                	xor    al,al
  6daa1d:	5d                   	pop    ebp
  6daa1e:	c2 04 00             	ret    0x4
  6daa21:	33 c0                	xor    eax,eax
  6daa23:	85 ed                	test   ebp,ebp
  6daa25:	89 6e 44             	mov    DWORD PTR [esi+0x44],ebp
  6daa28:	76 17                	jbe    0x6daa41
  6daa2a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  6daa30:	8b 4e 40             	mov    ecx,DWORD PTR [esi+0x40]
  6daa33:	c7 04 81 00 00 00 00 	mov    DWORD PTR [ecx+eax*4],0x0
  6daa3a:	83 c0 01             	add    eax,0x1
  6daa3d:	3b c5                	cmp    eax,ebp
  6daa3f:	72 ef                	jb     0x6daa30
  6daa41:	33 ff                	xor    edi,edi
  6daa43:	85 ed                	test   ebp,ebp
  6daa45:	76 4a                	jbe    0x6daa91
  6daa47:	6a 00                	push   0x0
  6daa49:	6a 00                	push   0x0
  6daa4b:	6a 00                	push   0x0
  6daa4d:	6a 00                	push   0x0
  6daa4f:	68 b0 7e ff 00       	push   0xff7eb0
  6daa54:	68 d0 00 00 00       	push   0xd0
  6daa59:	e8 a2 9a e0 ff       	call   0x4e4500
  6daa5e:	83 c4 18             	add    esp,0x18
  6daa61:	85 c0                	test   eax,eax
  6daa63:	74 09                	je     0x6daa6e
  6daa65:	8b c8                	mov    ecx,eax
  6daa67:	e8 c4 54 fb ff       	call   0x68ff30
  6daa6c:	eb 02                	jmp    0x6daa70
  6daa6e:	33 c0                	xor    eax,eax
  6daa70:	8b 56 40             	mov    edx,DWORD PTR [esi+0x40]
  6daa73:	89 04 ba             	mov    DWORD PTR [edx+edi*4],eax
  6daa76:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  6daa79:	83 3c b8 00          	cmp    DWORD PTR [eax+edi*4],0x0
  6daa7d:	8d 04 b8             	lea    eax,[eax+edi*4]
  6daa80:	74 97                	je     0x6daa19
  6daa82:	8b 08                	mov    ecx,DWORD PTR [eax]
  6daa84:	56                   	push   esi
  6daa85:	e8 a6 43 fb ff       	call   0x68ee30
  6daa8a:	83 c7 01             	add    edi,0x1
  6daa8d:	3b fd                	cmp    edi,ebp
  6daa8f:	72 b6                	jb     0x6daa47
  6daa91:	5f                   	pop    edi
  6daa92:	5e                   	pop    esi
  6daa93:	b0 01                	mov    al,0x1
  6daa95:	5d                   	pop    ebp
  6daa96:	c2 04 00             	ret    0x4
