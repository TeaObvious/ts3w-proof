# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942b50 <.text+0x541b50>:
  942b50:	81 7c 24 04 ee 29 a1 	cmp    DWORD PTR [esp+0x4],0x3a129ee
  942b57:	03 
  942b58:	75 4f                	jne    0x942ba9
  942b5a:	8b 51 24             	mov    edx,DWORD PTR [ecx+0x24]
  942b5d:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
  942b60:	3b c2                	cmp    eax,edx
  942b62:	56                   	push   esi
  942b63:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  942b67:	c6 44 24 08 01       	mov    BYTE PTR [esp+0x8],0x1
  942b6c:	74 2f                	je     0x942b9d
  942b6e:	57                   	push   edi
  942b6f:	90                   	nop
  942b70:	8b 38                	mov    edi,DWORD PTR [eax]
  942b72:	81 e7 ff ff ff 3f    	and    edi,0x3fffffff
  942b78:	3b fe                	cmp    edi,esi
  942b7a:	74 07                	je     0x942b83
  942b7c:	83 c0 14             	add    eax,0x14
  942b7f:	3b c2                	cmp    eax,edx
  942b81:	75 ed                	jne    0x942b70
  942b83:	3b c2                	cmp    eax,edx
  942b85:	5f                   	pop    edi
  942b86:	74 15                	je     0x942b9d
  942b88:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  942b8b:	3b 50 08             	cmp    edx,DWORD PTR [eax+0x8]
  942b8e:	74 0d                	je     0x942b9d
  942b90:	f7 00 00 00 00 40    	test   DWORD PTR [eax],0x40000000
  942b96:	75 05                	jne    0x942b9d
  942b98:	c6 44 24 08 00       	mov    BYTE PTR [esp+0x8],0x0
  942b9d:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  942ba1:	50                   	push   eax
  942ba2:	56                   	push   esi
  942ba3:	e8 58 fe ff ff       	call   0x942a00
  942ba8:	5e                   	pop    esi
  942ba9:	c2 0c 00             	ret    0xc
