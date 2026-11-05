# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004aed70 (ResourceKey_FindNumericSuffix)
Complete body envelope: 0x004aed70..0x004aee1a (exclusive end)
Body ranges: [[004aed70, 004aee19]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004aed70 <.text+0xadd70>:
  4aed70:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  4aed75:	55                   	push   ebp
  4aed76:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
  4aed7a:	57                   	push   edi
  4aed7b:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  4aed7f:	74 16                	je     0x4aed97
  4aed81:	3b ef                	cmp    ebp,edi
  4aed83:	8b c5                	mov    eax,ebp
  4aed85:	74 10                	je     0x4aed97
  4aed87:	66 83 38 5f          	cmp    WORD PTR [eax],0x5f
  4aed8b:	75 03                	jne    0x4aed90
  4aed8d:	8d 68 02             	lea    ebp,[eax+0x2]
  4aed90:	83 c0 02             	add    eax,0x2
  4aed93:	3b c7                	cmp    eax,edi
  4aed95:	75 f0                	jne    0x4aed87
  4aed97:	8b c7                	mov    eax,edi
  4aed99:	2b c5                	sub    eax,ebp
  4aed9b:	83 e0 fe             	and    eax,0xfffffffe
  4aed9e:	83 f8 10             	cmp    eax,0x10
  4aeda1:	7d 05                	jge    0x4aeda8
  4aeda3:	5f                   	pop    edi
  4aeda4:	33 c0                	xor    eax,eax
  4aeda6:	5d                   	pop    ebp
  4aeda7:	c3                   	ret
  4aeda8:	0f b7 4d 00          	movzx  ecx,WORD PTR [ebp+0x0]
  4aedac:	66 83 f9 30          	cmp    cx,0x30
  4aedb0:	75 15                	jne    0x4aedc7
  4aedb2:	0f b7 45 02          	movzx  eax,WORD PTR [ebp+0x2]
  4aedb6:	66 3d 78 00          	cmp    ax,0x78
  4aedba:	74 06                	je     0x4aedc2
  4aedbc:	66 3d 58 00          	cmp    ax,0x58
  4aedc0:	75 05                	jne    0x4aedc7
  4aedc2:	83 c5 04             	add    ebp,0x4
  4aedc5:	eb 0e                	jmp    0x4aedd5
  4aedc7:	51                   	push   ecx
  4aedc8:	ff 15 70 67 f9 00    	call   DWORD PTR ds:0xf96770
  4aedce:	83 c4 04             	add    esp,0x4
  4aedd1:	85 c0                	test   eax,eax
  4aedd3:	74 ce                	je     0x4aeda3
  4aedd5:	53                   	push   ebx
  4aedd6:	33 db                	xor    ebx,ebx
  4aedd8:	3b ef                	cmp    ebp,edi
  4aedda:	56                   	push   esi
  4aeddb:	8b f5                	mov    esi,ebp
  4aeddd:	74 34                	je     0x4aee13
  4aeddf:	90                   	nop
  4aede0:	0f b7 0e             	movzx  ecx,WORD PTR [esi]
  4aede3:	51                   	push   ecx
  4aede4:	ff 15 6c 67 f9 00    	call   DWORD PTR ds:0xf9676c
  4aedea:	83 c4 04             	add    esp,0x4
  4aeded:	85 c0                	test   eax,eax
  4aedef:	74 22                	je     0x4aee13
  4aedf1:	83 c6 02             	add    esi,0x2
  4aedf4:	83 c3 01             	add    ebx,0x1
  4aedf7:	3b f7                	cmp    esi,edi
  4aedf9:	75 e5                	jne    0x4aede0
  4aedfb:	83 fb 08             	cmp    ebx,0x8
  4aedfe:	74 0c                	je     0x4aee0c
  4aee00:	83 fb 10             	cmp    ebx,0x10
  4aee03:	75 0e                	jne    0x4aee13
  4aee05:	80 7c 24 20 00       	cmp    BYTE PTR [esp+0x20],0x0
  4aee0a:	74 07                	je     0x4aee13
  4aee0c:	5e                   	pop    esi
  4aee0d:	5b                   	pop    ebx
  4aee0e:	5f                   	pop    edi
  4aee0f:	8b c5                	mov    eax,ebp
  4aee11:	5d                   	pop    ebp
  4aee12:	c3                   	ret
  4aee13:	5e                   	pop    esi
  4aee14:	5b                   	pop    ebx
  4aee15:	5f                   	pop    edi
  4aee16:	33 c0                	xor    eax,eax
  4aee18:	5d                   	pop    ebp
  4aee19:	c3                   	ret
