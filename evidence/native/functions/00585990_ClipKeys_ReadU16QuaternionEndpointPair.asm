# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00585990 <.text+0x184990>:
  585990:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  585994:	53                   	push   ebx
  585995:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  585999:	55                   	push   ebp
  58599a:	56                   	push   esi
  58599b:	57                   	push   edi
  58599c:	c6 44 24 34 00       	mov    BYTE PTR [esp+0x34],0x0
  5859a1:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  5859a5:	51                   	push   ecx
  5859a6:	8d 04 40             	lea    eax,[eax+eax*2]
  5859a9:	8d 54 24 18          	lea    edx,[esp+0x18]
  5859ad:	52                   	push   edx
  5859ae:	8d 3c 83             	lea    edi,[ebx+eax*4]
  5859b1:	57                   	push   edi
  5859b2:	53                   	push   ebx
  5859b3:	e8 f8 f1 ff ff       	call   0x584bb0
  5859b8:	8b f0                	mov    esi,eax
  5859ba:	83 c4 10             	add    esp,0x10
  5859bd:	3b f7                	cmp    esi,edi
  5859bf:	72 03                	jb     0x5859c4
  5859c1:	83 ee 0c             	sub    esi,0xc
  5859c4:	3b f3                	cmp    esi,ebx
  5859c6:	74 0c                	je     0x5859d4
  5859c8:	0f b7 06             	movzx  eax,WORD PTR [esi]
  5859cb:	3b 44 24 14          	cmp    eax,DWORD PTR [esp+0x14]
  5859cf:	76 03                	jbe    0x5859d4
  5859d1:	83 ee 0c             	sub    esi,0xc
  5859d4:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  5859d8:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  5859dc:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  5859e0:	51                   	push   ecx
  5859e1:	55                   	push   ebp
  5859e2:	53                   	push   ebx
  5859e3:	56                   	push   esi
  5859e4:	e8 c7 f7 ff ff       	call   0x5851b0
  5859e9:	8d 46 0c             	lea    eax,[esi+0xc]
  5859ec:	83 c4 10             	add    esp,0x10
  5859ef:	3b c7                	cmp    eax,edi
  5859f1:	74 30                	je     0x585a23
  5859f3:	0f b7 10             	movzx  edx,WORD PTR [eax]
  5859f6:	3b 54 24 20          	cmp    edx,DWORD PTR [esp+0x20]
  5859fa:	77 27                	ja     0x585a23
  5859fc:	3b c6                	cmp    eax,esi
  5859fe:	74 23                	je     0x585a23
  585a00:	f6 40 02 80          	test   BYTE PTR [eax+0x2],0x80
  585a04:	75 1d                	jne    0x585a23
  585a06:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  585a0a:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  585a0e:	51                   	push   ecx
  585a0f:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  585a13:	52                   	push   edx
  585a14:	51                   	push   ecx
  585a15:	50                   	push   eax
  585a16:	e8 95 f7 ff ff       	call   0x5851b0
  585a1b:	83 c4 10             	add    esp,0x10
  585a1e:	5f                   	pop    edi
  585a1f:	5e                   	pop    esi
  585a20:	5d                   	pop    ebp
  585a21:	5b                   	pop    ebx
  585a22:	c3                   	ret
  585a23:	d9 03                	fld    DWORD PTR [ebx]
  585a25:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  585a29:	d9 18                	fstp   DWORD PTR [eax]
  585a2b:	5f                   	pop    edi
  585a2c:	d9 43 04             	fld    DWORD PTR [ebx+0x4]
  585a2f:	5e                   	pop    esi
  585a30:	d9 58 04             	fstp   DWORD PTR [eax+0x4]
  585a33:	d9 43 08             	fld    DWORD PTR [ebx+0x8]
  585a36:	d9 58 08             	fstp   DWORD PTR [eax+0x8]
  585a39:	d9 43 0c             	fld    DWORD PTR [ebx+0xc]
  585a3c:	d9 58 0c             	fstp   DWORD PTR [eax+0xc]
  585a3f:	66 8b 55 00          	mov    dx,WORD PTR [ebp+0x0]
  585a43:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  585a47:	5d                   	pop    ebp
  585a48:	66 89 10             	mov    WORD PTR [eax],dx
  585a4b:	5b                   	pop    ebx
  585a4c:	c3                   	ret
