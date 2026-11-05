# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00aad630,0x00aad774); analyst name LoadSave_ResetCurrentGameDirectoryForTravelDatabases.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00aad630 <.text+0x6ac630>:
  aad630:	81 ec 14 04 00 00    	sub    esp,0x414
  aad636:	e8 25 58 ed ff       	call   0x982e60
  aad63b:	85 c0                	test   eax,eax
  aad63d:	74 15                	je     0xaad654
  aad63f:	8b 88 64 06 00 00    	mov    ecx,DWORD PTR [eax+0x664]
  aad645:	85 c9                	test   ecx,ecx
  aad647:	74 0b                	je     0xaad654
  aad649:	6a 01                	push   0x1
  aad64b:	6a 00                	push   0x0
  aad64d:	6a 00                	push   0x0
  aad64f:	e8 cc cd f1 ff       	call   0x9ca420
  aad654:	8d 4c 24 04          	lea    ecx,[esp+0x4]
  aad658:	e8 83 f1 a3 ff       	call   0x4ec7e0
  aad65d:	e8 de 1a c8 ff       	call   0x72f140
  aad662:	8b 10                	mov    edx,DWORD PTR [eax]
  aad664:	8b c8                	mov    ecx,eax
  aad666:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  aad669:	ff d0                	call   eax
  aad66b:	85 c0                	test   eax,eax
  aad66d:	74 26                	je     0xaad695
  aad66f:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  aad673:	74 20                	je     0xaad695
  aad675:	50                   	push   eax
  aad676:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  aad67a:	e8 e1 08 a4 ff       	call   0x4edf60
  aad67f:	8d 4c 24 04          	lea    ecx,[esp+0x4]
  aad683:	e8 18 7b d3 ff       	call   0x7e51a0
  aad688:	50                   	push   eax
  aad689:	e8 62 fc a2 ff       	call   0x4dd2f0
  aad68e:	83 c4 04             	add    esp,0x4
  aad691:	84 c0                	test   al,al
  aad693:	75 09                	jne    0xaad69e
  aad695:	32 c0                	xor    al,al
  aad697:	81 c4 14 04 00 00    	add    esp,0x414
  aad69d:	c3                   	ret
  aad69e:	8b 0d dc 3d 18 01    	mov    ecx,DWORD PTR ds:0x1183ddc
  aad6a4:	56                   	push   esi
  aad6a5:	57                   	push   edi
  aad6a6:	6a 00                	push   0x0
  aad6a8:	51                   	push   ecx
  aad6a9:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  aad6ad:	e8 4e 0d a4 ff       	call   0x4ee400
  aad6b2:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  aad6b6:	e8 e5 7a d3 ff       	call   0x7e51a0
  aad6bb:	50                   	push   eax
  aad6bc:	e8 6f ea a2 ff       	call   0x4dc130
  aad6c1:	83 c4 04             	add    esp,0x4
  aad6c4:	84 c0                	test   al,al
  aad6c6:	bf f4 01 00 00       	mov    edi,0x1f4
  aad6cb:	74 44                	je     0xaad711
  aad6cd:	33 f6                	xor    esi,esi
  aad6cf:	90                   	nop
  aad6d0:	6a 01                	push   0x1
  aad6d2:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  aad6d6:	e8 c5 7a d3 ff       	call   0x7e51a0
  aad6db:	50                   	push   eax
  aad6dc:	e8 1f f8 a2 ff       	call   0x4dcf00
  aad6e1:	83 c4 08             	add    esp,0x8
  aad6e4:	84 c0                	test   al,al
  aad6e6:	75 24                	jne    0xaad70c
  aad6e8:	8d 54 24 08          	lea    edx,[esp+0x8]
  aad6ec:	52                   	push   edx
  aad6ed:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
  aad6f1:	e8 3a 41 a3 ff       	call   0x4e1830
  aad6f6:	83 c6 01             	add    esi,0x1
  aad6f9:	83 c4 04             	add    esp,0x4
  aad6fc:	83 fe 0a             	cmp    esi,0xa
  aad6ff:	72 cf                	jb     0xaad6d0
  aad701:	5f                   	pop    edi
  aad702:	32 c0                	xor    al,al
  aad704:	5e                   	pop    esi
  aad705:	81 c4 14 04 00 00    	add    esp,0x414
  aad70b:	c3                   	ret
  aad70c:	83 fe 0a             	cmp    esi,0xa
  aad70f:	73 41                	jae    0xaad752
  aad711:	33 f6                	xor    esi,esi
  aad713:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  aad717:	e8 84 7a d3 ff       	call   0x7e51a0
  aad71c:	50                   	push   eax
  aad71d:	e8 1e f9 a2 ff       	call   0x4dd040
  aad722:	83 c4 04             	add    esp,0x4
  aad725:	84 c0                	test   al,al
  aad727:	75 24                	jne    0xaad74d
  aad729:	8d 44 24 08          	lea    eax,[esp+0x8]
  aad72d:	50                   	push   eax
  aad72e:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
  aad732:	e8 f9 40 a3 ff       	call   0x4e1830
  aad737:	83 c6 01             	add    esi,0x1
  aad73a:	83 c4 04             	add    esp,0x4
  aad73d:	83 fe 0a             	cmp    esi,0xa
  aad740:	72 d1                	jb     0xaad713
  aad742:	5f                   	pop    edi
  aad743:	32 c0                	xor    al,al
  aad745:	5e                   	pop    esi
  aad746:	81 c4 14 04 00 00    	add    esp,0x414
  aad74c:	c3                   	ret
  aad74d:	83 fe 0a             	cmp    esi,0xa
  aad750:	72 0b                	jb     0xaad75d
  aad752:	5f                   	pop    edi
  aad753:	32 c0                	xor    al,al
  aad755:	5e                   	pop    esi
  aad756:	81 c4 14 04 00 00    	add    esp,0x414
  aad75c:	c3                   	ret
  aad75d:	6a 01                	push   0x1
  aad75f:	6a 01                	push   0x1
  aad761:	e8 ea f9 ff ff       	call   0xaad150
  aad766:	83 c4 08             	add    esp,0x8
  aad769:	5f                   	pop    edi
  aad76a:	b0 01                	mov    al,0x1
  aad76c:	5e                   	pop    esi
  aad76d:	81 c4 14 04 00 00    	add    esp,0x414
  aad773:	c3                   	ret
