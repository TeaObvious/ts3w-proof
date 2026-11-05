# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00626cd0,0x00626d94); analyst name PortalGraphSearch_GetNodePosition.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00626cd0 <.text+0x225cd0>:
  626cd0:	53                   	push   ebx
  626cd1:	56                   	push   esi
  626cd2:	57                   	push   edi
  626cd3:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  626cd7:	8b c7                	mov    eax,edi
  626cd9:	25 f0 ff 00 00       	and    eax,0xfff0
  626cde:	3d f0 ff 00 00       	cmp    eax,0xfff0
  626ce3:	74 38                	je     0x626d1d
  626ce5:	8b d7                	mov    edx,edi
  626ce7:	c1 ea 10             	shr    edx,0x10
  626cea:	0f b7 c2             	movzx  eax,dx
  626ced:	8b f0                	mov    esi,eax
  626cef:	c1 e6 04             	shl    esi,0x4
  626cf2:	03 f0                	add    esi,eax
  626cf4:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  626cf8:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [eax+0x90]
  626cfe:	8b 5c b0 08          	mov    ebx,DWORD PTR [eax+esi*4+0x8]
  626d02:	2b 5c b0 04          	sub    ebx,DWORD PTR [eax+esi*4+0x4]
  626d06:	8d 04 b0             	lea    eax,[eax+esi*4]
  626d09:	0f b7 f7             	movzx  esi,di
  626d0c:	c1 fb 02             	sar    ebx,0x2
  626d0f:	3b f3                	cmp    esi,ebx
  626d11:	73 0a                	jae    0x626d1d
  626d13:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  626d16:	8b 34 b0             	mov    esi,DWORD PTR [eax+esi*4]
  626d19:	85 f6                	test   esi,esi
  626d1b:	75 3e                	jne    0x626d5b
  626d1d:	bb 01 00 00 00       	mov    ebx,0x1
  626d22:	84 1d 10 00 1d 01    	test   BYTE PTR ds:0x11d0010,bl
  626d28:	75 06                	jne    0x626d30
  626d2a:	09 1d 10 00 1d 01    	or     DWORD PTR ds:0x11d0010,ebx
  626d30:	0f b7 c7             	movzx  eax,di
  626d33:	2d fe ff 00 00       	sub    eax,0xfffe
  626d38:	74 18                	je     0x626d52
  626d3a:	2b c3                	sub    eax,ebx
  626d3c:	74 0b                	je     0x626d49
  626d3e:	5f                   	pop    edi
  626d3f:	5e                   	pop    esi
  626d40:	b8 04 00 1d 01       	mov    eax,0x11d0004
  626d45:	5b                   	pop    ebx
  626d46:	c2 10 00             	ret    0x10
  626d49:	5f                   	pop    edi
  626d4a:	5e                   	pop    esi
  626d4b:	8d 41 14             	lea    eax,[ecx+0x14]
  626d4e:	5b                   	pop    ebx
  626d4f:	c2 10 00             	ret    0x10
  626d52:	5f                   	pop    edi
  626d53:	5e                   	pop    esi
  626d54:	8d 41 08             	lea    eax,[ecx+0x8]
  626d57:	5b                   	pop    ebx
  626d58:	c2 10 00             	ret    0x10
  626d5b:	66 39 56 48          	cmp    WORD PTR [esi+0x48],dx
  626d5f:	bb 01 00 00 00       	mov    ebx,0x1
  626d64:	74 0e                	je     0x626d74
  626d66:	8a 4e 58             	mov    cl,BYTE PTR [esi+0x58]
  626d69:	d0 e9                	shr    cl,1
  626d6b:	22 cb                	and    cl,bl
  626d6d:	c6 44 24 18 00       	mov    BYTE PTR [esp+0x18],0x0
  626d72:	74 04                	je     0x626d78
  626d74:	88 5c 24 18          	mov    BYTE PTR [esp+0x18],bl
  626d78:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  626d7c:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  626d80:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  626d84:	52                   	push   edx
  626d85:	50                   	push   eax
  626d86:	51                   	push   ecx
  626d87:	8b ce                	mov    ecx,esi
  626d89:	e8 e2 83 02 00       	call   0x64f170
  626d8e:	5f                   	pop    edi
  626d8f:	5e                   	pop    esi
  626d90:	5b                   	pop    ebx
  626d91:	c2 10 00             	ret    0x10
