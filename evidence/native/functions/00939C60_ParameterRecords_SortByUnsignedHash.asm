# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00939c60,0x00939cd8); analyst name ParameterRecords_SortByUnsignedHash.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00939c60 <.text+0x538c60>:
  939c60:	53                   	push   ebx
  939c61:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
  939c65:	57                   	push   edi
  939c66:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  939c6a:	3b fb                	cmp    edi,ebx
  939c6c:	74 67                	je     0x939cd5
  939c6e:	56                   	push   esi
  939c6f:	8b f3                	mov    esi,ebx
  939c71:	2b f7                	sub    esi,edi
  939c73:	c1 fe 04             	sar    esi,0x4
  939c76:	8b c6                	mov    eax,esi
  939c78:	b9 00 00 00 00       	mov    ecx,0x0
  939c7d:	74 0a                	je     0x939c89
  939c7f:	90                   	nop
  939c80:	d1 f8                	sar    eax,1
  939c82:	83 c1 01             	add    ecx,0x1
  939c85:	85 c0                	test   eax,eax
  939c87:	75 f7                	jne    0x939c80
  939c89:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  939c8d:	50                   	push   eax
  939c8e:	8d 4c 09 fe          	lea    ecx,[ecx+ecx*1-0x2]
  939c92:	51                   	push   ecx
  939c93:	53                   	push   ebx
  939c94:	57                   	push   edi
  939c95:	e8 16 ff ff ff       	call   0x939bb0
  939c9a:	83 c4 10             	add    esp,0x10
  939c9d:	83 fe 1c             	cmp    esi,0x1c
  939ca0:	7e 23                	jle    0x939cc5
  939ca2:	55                   	push   ebp
  939ca3:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  939ca7:	55                   	push   ebp
  939ca8:	8d b7 c0 01 00 00    	lea    esi,[edi+0x1c0]
  939cae:	56                   	push   esi
  939caf:	57                   	push   edi
  939cb0:	e8 7b fa ff ff       	call   0x939730
  939cb5:	55                   	push   ebp
  939cb6:	53                   	push   ebx
  939cb7:	56                   	push   esi
  939cb8:	e8 e3 fa ff ff       	call   0x9397a0
  939cbd:	83 c4 18             	add    esp,0x18
  939cc0:	5d                   	pop    ebp
  939cc1:	5e                   	pop    esi
  939cc2:	5f                   	pop    edi
  939cc3:	5b                   	pop    ebx
  939cc4:	c3                   	ret
  939cc5:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  939cc9:	52                   	push   edx
  939cca:	53                   	push   ebx
  939ccb:	57                   	push   edi
  939ccc:	e8 5f fa ff ff       	call   0x939730
  939cd1:	83 c4 0c             	add    esp,0xc
  939cd4:	5e                   	pop    esi
  939cd5:	5f                   	pop    edi
  939cd6:	5b                   	pop    ebx
  939cd7:	c3                   	ret
