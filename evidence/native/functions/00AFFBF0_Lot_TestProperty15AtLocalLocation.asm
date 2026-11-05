# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00affbf0, 0x00affc7b); analyst name Lot_TestProperty15AtLocalLocation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00affbf0 <.text+0x6febf0>:
  affbf0:	51                   	push   ecx
  affbf1:	56                   	push   esi
  affbf2:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  affbf6:	85 f6                	test   esi,esi
  affbf8:	75 05                	jne    0xaffbff
  affbfa:	32 c0                	xor    al,al
  affbfc:	5e                   	pop    esi
  affbfd:	59                   	pop    ecx
  affbfe:	c3                   	ret
  affbff:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  affc03:	0c ff                	or     al,0xff
  affc05:	88 44 24 0c          	mov    BYTE PTR [esp+0xc],al
  affc09:	88 44 24 0d          	mov    BYTE PTR [esp+0xd],al
  affc0d:	8d 44 24 0c          	lea    eax,[esp+0xc]
  affc11:	50                   	push   eax
  affc12:	51                   	push   ecx
  affc13:	c6 44 24 16 00       	mov    BYTE PTR [esp+0x16],0x0
  affc18:	e8 13 7b ff ff       	call   0xaf7730
  affc1d:	0f be 44 24 14       	movsx  eax,BYTE PTR [esp+0x14]
  affc22:	0f be 4c 24 15       	movsx  ecx,BYTE PTR [esp+0x15]
  affc27:	83 c4 08             	add    esp,0x8
  affc2a:	85 c0                	test   eax,eax
  affc2c:	7c cc                	jl     0xaffbfa
  affc2e:	3b 86 74 01 00 00    	cmp    eax,DWORD PTR [esi+0x174]
  affc34:	7d c4                	jge    0xaffbfa
  affc36:	85 c9                	test   ecx,ecx
  affc38:	7c c0                	jl     0xaffbfa
  affc3a:	3b 8e 78 01 00 00    	cmp    ecx,DWORD PTR [esi+0x178]
  affc40:	7d b8                	jge    0xaffbfa
  affc42:	8a 4c 24 0e          	mov    cl,BYTE PTR [esp+0xe]
  affc46:	0f be c1             	movsx  eax,cl
  affc49:	3b 86 7c 01 00 00    	cmp    eax,DWORD PTR [esi+0x17c]
  affc4f:	7c a9                	jl     0xaffbfa
  affc51:	3b 86 80 01 00 00    	cmp    eax,DWORD PTR [esi+0x180]
  affc57:	7f a1                	jg     0xaffbfa
  affc59:	66 8b 54 24 0c       	mov    dx,WORD PTR [esp+0xc]
  affc5e:	8d 44 24 04          	lea    eax,[esp+0x4]
  affc62:	88 4c 24 06          	mov    BYTE PTR [esp+0x6],cl
  affc66:	50                   	push   eax
  affc67:	8b ce                	mov    ecx,esi
  affc69:	66 89 54 24 08       	mov    WORD PTR [esp+0x8],dx
  affc6e:	c6 44 24 0b 0f       	mov    BYTE PTR [esp+0xb],0xf
  affc73:	e8 98 70 fb ff       	call   0xab6d10
  affc78:	5e                   	pop    esi
  affc79:	59                   	pop    ecx
  affc7a:	c3                   	ret
