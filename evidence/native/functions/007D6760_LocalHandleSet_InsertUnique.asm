# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d6760 <.text+0x3d5760>:
  7d6760:	83 ec 0c             	sub    esp,0xc
  7d6763:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  7d6767:	53                   	push   ebx
  7d6768:	55                   	push   ebp
  7d6769:	56                   	push   esi
  7d676a:	57                   	push   edi
  7d676b:	0f b7 38             	movzx  edi,WORD PTR [eax]
  7d676e:	8b f1                	mov    esi,ecx
  7d6770:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
  7d6773:	0f b7 c7             	movzx  eax,di
  7d6776:	33 d2                	xor    edx,edx
  7d6778:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  7d677c:	f7 f3                	div    ebx
  7d677e:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7d6781:	8b ea                	mov    ebp,edx
  7d6783:	8d 14 a9             	lea    edx,[ecx+ebp*4]
  7d6786:	8b 0a                	mov    ecx,DWORD PTR [edx]
  7d6788:	85 c9                	test   ecx,ecx
  7d678a:	74 14                	je     0x7d67a0
  7d678c:	8d 64 24 00          	lea    esp,[esp+0x0]
  7d6790:	66 3b 39             	cmp    di,WORD PTR [ecx]
  7d6793:	0f 84 a1 00 00 00    	je     0x7d683a
  7d6799:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  7d679c:	85 c9                	test   ecx,ecx
  7d679e:	75 f0                	jne    0x7d6790
  7d67a0:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  7d67a3:	6a 01                	push   0x1
  7d67a5:	52                   	push   edx
  7d67a6:	53                   	push   ebx
  7d67a7:	8d 44 24 20          	lea    eax,[esp+0x20]
  7d67ab:	50                   	push   eax
  7d67ac:	8d 4e 10             	lea    ecx,[esi+0x10]
  7d67af:	e8 0c a7 d0 ff       	call   0x4e0ec0
  7d67b4:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  7d67b7:	68 e7 00 00 00       	push   0xe7
  7d67bc:	68 88 99 f9 00       	push   0xf99988
  7d67c1:	6a 00                	push   0x0
  7d67c3:	6a 00                	push   0x0
  7d67c5:	51                   	push   ecx
  7d67c6:	6a 08                	push   0x8
  7d67c8:	e8 33 dd d0 ff       	call   0x4e4500
  7d67cd:	8b f8                	mov    edi,eax
  7d67cf:	83 c4 18             	add    esp,0x18
  7d67d2:	85 ff                	test   edi,edi
  7d67d4:	74 0a                	je     0x7d67e0
  7d67d6:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  7d67da:	66 8b 02             	mov    ax,WORD PTR [edx]
  7d67dd:	66 89 07             	mov    WORD PTR [edi],ax
  7d67e0:	c7 47 04 00 00 00 00 	mov    DWORD PTR [edi+0x4],0x0
  7d67e7:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  7d67ec:	74 16                	je     0x7d6804
  7d67ee:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  7d67f2:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  7d67f6:	33 d2                	xor    edx,edx
  7d67f8:	f7 f1                	div    ecx
  7d67fa:	51                   	push   ecx
  7d67fb:	8b ce                	mov    ecx,esi
  7d67fd:	8b ea                	mov    ebp,edx
  7d67ff:	e8 ac 52 2b 00       	call   0xa8bab0
  7d6804:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7d6807:	8d 04 ad 00 00 00 00 	lea    eax,[ebp*4+0x0]
  7d680e:	8b 14 08             	mov    edx,DWORD PTR [eax+ecx*1]
  7d6811:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  7d6814:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7d6817:	89 3c 08             	mov    DWORD PTR [eax+ecx*1],edi
  7d681a:	83 46 0c 01          	add    DWORD PTR [esi+0xc],0x1
  7d681e:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  7d6821:	03 f0                	add    esi,eax
  7d6823:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  7d6827:	89 38                	mov    DWORD PTR [eax],edi
  7d6829:	5f                   	pop    edi
  7d682a:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  7d682d:	5e                   	pop    esi
  7d682e:	5d                   	pop    ebp
  7d682f:	c6 40 08 01          	mov    BYTE PTR [eax+0x8],0x1
  7d6833:	5b                   	pop    ebx
  7d6834:	83 c4 0c             	add    esp,0xc
  7d6837:	c2 0c 00             	ret    0xc
  7d683a:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  7d683e:	5f                   	pop    edi
  7d683f:	5e                   	pop    esi
  7d6840:	5d                   	pop    ebp
  7d6841:	89 08                	mov    DWORD PTR [eax],ecx
  7d6843:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  7d6846:	c6 40 08 00          	mov    BYTE PTR [eax+0x8],0x0
  7d684a:	5b                   	pop    ebx
  7d684b:	83 c4 0c             	add    esp,0xc
  7d684e:	c2 0c 00             	ret    0xc
