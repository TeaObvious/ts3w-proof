# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004fe760 <.text+0xfd760>:
  4fe760:	56                   	push   esi
  4fe761:	57                   	push   edi
  4fe762:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  4fe766:	85 ff                	test   edi,edi
  4fe768:	74 1f                	je     0x4fe789
  4fe76a:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  4fe76e:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  4fe772:	8a 06                	mov    al,BYTE PTR [esi]
  4fe774:	8a 0a                	mov    cl,BYTE PTR [edx]
  4fe776:	83 c2 01             	add    edx,0x1
  4fe779:	83 c6 01             	add    esi,0x1
  4fe77c:	3a c1                	cmp    al,cl
  4fe77e:	75 0e                	jne    0x4fe78e
  4fe780:	84 c0                	test   al,al
  4fe782:	74 05                	je     0x4fe789
  4fe784:	83 ef 01             	sub    edi,0x1
  4fe787:	75 e9                	jne    0x4fe772
  4fe789:	5f                   	pop    edi
  4fe78a:	33 c0                	xor    eax,eax
  4fe78c:	5e                   	pop    esi
  4fe78d:	c3                   	ret
  4fe78e:	0f b6 c9             	movzx  ecx,cl
  4fe791:	0f b6 c0             	movzx  eax,al
  4fe794:	5f                   	pop    edi
  4fe795:	2b c1                	sub    eax,ecx
  4fe797:	5e                   	pop    esi
  4fe798:	c3                   	ret
