# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0059db10 <.text+0x19cb10>:
  59db10:	83 ec 14             	sub    esp,0x14
  59db13:	56                   	push   esi
  59db14:	57                   	push   edi
  59db15:	8b f9                	mov    edi,ecx
  59db17:	e8 64 23 f1 ff       	call   0x4afe80
  59db1c:	8b f0                	mov    esi,eax
  59db1e:	85 f6                	test   esi,esi
  59db20:	75 08                	jne    0x59db2a
  59db22:	5f                   	pop    edi
  59db23:	32 c0                	xor    al,al
  59db25:	5e                   	pop    esi
  59db26:	83 c4 14             	add    esp,0x14
  59db29:	c3                   	ret
  59db2a:	8b 06                	mov    eax,DWORD PTR [esi]
  59db2c:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
  59db2f:	6a ff                	push   0xffffffff
  59db31:	68 70 83 a3 f3       	push   0xf3a38370
  59db36:	8b ce                	mov    ecx,esi
  59db38:	ff d2                	call   edx
  59db3a:	85 c0                	test   eax,eax
  59db3c:	75 05                	jne    0x59db43
  59db3e:	e8 dd 63 39 00       	call   0x933f20
  59db43:	e8 78 1e 39 00       	call   0x92f9c0
  59db48:	33 c9                	xor    ecx,ecx
  59db4a:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  59db4e:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  59db52:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  59db56:	8d 44 24 08          	lea    eax,[esp+0x8]
  59db5a:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  59db5e:	8b c8                	mov    ecx,eax
  59db60:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  59db64:	c7 44 24 18 30 ec fd 	mov    DWORD PTR [esp+0x18],0xfdec30
  59db6b:	00 
  59db6c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  59db70:	8b 16                	mov    edx,DWORD PTR [esi]
  59db72:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
  59db75:	6a 00                	push   0x0
  59db77:	50                   	push   eax
  59db78:	8b ce                	mov    ecx,esi
  59db7a:	ff d2                	call   edx
  59db7c:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  59db80:	8d 44 24 08          	lea    eax,[esp+0x8]
  59db84:	3b f0                	cmp    esi,eax
  59db86:	74 19                	je     0x59dba1
  59db88:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  59db8b:	51                   	push   ecx
  59db8c:	8b cf                	mov    ecx,edi
  59db8e:	e8 1d fe ff ff       	call   0x59d9b0
  59db93:	8b 36                	mov    esi,DWORD PTR [esi]
  59db95:	8d 54 24 08          	lea    edx,[esp+0x8]
  59db99:	3b f2                	cmp    esi,edx
  59db9b:	75 eb                	jne    0x59db88
  59db9d:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  59dba1:	8d 44 24 08          	lea    eax,[esp+0x8]
  59dba5:	3b f0                	cmp    esi,eax
  59dba7:	74 21                	je     0x59dbca
  59dba9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  59dbb0:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  59dbb4:	8b 11                	mov    edx,DWORD PTR [ecx]
  59dbb6:	8b c6                	mov    eax,esi
  59dbb8:	8b 36                	mov    esi,DWORD PTR [esi]
  59dbba:	6a 0c                	push   0xc
  59dbbc:	50                   	push   eax
  59dbbd:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  59dbc0:	ff d0                	call   eax
  59dbc2:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  59dbc6:	3b f1                	cmp    esi,ecx
  59dbc8:	75 e6                	jne    0x59dbb0
  59dbca:	5f                   	pop    edi
  59dbcb:	b0 01                	mov    al,0x1
  59dbcd:	5e                   	pop    esi
  59dbce:	83 c4 14             	add    esp,0x14
  59dbd1:	c3                   	ret
