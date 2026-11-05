# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0061a360 <.text+0x219360>:
  61a360:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  61a364:	a8 04                	test   al,0x4
  61a366:	56                   	push   esi
  61a367:	8b f1                	mov    esi,ecx
  61a369:	74 04                	je     0x61a36f
  61a36b:	a8 13                	test   al,0x13
  61a36d:	75 0d                	jne    0x61a37c
  61a36f:	a8 10                	test   al,0x10
  61a371:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  61a375:	74 0b                	je     0x61a382
  61a377:	83 fa 01             	cmp    edx,0x1
  61a37a:	76 06                	jbe    0x61a382
  61a37c:	32 c0                	xor    al,al
  61a37e:	5e                   	pop    esi
  61a37f:	c2 18 00             	ret    0x18
  61a382:	57                   	push   edi
  61a383:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  61a387:	33 c9                	xor    ecx,ecx
  61a389:	a9 00 02 00 00       	test   eax,0x200
  61a38e:	89 7e 14             	mov    DWORD PTR [esi+0x14],edi
  61a391:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  61a395:	89 4e 2c             	mov    DWORD PTR [esi+0x2c],ecx
  61a398:	89 4e 24             	mov    DWORD PTR [esi+0x24],ecx
  61a39b:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  61a39f:	89 7e 18             	mov    DWORD PTR [esi+0x18],edi
  61a3a2:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  61a3a5:	89 4e 28             	mov    DWORD PTR [esi+0x28],ecx
  61a3a8:	5f                   	pop    edi
  61a3a9:	74 09                	je     0x61a3b4
  61a3ab:	c7 46 1c 01 00 00 00 	mov    DWORD PTR [esi+0x1c],0x1
  61a3b2:	eb 0b                	jmp    0x61a3bf
  61a3b4:	52                   	push   edx
  61a3b5:	8b ce                	mov    ecx,esi
  61a3b7:	e8 a4 fb ff ff       	call   0x619f60
  61a3bc:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  61a3bf:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  61a3c3:	52                   	push   edx
  61a3c4:	8b ce                	mov    ecx,esi
  61a3c6:	e8 b5 f8 ff ff       	call   0x619c80
  61a3cb:	84 c0                	test   al,al
  61a3cd:	74 ad                	je     0x61a37c
  61a3cf:	8d 4e 08             	lea    ecx,[esi+0x8]
  61a3d2:	e8 09 a3 ff ff       	call   0x6146e0
  61a3d7:	b0 01                	mov    al,0x1
  61a3d9:	5e                   	pop    esi
  61a3da:	c2 18 00             	ret    0x18
