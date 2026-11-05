# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004f39b0 <.text+0xf29b0>:
  4f39b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  4f39b4:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  4f39bb:	00 
  4f39bc:	83 ec 08             	sub    esp,0x8
  4f39bf:	53                   	push   ebx
  4f39c0:	33 db                	xor    ebx,ebx
  4f39c2:	56                   	push   esi
  4f39c3:	8b f1                	mov    esi,ecx
  4f39c5:	50                   	push   eax
  4f39c6:	89 1e                	mov    DWORD PTR [esi],ebx
  4f39c8:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  4f39cb:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
  4f39ce:	89 5e 0c             	mov    DWORD PTR [esi+0xc],ebx
  4f39d1:	89 5e 10             	mov    DWORD PTR [esi+0x10],ebx
  4f39d4:	f3 0f 11 46 14       	movss  DWORD PTR [esi+0x14],xmm0
  4f39d9:	e8 02 fb ff ff       	call   0x4f34e0
  4f39de:	38 5c 24 18          	cmp    BYTE PTR [esp+0x18],bl
  4f39e2:	74 36                	je     0x4f3a1a
  4f39e4:	8b 0e                	mov    ecx,DWORD PTR [esi]
  4f39e6:	0b 4e 04             	or     ecx,DWORD PTR [esi+0x4]
  4f39e9:	75 2f                	jne    0x4f3a1a
  4f39eb:	83 7e 10 01          	cmp    DWORD PTR [esi+0x10],0x1
  4f39ef:	75 11                	jne    0x4f3a02
  4f39f1:	0f 31                	rdtsc
  4f39f3:	89 06                	mov    DWORD PTR [esi],eax
  4f39f5:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  4f39f8:	8b c6                	mov    eax,esi
  4f39fa:	5e                   	pop    esi
  4f39fb:	5b                   	pop    ebx
  4f39fc:	83 c4 08             	add    esp,0x8
  4f39ff:	c2 08 00             	ret    0x8
  4f3a02:	8d 54 24 08          	lea    edx,[esp+0x8]
  4f3a06:	52                   	push   edx
  4f3a07:	ff 15 bc 63 f9 00    	call   DWORD PTR ds:0xf963bc
  4f3a0d:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  4f3a11:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  4f3a15:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  4f3a18:	89 06                	mov    DWORD PTR [esi],eax
  4f3a1a:	8b c6                	mov    eax,esi
  4f3a1c:	5e                   	pop    esi
  4f3a1d:	5b                   	pop    ebx
  4f3a1e:	83 c4 08             	add    esp,0x8
  4f3a21:	c2 08 00             	ret    0x8
