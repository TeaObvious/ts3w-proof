# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00950ec0 <.text+0x54fec0>:
  950ec0:	51                   	push   ecx
  950ec1:	53                   	push   ebx
  950ec2:	56                   	push   esi
  950ec3:	8b f1                	mov    esi,ecx
  950ec5:	e8 b6 ef b5 ff       	call   0x4afe80
  950eca:	33 c9                	xor    ecx,ecx
  950ecc:	39 4e 38             	cmp    DWORD PTR [esi+0x38],ecx
  950ecf:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  950ed3:	74 1e                	je     0x950ef3
  950ed5:	8b 10                	mov    edx,DWORD PTR [eax]
  950ed7:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
  950eda:	51                   	push   ecx
  950edb:	51                   	push   ecx
  950edc:	51                   	push   ecx
  950edd:	51                   	push   ecx
  950ede:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  950ee2:	51                   	push   ecx
  950ee3:	8d 4e 30             	lea    ecx,[esi+0x30]
  950ee6:	51                   	push   ecx
  950ee7:	8b c8                	mov    ecx,eax
  950ee9:	ff d2                	call   edx
  950eeb:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  950eef:	8a d8                	mov    bl,al
  950ef1:	eb 02                	jmp    0x950ef5
  950ef3:	32 db                	xor    bl,bl
  950ef5:	8b 46 44             	mov    eax,DWORD PTR [esi+0x44]
  950ef8:	85 c0                	test   eax,eax
  950efa:	74 14                	je     0x950f10
  950efc:	c7 46 44 00 00 00 00 	mov    DWORD PTR [esi+0x44],0x0
  950f03:	8b 10                	mov    edx,DWORD PTR [eax]
  950f05:	8b c8                	mov    ecx,eax
  950f07:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  950f0a:	ff d0                	call   eax
  950f0c:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  950f10:	84 db                	test   bl,bl
  950f12:	74 1a                	je     0x950f2e
  950f14:	8b 11                	mov    edx,DWORD PTR [ecx]
  950f16:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  950f19:	68 1d ad ad 00       	push   0xadad1d
  950f1e:	ff d0                	call   eax
  950f20:	6a 00                	push   0x0
  950f22:	50                   	push   eax
  950f23:	8b ce                	mov    ecx,esi
  950f25:	e8 46 fa ff ff       	call   0x950970
  950f2a:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  950f2e:	85 c9                	test   ecx,ecx
  950f30:	5e                   	pop    esi
  950f31:	5b                   	pop    ebx
  950f32:	74 07                	je     0x950f3b
  950f34:	8b 11                	mov    edx,DWORD PTR [ecx]
  950f36:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  950f39:	ff d0                	call   eax
  950f3b:	b0 01                	mov    al,0x1
  950f3d:	59                   	pop    ecx
  950f3e:	c3                   	ret
