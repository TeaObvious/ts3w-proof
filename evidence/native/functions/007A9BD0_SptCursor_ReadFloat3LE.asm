# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a9bd0 <.text+0x3a8bd0>:
  7a9bd0:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  7a9bd3:	55                   	push   ebp
  7a9bd4:	8b 29                	mov    ebp,DWORD PTR [ecx]
  7a9bd6:	56                   	push   esi
  7a9bd7:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  7a9bdb:	57                   	push   edi
  7a9bdc:	8d 7d 01             	lea    edi,[ebp+0x1]
  7a9bdf:	89 39                	mov    DWORD PTR [ecx],edi
  7a9be1:	0f b6 04 2a          	movzx  eax,BYTE PTR [edx+ebp*1]
  7a9be5:	88 44 24 10          	mov    BYTE PTR [esp+0x10],al
  7a9be9:	8d 6f 01             	lea    ebp,[edi+0x1]
  7a9bec:	89 29                	mov    DWORD PTR [ecx],ebp
  7a9bee:	0f b6 04 3a          	movzx  eax,BYTE PTR [edx+edi*1]
  7a9bf2:	88 44 24 11          	mov    BYTE PTR [esp+0x11],al
  7a9bf6:	8d 7d 01             	lea    edi,[ebp+0x1]
  7a9bf9:	89 39                	mov    DWORD PTR [ecx],edi
  7a9bfb:	0f b6 04 2a          	movzx  eax,BYTE PTR [edx+ebp*1]
  7a9bff:	88 44 24 12          	mov    BYTE PTR [esp+0x12],al
  7a9c03:	8d 6f 01             	lea    ebp,[edi+0x1]
  7a9c06:	89 29                	mov    DWORD PTR [ecx],ebp
  7a9c08:	0f b6 04 3a          	movzx  eax,BYTE PTR [edx+edi*1]
  7a9c0c:	88 44 24 13          	mov    BYTE PTR [esp+0x13],al
  7a9c10:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  7a9c16:	8d 7d 01             	lea    edi,[ebp+0x1]
  7a9c19:	89 39                	mov    DWORD PTR [ecx],edi
  7a9c1b:	0f b6 04 2a          	movzx  eax,BYTE PTR [edx+ebp*1]
  7a9c1f:	88 44 24 10          	mov    BYTE PTR [esp+0x10],al
  7a9c23:	8d 6f 01             	lea    ebp,[edi+0x1]
  7a9c26:	89 29                	mov    DWORD PTR [ecx],ebp
  7a9c28:	0f b6 04 3a          	movzx  eax,BYTE PTR [edx+edi*1]
  7a9c2c:	88 44 24 11          	mov    BYTE PTR [esp+0x11],al
  7a9c30:	8d 7d 01             	lea    edi,[ebp+0x1]
  7a9c33:	89 39                	mov    DWORD PTR [ecx],edi
  7a9c35:	0f b6 04 2a          	movzx  eax,BYTE PTR [edx+ebp*1]
  7a9c39:	88 44 24 12          	mov    BYTE PTR [esp+0x12],al
  7a9c3d:	8d 6f 01             	lea    ebp,[edi+0x1]
  7a9c40:	89 29                	mov    DWORD PTR [ecx],ebp
  7a9c42:	0f b6 04 3a          	movzx  eax,BYTE PTR [edx+edi*1]
  7a9c46:	88 44 24 13          	mov    BYTE PTR [esp+0x13],al
  7a9c4a:	8d 7d 01             	lea    edi,[ebp+0x1]
  7a9c4d:	89 39                	mov    DWORD PTR [ecx],edi
  7a9c4f:	0f b6 04 2a          	movzx  eax,BYTE PTR [edx+ebp*1]
  7a9c53:	8d 6f 01             	lea    ebp,[edi+0x1]
  7a9c56:	89 29                	mov    DWORD PTR [ecx],ebp
  7a9c58:	f3 0f 11 06          	movss  DWORD PTR [esi],xmm0
  7a9c5c:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  7a9c62:	88 44 24 10          	mov    BYTE PTR [esp+0x10],al
  7a9c66:	0f b6 04 3a          	movzx  eax,BYTE PTR [edx+edi*1]
  7a9c6a:	8d 7d 01             	lea    edi,[ebp+0x1]
  7a9c6d:	88 44 24 11          	mov    BYTE PTR [esp+0x11],al
  7a9c71:	89 39                	mov    DWORD PTR [ecx],edi
  7a9c73:	0f b6 04 2a          	movzx  eax,BYTE PTR [edx+ebp*1]
  7a9c77:	88 44 24 12          	mov    BYTE PTR [esp+0x12],al
  7a9c7b:	8d 47 01             	lea    eax,[edi+0x1]
  7a9c7e:	89 01                	mov    DWORD PTR [ecx],eax
  7a9c80:	8a 0c 3a             	mov    cl,BYTE PTR [edx+edi*1]
  7a9c83:	f3 0f 11 46 04       	movss  DWORD PTR [esi+0x4],xmm0
  7a9c88:	88 4c 24 13          	mov    BYTE PTR [esp+0x13],cl
  7a9c8c:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  7a9c92:	5f                   	pop    edi
  7a9c93:	f3 0f 11 46 08       	movss  DWORD PTR [esi+0x8],xmm0
  7a9c98:	8b c6                	mov    eax,esi
  7a9c9a:	5e                   	pop    esi
  7a9c9b:	5d                   	pop    ebp
  7a9c9c:	c2 04 00             	ret    0x4
