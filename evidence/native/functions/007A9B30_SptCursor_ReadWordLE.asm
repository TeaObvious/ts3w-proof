# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a9b30 <.text+0x3a8b30>:
  7a9b30:	51                   	push   ecx
  7a9b31:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  7a9b34:	56                   	push   esi
  7a9b35:	57                   	push   edi
  7a9b36:	8b 39                	mov    edi,DWORD PTR [ecx]
  7a9b38:	8d 77 01             	lea    esi,[edi+0x1]
  7a9b3b:	89 31                	mov    DWORD PTR [ecx],esi
  7a9b3d:	0f b6 14 38          	movzx  edx,BYTE PTR [eax+edi*1]
  7a9b41:	8d 7e 01             	lea    edi,[esi+0x1]
  7a9b44:	89 39                	mov    DWORD PTR [ecx],edi
  7a9b46:	88 54 24 08          	mov    BYTE PTR [esp+0x8],dl
  7a9b4a:	0f b6 14 30          	movzx  edx,BYTE PTR [eax+esi*1]
  7a9b4e:	8d 77 01             	lea    esi,[edi+0x1]
  7a9b51:	89 31                	mov    DWORD PTR [ecx],esi
  7a9b53:	88 54 24 09          	mov    BYTE PTR [esp+0x9],dl
  7a9b57:	0f b6 14 38          	movzx  edx,BYTE PTR [eax+edi*1]
  7a9b5b:	88 54 24 0a          	mov    BYTE PTR [esp+0xa],dl
  7a9b5f:	8d 56 01             	lea    edx,[esi+0x1]
  7a9b62:	89 11                	mov    DWORD PTR [ecx],edx
  7a9b64:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
  7a9b67:	88 44 24 0b          	mov    BYTE PTR [esp+0xb],al
  7a9b6b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  7a9b6f:	5f                   	pop    edi
  7a9b70:	5e                   	pop    esi
  7a9b71:	59                   	pop    ecx
  7a9b72:	c3                   	ret
