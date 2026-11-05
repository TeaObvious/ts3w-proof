# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00760770, 0x0076165c); analyst name RouteHost_PlanFromStartCandidates.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00760770 <.text+0x35f770>:
  760770:	55                   	push   ebp
  760771:	8b ec                	mov    ebp,esp
  760773:	83 e4 f0             	and    esp,0xfffffff0
  760776:	81 ec 14 01 00 00    	sub    esp,0x114
  76077c:	53                   	push   ebx
  76077d:	56                   	push   esi
  76077e:	8b f1                	mov    esi,ecx
  760780:	8b 86 e0 00 00 00    	mov    eax,DWORD PTR [esi+0xe0]
  760786:	57                   	push   edi
  760787:	8d be e0 00 00 00    	lea    edi,[esi+0xe0]
  76078d:	3b c7                	cmp    eax,edi
  76078f:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  760793:	74 7b                	je     0x760810
  760795:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  760798:	85 ff                	test   edi,edi
  76079a:	74 64                	je     0x760800
  76079c:	8d 5f 04             	lea    ebx,[edi+0x4]
  76079f:	8b c3                	mov    eax,ebx
  7607a1:	b9 01 00 00 00       	mov    ecx,0x1
  7607a6:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  7607aa:	8b 17                	mov    edx,DWORD PTR [edi]
  7607ac:	8b 42 78             	mov    eax,DWORD PTR [edx+0x78]
  7607af:	6a 00                	push   0x0
  7607b1:	8b cf                	mov    ecx,edi
  7607b3:	ff d0                	call   eax
  7607b5:	8b 17                	mov    edx,DWORD PTR [edi]
  7607b7:	8b 82 80 00 00 00    	mov    eax,DWORD PTR [edx+0x80]
  7607bd:	6a 00                	push   0x0
  7607bf:	8b cf                	mov    ecx,edi
  7607c1:	ff d0                	call   eax
  7607c3:	8b 17                	mov    edx,DWORD PTR [edi]
  7607c5:	8b 82 88 00 00 00    	mov    eax,DWORD PTR [edx+0x88]
  7607cb:	6a 00                	push   0x0
  7607cd:	8b cf                	mov    ecx,edi
  7607cf:	ff d0                	call   eax
  7607d1:	8b 17                	mov    edx,DWORD PTR [edi]
  7607d3:	8b 82 90 00 00 00    	mov    eax,DWORD PTR [edx+0x90]
  7607d9:	6a 00                	push   0x0
  7607db:	8b cf                	mov    ecx,edi
  7607dd:	ff d0                	call   eax
  7607df:	8b cb                	mov    ecx,ebx
  7607e1:	83 ca ff             	or     edx,0xffffffff
  7607e4:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  7607e8:	4a                   	dec    edx
  7607e9:	75 11                	jne    0x7607fc
  7607eb:	b8 01 00 00 00       	mov    eax,0x1
  7607f0:	87 03                	xchg   DWORD PTR [ebx],eax
  7607f2:	8b 17                	mov    edx,DWORD PTR [edi]
  7607f4:	8b 02                	mov    eax,DWORD PTR [edx]
  7607f6:	6a 01                	push   0x1
  7607f8:	8b cf                	mov    ecx,edi
  7607fa:	ff d0                	call   eax
  7607fc:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  760800:	8b 00                	mov    eax,DWORD PTR [eax]
  760802:	8d be e0 00 00 00    	lea    edi,[esi+0xe0]
  760808:	3b c7                	cmp    eax,edi
  76080a:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  76080e:	75 85                	jne    0x760795
  760810:	8b ce                	mov    ecx,esi
  760812:	c7 86 f0 00 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0xf0],0xffffffff
  76081c:	e8 5f 6b ff ff       	call   0x757380
  760821:	8b cf                	mov    ecx,edi
  760823:	e8 38 a9 0e 00       	call   0x84b160
  760828:	89 3f                	mov    DWORD PTR [edi],edi
  76082a:	89 7f 04             	mov    DWORD PTR [edi+0x4],edi
  76082d:	8b 8e ec 00 00 00    	mov    ecx,DWORD PTR [esi+0xec]
  760833:	33 db                	xor    ebx,ebx
  760835:	3b cb                	cmp    ecx,ebx
  760837:	74 24                	je     0x76085d
  760839:	8d 41 04             	lea    eax,[ecx+0x4]
  76083c:	89 9e ec 00 00 00    	mov    DWORD PTR [esi+0xec],ebx
  760842:	8b d0                	mov    edx,eax
  760844:	83 cf ff             	or     edi,0xffffffff
  760847:	f0 0f c1 3a          	lock xadd DWORD PTR [edx],edi
  76084b:	4f                   	dec    edi
  76084c:	75 0f                	jne    0x76085d
  76084e:	ba 01 00 00 00       	mov    edx,0x1
  760853:	87 10                	xchg   DWORD PTR [eax],edx
  760855:	8b 01                	mov    eax,DWORD PTR [ecx]
  760857:	8b 10                	mov    edx,DWORD PTR [eax]
  760859:	6a 01                	push   0x1
  76085b:	ff d2                	call   edx
  76085d:	0f 57 c0             	xorps  xmm0,xmm0
  760860:	8b 86 44 01 00 00    	mov    eax,DWORD PTR [esi+0x144]
  760866:	3b c3                	cmp    eax,ebx
  760868:	f3 0f 11 86 a4 00 00 00 	movss  DWORD PTR [esi+0xa4],xmm0
  760870:	f3 0f 11 86 a8 00 00 00 	movss  DWORD PTR [esi+0xa8],xmm0
  760878:	c6 86 40 01 00 00 00 	mov    BYTE PTR [esi+0x140],0x0
  76087f:	c6 86 41 01 00 00 00 	mov    BYTE PTR [esi+0x141],0x0
  760886:	89 5e 48             	mov    DWORD PTR [esi+0x48],ebx
  760889:	89 5e 4c             	mov    DWORD PTR [esi+0x4c],ebx
  76088c:	c7 44 24 78 02 00 00 00 	mov    DWORD PTR [esp+0x78],0x2
  760894:	89 5c 24 7c          	mov    DWORD PTR [esp+0x7c],ebx
  760898:	89 9c 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],ebx
  76089f:	f3 0f 11 84 24 88 00 00 00 	movss  DWORD PTR [esp+0x88],xmm0
  7608a8:	f3 0f 11 84 24 8c 00 00 00 	movss  DWORD PTR [esp+0x8c],xmm0
  7608b1:	f3 0f 11 84 24 90 00 00 00 	movss  DWORD PTR [esp+0x90],xmm0
  7608ba:	f3 0f 11 84 24 94 00 00 00 	movss  DWORD PTR [esp+0x94],xmm0
  7608c3:	89 9c 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],ebx
  7608ca:	89 9c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ebx
  7608d1:	89 9c 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ebx
  7608d8:	f3 0f 11 84 24 a4 00 00 00 	movss  DWORD PTR [esp+0xa4],xmm0
  7608e1:	f3 0f 11 84 24 a8 00 00 00 	movss  DWORD PTR [esp+0xa8],xmm0
  7608ea:	f3 0f 11 84 24 ac 00 00 00 	movss  DWORD PTR [esp+0xac],xmm0
  7608f3:	89 9c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ebx
  7608fa:	89 9c 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],ebx
  760901:	89 9c 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],ebx
  760908:	74 10                	je     0x76091a
  76090a:	83 c0 18             	add    eax,0x18
  76090d:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  760910:	75 21                	jne    0x760933
  760912:	c7 44 24 78 0a 00 00 00 	mov    DWORD PTR [esp+0x78],0xa
  76091a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  76091d:	b9 12 00 00 00       	mov    ecx,0x12
  760922:	8d 74 24 78          	lea    esi,[esp+0x78]
  760926:	8b f8                	mov    edi,eax
  760928:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  76092a:	5f                   	pop    edi
  76092b:	5e                   	pop    esi
  76092c:	5b                   	pop    ebx
  76092d:	8b e5                	mov    esp,ebp
  76092f:	5d                   	pop    ebp
  760930:	c2 08 00             	ret    0x8
  760933:	53                   	push   ebx
  760934:	53                   	push   ebx
  760935:	8d be 58 01 00 00    	lea    edi,[esi+0x158]
  76093b:	6a 04                	push   0x4
  76093d:	8b cf                	mov    ecx,edi
  76093f:	e8 9c bb 0b 00       	call   0x81c4e0
  760944:	84 c0                	test   al,al
  760946:	74 0c                	je     0x760954
  760948:	8b 86 44 01 00 00    	mov    eax,DWORD PTR [esi+0x144]
  76094e:	c6 40 48 01          	mov    BYTE PTR [eax+0x48],0x1
  760952:	eb 0a                	jmp    0x76095e
  760954:	8b 8e 44 01 00 00    	mov    ecx,DWORD PTR [esi+0x144]
  76095a:	c6 41 48 00          	mov    BYTE PTR [ecx+0x48],0x0
  76095e:	53                   	push   ebx
  76095f:	68 00 00 02 00       	push   0x20000
  760964:	53                   	push   ebx
  760965:	8b cf                	mov    ecx,edi
  760967:	e8 74 bb 0b 00       	call   0x81c4e0
  76096c:	84 c0                	test   al,al
  76096e:	74 09                	je     0x760979
  760970:	c7 46 3c 00 08 00 00 	mov    DWORD PTR [esi+0x3c],0x800
  760977:	eb 68                	jmp    0x7609e1
  760979:	53                   	push   ebx
  76097a:	68 00 00 04 00       	push   0x40000
  76097f:	53                   	push   ebx
  760980:	8b cf                	mov    ecx,edi
  760982:	e8 59 bb 0b 00       	call   0x81c4e0
  760987:	84 c0                	test   al,al
  760989:	74 09                	je     0x760994
  76098b:	c7 46 3c 00 09 00 00 	mov    DWORD PTR [esi+0x3c],0x900
  760992:	eb 4d                	jmp    0x7609e1
  760994:	53                   	push   ebx
  760995:	68 00 00 08 00       	push   0x80000
  76099a:	53                   	push   ebx
  76099b:	8b cf                	mov    ecx,edi
  76099d:	e8 3e bb 0b 00       	call   0x81c4e0
  7609a2:	84 c0                	test   al,al
  7609a4:	74 09                	je     0x7609af
  7609a6:	c7 46 3c 00 0a 00 00 	mov    DWORD PTR [esi+0x3c],0xa00
  7609ad:	eb 32                	jmp    0x7609e1
  7609af:	53                   	push   ebx
  7609b0:	68 00 00 10 00       	push   0x100000
  7609b5:	53                   	push   ebx
  7609b6:	8b cf                	mov    ecx,edi
  7609b8:	e8 23 bb 0b 00       	call   0x81c4e0
  7609bd:	84 c0                	test   al,al
  7609bf:	74 09                	je     0x7609ca
  7609c1:	c7 46 3c 00 0b 00 00 	mov    DWORD PTR [esi+0x3c],0xb00
  7609c8:	eb 17                	jmp    0x7609e1
  7609ca:	6a 01                	push   0x1
  7609cc:	53                   	push   ebx
  7609cd:	6a 20                	push   0x20
  7609cf:	8b cf                	mov    ecx,edi
  7609d1:	e8 0a bb 0b 00       	call   0x81c4e0
  7609d6:	84 c0                	test   al,al
  7609d8:	74 07                	je     0x7609e1
  7609da:	c7 46 3c 00 44 00 00 	mov    DWORD PTR [esi+0x3c],0x4400
  7609e1:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  7609e4:	8b 02                	mov    eax,DWORD PTR [edx]
  7609e6:	8b 8e 44 01 00 00    	mov    ecx,DWORD PTR [esi+0x144]
  7609ec:	53                   	push   ebx
  7609ed:	8d 54 24 7c          	lea    edx,[esp+0x7c]
  7609f1:	52                   	push   edx
  7609f2:	8d 54 24 58          	lea    edx,[esp+0x58]
  7609f6:	52                   	push   edx
  7609f7:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  7609fb:	52                   	push   edx
  7609fc:	50                   	push   eax
  7609fd:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
  760a00:	57                   	push   edi
  760a01:	50                   	push   eax
  760a02:	c6 44 24 2f 00       	mov    BYTE PTR [esp+0x2f],0x0
  760a07:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  760a0b:	89 5c 24 50          	mov    DWORD PTR [esp+0x50],ebx
  760a0f:	89 5c 24 54          	mov    DWORD PTR [esp+0x54],ebx
  760a13:	c7 44 24 58 48 59 00 01 	mov    DWORD PTR [esp+0x58],0x1005948
  760a1b:	89 5c 24 6c          	mov    DWORD PTR [esp+0x6c],ebx
  760a1f:	89 5c 24 70          	mov    DWORD PTR [esp+0x70],ebx
  760a23:	89 5c 24 74          	mov    DWORD PTR [esp+0x74],ebx
  760a27:	c7 44 24 78 20 59 00 01 	mov    DWORD PTR [esp+0x78],0x1005920
  760a2f:	e8 8c 17 ff ff       	call   0x7521c0
  760a34:	84 c0                	test   al,al
  760a36:	75 4d                	jne    0x760a85
  760a38:	83 7c 24 78 02       	cmp    DWORD PTR [esp+0x78],0x2
  760a3d:	0f 85 42 01 00 00    	jne    0x760b85
  760a43:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  760a47:	8b 54 24 50          	mov    edx,DWORD PTR [esp+0x50]
  760a4b:	8b c1                	mov    eax,ecx
  760a4d:	2b c2                	sub    eax,edx
  760a4f:	c1 f8 06             	sar    eax,0x6
  760a52:	0f 84 ed 00 00 00    	je     0x760b45
  760a58:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  760a5c:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  760a60:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  760a64:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  760a68:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  760a6c:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  760a70:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  760a74:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  760a79:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
  760a7d:	89 4c 24 38          	mov    DWORD PTR [esp+0x38],ecx
  760a81:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  760a85:	53                   	push   ebx
  760a86:	53                   	push   ebx
  760a87:	68 00 02 00 00       	push   0x200
  760a8c:	8b cf                	mov    ecx,edi
  760a8e:	e8 4d ba 0b 00       	call   0x81c4e0
  760a93:	84 c0                	test   al,al
  760a95:	0f 84 4d 01 00 00    	je     0x760be8
  760a9b:	8b 8e 44 01 00 00    	mov    ecx,DWORD PTR [esi+0x144]
  760aa1:	e8 ca f4 fe ff       	call   0x74ff70
  760aa6:	0b c2                	or     eax,edx
  760aa8:	0f 84 3a 01 00 00    	je     0x760be8
  760aae:	e8 bd 6a 1d 00       	call   0x937570
  760ab3:	8b 8e 44 01 00 00    	mov    ecx,DWORD PTR [esi+0x144]
  760ab9:	8b f8                	mov    edi,eax
  760abb:	e8 b0 f4 fe ff       	call   0x74ff70
  760ac0:	52                   	push   edx
  760ac1:	50                   	push   eax
  760ac2:	8b cf                	mov    ecx,edi
  760ac4:	e8 b7 74 1d 00       	call   0x937f80
  760ac9:	3b c3                	cmp    eax,ebx
  760acb:	0f 84 17 01 00 00    	je     0x760be8
  760ad1:	8b 15 08 df 1e 01    	mov    edx,DWORD PTR ds:0x11edf08
  760ad7:	52                   	push   edx
  760ad8:	8b c8                	mov    ecx,eax
  760ada:	e8 81 37 1d 00       	call   0x934260
  760adf:	8b f8                	mov    edi,eax
  760ae1:	3b fb                	cmp    edi,ebx
  760ae3:	0f 84 ff 00 00 00    	je     0x760be8
  760ae9:	8b 96 44 01 00 00    	mov    edx,DWORD PTR [esi+0x144]
  760aef:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  760af2:	3b 42 24             	cmp    eax,DWORD PTR [edx+0x24]
  760af5:	8d 4a 20             	lea    ecx,[edx+0x20]
  760af8:	74 1f                	je     0x760b19
  760afa:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  760b00:	8b 57 20             	mov    edx,DWORD PTR [edi+0x20]
  760b03:	39 10                	cmp    DWORD PTR [eax],edx
  760b05:	0f 84 c1 00 00 00    	je     0x760bcc
  760b0b:	8b 96 44 01 00 00    	mov    edx,DWORD PTR [esi+0x144]
  760b11:	83 c0 04             	add    eax,0x4
  760b14:	3b 42 24             	cmp    eax,DWORD PTR [edx+0x24]
  760b17:	75 e7                	jne    0x760b00
  760b19:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  760b1c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  760b20:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  760b23:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  760b26:	0f 83 95 00 00 00    	jae    0x760bc1
  760b2c:	3b c3                	cmp    eax,ebx
  760b2e:	8d 50 04             	lea    edx,[eax+0x4]
  760b31:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  760b34:	0f 84 92 00 00 00    	je     0x760bcc
  760b3a:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  760b3e:	89 08                	mov    DWORD PTR [eax],ecx
  760b40:	e9 87 00 00 00       	jmp    0x760bcc
  760b45:	3b d3                	cmp    edx,ebx
  760b47:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  760b4a:	b9 12 00 00 00       	mov    ecx,0x12
  760b4f:	8d 74 24 78          	lea    esi,[esp+0x78]
  760b53:	c7 44 24 78 0a 00 00 00 	mov    DWORD PTR [esp+0x78],0xa
  760b5b:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  760b5d:	74 09                	je     0x760b68
  760b5f:	52                   	push   edx
  760b60:	e8 7b 39 d8 ff       	call   0x4e44e0
  760b65:	83 c4 04             	add    esp,0x4
  760b68:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  760b6c:	3b c3                	cmp    eax,ebx
  760b6e:	74 09                	je     0x760b79
  760b70:	50                   	push   eax
  760b71:	e8 6a 39 d8 ff       	call   0x4e44e0
  760b76:	83 c4 04             	add    esp,0x4
  760b79:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  760b7c:	5f                   	pop    edi
  760b7d:	5e                   	pop    esi
  760b7e:	5b                   	pop    ebx
  760b7f:	8b e5                	mov    esp,ebp
  760b81:	5d                   	pop    ebp
  760b82:	c2 08 00             	ret    0x8
  760b85:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  760b89:	3b c3                	cmp    eax,ebx
  760b8b:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  760b8e:	b9 12 00 00 00       	mov    ecx,0x12
  760b93:	8d 74 24 78          	lea    esi,[esp+0x78]
  760b97:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  760b99:	74 09                	je     0x760ba4
  760b9b:	50                   	push   eax
  760b9c:	e8 3f 39 d8 ff       	call   0x4e44e0
  760ba1:	83 c4 04             	add    esp,0x4
  760ba4:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  760ba8:	3b c3                	cmp    eax,ebx
  760baa:	74 cd                	je     0x760b79
  760bac:	50                   	push   eax
  760bad:	e8 2e 39 d8 ff       	call   0x4e44e0
  760bb2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  760bb5:	83 c4 04             	add    esp,0x4
  760bb8:	5f                   	pop    edi
  760bb9:	5e                   	pop    esi
  760bba:	5b                   	pop    ebx
  760bbb:	8b e5                	mov    esp,ebp
  760bbd:	5d                   	pop    ebp
  760bbe:	c2 08 00             	ret    0x8
  760bc1:	8d 54 24 14          	lea    edx,[esp+0x14]
  760bc5:	52                   	push   edx
  760bc6:	50                   	push   eax
  760bc7:	e8 54 18 22 00       	call   0x982420
  760bcc:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  760bcf:	8b 86 44 01 00 00    	mov    eax,DWORD PTR [esi+0x144]
  760bd5:	3b 48 38             	cmp    ecx,DWORD PTR [eax+0x38]
  760bd8:	8b 7f 0c             	mov    edi,DWORD PTR [edi+0xc]
  760bdb:	75 05                	jne    0x760be2
  760bdd:	3b 78 3c             	cmp    edi,DWORD PTR [eax+0x3c]
  760be0:	74 06                	je     0x760be8
  760be2:	89 48 38             	mov    DWORD PTR [eax+0x38],ecx
  760be5:	89 78 3c             	mov    DWORD PTR [eax+0x3c],edi
  760be8:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
  760beb:	8b 4e 40             	mov    ecx,DWORD PTR [esi+0x40]
  760bee:	8b 56 44             	mov    edx,DWORD PTR [esi+0x44]
  760bf1:	89 84 24 f0 00 00 00 	mov    DWORD PTR [esp+0xf0],eax
  760bf8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  760bfb:	89 8c 24 f8 00 00 00 	mov    DWORD PTR [esp+0xf8],ecx
  760c02:	8b 08                	mov    ecx,DWORD PTR [eax]
  760c04:	51                   	push   ecx
  760c05:	8b 8e 44 01 00 00    	mov    ecx,DWORD PTR [esi+0x144]
  760c0b:	8d be 58 01 00 00    	lea    edi,[esi+0x158]
  760c11:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
  760c15:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
  760c19:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  760c1d:	c7 44 24 50 fc 58 00 01 	mov    DWORD PTR [esp+0x50],0x10058fc
  760c25:	89 5c 24 64          	mov    DWORD PTR [esp+0x64],ebx
  760c29:	89 5c 24 68          	mov    DWORD PTR [esp+0x68],ebx
  760c2d:	89 5c 24 6c          	mov    DWORD PTR [esp+0x6c],ebx
  760c31:	c7 44 24 70 d8 58 00 01 	mov    DWORD PTR [esp+0x70],0x10058d8
  760c39:	89 9c 24 14 01 00 00 	mov    DWORD PTR [esp+0x114],ebx
  760c40:	c6 84 24 18 01 00 00 01 	mov    BYTE PTR [esp+0x118],0x1
  760c48:	89 bc 24 1c 01 00 00 	mov    DWORD PTR [esp+0x11c],edi
  760c4f:	c6 84 24 19 01 00 00 00 	mov    BYTE PTR [esp+0x119],0x0
  760c57:	89 94 24 00 01 00 00 	mov    DWORD PTR [esp+0x100],edx
  760c5e:	e8 1d f2 fe ff       	call   0x74fe80
  760c63:	8d 94 24 f0 00 00 00 	lea    edx,[esp+0xf0]
  760c6a:	52                   	push   edx
  760c6b:	57                   	push   edi
  760c6c:	8d 44 24 68          	lea    eax,[esp+0x68]
  760c70:	50                   	push   eax
  760c71:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  760c74:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  760c78:	51                   	push   ecx
  760c79:	8b 08                	mov    ecx,DWORD PTR [eax]
  760c7b:	8d 54 24 40          	lea    edx,[esp+0x40]
  760c7f:	52                   	push   edx
  760c80:	51                   	push   ecx
  760c81:	8b 8e 44 01 00 00    	mov    ecx,DWORD PTR [esi+0x144]
  760c87:	83 c1 20             	add    ecx,0x20
  760c8a:	e8 d1 b6 ff ff       	call   0x75c360
  760c8f:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  760c93:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  760c97:	3b d0                	cmp    edx,eax
  760c99:	0f 85 b3 00 00 00    	jne    0x760d52
  760c9f:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  760ca3:	3b 44 24 64          	cmp    eax,DWORD PTR [esp+0x64]
  760ca7:	b9 12 00 00 00       	mov    ecx,0x12
  760cac:	74 0a                	je     0x760cb8
  760cae:	83 78 30 01          	cmp    DWORD PTR [eax+0x30],0x1
  760cb2:	89 4c 24 78          	mov    DWORD PTR [esp+0x78],ecx
  760cb6:	74 08                	je     0x760cc0
  760cb8:	c7 44 24 78 0a 00 00 00 	mov    DWORD PTR [esp+0x78],0xa
  760cc0:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  760cc3:	8d 74 24 78          	lea    esi,[esp+0x78]
  760cc7:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  760cc9:	8b 8c 24 10 01 00 00 	mov    ecx,DWORD PTR [esp+0x110]
  760cd0:	3b cb                	cmp    ecx,ebx
  760cd2:	74 2a                	je     0x760cfe
  760cd4:	8d 51 04             	lea    edx,[ecx+0x4]
  760cd7:	8b f2                	mov    esi,edx
  760cd9:	83 cf ff             	or     edi,0xffffffff
  760cdc:	f0 0f c1 3e          	lock xadd DWORD PTR [esi],edi
  760ce0:	4f                   	dec    edi
  760ce1:	75 17                	jne    0x760cfa
  760ce3:	be 01 00 00 00       	mov    esi,0x1
  760ce8:	87 32                	xchg   DWORD PTR [edx],esi
  760cea:	3b cb                	cmp    ecx,ebx
  760cec:	74 0c                	je     0x760cfa
  760cee:	8b 11                	mov    edx,DWORD PTR [ecx]
  760cf0:	8b 02                	mov    eax,DWORD PTR [edx]
  760cf2:	6a 01                	push   0x1
  760cf4:	ff d0                	call   eax
  760cf6:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  760cfa:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  760cfe:	3b c3                	cmp    eax,ebx
  760d00:	74 11                	je     0x760d13
  760d02:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  760d06:	51                   	push   ecx
  760d07:	e8 d4 37 d8 ff       	call   0x4e44e0
  760d0c:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  760d10:	83 c4 04             	add    esp,0x4
  760d13:	3b d3                	cmp    edx,ebx
  760d15:	74 09                	je     0x760d20
  760d17:	52                   	push   edx
  760d18:	e8 c3 37 d8 ff       	call   0x4e44e0
  760d1d:	83 c4 04             	add    esp,0x4
  760d20:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  760d24:	3b c3                	cmp    eax,ebx
  760d26:	74 09                	je     0x760d31
  760d28:	50                   	push   eax
  760d29:	e8 b2 37 d8 ff       	call   0x4e44e0
  760d2e:	83 c4 04             	add    esp,0x4
  760d31:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  760d35:	3b c3                	cmp    eax,ebx
  760d37:	0f 84 3c fe ff ff    	je     0x760b79
  760d3d:	50                   	push   eax
  760d3e:	e8 9d 37 d8 ff       	call   0x4e44e0
  760d43:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  760d46:	83 c4 04             	add    esp,0x4
  760d49:	5f                   	pop    edi
  760d4a:	5e                   	pop    esi
  760d4b:	5b                   	pop    ebx
  760d4c:	8b e5                	mov    esp,ebp
  760d4e:	5d                   	pop    ebp
  760d4f:	c2 08 00             	ret    0x8
  760d52:	8b 8c 24 10 01 00 00 	mov    ecx,DWORD PTR [esp+0x110]
  760d59:	3b cb                	cmp    ecx,ebx
  760d5b:	74 2a                	je     0x760d87
  760d5d:	8d 41 04             	lea    eax,[ecx+0x4]
  760d60:	8b d0                	mov    edx,eax
  760d62:	83 cf ff             	or     edi,0xffffffff
  760d65:	f0 0f c1 3a          	lock xadd DWORD PTR [edx],edi
  760d69:	4f                   	dec    edi
  760d6a:	75 13                	jne    0x760d7f
  760d6c:	ba 01 00 00 00       	mov    edx,0x1
  760d71:	87 10                	xchg   DWORD PTR [eax],edx
  760d73:	3b cb                	cmp    ecx,ebx
  760d75:	74 08                	je     0x760d7f
  760d77:	8b 01                	mov    eax,DWORD PTR [ecx]
  760d79:	8b 10                	mov    edx,DWORD PTR [eax]
  760d7b:	6a 01                	push   0x1
  760d7d:	ff d2                	call   edx
  760d7f:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  760d83:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  760d87:	3b d0                	cmp    edx,eax
  760d89:	8b ca                	mov    ecx,edx
  760d8b:	74 6d                	je     0x760dfa
  760d8d:	f3 0f 10 15 cc 4c 0f 01 	movss  xmm2,DWORD PTR ds:0x10f4ccc
  760d95:	f3 0f 10 1d 18 b2 fa 00 	movss  xmm3,DWORD PTR ds:0xfab218
  760d9d:	f3 0f 10 25 9c 51 00 01 	movss  xmm4,DWORD PTR ds:0x100519c
  760da5:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  760da9:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  760dad:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  760db1:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  760db4:	0f 28 c8             	movaps xmm1,xmm0
  760db7:	0f c6 c8 00          	shufps xmm1,xmm0,0x0
  760dbb:	0f 5c ca             	subps  xmm1,xmm2
  760dbe:	0f 28 eb             	movaps xmm5,xmm3
  760dc1:	0f 59 e9             	mulps  xmm5,xmm1
  760dc4:	0f 5f e9             	maxps  xmm5,xmm1
  760dc7:	0f c2 ec 02          	cmpleps xmm5,xmm4
  760dcb:	0f 50 fd             	movmskps edi,xmm5
  760dce:	83 ff 0f             	cmp    edi,0xf
  760dd1:	75 20                	jne    0x760df3
  760dd3:	0f c6 c0 aa          	shufps xmm0,xmm0,0xaa
  760dd7:	0f 5c c2             	subps  xmm0,xmm2
  760dda:	0f 28 c8             	movaps xmm1,xmm0
  760ddd:	0f 59 cb             	mulps  xmm1,xmm3
  760de0:	0f 5f c8             	maxps  xmm1,xmm0
  760de3:	0f c2 cc 02          	cmpleps xmm1,xmm4
  760de7:	0f 50 f9             	movmskps edi,xmm1
  760dea:	83 ff 0f             	cmp    edi,0xf
  760ded:	0f 84 a4 00 00 00    	je     0x760e97
  760df3:	83 c1 40             	add    ecx,0x40
  760df6:	3b c8                	cmp    ecx,eax
  760df8:	75 b7                	jne    0x760db1
  760dfa:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  760dfe:	2b 4c 24 30          	sub    ecx,DWORD PTR [esp+0x30]
  760e02:	2b c2                	sub    eax,edx
  760e04:	8b 54 24 64          	mov    edx,DWORD PTR [esp+0x64]
  760e08:	2b 54 24 60          	sub    edx,DWORD PTR [esp+0x60]
  760e0c:	c1 f9 06             	sar    ecx,0x6
  760e0f:	c1 f8 06             	sar    eax,0x6
  760e12:	c1 fa 06             	sar    edx,0x6
  760e15:	89 8c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ecx
  760e1c:	89 84 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],eax
  760e23:	89 94 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],edx
  760e2a:	e8 c1 7e 0c 00       	call   0x828cf0
  760e2f:	8b 4e 44             	mov    ecx,DWORD PTR [esi+0x44]
  760e32:	8b 56 40             	mov    edx,DWORD PTR [esi+0x40]
  760e35:	51                   	push   ecx
  760e36:	52                   	push   edx
  760e37:	8d 4c 24 78          	lea    ecx,[esp+0x78]
  760e3b:	51                   	push   ecx
  760e3c:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  760e43:	52                   	push   edx
  760e44:	8d 8e 58 01 00 00    	lea    ecx,[esi+0x158]
  760e4a:	51                   	push   ecx
  760e4b:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  760e4e:	6a 01                	push   0x1
  760e50:	51                   	push   ecx
  760e51:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  760e54:	8d 54 24 5c          	lea    edx,[esp+0x5c]
  760e58:	52                   	push   edx
  760e59:	51                   	push   ecx
  760e5a:	8d be e0 00 00 00    	lea    edi,[esi+0xe0]
  760e60:	57                   	push   edi
  760e61:	8b c8                	mov    ecx,eax
  760e63:	89 9c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ebx
  760e6a:	89 9c 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],ebx
  760e71:	e8 fa b2 0c 00       	call   0x82c170
  760e76:	39 3f                	cmp    DWORD PTR [edi],edi
  760e78:	8b 8e ec 00 00 00    	mov    ecx,DWORD PTR [esi+0xec]
  760e7e:	88 44 24 1f          	mov    BYTE PTR [esp+0x1f],al
  760e82:	75 7d                	jne    0x760f01
  760e84:	3b cb                	cmp    ecx,ebx
  760e86:	0f 84 b9 00 00 00    	je     0x760f45
  760e8c:	89 9e ec 00 00 00    	mov    DWORD PTR [esi+0xec],ebx
  760e92:	e9 8f 00 00 00       	jmp    0x760f26
  760e97:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  760e9b:	3b c3                	cmp    eax,ebx
  760e9d:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  760ea0:	b9 12 00 00 00       	mov    ecx,0x12
  760ea5:	8d 74 24 78          	lea    esi,[esp+0x78]
  760ea9:	c7 44 24 78 0a 00 00 00 	mov    DWORD PTR [esp+0x78],0xa
  760eb1:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  760eb3:	74 0d                	je     0x760ec2
  760eb5:	50                   	push   eax
  760eb6:	e8 25 36 d8 ff       	call   0x4e44e0
  760ebb:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  760ebf:	83 c4 04             	add    esp,0x4
  760ec2:	3b d3                	cmp    edx,ebx
  760ec4:	74 09                	je     0x760ecf
  760ec6:	52                   	push   edx
  760ec7:	e8 14 36 d8 ff       	call   0x4e44e0
  760ecc:	83 c4 04             	add    esp,0x4
  760ecf:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  760ed3:	3b c3                	cmp    eax,ebx
  760ed5:	74 09                	je     0x760ee0
  760ed7:	50                   	push   eax
  760ed8:	e8 03 36 d8 ff       	call   0x4e44e0
  760edd:	83 c4 04             	add    esp,0x4
  760ee0:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  760ee4:	3b c3                	cmp    eax,ebx
  760ee6:	0f 84 8d fc ff ff    	je     0x760b79
  760eec:	50                   	push   eax
  760eed:	e8 ee 35 d8 ff       	call   0x4e44e0
  760ef2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  760ef5:	83 c4 04             	add    esp,0x4
  760ef8:	5f                   	pop    edi
  760ef9:	5e                   	pop    esi
  760efa:	5b                   	pop    ebx
  760efb:	8b e5                	mov    esp,ebp
  760efd:	5d                   	pop    ebp
  760efe:	c2 08 00             	ret    0x8
  760f01:	8b 07                	mov    eax,DWORD PTR [edi]
  760f03:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  760f06:	3b c1                	cmp    eax,ecx
  760f08:	74 3b                	je     0x760f45
  760f0a:	3b c3                	cmp    eax,ebx
  760f0c:	74 0e                	je     0x760f1c
  760f0e:	8d 50 04             	lea    edx,[eax+0x4]
  760f11:	bb 01 00 00 00       	mov    ebx,0x1
  760f16:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  760f1a:	33 db                	xor    ebx,ebx
  760f1c:	3b cb                	cmp    ecx,ebx
  760f1e:	89 86 ec 00 00 00    	mov    DWORD PTR [esi+0xec],eax
  760f24:	74 1f                	je     0x760f45
  760f26:	83 ca ff             	or     edx,0xffffffff
  760f29:	8d 41 04             	lea    eax,[ecx+0x4]
  760f2c:	f0 0f c1 10          	lock xadd DWORD PTR [eax],edx
  760f30:	4a                   	dec    edx
  760f31:	75 12                	jne    0x760f45
  760f33:	8d 41 04             	lea    eax,[ecx+0x4]
  760f36:	ba 01 00 00 00       	mov    edx,0x1
  760f3b:	87 10                	xchg   DWORD PTR [eax],edx
  760f3d:	8b 01                	mov    eax,DWORD PTR [ecx]
  760f3f:	8b 10                	mov    edx,DWORD PTR [eax]
  760f41:	6a 01                	push   0x1
  760f43:	ff d2                	call   edx
  760f45:	80 7c 24 1f 00       	cmp    BYTE PTR [esp+0x1f],0x0
  760f4a:	f3 0f 10 35 f8 98 f9 00 	movss  xmm6,DWORD PTR ds:0xf998f8
  760f52:	74 69                	je     0x760fbd
  760f54:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  760f59:	0f 84 23 02 00 00    	je     0x761182
  760f5f:	80 be f4 00 00 00 00 	cmp    BYTE PTR [esi+0xf4],0x0
  760f66:	74 08                	je     0x760f70
  760f68:	8b 9e ec 00 00 00    	mov    ebx,DWORD PTR [esi+0xec]
  760f6e:	eb 0d                	jmp    0x760f7d
  760f70:	39 3f                	cmp    DWORD PTR [edi],edi
  760f72:	0f 84 0a 02 00 00    	je     0x761182
  760f78:	8b 07                	mov    eax,DWORD PTR [edi]
  760f7a:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
  760f7d:	85 db                	test   ebx,ebx
  760f7f:	0f 84 fb 01 00 00    	je     0x761180
  760f85:	8d 43 04             	lea    eax,[ebx+0x4]
  760f88:	b9 01 00 00 00       	mov    ecx,0x1
  760f8d:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  760f91:	8b 13                	mov    edx,DWORD PTR [ebx]
  760f93:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  760f96:	6a 08                	push   0x8
  760f98:	8b cb                	mov    ecx,ebx
  760f9a:	ff d0                	call   eax
  760f9c:	8d 43 04             	lea    eax,[ebx+0x4]
  760f9f:	83 c9 ff             	or     ecx,0xffffffff
  760fa2:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  760fa6:	49                   	dec    ecx
  760fa7:	75 14                	jne    0x760fbd
  760fa9:	ba 01 00 00 00       	mov    edx,0x1
  760fae:	8d 43 04             	lea    eax,[ebx+0x4]
  760fb1:	87 10                	xchg   DWORD PTR [eax],edx
  760fb3:	8b 03                	mov    eax,DWORD PTR [ebx]
  760fb5:	8b 10                	mov    edx,DWORD PTR [eax]
  760fb7:	6a 01                	push   0x1
  760fb9:	8b cb                	mov    ecx,ebx
  760fbb:	ff d2                	call   edx
  760fbd:	39 3f                	cmp    DWORD PTR [edi],edi
  760fbf:	0f 84 38 06 00 00    	je     0x7615fd
  760fc5:	8d 4c 24 78          	lea    ecx,[esp+0x78]
  760fc9:	51                   	push   ecx
  760fca:	8b ce                	mov    ecx,esi
  760fcc:	e8 1f 18 ff ff       	call   0x7527f0
  760fd1:	39 3f                	cmp    DWORD PTR [edi],edi
  760fd3:	0f 84 24 06 00 00    	je     0x7615fd
  760fd9:	8b 07                	mov    eax,DWORD PTR [edi]
  760fdb:	3b c7                	cmp    eax,edi
  760fdd:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  760fe1:	74 78                	je     0x76105b
  760fe3:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  760fe7:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
  760fea:	85 ff                	test   edi,edi
  760fec:	74 59                	je     0x761047
  760fee:	8d 5f 04             	lea    ebx,[edi+0x4]
  760ff1:	8b c3                	mov    eax,ebx
  760ff3:	b9 01 00 00 00       	mov    ecx,0x1
  760ff8:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  760ffc:	8b 17                	mov    edx,DWORD PTR [edi]
  760ffe:	8d 86 58 01 00 00    	lea    eax,[esi+0x158]
  761004:	50                   	push   eax
  761005:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  761008:	8b cf                	mov    ecx,edi
  76100a:	ff d0                	call   eax
  76100c:	8b 17                	mov    edx,DWORD PTR [edi]
  76100e:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  761011:	8b cf                	mov    ecx,edi
  761013:	ff d0                	call   eax
  761015:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  761018:	51                   	push   ecx
  761019:	8b c8                	mov    ecx,eax
  76101b:	e8 f0 b4 0b 00       	call   0x81c510
  761020:	50                   	push   eax
  761021:	57                   	push   edi
  761022:	e8 b9 e5 0f 00       	call   0x85f5e0
  761027:	83 c4 0c             	add    esp,0xc
  76102a:	8b d3                	mov    edx,ebx
  76102c:	83 c8 ff             	or     eax,0xffffffff
  76102f:	f0 0f c1 02          	lock xadd DWORD PTR [edx],eax
  761033:	48                   	dec    eax
  761034:	75 11                	jne    0x761047
  761036:	b9 01 00 00 00       	mov    ecx,0x1
  76103b:	87 0b                	xchg   DWORD PTR [ebx],ecx
  76103d:	8b 17                	mov    edx,DWORD PTR [edi]
  76103f:	8b 02                	mov    eax,DWORD PTR [edx]
  761041:	6a 01                	push   0x1
  761043:	8b cf                	mov    ecx,edi
  761045:	ff d0                	call   eax
  761047:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  76104b:	8b 01                	mov    eax,DWORD PTR [ecx]
  76104d:	8d 8e e0 00 00 00    	lea    ecx,[esi+0xe0]
  761053:	3b c1                	cmp    eax,ecx
  761055:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  761059:	75 88                	jne    0x760fe3
  76105b:	8d 86 e0 00 00 00    	lea    eax,[esi+0xe0]
  761061:	39 00                	cmp    DWORD PTR [eax],eax
  761063:	0f 84 94 05 00 00    	je     0x7615fd
  761069:	8b 96 e4 00 00 00    	mov    edx,DWORD PTR [esi+0xe4]
  76106f:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
  761072:	85 ff                	test   edi,edi
  761074:	0f 84 83 05 00 00    	je     0x7615fd
  76107a:	8d 5f 04             	lea    ebx,[edi+0x4]
  76107d:	8b c3                	mov    eax,ebx
  76107f:	b9 01 00 00 00       	mov    ecx,0x1
  761084:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  761088:	80 be 40 01 00 00 00 	cmp    BYTE PTR [esi+0x140],0x0
  76108f:	0f 84 dd 04 00 00    	je     0x761572
  761095:	0f 28 96 10 01 00 00 	movaps xmm2,XMMWORD PTR [esi+0x110]
  76109c:	0f 28 86 00 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x100]
  7610a3:	0f 28 8e 20 01 00 00 	movaps xmm1,XMMWORD PTR [esi+0x120]
  7610aa:	0f 28 f2             	movaps xmm6,xmm2
  7610ad:	0f 28 e8             	movaps xmm5,xmm0
  7610b0:	0f c6 f2 55          	shufps xmm6,xmm2,0x55
  7610b4:	0f 28 d9             	movaps xmm3,xmm1
  7610b7:	0f c6 e8 00          	shufps xmm5,xmm0,0x0
  7610bb:	0f 28 e6             	movaps xmm4,xmm6
  7610be:	0f 58 e5             	addps  xmm4,xmm5
  7610c1:	0f c6 d9 aa          	shufps xmm3,xmm1,0xaa
  7610c5:	0f 28 fb             	movaps xmm7,xmm3
  7610c8:	0f 58 fc             	addps  xmm7,xmm4
  7610cb:	0f 29 bc 24 d0 00 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm7
  7610d3:	f3 0f 11 7c 24 20    	movss  DWORD PTR [esp+0x20],xmm7
  7610d9:	f3 0f 10 3d cc 4c 0f 01 	movss  xmm7,DWORD PTR ds:0x10f4ccc
  7610e1:	0f c6 ff 00          	shufps xmm7,xmm7,0x0
  7610e5:	f3 0f 11 bc 24 c0 00 00 00 	movss  DWORD PTR [esp+0xc0],xmm7
  7610ee:	f3 0f 10 7c 24 20    	movss  xmm7,DWORD PTR [esp+0x20]
  7610f4:	0f 2f bc 24 c0 00 00 00 	comiss xmm7,DWORD PTR [esp+0xc0]
  7610fc:	0f 29 a4 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm4
  761104:	f3 0f 10 25 b4 b5 f9 00 	movss  xmm4,DWORD PTR ds:0xf9b5b4
  76110c:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  761110:	0f 86 a0 02 00 00    	jbe    0x7613b6
  761116:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  76111e:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  761122:	0f 58 9c 24 d0 00 00 00 	addps  xmm3,XMMWORD PTR [esp+0xd0]
  76112a:	0f 51 fb             	sqrtps xmm7,xmm3
  76112d:	0f 28 d8             	movaps xmm3,xmm0
  761130:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  761134:	0f c6 c0 aa          	shufps xmm0,xmm0,0xaa
  761138:	0f 28 ea             	movaps xmm5,xmm2
  76113b:	0f c6 ea 00          	shufps xmm5,xmm2,0x0
  76113f:	0f 5c dd             	subps  xmm3,xmm5
  761142:	0f 28 e9             	movaps xmm5,xmm1
  761145:	0f c6 e9 00          	shufps xmm5,xmm1,0x0
  761149:	0f 5c e8             	subps  xmm5,xmm0
  76114c:	0f 28 c2             	movaps xmm0,xmm2
  76114f:	0f c6 c2 aa          	shufps xmm0,xmm2,0xaa
  761153:	0f c6 c9 55          	shufps xmm1,xmm1,0x55
  761157:	0f 5c c1             	subps  xmm0,xmm1
  76115a:	0f 28 f4             	movaps xmm6,xmm4
  76115d:	0f 5e f7             	divps  xmm6,xmm7
  761160:	0f 59 c6             	mulps  xmm0,xmm6
  761163:	0f 59 ee             	mulps  xmm5,xmm6
  761166:	0f 59 de             	mulps  xmm3,xmm6
  761169:	0f 59 fc             	mulps  xmm7,xmm4
  76116c:	0f c6 c5 10          	shufps xmm0,xmm5,0x10
  761170:	0f c6 df 32          	shufps xmm3,xmm7,0x32
  761174:	0f c6 c3 88          	shufps xmm0,xmm3,0x88
  761178:	0f 28 c8             	movaps xmm1,xmm0
  76117b:	e9 d8 03 00 00       	jmp    0x761558
  761180:	33 db                	xor    ebx,ebx
  761182:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  761186:	3b c3                	cmp    eax,ebx
  761188:	c7 44 24 78 01 00 00 00 	mov    DWORD PTR [esp+0x78],0x1
  761190:	7c 1c                	jl     0x7611ae
  761192:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  761195:	8b 0a                	mov    ecx,DWORD PTR [edx]
  761197:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
  76119a:	2b d1                	sub    edx,ecx
  76119c:	c1 fa 06             	sar    edx,0x6
  76119f:	3b c2                	cmp    eax,edx
  7611a1:	7d 0b                	jge    0x7611ae
  7611a3:	c1 e0 06             	shl    eax,0x6
  7611a6:	8b 44 08 28          	mov    eax,DWORD PTR [eax+ecx*1+0x28]
  7611aa:	89 44 24 7c          	mov    DWORD PTR [esp+0x7c],eax
  7611ae:	8b 5c 24 70          	mov    ebx,DWORD PTR [esp+0x70]
  7611b2:	c1 e3 06             	shl    ebx,0x6
  7611b5:	03 5c 24 40          	add    ebx,DWORD PTR [esp+0x40]
  7611b9:	0f 57 c0             	xorps  xmm0,xmm0
  7611bc:	0f 28 4b 10          	movaps xmm1,XMMWORD PTR [ebx+0x10]
  7611c0:	0f 28 d0             	movaps xmm2,xmm0
  7611c3:	0f c2 d1 00          	cmpeqps xmm2,xmm1
  7611c7:	0f 50 ca             	movmskps ecx,xmm2
  7611ca:	83 e1 07             	and    ecx,0x7
  7611cd:	80 f9 07             	cmp    cl,0x7
  7611d0:	0f 84 48 01 00 00    	je     0x76131e
  7611d6:	0f 57 d2             	xorps  xmm2,xmm2
  7611d9:	f3 0f 10 25 b4 b5 f9 00 	movss  xmm4,DWORD PTR ds:0xf9b5b4
  7611e1:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  7611e6:	f3 0f 11 54 24 24    	movss  DWORD PTR [esp+0x24],xmm2
  7611ec:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  7611f1:	0f 59 c9             	mulps  xmm1,xmm1
  7611f4:	0f 28 c1             	movaps xmm0,xmm1
  7611f7:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  7611fb:	0f 28 d9             	movaps xmm3,xmm1
  7611fe:	0f c6 d9 01          	shufps xmm3,xmm1,0x1
  761202:	0f 58 c3             	addps  xmm0,xmm3
  761205:	0f 58 c1             	addps  xmm0,xmm1
  761208:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  76120c:	0f 28 e8             	movaps xmm5,xmm0
  76120f:	0f 52 dd             	rsqrtps xmm3,xmm5
  761212:	0f 28 fb             	movaps xmm7,xmm3
  761215:	0f 59 fb             	mulps  xmm7,xmm3
  761218:	0f 59 fd             	mulps  xmm7,xmm5
  76121b:	f3 0f 10 c6          	movss  xmm0,xmm6
  76121f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  761223:	0f 28 c8             	movaps xmm1,xmm0
  761226:	0f 5c cf             	subps  xmm1,xmm7
  761229:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  76122d:	0f 28 fc             	movaps xmm7,xmm4
  761230:	0f 59 fb             	mulps  xmm7,xmm3
  761233:	0f 59 cf             	mulps  xmm1,xmm7
  761236:	0f 58 cb             	addps  xmm1,xmm3
  761239:	0f 28 d9             	movaps xmm3,xmm1
  76123c:	0f 59 d9             	mulps  xmm3,xmm1
  76123f:	0f 59 dd             	mulps  xmm3,xmm5
  761242:	0f 5c c3             	subps  xmm0,xmm3
  761245:	0f 28 d9             	movaps xmm3,xmm1
  761248:	0f 59 dc             	mulps  xmm3,xmm4
  76124b:	0f 59 c3             	mulps  xmm0,xmm3
  76124e:	0f 58 c1             	addps  xmm0,xmm1
  761251:	0f 59 44 24 20       	mulps  xmm0,XMMWORD PTR [esp+0x20]
  761256:	f3 0f 11 54 24 2c    	movss  DWORD PTR [esp+0x2c],xmm2
  76125c:	f3 0f 11 54 24 28    	movss  DWORD PTR [esp+0x28],xmm2
  761262:	f3 0f 11 74 24 24    	movss  DWORD PTR [esp+0x24],xmm6
  761268:	f3 0f 11 54 24 20    	movss  DWORD PTR [esp+0x20],xmm2
  76126e:	0f 28 5c 24 20       	movaps xmm3,XMMWORD PTR [esp+0x20]
  761273:	0f 28 cb             	movaps xmm1,xmm3
  761276:	0f c6 cb 09          	shufps xmm1,xmm3,0x9
  76127a:	0f 28 fb             	movaps xmm7,xmm3
  76127d:	0f 28 e0             	movaps xmm4,xmm0
  761280:	0f c6 e0 09          	shufps xmm4,xmm0,0x9
  761284:	0f 28 e8             	movaps xmm5,xmm0
  761287:	0f c6 e8 12          	shufps xmm5,xmm0,0x12
  76128b:	0f 59 cd             	mulps  xmm1,xmm5
  76128e:	0f c6 fb 12          	shufps xmm7,xmm3,0x12
  761292:	0f 59 fc             	mulps  xmm7,xmm4
  761295:	0f 5c cf             	subps  xmm1,xmm7
  761298:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  76129d:	f3 0f 11 54 24 2c    	movss  DWORD PTR [esp+0x2c],xmm2
  7612a3:	0f 28 5c 24 20       	movaps xmm3,XMMWORD PTR [esp+0x20]
  7612a8:	0f 29 9e 00 01 00 00 	movaps XMMWORD PTR [esi+0x100],xmm3
  7612af:	0f 28 d9             	movaps xmm3,xmm1
  7612b2:	0f c6 d9 09          	shufps xmm3,xmm1,0x9
  7612b6:	0f 59 dd             	mulps  xmm3,xmm5
  7612b9:	0f 28 e9             	movaps xmm5,xmm1
  7612bc:	0f c6 e9 12          	shufps xmm5,xmm1,0x12
  7612c0:	0f 59 ec             	mulps  xmm5,xmm4
  7612c3:	0f 5c eb             	subps  xmm5,xmm3
  7612c6:	0f 29 6c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm5
  7612cb:	f3 0f 11 54 24 2c    	movss  DWORD PTR [esp+0x2c],xmm2
  7612d1:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  7612d6:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  7612db:	0f 29 8e 10 01 00 00 	movaps XMMWORD PTR [esi+0x110],xmm1
  7612e2:	f3 0f 11 54 24 2c    	movss  DWORD PTR [esp+0x2c],xmm2
  7612e8:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  7612ed:	0f 29 86 20 01 00 00 	movaps XMMWORD PTR [esi+0x120],xmm0
  7612f4:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  7612f7:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  7612fc:	f3 0f 11 74 24 2c    	movss  DWORD PTR [esp+0x2c],xmm6
  761302:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  761307:	0f 29 86 30 01 00 00 	movaps XMMWORD PTR [esi+0x130],xmm0
  76130e:	c6 86 41 01 00 00 01 	mov    BYTE PTR [esi+0x141],0x1
  761315:	c6 86 40 01 00 00 01 	mov    BYTE PTR [esi+0x140],0x1
  76131c:	eb 5a                	jmp    0x761378
  76131e:	c6 86 41 01 00 00 01 	mov    BYTE PTR [esi+0x141],0x1
  761325:	0f 28 23             	movaps xmm4,XMMWORD PTR [ebx]
  761328:	f3 0f 10 ce          	movss  xmm1,xmm6
  76132c:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  761330:	0f 28 d0             	movaps xmm2,xmm0
  761333:	0f 28 d8             	movaps xmm3,xmm0
  761336:	0f 28 e8             	movaps xmm5,xmm0
  761339:	0f c6 e9 af          	shufps xmm5,xmm1,0xaf
  76133d:	0f c6 d1 05          	shufps xmm2,xmm1,0x5
  761341:	0f c6 d0 e2          	shufps xmm2,xmm0,0xe2
  761345:	0f c6 d9 50          	shufps xmm3,xmm1,0x50
  761349:	0f c6 d8 e8          	shufps xmm3,xmm0,0xe8
  76134d:	0f c6 c5 24          	shufps xmm0,xmm5,0x24
  761351:	0f 28 ec             	movaps xmm5,xmm4
  761354:	0f c6 e9 fa          	shufps xmm5,xmm1,0xfa
  761358:	0f c6 e5 84          	shufps xmm4,xmm5,0x84
  76135c:	0f 29 96 00 01 00 00 	movaps XMMWORD PTR [esi+0x100],xmm2
  761363:	0f 29 9e 10 01 00 00 	movaps XMMWORD PTR [esi+0x110],xmm3
  76136a:	0f 29 86 20 01 00 00 	movaps XMMWORD PTR [esi+0x120],xmm0
  761371:	0f 29 a6 30 01 00 00 	movaps XMMWORD PTR [esi+0x130],xmm4
  761378:	53                   	push   ebx
  761379:	8d 8c 24 8c 00 00 00 	lea    ecx,[esp+0x8c]
  761380:	e8 7b ad 00 00       	call   0x76c100
  761385:	8b 53 28             	mov    edx,DWORD PTR [ebx+0x28]
  761388:	89 94 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],edx
  76138f:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
  761392:	8b ce                	mov    ecx,esi
  761394:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
  76139b:	e8 b0 f0 fe ff       	call   0x750450
  7613a0:	f3 0f 10 86 a4 00 00 00 	movss  xmm0,DWORD PTR [esi+0xa4]
  7613a8:	f3 0f 11 84 24 94 00 00 00 	movss  DWORD PTR [esp+0x94],xmm0
  7613b1:	e9 1b fc ff ff       	jmp    0x760fd1
  7613b6:	f3 0f 11 ac 24 d0 00 00 00 	movss  DWORD PTR [esp+0xd0],xmm5
  7613bf:	f3 0f 10 bc 24 d0 00 00 00 	movss  xmm7,DWORD PTR [esp+0xd0]
  7613c8:	f3 0f 11 b4 24 c0 00 00 00 	movss  DWORD PTR [esp+0xc0],xmm6
  7613d1:	0f 2f bc 24 c0 00 00 00 	comiss xmm7,DWORD PTR [esp+0xc0]
  7613d9:	0f 86 8d 00 00 00    	jbe    0x76146c
  7613df:	f3 0f 11 ac 24 d0 00 00 00 	movss  DWORD PTR [esp+0xd0],xmm5
  7613e8:	f3 0f 10 bc 24 d0 00 00 00 	movss  xmm7,DWORD PTR [esp+0xd0]
  7613f1:	f3 0f 11 9c 24 c0 00 00 00 	movss  DWORD PTR [esp+0xc0],xmm3
  7613fa:	0f 2f bc 24 c0 00 00 00 	comiss xmm7,DWORD PTR [esp+0xc0]
  761402:	76 68                	jbe    0x76146c
  761404:	0f 58 de             	addps  xmm3,xmm6
  761407:	0f 5c eb             	subps  xmm5,xmm3
  76140a:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  761412:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  761416:	0f 58 dd             	addps  xmm3,xmm5
  761419:	0f 28 f9             	movaps xmm7,xmm1
  76141c:	0f c6 f9 55          	shufps xmm7,xmm1,0x55
  761420:	0f 28 ea             	movaps xmm5,xmm2
  761423:	0f c6 ea aa          	shufps xmm5,xmm2,0xaa
  761427:	0f 5c ef             	subps  xmm5,xmm7
  76142a:	0f 51 db             	sqrtps xmm3,xmm3
  76142d:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  761431:	0f 28 f8             	movaps xmm7,xmm0
  761434:	0f c6 f8 aa          	shufps xmm7,xmm0,0xaa
  761438:	0f 58 cf             	addps  xmm1,xmm7
  76143b:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  76143f:	0f 28 f4             	movaps xmm6,xmm4
  761442:	0f 5e f3             	divps  xmm6,xmm3
  761445:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  761449:	0f 58 d0             	addps  xmm2,xmm0
  76144c:	0f 59 dc             	mulps  xmm3,xmm4
  76144f:	0f 59 ce             	mulps  xmm1,xmm6
  761452:	0f 59 d6             	mulps  xmm2,xmm6
  761455:	0f 59 ee             	mulps  xmm5,xmm6
  761458:	0f c6 cd 32          	shufps xmm1,xmm5,0x32
  76145c:	0f c6 da 10          	shufps xmm3,xmm2,0x10
  761460:	0f c6 d9 88          	shufps xmm3,xmm1,0x88
  761464:	0f 28 cb             	movaps xmm1,xmm3
  761467:	e9 ec 00 00 00       	jmp    0x761558
  76146c:	f3 0f 11 b4 24 d0 00 00 00 	movss  DWORD PTR [esp+0xd0],xmm6
  761475:	f3 0f 10 bc 24 d0 00 00 00 	movss  xmm7,DWORD PTR [esp+0xd0]
  76147e:	f3 0f 11 9c 24 c0 00 00 00 	movss  DWORD PTR [esp+0xc0],xmm3
  761487:	0f 2f bc 24 c0 00 00 00 	comiss xmm7,DWORD PTR [esp+0xc0]
  76148f:	76 65                	jbe    0x7614f6
  761491:	0f 58 dd             	addps  xmm3,xmm5
  761494:	0f 5c f3             	subps  xmm6,xmm3
  761497:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  76149f:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  7614a3:	0f 58 de             	addps  xmm3,xmm6
  7614a6:	0f 51 fb             	sqrtps xmm7,xmm3
  7614a9:	0f 28 e9             	movaps xmm5,xmm1
  7614ac:	0f c6 e9 00          	shufps xmm5,xmm1,0x0
  7614b0:	0f c6 c9 55          	shufps xmm1,xmm1,0x55
  7614b4:	0f 28 d8             	movaps xmm3,xmm0
  7614b7:	0f c6 d8 aa          	shufps xmm3,xmm0,0xaa
  7614bb:	0f 5c eb             	subps  xmm5,xmm3
  7614be:	0f 28 da             	movaps xmm3,xmm2
  7614c1:	0f c6 da aa          	shufps xmm3,xmm2,0xaa
  7614c5:	0f 58 d9             	addps  xmm3,xmm1
  7614c8:	0f 28 ca             	movaps xmm1,xmm2
  7614cb:	0f c6 ca 00          	shufps xmm1,xmm2,0x0
  7614cf:	0f 28 f4             	movaps xmm6,xmm4
  7614d2:	0f 5e f7             	divps  xmm6,xmm7
  7614d5:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  7614d9:	0f 58 c8             	addps  xmm1,xmm0
  7614dc:	0f 59 ce             	mulps  xmm1,xmm6
  7614df:	0f 59 fc             	mulps  xmm7,xmm4
  7614e2:	0f 59 de             	mulps  xmm3,xmm6
  7614e5:	0f 59 ee             	mulps  xmm5,xmm6
  7614e8:	0f c6 cf 10          	shufps xmm1,xmm7,0x10
  7614ec:	0f c6 dd 32          	shufps xmm3,xmm5,0x32
  7614f0:	0f c6 cb 88          	shufps xmm1,xmm3,0x88
  7614f4:	eb 62                	jmp    0x761558
  7614f6:	0f 5c 9c 24 e0 00 00 00 	subps  xmm3,XMMWORD PTR [esp+0xe0]
  7614fe:	f3 0f 10 2d f8 98 f9 00 	movss  xmm5,DWORD PTR ds:0xf998f8
  761506:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  76150a:	0f 58 eb             	addps  xmm5,xmm3
  76150d:	0f 28 fa             	movaps xmm7,xmm2
  761510:	0f c6 fa 00          	shufps xmm7,xmm2,0x0
  761514:	0f 28 d8             	movaps xmm3,xmm0
  761517:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  76151b:	0f 5c df             	subps  xmm3,xmm7
  76151e:	0f 28 f9             	movaps xmm7,xmm1
  761521:	0f c6 f9 55          	shufps xmm7,xmm1,0x55
  761525:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  761529:	0f 51 ed             	sqrtps xmm5,xmm5
  76152c:	0f c6 d2 aa          	shufps xmm2,xmm2,0xaa
  761530:	0f 28 f4             	movaps xmm6,xmm4
  761533:	0f 5e f5             	divps  xmm6,xmm5
  761536:	0f c6 c0 aa          	shufps xmm0,xmm0,0xaa
  76153a:	0f 58 c8             	addps  xmm1,xmm0
  76153d:	0f 58 d7             	addps  xmm2,xmm7
  761540:	0f 59 ce             	mulps  xmm1,xmm6
  761543:	0f 59 d6             	mulps  xmm2,xmm6
  761546:	0f 59 ec             	mulps  xmm5,xmm4
  761549:	0f 59 de             	mulps  xmm3,xmm6
  76154c:	0f c6 ca 10          	shufps xmm1,xmm2,0x10
  761550:	0f c6 eb 32          	shufps xmm5,xmm3,0x32
  761554:	0f c6 cd 88          	shufps xmm1,xmm5,0x88
  761558:	8b 17                	mov    edx,DWORD PTR [edi]
  76155a:	8b 92 44 01 00 00    	mov    edx,DWORD PTR [edx+0x144]
  761560:	8d 84 24 e0 00 00 00 	lea    eax,[esp+0xe0]
  761567:	0f 29 8c 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm1
  76156f:	50                   	push   eax
  761570:	eb 1b                	jmp    0x76158d
  761572:	8b 07                	mov    eax,DWORD PTR [edi]
  761574:	8b 90 44 01 00 00    	mov    edx,DWORD PTR [eax+0x144]
  76157a:	8d 8c 24 e0 00 00 00 	lea    ecx,[esp+0xe0]
  761581:	0f 57 c0             	xorps  xmm0,xmm0
  761584:	0f 29 84 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  76158c:	51                   	push   ecx
  76158d:	8b cf                	mov    ecx,edi
  76158f:	ff d2                	call   edx
  761591:	80 be 41 01 00 00 00 	cmp    BYTE PTR [esi+0x141],0x0
  761598:	74 23                	je     0x7615bd
  76159a:	8b 07                	mov    eax,DWORD PTR [edi]
  76159c:	0f 28 86 30 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x130]
  7615a3:	8b 90 48 01 00 00    	mov    edx,DWORD PTR [eax+0x148]
  7615a9:	8d 8c 24 e0 00 00 00 	lea    ecx,[esp+0xe0]
  7615b0:	51                   	push   ecx
  7615b1:	8b cf                	mov    ecx,edi
  7615b3:	0f 29 84 24 e4 00 00 00 	movaps XMMWORD PTR [esp+0xe4],xmm0
  7615bb:	ff d2                	call   edx
  7615bd:	8b 8e 44 01 00 00    	mov    ecx,DWORD PTR [esi+0x144]
  7615c3:	85 c9                	test   ecx,ecx
  7615c5:	74 19                	je     0x7615e0
  7615c7:	e8 a4 e9 fe ff       	call   0x74ff70
  7615cc:	8b c8                	mov    ecx,eax
  7615ce:	0b ca                	or     ecx,edx
  7615d0:	74 0e                	je     0x7615e0
  7615d2:	8b 37                	mov    esi,DWORD PTR [edi]
  7615d4:	52                   	push   edx
  7615d5:	8b 96 4c 01 00 00    	mov    edx,DWORD PTR [esi+0x14c]
  7615db:	50                   	push   eax
  7615dc:	8b cf                	mov    ecx,edi
  7615de:	ff d2                	call   edx
  7615e0:	8b c3                	mov    eax,ebx
  7615e2:	83 c9 ff             	or     ecx,0xffffffff
  7615e5:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  7615e9:	49                   	dec    ecx
  7615ea:	75 11                	jne    0x7615fd
  7615ec:	ba 01 00 00 00       	mov    edx,0x1
  7615f1:	87 13                	xchg   DWORD PTR [ebx],edx
  7615f3:	8b 07                	mov    eax,DWORD PTR [edi]
  7615f5:	8b 10                	mov    edx,DWORD PTR [eax]
  7615f7:	6a 01                	push   0x1
  7615f9:	8b cf                	mov    ecx,edi
  7615fb:	ff d2                	call   edx
  7615fd:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  761600:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  761604:	85 c0                	test   eax,eax
  761606:	b9 12 00 00 00       	mov    ecx,0x12
  76160b:	8d 74 24 78          	lea    esi,[esp+0x78]
  76160f:	8b fb                	mov    edi,ebx
  761611:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  761613:	74 09                	je     0x76161e
  761615:	50                   	push   eax
  761616:	e8 c5 2e d8 ff       	call   0x4e44e0
  76161b:	83 c4 04             	add    esp,0x4
  76161e:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  761622:	85 c0                	test   eax,eax
  761624:	74 09                	je     0x76162f
  761626:	50                   	push   eax
  761627:	e8 b4 2e d8 ff       	call   0x4e44e0
  76162c:	83 c4 04             	add    esp,0x4
  76162f:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  761633:	85 c0                	test   eax,eax
  761635:	74 09                	je     0x761640
  761637:	50                   	push   eax
  761638:	e8 a3 2e d8 ff       	call   0x4e44e0
  76163d:	83 c4 04             	add    esp,0x4
  761640:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  761644:	85 c0                	test   eax,eax
  761646:	74 09                	je     0x761651
  761648:	50                   	push   eax
  761649:	e8 92 2e d8 ff       	call   0x4e44e0
  76164e:	83 c4 04             	add    esp,0x4
  761651:	5f                   	pop    edi
  761652:	5e                   	pop    esi
  761653:	8b c3                	mov    eax,ebx
  761655:	5b                   	pop    ebx
  761656:	8b e5                	mov    esp,ebp
  761658:	5d                   	pop    ebp
  761659:	c2 08 00             	ret    0x8
