# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00593e70 <.text+0x192e70>:
  593e70:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  593e74:	53                   	push   ebx
  593e75:	8b d9                	mov    ebx,ecx
  593e77:	8b 08                	mov    ecx,DWORD PTR [eax]
  593e79:	89 0b                	mov    DWORD PTR [ebx],ecx
  593e7b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  593e7e:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
  593e81:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  593e84:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
  593e87:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  593e8a:	85 c9                	test   ecx,ecx
  593e8c:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  593e8f:	89 53 0c             	mov    DWORD PTR [ebx+0xc],edx
  593e92:	74 15                	je     0x593ea9
  593e94:	8b 11                	mov    edx,DWORD PTR [ecx]
  593e96:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
  593e99:	83 c0 10             	add    eax,0x10
  593e9c:	50                   	push   eax
  593e9d:	8d 43 10             	lea    eax,[ebx+0x10]
  593ea0:	50                   	push   eax
  593ea1:	ff d2                	call   edx
  593ea3:	8b c3                	mov    eax,ebx
  593ea5:	5b                   	pop    ebx
  593ea6:	c2 04 00             	ret    0x4
  593ea9:	56                   	push   esi
  593eaa:	57                   	push   edi
  593eab:	8d 70 10             	lea    esi,[eax+0x10]
  593eae:	8d 7b 10             	lea    edi,[ebx+0x10]
  593eb1:	b9 10 00 00 00       	mov    ecx,0x10
  593eb6:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  593eb8:	5f                   	pop    edi
  593eb9:	5e                   	pop    esi
  593eba:	8b c3                	mov    eax,ebx
  593ebc:	5b                   	pop    ebx
  593ebd:	c2 04 00             	ret    0x4
