# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942bb0 <.text+0x541bb0>:
  942bb0:	53                   	push   ebx
  942bb1:	55                   	push   ebp
  942bb2:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
  942bb6:	56                   	push   esi
  942bb7:	57                   	push   edi
  942bb8:	8b f9                	mov    edi,ecx
  942bba:	8b 47 24             	mov    eax,DWORD PTR [edi+0x24]
  942bbd:	8b 77 20             	mov    esi,DWORD PTR [edi+0x20]
  942bc0:	3b f0                	cmp    esi,eax
  942bc2:	74 13                	je     0x942bd7
  942bc4:	8b 0e                	mov    ecx,DWORD PTR [esi]
  942bc6:	81 e1 ff ff ff 3f    	and    ecx,0x3fffffff
  942bcc:	3b cd                	cmp    ecx,ebp
  942bce:	74 07                	je     0x942bd7
  942bd0:	83 c6 14             	add    esi,0x14
  942bd3:	3b f0                	cmp    esi,eax
  942bd5:	75 ed                	jne    0x942bc4
  942bd7:	32 db                	xor    bl,bl
  942bd9:	3b f0                	cmp    esi,eax
  942bdb:	74 1a                	je     0x942bf7
  942bdd:	68 7a 8f f9 00       	push   0xf98f7a
  942be2:	68 7a 8f f9 00       	push   0xf98f7a
  942be7:	8d 4e 04             	lea    ecx,[esi+0x4]
  942bea:	e8 21 2d ac ff       	call   0x405910
  942bef:	8b 1e                	mov    ebx,DWORD PTR [esi]
  942bf1:	c1 eb 1e             	shr    ebx,0x1e
  942bf4:	80 e3 01             	and    bl,0x1
  942bf7:	80 7f 4c 00          	cmp    BYTE PTR [edi+0x4c],0x0
  942bfb:	74 1e                	je     0x942c1b
  942bfd:	f7 c5 00 00 00 40    	test   ebp,0x40000000
  942c03:	75 16                	jne    0x942c1b
  942c05:	0f b6 54 24 18       	movzx  edx,BYTE PTR [esp+0x18]
  942c0a:	52                   	push   edx
  942c0b:	55                   	push   ebp
  942c0c:	e8 cf dc f1 ff       	call   0x8608e0
  942c11:	83 c4 08             	add    esp,0x8
  942c14:	5f                   	pop    edi
  942c15:	5e                   	pop    esi
  942c16:	5d                   	pop    ebp
  942c17:	5b                   	pop    ebx
  942c18:	c2 08 00             	ret    0x8
  942c1b:	6a 01                	push   0x1
  942c1d:	55                   	push   ebp
  942c1e:	8b cf                	mov    ecx,edi
  942c20:	e8 db fd ff ff       	call   0x942a00
  942c25:	84 db                	test   bl,bl
  942c27:	74 0f                	je     0x942c38
  942c29:	0f b6 44 24 18       	movzx  eax,BYTE PTR [esp+0x18]
  942c2e:	50                   	push   eax
  942c2f:	55                   	push   ebp
  942c30:	e8 ab dc f1 ff       	call   0x8608e0
  942c35:	83 c4 08             	add    esp,0x8
  942c38:	5f                   	pop    edi
  942c39:	5e                   	pop    esi
  942c3a:	5d                   	pop    ebp
  942c3b:	5b                   	pop    ebx
  942c3c:	c2 08 00             	ret    0x8
