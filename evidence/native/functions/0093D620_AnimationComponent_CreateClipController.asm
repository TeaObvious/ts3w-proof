# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0093d620, 0x0093d6fe).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base 0x00400000.
Analyst name: AnimationComponent_CreateClipController.
Paired annotated Ghidra pseudocode: 0093D620_AnimationComponent_CreateClipController.c
Ghidra function-body envelope [0x0093d620, 0x0093d6fe); inferred boundaries.
Includes any internal gaps; machine instructions govern the decompiler interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

0093d620 <.text+0x53c620>:
  93d620:	56                   	push   esi
  93d621:	8b f1                	mov    esi,ecx
  93d623:	8b 06                	mov    eax,DWORD PTR [esi]
  93d625:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  93d628:	ff d2                	call   edx
  93d62a:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  93d62d:	85 c0                	test   eax,eax
  93d62f:	0f 84 c3 00 00 00    	je     0x93d6f8
  93d635:	83 b8 b0 00 00 00 00 	cmp    DWORD PTR [eax+0xb0],0x0
  93d63c:	0f 84 b6 00 00 00    	je     0x93d6f8
  93d642:	6a 00                	push   0x0
  93d644:	6a 00                	push   0x0
  93d646:	6a 00                	push   0x0
  93d648:	6a 00                	push   0x0
  93d64a:	68 e0 fd ff 00       	push   0xfffde0
  93d64f:	68 00 06 00 00       	push   0x600
  93d654:	e8 a7 6e ba ff       	call   0x4e4500
  93d659:	83 c4 18             	add    esp,0x18
  93d65c:	85 c0                	test   eax,eax
  93d65e:	74 15                	je     0x93d675
  93d660:	d9 ee                	fldz
  93d662:	51                   	push   ecx
  93d663:	83 c6 08             	add    esi,0x8
  93d666:	d9 1c 24             	fstp   DWORD PTR [esp]
  93d669:	56                   	push   esi
  93d66a:	8b c8                	mov    ecx,eax
  93d66c:	e8 ef b5 c2 ff       	call   0x568c60
  93d671:	8b f0                	mov    esi,eax
  93d673:	eb 02                	jmp    0x93d677
  93d675:	33 f6                	xor    esi,esi
  93d677:	57                   	push   edi
  93d678:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  93d67c:	8b 87 b0 01 00 00    	mov    eax,DWORD PTR [edi+0x1b0]
  93d682:	85 c0                	test   eax,eax
  93d684:	75 0b                	jne    0x93d691
  93d686:	8b 0d 00 e8 1c 01    	mov    ecx,DWORD PTR ds:0x11ce800
  93d68c:	e8 3f 44 c3 ff       	call   0x571ad0
  93d691:	50                   	push   eax
  93d692:	8b ce                	mov    ecx,esi
  93d694:	e8 f7 c9 c2 ff       	call   0x56a090
  93d699:	8b 87 bc 01 00 00    	mov    eax,DWORD PTR [edi+0x1bc]
  93d69f:	50                   	push   eax
  93d6a0:	8b ce                	mov    ecx,esi
  93d6a2:	e8 f9 c0 c2 ff       	call   0x5697a0
  93d6a7:	57                   	push   edi
  93d6a8:	8b ce                	mov    ecx,esi
  93d6aa:	e8 81 c2 c2 ff       	call   0x569930
  93d6af:	0f b6 8f d8 01 00 00 	movzx  ecx,BYTE PTR [edi+0x1d8]
  93d6b6:	51                   	push   ecx
  93d6b7:	8b ce                	mov    ecx,esi
  93d6b9:	e8 b2 c0 c2 ff       	call   0x569770
  93d6be:	0f b6 97 d9 01 00 00 	movzx  edx,BYTE PTR [edi+0x1d9]
  93d6c5:	52                   	push   edx
  93d6c6:	8b ce                	mov    ecx,esi
  93d6c8:	e8 73 af c2 ff       	call   0x568640
  93d6cd:	8b 87 b8 01 00 00    	mov    eax,DWORD PTR [edi+0x1b8]
  93d6d3:	85 c0                	test   eax,eax
  93d6d5:	74 08                	je     0x93d6df
  93d6d7:	50                   	push   eax
  93d6d8:	8b ce                	mov    ecx,esi
  93d6da:	e8 91 b0 c2 ff       	call   0x568770
  93d6df:	80 bf da 01 00 00 00 	cmp    BYTE PTR [edi+0x1da],0x0
  93d6e6:	5f                   	pop    edi
  93d6e7:	74 09                	je     0x93d6f2
  93d6e9:	6a 00                	push   0x0
  93d6eb:	8b ce                	mov    ecx,esi
  93d6ed:	e8 2e af c2 ff       	call   0x568620
  93d6f2:	8b c6                	mov    eax,esi
  93d6f4:	5e                   	pop    esi
  93d6f5:	c2 04 00             	ret    0x4
  93d6f8:	33 c0                	xor    eax,eax
  93d6fa:	5e                   	pop    esi
  93d6fb:	c2 04 00             	ret    0x4
