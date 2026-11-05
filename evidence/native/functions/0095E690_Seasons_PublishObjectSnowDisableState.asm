# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0095e690, 0x0095e83e).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_PublishObjectSnowDisableState (analyst-assigned)
Entry: 0x0095e690
Ghidra body envelope: 0x0095e690..0x0095e83d inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

0095e690 <.text+0x55d690>:
  95e690:	55                   	push   ebp
  95e691:	8b ec                	mov    ebp,esp
  95e693:	83 e4 f0             	and    esp,0xfffffff0
  95e696:	81 ec c8 00 00 00    	sub    esp,0xc8
  95e69c:	53                   	push   ebx
  95e69d:	56                   	push   esi
  95e69e:	8b f1                	mov    esi,ecx
  95e6a0:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  95e6a3:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  95e6a6:	85 05 90 9e 1e 01    	test   DWORD PTR ds:0x11e9e90,eax
  95e6ac:	0f 85 84 01 00 00    	jne    0x95e836
  95e6b2:	85 05 fc a0 1e 01    	test   DWORD PTR ds:0x11ea0fc,eax
  95e6b8:	0f 85 78 01 00 00    	jne    0x95e836
  95e6be:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  95e6c1:	a9 00 00 1e 00       	test   eax,0x1e0000
  95e6c6:	0f 94 44 24 18       	sete   BYTE PTR [esp+0x18]
  95e6cb:	a9 00 00 1c 00       	test   eax,0x1c0000
  95e6d0:	0f 94 44 24 17       	sete   BYTE PTR [esp+0x17]
  95e6d5:	e8 f6 a5 32 00       	call   0xc88cd0
  95e6da:	33 db                	xor    ebx,ebx
  95e6dc:	84 c0                	test   al,al
  95e6de:	0f 84 da 00 00 00    	je     0x95e7be
  95e6e4:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  95e6e7:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  95e6ea:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  95e6ed:	89 8c 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],ecx
  95e6f4:	33 c9                	xor    ecx,ecx
  95e6f6:	38 5c 24 18          	cmp    BYTE PTR [esp+0x18],bl
  95e6fa:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  95e701:	0f 94 c1             	sete   cl
  95e704:	52                   	push   edx
  95e705:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0xd8a7ecc
  95e70c:	cc 7e 8a 0d
  95e710:	89 9c 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],ebx
  95e717:	89 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],eax
  95e71e:	c7 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],0x7bfef7db
  95e725:	db f7 fe 7b
  95e729:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],0x1
  95e730:	01 00 00 00
  95e734:	89 8c 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],ecx
  95e73b:	89 9c 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ebx
  95e742:	e8 39 4c d3 ff       	call   0x693380
  95e747:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  95e74a:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  95e74d:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  95e750:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  95e754:	33 c0                	xor    eax,eax
  95e756:	38 5c 24 1b          	cmp    BYTE PTR [esp+0x1b],bl
  95e75a:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
  95e75e:	0f 94 c0             	sete   al
  95e761:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  95e765:	51                   	push   ecx
  95e766:	c7 44 24 38 cc 7e 8a 	mov    DWORD PTR [esp+0x38],0xd8a7ecc
  95e76d:	0d
  95e76e:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  95e772:	c7 44 24 4c a4 71 dd 	mov    DWORD PTR [esp+0x4c],0x38dd71a4
  95e779:	38
  95e77a:	c7 44 24 50 01 00 00 	mov    DWORD PTR [esp+0x50],0x1
  95e781:	00
  95e782:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  95e786:	89 5c 24 54          	mov    DWORD PTR [esp+0x54],ebx
  95e78a:	e8 f1 4b d3 ff       	call   0x693380
  95e78f:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  95e793:	83 c4 08             	add    esp,0x8
  95e796:	3b cb                	cmp    ecx,ebx
  95e798:	74 0b                	je     0x95e7a5
  95e79a:	8b 11                	mov    edx,DWORD PTR [ecx]
  95e79c:	8b 12                	mov    edx,DWORD PTR [edx]
  95e79e:	8d 44 24 40          	lea    eax,[esp+0x40]
  95e7a2:	50                   	push   eax
  95e7a3:	ff d2                	call   edx
  95e7a5:	8b 8c 24 84 00 00 00 	mov    ecx,DWORD PTR [esp+0x84]
  95e7ac:	3b cb                	cmp    ecx,ebx
  95e7ae:	74 0e                	je     0x95e7be
  95e7b0:	8b 01                	mov    eax,DWORD PTR [ecx]
  95e7b2:	8b 00                	mov    eax,DWORD PTR [eax]
  95e7b4:	8d 94 24 90 00 00 00 	lea    edx,[esp+0x90]
  95e7bb:	52                   	push   edx
  95e7bc:	ff d0                	call   eax
  95e7be:	38 5d 08             	cmp    BYTE PTR [ebp+0x8],bl
  95e7c1:	74 73                	je     0x95e836
  95e7c3:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  95e7c6:	3b f3                	cmp    esi,ebx
  95e7c8:	74 6c                	je     0x95e836
  95e7ca:	8b 0d 14 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea114
  95e7d0:	51                   	push   ecx
  95e7d1:	8b ce                	mov    ecx,esi
  95e7d3:	e8 88 5a fd ff       	call   0x934260
  95e7d8:	3b c3                	cmp    eax,ebx
  95e7da:	74 5a                	je     0x95e836
  95e7dc:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  95e7e0:	52                   	push   edx
  95e7e1:	8b c8                	mov    ecx,eax
  95e7e3:	e8 a8 30 ff ff       	call   0x951890
  95e7e8:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  95e7ec:	e8 4f 27 ff ff       	call   0x950f40
  95e7f1:	84 c0                	test   al,al
  95e7f3:	74 41                	je     0x95e836
  95e7f5:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  95e7f9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  95e800:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  95e804:	e8 b7 1b ff ff       	call   0x9503c0
  95e809:	3b c3                	cmp    eax,ebx
  95e80b:	74 1c                	je     0x95e829
  95e80d:	8b 0d a8 a2 1e 01    	mov    ecx,DWORD PTR ds:0x11ea2a8
  95e813:	51                   	push   ecx
  95e814:	8b c8                	mov    ecx,eax
  95e816:	e8 45 5a fd ff       	call   0x934260
  95e81b:	3b c3                	cmp    eax,ebx
  95e81d:	74 0a                	je     0x95e829
  95e81f:	6a 01                	push   0x1
  95e821:	56                   	push   esi
  95e822:	8b c8                	mov    ecx,eax
  95e824:	e8 e7 0f 00 00       	call   0x95f810
  95e829:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  95e82d:	e8 0e 27 ff ff       	call   0x950f40
  95e832:	84 c0                	test   al,al
  95e834:	75 ca                	jne    0x95e800
  95e836:	5e                   	pop    esi
  95e837:	5b                   	pop    ebx
  95e838:	8b e5                	mov    esp,ebp
  95e83a:	5d                   	pop    ebp
  95e83b:	c2 04 00             	ret    0x4
