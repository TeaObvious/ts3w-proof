# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0061a0c0 <.text+0x2190c0>:
  61a0c0:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  61a0c4:	a8 04                	test   al,0x4
  61a0c6:	56                   	push   esi
  61a0c7:	8b f1                	mov    esi,ecx
  61a0c9:	74 04                	je     0x61a0cf
  61a0cb:	a8 13                	test   al,0x13
  61a0cd:	75 0d                	jne    0x61a0dc
  61a0cf:	a8 10                	test   al,0x10
  61a0d1:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  61a0d5:	74 0b                	je     0x61a0e2
  61a0d7:	83 f9 01             	cmp    ecx,0x1
  61a0da:	76 06                	jbe    0x61a0e2
  61a0dc:	32 c0                	xor    al,al
  61a0de:	5e                   	pop    esi
  61a0df:	c2 1c 00             	ret    0x1c
  61a0e2:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  61a0e6:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  61a0e9:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  61a0ed:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  61a0f0:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  61a0f4:	89 56 18             	mov    DWORD PTR [esi+0x18],edx
  61a0f7:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  61a0fb:	51                   	push   ecx
  61a0fc:	8b ce                	mov    ecx,esi
  61a0fe:	c7 46 2c 02 00 00 00 	mov    DWORD PTR [esi+0x2c],0x2
  61a105:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  61a108:	89 56 28             	mov    DWORD PTR [esi+0x28],edx
  61a10b:	e8 50 fe ff ff       	call   0x619f60
  61a110:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  61a113:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  61a117:	50                   	push   eax
  61a118:	8b ce                	mov    ecx,esi
  61a11a:	e8 61 fb ff ff       	call   0x619c80
  61a11f:	84 c0                	test   al,al
  61a121:	74 b9                	je     0x61a0dc
  61a123:	8d 4e 08             	lea    ecx,[esi+0x8]
  61a126:	e8 b5 a5 ff ff       	call   0x6146e0
  61a12b:	b0 01                	mov    al,0x1
  61a12d:	5e                   	pop    esi
  61a12e:	c2 1c 00             	ret    0x1c
