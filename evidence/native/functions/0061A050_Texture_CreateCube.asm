# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0061a050 <.text+0x219050>:
  61a050:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  61a054:	a8 04                	test   al,0x4
  61a056:	56                   	push   esi
  61a057:	8b f1                	mov    esi,ecx
  61a059:	74 04                	je     0x61a05f
  61a05b:	a8 13                	test   al,0x13
  61a05d:	75 0d                	jne    0x61a06c
  61a05f:	a8 10                	test   al,0x10
  61a061:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  61a065:	74 0b                	je     0x61a072
  61a067:	83 f9 01             	cmp    ecx,0x1
  61a06a:	76 06                	jbe    0x61a072
  61a06c:	32 c0                	xor    al,al
  61a06e:	5e                   	pop    esi
  61a06f:	c2 14 00             	ret    0x14
  61a072:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  61a075:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  61a079:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  61a07c:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  61a07f:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  61a083:	51                   	push   ecx
  61a084:	8b ce                	mov    ecx,esi
  61a086:	c7 46 2c 01 00 00 00 	mov    DWORD PTR [esi+0x2c],0x1
  61a08d:	c7 46 24 00 00 00 00 	mov    DWORD PTR [esi+0x24],0x0
  61a094:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  61a097:	e8 c4 fe ff ff       	call   0x619f60
  61a09c:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  61a0a0:	51                   	push   ecx
  61a0a1:	8b ce                	mov    ecx,esi
  61a0a3:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  61a0a6:	e8 d5 fb ff ff       	call   0x619c80
  61a0ab:	84 c0                	test   al,al
  61a0ad:	74 bd                	je     0x61a06c
  61a0af:	8d 4e 08             	lea    ecx,[esi+0x8]
  61a0b2:	e8 29 a6 ff ff       	call   0x6146e0
  61a0b7:	b0 01                	mov    al,0x1
  61a0b9:	5e                   	pop    esi
  61a0ba:	c2 14 00             	ret    0x14
