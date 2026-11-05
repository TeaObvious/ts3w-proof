# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a9cb0 <.text+0x3a8cb0>:
  7a9cb0:	83 ec 10             	sub    esp,0x10
  7a9cb3:	53                   	push   ebx
  7a9cb4:	55                   	push   ebp
  7a9cb5:	56                   	push   esi
  7a9cb6:	57                   	push   edi
  7a9cb7:	6a 00                	push   0x0
  7a9cb9:	68 7a 8f f9 00       	push   0xf98f7a
  7a9cbe:	68 54 8e 1c 01       	push   0x11c8e54
  7a9cc3:	8b f1                	mov    esi,ecx
  7a9cc5:	ff 15 88 66 f9 00    	call   DWORD PTR ds:0xf96688
  7a9ccb:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
  7a9ccf:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  7a9cd3:	83 c4 0c             	add    esp,0xc
  7a9cd6:	3b cf                	cmp    ecx,edi
  7a9cd8:	b8 54 8e 1c 01       	mov    eax,0x11c8e54
  7a9cdd:	c6 00 00             	mov    BYTE PTR [eax],0x0
  7a9ce0:	74 09                	je     0x7a9ceb
  7a9ce2:	50                   	push   eax
  7a9ce3:	50                   	push   eax
  7a9ce4:	8b cf                	mov    ecx,edi
  7a9ce6:	e8 25 bc c5 ff       	call   0x405910
  7a9ceb:	8b 2e                	mov    ebp,DWORD PTR [esi]
  7a9ced:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  7a9cf0:	8d 4d 01             	lea    ecx,[ebp+0x1]
  7a9cf3:	89 0e                	mov    DWORD PTR [esi],ecx
  7a9cf5:	0f b6 14 28          	movzx  edx,BYTE PTR [eax+ebp*1]
  7a9cf9:	88 54 24 24          	mov    BYTE PTR [esp+0x24],dl
  7a9cfd:	8d 51 01             	lea    edx,[ecx+0x1]
  7a9d00:	89 16                	mov    DWORD PTR [esi],edx
  7a9d02:	8a 0c 08             	mov    cl,BYTE PTR [eax+ecx*1]
  7a9d05:	88 4c 24 25          	mov    BYTE PTR [esp+0x25],cl
  7a9d09:	8d 4a 01             	lea    ecx,[edx+0x1]
  7a9d0c:	89 0e                	mov    DWORD PTR [esi],ecx
  7a9d0e:	0f b6 14 10          	movzx  edx,BYTE PTR [eax+edx*1]
  7a9d12:	88 54 24 26          	mov    BYTE PTR [esp+0x26],dl
  7a9d16:	8d 51 01             	lea    edx,[ecx+0x1]
  7a9d19:	89 16                	mov    DWORD PTR [esi],edx
  7a9d1b:	8a 04 08             	mov    al,BYTE PTR [eax+ecx*1]
  7a9d1e:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
  7a9d21:	8b 2f                	mov    ebp,DWORD PTR [edi]
  7a9d23:	88 44 24 27          	mov    BYTE PTR [esp+0x27],al
  7a9d27:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  7a9d2b:	8b c3                	mov    eax,ebx
  7a9d2d:	2b c5                	sub    eax,ebp
  7a9d2f:	3b c8                	cmp    ecx,eax
  7a9d31:	73 20                	jae    0x7a9d53
  7a9d33:	03 e9                	add    ebp,ecx
  7a9d35:	3b eb                	cmp    ebp,ebx
  7a9d37:	74 2c                	je     0x7a9d65
  7a9d39:	8b cb                	mov    ecx,ebx
  7a9d3b:	2b cb                	sub    ecx,ebx
  7a9d3d:	83 c1 01             	add    ecx,0x1
  7a9d40:	51                   	push   ecx
  7a9d41:	53                   	push   ebx
  7a9d42:	55                   	push   ebp
  7a9d43:	ff 15 88 66 f9 00    	call   DWORD PTR ds:0xf96688
  7a9d49:	2b eb                	sub    ebp,ebx
  7a9d4b:	83 c4 0c             	add    esp,0xc
  7a9d4e:	01 6f 04             	add    DWORD PTR [edi+0x4],ebp
  7a9d51:	eb 0e                	jmp    0x7a9d61
  7a9d53:	76 10                	jbe    0x7a9d65
  7a9d55:	2b c8                	sub    ecx,eax
  7a9d57:	6a 00                	push   0x0
  7a9d59:	51                   	push   ecx
  7a9d5a:	8b cf                	mov    ecx,edi
  7a9d5c:	e8 9f ff c5 ff       	call   0x409d00
  7a9d61:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  7a9d65:	8b 16                	mov    edx,DWORD PTR [esi]
  7a9d67:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  7a9d6a:	8b 3f                	mov    edi,DWORD PTR [edi]
  7a9d6c:	03 c2                	add    eax,edx
  7a9d6e:	8d 2c 08             	lea    ebp,[eax+ecx*1]
  7a9d71:	3b c5                	cmp    eax,ebp
  7a9d73:	74 0e                	je     0x7a9d83
  7a9d75:	8a 10                	mov    dl,BYTE PTR [eax]
  7a9d77:	88 17                	mov    BYTE PTR [edi],dl
  7a9d79:	83 c0 01             	add    eax,0x1
  7a9d7c:	83 c7 01             	add    edi,0x1
  7a9d7f:	3b c5                	cmp    eax,ebp
  7a9d81:	75 f2                	jne    0x7a9d75
  7a9d83:	01 0e                	add    DWORD PTR [esi],ecx
  7a9d85:	5f                   	pop    edi
  7a9d86:	5e                   	pop    esi
  7a9d87:	5d                   	pop    ebp
  7a9d88:	5b                   	pop    ebx
  7a9d89:	83 c4 10             	add    esp,0x10
  7a9d8c:	c2 04 00             	ret    0x4
