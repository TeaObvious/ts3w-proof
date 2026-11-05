# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005858d0 <.text+0x1848d0>:
  5858d0:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  5858d4:	53                   	push   ebx
  5858d5:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  5858d9:	55                   	push   ebp
  5858da:	56                   	push   esi
  5858db:	57                   	push   edi
  5858dc:	c6 44 24 30 00       	mov    BYTE PTR [esp+0x30],0x0
  5858e1:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  5858e5:	51                   	push   ecx
  5858e6:	8d 54 24 18          	lea    edx,[esp+0x18]
  5858ea:	52                   	push   edx
  5858eb:	8d 3c c3             	lea    edi,[ebx+eax*8]
  5858ee:	57                   	push   edi
  5858ef:	53                   	push   ebx
  5858f0:	e8 6b f8 ff ff       	call   0x585160
  5858f5:	8b f0                	mov    esi,eax
  5858f7:	83 c4 10             	add    esp,0x10
  5858fa:	3b f7                	cmp    esi,edi
  5858fc:	72 03                	jb     0x585901
  5858fe:	83 ee 08             	sub    esi,0x8
  585901:	3b f3                	cmp    esi,ebx
  585903:	74 0c                	je     0x585911
  585905:	0f b7 06             	movzx  eax,WORD PTR [esi]
  585908:	3b 44 24 14          	cmp    eax,DWORD PTR [esp+0x14]
  58590c:	76 03                	jbe    0x585911
  58590e:	83 ee 08             	sub    esi,0x8
  585911:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  585915:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  585919:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  58591d:	51                   	push   ecx
  58591e:	55                   	push   ebp
  58591f:	53                   	push   ebx
  585920:	56                   	push   esi
  585921:	e8 da ed ff ff       	call   0x584700
  585926:	8d 46 08             	lea    eax,[esi+0x8]
  585929:	83 c4 10             	add    esp,0x10
  58592c:	3b c7                	cmp    eax,edi
  58592e:	74 30                	je     0x585960
  585930:	0f b7 10             	movzx  edx,WORD PTR [eax]
  585933:	3b 54 24 20          	cmp    edx,DWORD PTR [esp+0x20]
  585937:	77 27                	ja     0x585960
  585939:	3b c6                	cmp    eax,esi
  58593b:	74 23                	je     0x585960
  58593d:	f6 40 02 80          	test   BYTE PTR [eax+0x2],0x80
  585941:	75 1d                	jne    0x585960
  585943:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  585947:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  58594b:	51                   	push   ecx
  58594c:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  585950:	52                   	push   edx
  585951:	51                   	push   ecx
  585952:	50                   	push   eax
  585953:	e8 a8 ed ff ff       	call   0x584700
  585958:	83 c4 10             	add    esp,0x10
  58595b:	5f                   	pop    edi
  58595c:	5e                   	pop    esi
  58595d:	5d                   	pop    ebp
  58595e:	5b                   	pop    ebx
  58595f:	c3                   	ret
  585960:	d9 03                	fld    DWORD PTR [ebx]
  585962:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  585966:	d9 18                	fstp   DWORD PTR [eax]
  585968:	5f                   	pop    edi
  585969:	d9 43 04             	fld    DWORD PTR [ebx+0x4]
  58596c:	5e                   	pop    esi
  58596d:	d9 58 04             	fstp   DWORD PTR [eax+0x4]
  585970:	d9 43 08             	fld    DWORD PTR [ebx+0x8]
  585973:	d9 58 08             	fstp   DWORD PTR [eax+0x8]
  585976:	d9 43 0c             	fld    DWORD PTR [ebx+0xc]
  585979:	d9 58 0c             	fstp   DWORD PTR [eax+0xc]
  58597c:	66 8b 55 00          	mov    dx,WORD PTR [ebp+0x0]
  585980:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  585984:	5d                   	pop    ebp
  585985:	66 89 10             	mov    WORD PTR [eax],dx
  585988:	5b                   	pop    ebx
  585989:	c3                   	ret
