# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0068ef70 <.text+0x28df70>:
  68ef70:	56                   	push   esi
  68ef71:	57                   	push   edi
  68ef72:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  68ef76:	85 ff                	test   edi,edi
  68ef78:	8b f1                	mov    esi,ecx
  68ef7a:	74 09                	je     0x68ef85
  68ef7c:	8b 07                	mov    eax,DWORD PTR [edi]
  68ef7e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  68ef81:	8b cf                	mov    ecx,edi
  68ef83:	ff d2                	call   edx
  68ef85:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  68ef88:	85 c9                	test   ecx,ecx
  68ef8a:	74 07                	je     0x68ef93
  68ef8c:	8b 01                	mov    eax,DWORD PTR [ecx]
  68ef8e:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  68ef91:	ff d2                	call   edx
  68ef93:	89 7e 18             	mov    DWORD PTR [esi+0x18],edi
  68ef96:	5f                   	pop    edi
  68ef97:	5e                   	pop    esi
  68ef98:	c2 04 00             	ret    0x4
