# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0095f810, 0x0095f874).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_SetObjectSnowDisableSource (analyst-assigned)
Entry: 0x0095f810
Ghidra body envelope: 0x0095f810..0x0095f873 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

0095f810 <.text+0x55e810>:
  95f810:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  95f813:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  95f817:	a9 00 00 1e 00       	test   eax,0x1e0000
  95f81c:	53                   	push   ebx
  95f81d:	0f 94 c3             	sete   bl
  95f820:	83 fa 03             	cmp    edx,0x3
  95f823:	77 4b                	ja     0x95f870
  95f825:	ff 24 95 74 f8 95 00 	jmp    DWORD PTR [edx*4+0x95f874]
  95f82c:	ba 00 00 02 00       	mov    edx,0x20000
  95f831:	eb 13                	jmp    0x95f846
  95f833:	ba 00 00 04 00       	mov    edx,0x40000
  95f838:	eb 0c                	jmp    0x95f846
  95f83a:	ba 00 00 08 00       	mov    edx,0x80000
  95f83f:	eb 05                	jmp    0x95f846
  95f841:	ba 00 00 10 00       	mov    edx,0x100000
  95f846:	80 7c 24 08 00       	cmp    BYTE PTR [esp+0x8],0x0
  95f84b:	74 09                	je     0x95f856
  95f84d:	f7 d2                	not    edx
  95f84f:	23 d0                	and    edx,eax
  95f851:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  95f854:	eb 05                	jmp    0x95f85b
  95f856:	0b c2                	or     eax,edx
  95f858:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  95f85b:	f7 41 08 00 00 1e 00 	test   DWORD PTR [ecx+0x8],0x1e0000
  95f862:	0f 94 c0             	sete   al
  95f865:	3a c3                	cmp    al,bl
  95f867:	74 07                	je     0x95f870
  95f869:	6a 01                	push   0x1
  95f86b:	e8 20 ee ff ff       	call   0x95e690
  95f870:	5b                   	pop    ebx
  95f871:	c2 08 00             	ret    0x8
