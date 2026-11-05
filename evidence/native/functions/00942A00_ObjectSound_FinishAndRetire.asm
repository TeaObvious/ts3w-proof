# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942a00 <.text+0x541a00>:
  942a00:	a1 40 9c 1d 01       	mov    eax,ds:0x11d9c40
  942a05:	83 ec 08             	sub    esp,0x8
  942a08:	85 c0                	test   eax,eax
  942a0a:	53                   	push   ebx
  942a0b:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  942a0f:	56                   	push   esi
  942a10:	57                   	push   edi
  942a11:	8b f9                	mov    edi,ecx
  942a13:	74 3b                	je     0x942a50
  942a15:	8d b0 30 84 fd ff    	lea    esi,[eax-0x27bd0]
  942a1b:	85 f6                	test   esi,esi
  942a1d:	74 31                	je     0x942a50
  942a1f:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  942a22:	85 c0                	test   eax,eax
  942a24:	74 22                	je     0x942a48
  942a26:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  942a29:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  942a2d:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  942a30:	6a 00                	push   0x0
  942a32:	8d 44 24 10          	lea    eax,[esp+0x10]
  942a36:	50                   	push   eax
  942a37:	53                   	push   ebx
  942a38:	68 ee 29 a1 03       	push   0x3a129ee
  942a3d:	8b ce                	mov    ecx,esi
  942a3f:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  942a43:	e8 a8 2f f2 ff       	call   0x8659f0
  942a48:	53                   	push   ebx
  942a49:	8b ce                	mov    ecx,esi
  942a4b:	e8 50 37 f2 ff       	call   0x8661a0
  942a50:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  942a55:	74 46                	je     0x942a9d
  942a57:	e8 a4 d3 f6 ff       	call   0x8afe00
  942a5c:	85 c0                	test   eax,eax
  942a5e:	74 0a                	je     0x942a6a
  942a60:	8b 10                	mov    edx,DWORD PTR [eax]
  942a62:	8b c8                	mov    ecx,eax
  942a64:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
  942a67:	53                   	push   ebx
  942a68:	ff d0                	call   eax
  942a6a:	8b 57 24             	mov    edx,DWORD PTR [edi+0x24]
  942a6d:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  942a70:	3b c2                	cmp    eax,edx
  942a72:	8d 4f 20             	lea    ecx,[edi+0x20]
  942a75:	74 26                	je     0x942a9d
  942a77:	eb 07                	jmp    0x942a80
  942a79:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  942a80:	8b 30                	mov    esi,DWORD PTR [eax]
  942a82:	81 e6 ff ff ff 3f    	and    esi,0x3fffffff
  942a88:	3b f3                	cmp    esi,ebx
  942a8a:	74 07                	je     0x942a93
  942a8c:	83 c0 14             	add    eax,0x14
  942a8f:	3b c2                	cmp    eax,edx
  942a91:	75 ed                	jne    0x942a80
  942a93:	3b c2                	cmp    eax,edx
  942a95:	74 06                	je     0x942a9d
  942a97:	50                   	push   eax
  942a98:	e8 b3 fc ff ff       	call   0x942750
  942a9d:	5f                   	pop    edi
  942a9e:	5e                   	pop    esi
  942a9f:	5b                   	pop    ebx
  942aa0:	83 c4 08             	add    esp,0x8
  942aa3:	c2 08 00             	ret    0x8
