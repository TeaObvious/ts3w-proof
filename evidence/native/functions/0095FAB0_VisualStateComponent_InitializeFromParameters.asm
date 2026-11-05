# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0095fab0,0x0095fb64); analyst name VisualStateComponent_InitializeFromParameters.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095fab0 <.text+0x55eab0>:
  95fab0:	51                   	push   ecx
  95fab1:	56                   	push   esi
  95fab2:	57                   	push   edi
  95fab3:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  95fab7:	8d 44 24 08          	lea    eax,[esp+0x8]
  95fabb:	50                   	push   eax
  95fabc:	8b f1                	mov    esi,ecx
  95fabe:	68 b8 c9 1e ea       	push   0xea1ec9b8
  95fac3:	8b cf                	mov    ecx,edi
  95fac5:	e8 06 9c fd ff       	call   0x9396d0
  95faca:	84 c0                	test   al,al
  95facc:	74 17                	je     0x95fae5
  95face:	83 7c 24 08 00       	cmp    DWORD PTR [esp+0x8],0x0
  95fad3:	74 09                	je     0x95fade
  95fad5:	81 66 08 ff ef ff ff 	and    DWORD PTR [esi+0x8],0xffffefff
  95fadc:	eb 07                	jmp    0x95fae5
  95fade:	81 4e 08 00 10 00 00 	or     DWORD PTR [esi+0x8],0x1000
  95fae5:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  95fae9:	51                   	push   ecx
  95faea:	68 b8 04 18 5c       	push   0x5c1804b8
  95faef:	8b cf                	mov    ecx,edi
  95faf1:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  95faf8:	00 
  95faf9:	e8 d2 9b fd ff       	call   0x9396d0
  95fafe:	84 c0                	test   al,al
  95fb00:	74 36                	je     0x95fb38
  95fb02:	83 7c 24 10 00       	cmp    DWORD PTR [esp+0x10],0x0
  95fb07:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  95fb0a:	0f 94 c1             	sete   cl
  95fb0d:	a9 00 00 1e 00       	test   eax,0x1e0000
  95fb12:	0f 94 c2             	sete   dl
  95fb15:	84 c9                	test   cl,cl
  95fb17:	74 07                	je     0x95fb20
  95fb19:	25 ff ff ef ff       	and    eax,0xffefffff
  95fb1e:	eb 05                	jmp    0x95fb25
  95fb20:	0d 00 00 10 00       	or     eax,0x100000
  95fb25:	a9 00 00 1e 00       	test   eax,0x1e0000
  95fb2a:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  95fb2d:	0f 94 c0             	sete   al
  95fb30:	3a c2                	cmp    al,dl
  95fb32:	74 16                	je     0x95fb4a
  95fb34:	6a 01                	push   0x1
  95fb36:	eb 0b                	jmp    0x95fb43
  95fb38:	f7 46 08 00 00 1e 00 	test   DWORD PTR [esi+0x8],0x1e0000
  95fb3f:	74 09                	je     0x95fb4a
  95fb41:	6a 00                	push   0x0
  95fb43:	8b ce                	mov    ecx,esi
  95fb45:	e8 46 eb ff ff       	call   0x95e690
  95fb4a:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  95fb4d:	8b 15 fc a0 1e 01    	mov    edx,DWORD PTR ds:0x11ea0fc
  95fb53:	85 51 2c             	test   DWORD PTR [ecx+0x2c],edx
  95fb56:	b0 01                	mov    al,0x1
  95fb58:	74 04                	je     0x95fb5e
  95fb5a:	83 4e 08 40          	or     DWORD PTR [esi+0x8],0x40
  95fb5e:	5f                   	pop    edi
  95fb5f:	5e                   	pop    esi
  95fb60:	59                   	pop    ecx
  95fb61:	c2 04 00             	ret    0x4
