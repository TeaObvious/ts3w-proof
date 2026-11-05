# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00c81790,0x00c81df2); analyst name Terrain_BuildLotMaterialLayers.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c81790 <.text+0x880790>:
  c81790:	55                   	push   ebp
  c81791:	8b ec                	mov    ebp,esp
  c81793:	83 e4 f0             	and    esp,0xfffffff0
  c81796:	81 ec 04 01 00 00    	sub    esp,0x104
  c8179c:	53                   	push   ebx
  c8179d:	56                   	push   esi
  c8179e:	57                   	push   edi
  c8179f:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  c817a2:	85 ff                	test   edi,edi
  c817a4:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  c817a8:	0f 84 c3 02 00 00    	je     0xc81a71
  c817ae:	80 bf bc 04 00 00 00 	cmp    BYTE PTR [edi+0x4bc],0x0
  c817b5:	0f 85 b6 02 00 00    	jne    0xc81a71
  c817bb:	8b 41 14             	mov    eax,DWORD PTR [ecx+0x14]
  c817be:	8b 80 54 01 00 00    	mov    eax,DWORD PTR [eax+0x154]
  c817c4:	3d c9 00 00 00       	cmp    eax,0xc9
  c817c9:	74 16                	je     0xc817e1
  c817cb:	3d ca 00 00 00       	cmp    eax,0xca
  c817d0:	74 0f                	je     0xc817e1
  c817d2:	3d cc 00 00 00       	cmp    eax,0xcc
  c817d7:	74 08                	je     0xc817e1
  c817d9:	32 c0                	xor    al,al
  c817db:	88 44 24 0f          	mov    BYTE PTR [esp+0xf],al
  c817df:	eb 09                	jmp    0xc817ea
  c817e1:	c6 44 24 0f 01       	mov    BYTE PTR [esp+0xf],0x1
  c817e6:	8a 44 24 0f          	mov    al,BYTE PTR [esp+0xf]
  c817ea:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  c817ed:	38 46 58             	cmp    BYTE PTR [esi+0x58],al
  c817f0:	74 0a                	je     0xc817fc
  c817f2:	8b ce                	mov    ecx,esi
  c817f4:	88 46 58             	mov    BYTE PTR [esi+0x58],al
  c817f7:	e8 14 44 00 00       	call   0xc85c10
  c817fc:	8b 5f 48             	mov    ebx,DWORD PTR [edi+0x48]
  c817ff:	8b 7f 4c             	mov    edi,DWORD PTR [edi+0x4c]
  c81802:	57                   	push   edi
  c81803:	53                   	push   ebx
  c81804:	8b ce                	mov    ecx,esi
  c81806:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  c8180a:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  c8180e:	e8 1d 3f 00 00       	call   0xc85730
  c81813:	85 c0                	test   eax,eax
  c81815:	0f 85 58 02 00 00    	jne    0xc81a73
  c8181b:	57                   	push   edi
  c8181c:	53                   	push   ebx
  c8181d:	8b ce                	mov    ecx,esi
  c8181f:	e8 dc 48 00 00       	call   0xc86100
  c81824:	8b d8                	mov    ebx,eax
  c81826:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  c81829:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  c8182b:	50                   	push   eax
  c8182c:	51                   	push   ecx
  c8182d:	8b cb                	mov    ecx,ebx
  c8182f:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
  c81833:	e8 78 d5 ff ff       	call   0xc7edb0
  c81838:	8b 13                	mov    edx,DWORD PTR [ebx]
  c8183a:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  c8183e:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
  c81841:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c81844:	e8 27 14 c4 ff       	call   0x8c2c70
  c81849:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  c8184c:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c8184f:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  c81853:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  c81856:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  c8185a:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c8185d:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  c81861:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  c81864:	03 c2                	add    eax,edx
  c81866:	89 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],eax
  c8186d:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  c81870:	03 c1                	add    eax,ecx
  c81872:	89 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],eax
  c81879:	33 c0                	xor    eax,eax
  c8187b:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  c8187f:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  c81883:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  c81887:	8b 47 64             	mov    eax,DWORD PTR [edi+0x64]
  c8188a:	89 94 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],edx
  c81891:	89 8c 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],ecx
  c81898:	c7 44 24 4c 50 7a 07 01 	mov    DWORD PTR [esp+0x4c],0x1077a50
  c818a0:	80 78 1c 00          	cmp    BYTE PTR [eax+0x1c],0x0
  c818a4:	75 26                	jne    0xc818cc
  c818a6:	80 78 1d 00          	cmp    BYTE PTR [eax+0x1d],0x0
  c818aa:	75 20                	jne    0xc818cc
  c818ac:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  c818b0:	85 c9                	test   ecx,ecx
  c818b2:	0f 84 28 05 00 00    	je     0xc81de0
  c818b8:	8d 54 24 40          	lea    edx,[esp+0x40]
  c818bc:	52                   	push   edx
  c818bd:	8d 84 24 84 00 00 00 	lea    eax,[esp+0x84]
  c818c4:	50                   	push   eax
  c818c5:	e8 a6 08 fa ff       	call   0xc22170
  c818ca:	eb 16                	jmp    0xc818e2
  c818cc:	51                   	push   ecx
  c818cd:	52                   	push   edx
  c818ce:	8b c8                	mov    ecx,eax
  c818d0:	e8 ab 76 fa ff       	call   0xc28f80
  c818d5:	83 c0 3c             	add    eax,0x3c
  c818d8:	50                   	push   eax
  c818d9:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c818dd:	e8 2e 73 98 ff       	call   0x608c10
  c818e2:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  c818e6:	2b 44 24 40          	sub    eax,DWORD PTR [esp+0x40]
  c818ea:	8b 96 c4 00 00 00    	mov    edx,DWORD PTR [esi+0xc4]
  c818f0:	2b 96 c0 00 00 00    	sub    edx,DWORD PTR [esi+0xc0]
  c818f6:	8d 8e c0 00 00 00    	lea    ecx,[esi+0xc0]
  c818fc:	8d 78 03             	lea    edi,[eax+0x3]
  c818ff:	c1 ef 02             	shr    edi,0x2
  c81902:	c1 fa 02             	sar    edx,0x2
  c81905:	3b d7                	cmp    edx,edi
  c81907:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  c8190b:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  c8190f:	74 17                	je     0xc81928
  c81911:	8d 44 24 18          	lea    eax,[esp+0x18]
  c81915:	50                   	push   eax
  c81916:	57                   	push   edi
  c81917:	c7 44 24 20 00 00 00 00 	mov    DWORD PTR [esp+0x20],0x0
  c8191f:	e8 ac fa ff ff       	call   0xc813d0
  c81924:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  c81928:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c8192c:	8b 51 64             	mov    edx,DWORD PTR [ecx+0x64]
  c8192f:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  c81937:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  c8193d:	80 7a 1f 00          	cmp    BYTE PTR [edx+0x1f],0x0
  c81941:	8d 94 24 d0 00 00 00 	lea    edx,[esp+0xd0]
  c81948:	0f 94 c1             	sete   cl
  c8194b:	84 c9                	test   cl,cl
  c8194d:	89 94 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],edx
  c81954:	89 94 24 c0 00 00 00 	mov    DWORD PTR [esp+0xc0],edx
  c8195b:	89 94 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],edx
  c81962:	8d 94 24 10 01 00 00 	lea    edx,[esp+0x110]
  c81969:	88 4c 24 17          	mov    BYTE PTR [esp+0x17],cl
  c8196d:	89 94 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],edx
  c81974:	c7 84 24 c8 00 00 00 14 b7 07 01 	mov    DWORD PTR [esp+0xc8],0x107b714
  c8197f:	74 49                	je     0xc819ca
  c81981:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c81985:	6a 00                	push   0x0
  c81987:	50                   	push   eax
  c81988:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  c8198c:	50                   	push   eax
  c8198d:	6a 00                	push   0x0
  c8198f:	56                   	push   esi
  c81990:	e8 0b ed ff ff       	call   0xc806a0
  c81995:	57                   	push   edi
  c81996:	8d 8c 24 c0 00 00 00 	lea    ecx,[esp+0xc0]
  c8199d:	e8 6e e3 7c ff       	call   0x44fd10
  c819a2:	33 c0                	xor    eax,eax
  c819a4:	85 ff                	test   edi,edi
  c819a6:	76 22                	jbe    0xc819ca
  c819a8:	eb 06                	jmp    0xc819b0
  c819aa:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  c819b0:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  c819b4:	8b 11                	mov    edx,DWORD PTR [ecx]
  c819b6:	8b 0c 82             	mov    ecx,DWORD PTR [edx+eax*4]
  c819b9:	8b 94 24 bc 00 00 00 	mov    edx,DWORD PTR [esp+0xbc]
  c819c0:	89 0c 82             	mov    DWORD PTR [edx+eax*4],ecx
  c819c3:	83 c0 01             	add    eax,0x1
  c819c6:	3b c7                	cmp    eax,edi
  c819c8:	72 e6                	jb     0xc819b0
  c819ca:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  c819ce:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  c819d2:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
  c819d6:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  c819da:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
  c819de:	50                   	push   eax
  c819df:	51                   	push   ecx
  c819e0:	8b 4a 64             	mov    ecx,DWORD PTR [edx+0x64]
  c819e3:	57                   	push   edi
  c819e4:	56                   	push   esi
  c819e5:	e8 66 7e fa ff       	call   0xc29850
  c819ea:	85 c0                	test   eax,eax
  c819ec:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  c819f0:	0f 85 8a 00 00 00    	jne    0xc81a80
  c819f6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  c819f9:	8b 81 78 01 00 00    	mov    eax,DWORD PTR [ecx+0x178]
  c819ff:	8b 91 74 01 00 00    	mov    edx,DWORD PTR [ecx+0x174]
  c81a05:	50                   	push   eax
  c81a06:	52                   	push   edx
  c81a07:	8d 84 24 98 00 00 00 	lea    eax,[esp+0x98]
  c81a0e:	50                   	push   eax
  c81a0f:	e8 4c f9 e2 ff       	call   0xab1360
  c81a14:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  c81a18:	8b 49 64             	mov    ecx,DWORD PTR [ecx+0x64]
  c81a1b:	50                   	push   eax
  c81a1c:	57                   	push   edi
  c81a1d:	56                   	push   esi
  c81a1e:	e8 6d 9f fa ff       	call   0xc2b990
  c81a23:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  c81a27:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c81a2b:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c81a2f:	8b 49 64             	mov    ecx,DWORD PTR [ecx+0x64]
  c81a32:	52                   	push   edx
  c81a33:	50                   	push   eax
  c81a34:	57                   	push   edi
  c81a35:	56                   	push   esi
  c81a36:	e8 15 7e fa ff       	call   0xc29850
  c81a3b:	85 c0                	test   eax,eax
  c81a3d:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  c81a41:	75 39                	jne    0xc81a7c
  c81a43:	8b 84 24 bc 00 00 00 	mov    eax,DWORD PTR [esp+0xbc]
  c81a4a:	85 c0                	test   eax,eax
  c81a4c:	74 12                	je     0xc81a60
  c81a4e:	3b 84 24 cc 00 00 00 	cmp    eax,DWORD PTR [esp+0xcc]
  c81a55:	74 09                	je     0xc81a60
  c81a57:	50                   	push   eax
  c81a58:	e8 83 2a 86 ff       	call   0x4e44e0
  c81a5d:	83 c4 04             	add    esp,0x4
  c81a60:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  c81a64:	85 c0                	test   eax,eax
  c81a66:	74 09                	je     0xc81a71
  c81a68:	50                   	push   eax
  c81a69:	e8 72 2a 86 ff       	call   0x4e44e0
  c81a6e:	83 c4 04             	add    esp,0x4
  c81a71:	33 c0                	xor    eax,eax
  c81a73:	5f                   	pop    edi
  c81a74:	5e                   	pop    esi
  c81a75:	5b                   	pop    ebx
  c81a76:	8b e5                	mov    esp,ebp
  c81a78:	5d                   	pop    ebp
  c81a79:	c2 08 00             	ret    0x8
  c81a7c:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  c81a80:	8b 10                	mov    edx,DWORD PTR [eax]
  c81a82:	3b d0                	cmp    edx,eax
  c81a84:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  c81a88:	0f 84 24 03 00 00    	je     0xc81db2
  c81a8e:	eb 04                	jmp    0xc81a94
  c81a90:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  c81a94:	8b 7a 0c             	mov    edi,DWORD PTR [edx+0xc]
  c81a97:	33 c9                	xor    ecx,ecx
  c81a99:	3b f9                	cmp    edi,ecx
  c81a9b:	89 4c 24 70          	mov    DWORD PTR [esp+0x70],ecx
  c81a9f:	89 4c 24 74          	mov    DWORD PTR [esp+0x74],ecx
  c81aa3:	89 4c 24 78          	mov    DWORD PTR [esp+0x78],ecx
  c81aa7:	89 4c 24 7c          	mov    DWORD PTR [esp+0x7c],ecx
  c81aab:	89 4c 24 60          	mov    DWORD PTR [esp+0x60],ecx
  c81aaf:	89 4c 24 64          	mov    DWORD PTR [esp+0x64],ecx
  c81ab3:	89 4c 24 68          	mov    DWORD PTR [esp+0x68],ecx
  c81ab7:	89 4c 24 6c          	mov    DWORD PTR [esp+0x6c],ecx
  c81abb:	76 3a                	jbe    0xc81af7
  c81abd:	8d 42 10             	lea    eax,[edx+0x10]
  c81ac0:	8b d7                	mov    edx,edi
  c81ac2:	80 7c 24 17 00       	cmp    BYTE PTR [esp+0x17],0x0
  c81ac7:	74 14                	je     0xc81add
  c81ac9:	0f b6 30             	movzx  esi,BYTE PTR [eax]
  c81acc:	8b 9c 24 bc 00 00 00 	mov    ebx,DWORD PTR [esp+0xbc]
  c81ad3:	c1 ee 02             	shr    esi,0x2
  c81ad6:	8b 34 b3             	mov    esi,DWORD PTR [ebx+esi*4]
  c81ad9:	89 74 0c 70          	mov    DWORD PTR [esp+ecx*1+0x70],esi
  c81add:	0f b6 30             	movzx  esi,BYTE PTR [eax]
  c81ae0:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
  c81ae4:	0f b6 34 1e          	movzx  esi,BYTE PTR [esi+ebx*1]
  c81ae8:	89 74 0c 60          	mov    DWORD PTR [esp+ecx*1+0x60],esi
  c81aec:	83 c0 01             	add    eax,0x1
  c81aef:	83 c1 04             	add    ecx,0x4
  c81af2:	83 ea 01             	sub    edx,0x1
  c81af5:	75 cb                	jne    0xc81ac2
  c81af7:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  c81afb:	81 c6 d0 00 00 00    	add    esi,0xd0
  c81b01:	8b ce                	mov    ecx,esi
  c81b03:	e8 d8 7b b1 ff       	call   0x7996e0
  c81b08:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  c81b0c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c81b10:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c81b14:	8b 49 68             	mov    ecx,DWORD PTR [ecx+0x68]
  c81b17:	52                   	push   edx
  c81b18:	50                   	push   eax
  c81b19:	56                   	push   esi
  c81b1a:	e8 71 23 fa ff       	call   0xc23e90
  c81b1f:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  c81b23:	0f b6 5a 10          	movzx  ebx,BYTE PTR [edx+0x10]
  c81b27:	c1 eb 02             	shr    ebx,0x2
  c81b2a:	80 7c 24 17 00       	cmp    BYTE PTR [esp+0x17],0x0
  c81b2f:	57                   	push   edi
  c81b30:	75 1b                	jne    0xc81b4d
  c81b32:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  c81b36:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  c81b3a:	6a 00                	push   0x0
  c81b3c:	8d 44 24 68          	lea    eax,[esp+0x68]
  c81b40:	50                   	push   eax
  c81b41:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c81b45:	53                   	push   ebx
  c81b46:	51                   	push   ecx
  c81b47:	8b 48 68             	mov    ecx,DWORD PTR [eax+0x68]
  c81b4a:	52                   	push   edx
  c81b4b:	eb 1c                	jmp    0xc81b69
  c81b4d:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  c81b51:	8d 4c 24 74          	lea    ecx,[esp+0x74]
  c81b55:	51                   	push   ecx
  c81b56:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  c81b5a:	8d 54 24 68          	lea    edx,[esp+0x68]
  c81b5e:	52                   	push   edx
  c81b5f:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  c81b63:	53                   	push   ebx
  c81b64:	50                   	push   eax
  c81b65:	51                   	push   ecx
  c81b66:	8b 4a 68             	mov    ecx,DWORD PTR [edx+0x68]
  c81b69:	56                   	push   esi
  c81b6a:	e8 f1 18 fa ff       	call   0xc23460
  c81b6f:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  c81b73:	80 78 08 00          	cmp    BYTE PTR [eax+0x8],0x0
  c81b77:	0f 57 c0             	xorps  xmm0,xmm0
  c81b7a:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  c81b82:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  c81b88:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  c81b8e:	75 0c                	jne    0xc81b9c
  c81b90:	f3 0f 11 4c 24 34    	movss  DWORD PTR [esp+0x34],xmm1
  c81b96:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  c81b9c:	6a 01                	push   0x1
  c81b9e:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  c81ba2:	51                   	push   ecx
  c81ba3:	68 00 b7 07 01       	push   0x107b700
  c81ba8:	e8 43 e5 b4 ff       	call   0x7d00f0
  c81bad:	83 c4 04             	add    esp,0x4
  c81bb0:	50                   	push   eax
  c81bb1:	8b ce                	mov    ecx,esi
  c81bb3:	e8 18 7e b1 ff       	call   0x7999d0
  c81bb8:	6a 01                	push   0x1
  c81bba:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  c81bbe:	52                   	push   edx
  c81bbf:	68 f4 b6 07 01       	push   0x107b6f4
  c81bc4:	e8 27 e5 b4 ff       	call   0x7d00f0
  c81bc9:	83 c4 04             	add    esp,0x4
  c81bcc:	50                   	push   eax
  c81bcd:	8b ce                	mov    ecx,esi
  c81bcf:	e8 fc 7d b1 ff       	call   0x7999d0
  c81bd4:	83 ff 04             	cmp    edi,0x4
  c81bd7:	73 71                	jae    0xc81c4a
  c81bd9:	33 f6                	xor    esi,esi
  c81bdb:	85 ff                	test   edi,edi
  c81bdd:	76 6b                	jbe    0xc81c4a
  c81bdf:	03 db                	add    ebx,ebx
  c81be1:	03 db                	add    ebx,ebx
  c81be3:	0f 57 c0             	xorps  xmm0,xmm0
  c81be6:	33 c0                	xor    eax,eax
  c81be8:	89 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],eax
  c81bef:	89 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],eax
  c81bf6:	89 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],eax
  c81bfd:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  c81c01:	0f b6 4c 30 10       	movzx  ecx,BYTE PTR [eax+esi*1+0x10]
  c81c06:	8b 04 b5 d4 b8 07 01 	mov    eax,DWORD PTR [esi*4+0x107b8d4]
  c81c0d:	2b cb                	sub    ecx,ebx
  c81c0f:	f3 0f 11 84 24 90 00 00 00 	movss  DWORD PTR [esp+0x90],xmm0
  c81c18:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  c81c20:	6a 04                	push   0x4
  c81c22:	f3 0f 11 84 8c 94 00 00 00 	movss  DWORD PTR [esp+ecx*4+0x94],xmm0
  c81c2b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c81c2f:	8d 94 24 94 00 00 00 	lea    edx,[esp+0x94]
  c81c36:	52                   	push   edx
  c81c37:	50                   	push   eax
  c81c38:	81 c1 d0 00 00 00    	add    ecx,0xd0
  c81c3e:	e8 8d 7d b1 ff       	call   0x7999d0
  c81c43:	83 c6 01             	add    esi,0x1
  c81c46:	3b f7                	cmp    esi,edi
  c81c48:	72 99                	jb     0xc81be3
  c81c4a:	80 7c 24 0f 00       	cmp    BYTE PTR [esp+0xf],0x0
  c81c4f:	6a 01                	push   0x1
  c81c51:	74 0c                	je     0xc81c5f
  c81c53:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  c81c57:	51                   	push   ecx
  c81c58:	68 e4 b6 07 01       	push   0x107b6e4
  c81c5d:	eb 0a                	jmp    0xc81c69
  c81c5f:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  c81c63:	52                   	push   edx
  c81c64:	68 54 b5 07 01       	push   0x107b554
  c81c69:	e8 82 e4 b4 ff       	call   0x7d00f0
  c81c6e:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  c81c72:	83 c4 04             	add    esp,0x4
  c81c75:	81 c3 d0 00 00 00    	add    ebx,0xd0
  c81c7b:	50                   	push   eax
  c81c7c:	8b cb                	mov    ecx,ebx
  c81c7e:	e8 4d 7d b1 ff       	call   0x7999d0
  c81c83:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  c81c86:	e8 35 2f 9a ff       	call   0x624bc0
  c81c8b:	84 c0                	test   al,al
  c81c8d:	74 1c                	je     0xc81cab
  c81c8f:	6a 01                	push   0x1
  c81c91:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  c81c95:	50                   	push   eax
  c81c96:	68 d4 b6 07 01       	push   0x107b6d4
  c81c9b:	e8 50 e4 b4 ff       	call   0x7d00f0
  c81ca0:	83 c4 04             	add    esp,0x4
  c81ca3:	50                   	push   eax
  c81ca4:	8b cb                	mov    ecx,ebx
  c81ca6:	e8 25 7d b1 ff       	call   0x7999d0
  c81cab:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
  c81caf:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  c81cb2:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  c81cb5:	73 19                	jae    0xc81cd0
  c81cb7:	8d 48 10             	lea    ecx,[eax+0x10]
  c81cba:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  c81cbd:	33 c9                	xor    ecx,ecx
  c81cbf:	3b c1                	cmp    eax,ecx
  c81cc1:	74 4a                	je     0xc81d0d
  c81cc3:	89 08                	mov    DWORD PTR [eax],ecx
  c81cc5:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  c81cc8:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  c81ccb:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  c81cce:	eb 3d                	jmp    0xc81d0d
  c81cd0:	8d 54 24 50          	lea    edx,[esp+0x50]
  c81cd4:	33 ff                	xor    edi,edi
  c81cd6:	52                   	push   edx
  c81cd7:	50                   	push   eax
  c81cd8:	8b ce                	mov    ecx,esi
  c81cda:	89 7c 24 58          	mov    DWORD PTR [esp+0x58],edi
  c81cde:	89 7c 24 5c          	mov    DWORD PTR [esp+0x5c],edi
  c81ce2:	89 7c 24 60          	mov    DWORD PTR [esp+0x60],edi
  c81ce6:	89 7c 24 64          	mov    DWORD PTR [esp+0x64],edi
  c81cea:	e8 21 ed ff ff       	call   0xc80a10
  c81cef:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  c81cf3:	3b cf                	cmp    ecx,edi
  c81cf5:	74 07                	je     0xc81cfe
  c81cf7:	8b 01                	mov    eax,DWORD PTR [ecx]
  c81cf9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c81cfc:	ff d2                	call   edx
  c81cfe:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  c81d02:	3b cf                	cmp    ecx,edi
  c81d04:	74 07                	je     0xc81d0d
  c81d06:	8b 01                	mov    eax,DWORD PTR [ecx]
  c81d08:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c81d0b:	ff d2                	call   edx
  c81d0d:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  c81d10:	6a 00                	push   0x0
  c81d12:	6a 00                	push   0x0
  c81d14:	6a 00                	push   0x0
  c81d16:	6a 00                	push   0x0
  c81d18:	68 bc b6 07 01       	push   0x107b6bc
  c81d1d:	6a 00                	push   0x0
  c81d1f:	6a 08                	push   0x8
  c81d21:	6a 40                	push   0x40
  c81d23:	83 ef 10             	sub    edi,0x10
  c81d26:	e8 f5 27 86 ff       	call   0x4e4520
  c81d2b:	83 c4 20             	add    esp,0x20
  c81d2e:	85 c0                	test   eax,eax
  c81d30:	0f 84 b5 00 00 00    	je     0xc81deb
  c81d36:	8b c8                	mov    ecx,eax
  c81d38:	e8 d3 94 a4 ff       	call   0x6cb210
  c81d3d:	8b f0                	mov    esi,eax
  c81d3f:	85 f6                	test   esi,esi
  c81d41:	74 08                	je     0xc81d4b
  c81d43:	8b 06                	mov    eax,DWORD PTR [esi]
  c81d45:	8b 10                	mov    edx,DWORD PTR [eax]
  c81d47:	8b ce                	mov    ecx,esi
  c81d49:	ff d2                	call   edx
  c81d4b:	53                   	push   ebx
  c81d4c:	8b ce                	mov    ecx,esi
  c81d4e:	e8 cd 93 a4 ff       	call   0x6cb120
  c81d53:	84 c0                	test   al,al
  c81d55:	74 36                	je     0xc81d8d
  c81d57:	68 b0 b6 07 01       	push   0x107b6b0
  c81d5c:	e8 8f e3 b4 ff       	call   0x7d00f0
  c81d61:	83 c4 04             	add    esp,0x4
  c81d64:	50                   	push   eax
  c81d65:	8b ce                	mov    ecx,esi
  c81d67:	e8 44 cc d5 ff       	call   0x9de9b0
  c81d6c:	8b 1f                	mov    ebx,DWORD PTR [edi]
  c81d6e:	3b f3                	cmp    esi,ebx
  c81d70:	74 1b                	je     0xc81d8d
  c81d72:	85 f6                	test   esi,esi
  c81d74:	74 08                	je     0xc81d7e
  c81d76:	8b 06                	mov    eax,DWORD PTR [esi]
  c81d78:	8b 10                	mov    edx,DWORD PTR [eax]
  c81d7a:	8b ce                	mov    ecx,esi
  c81d7c:	ff d2                	call   edx
  c81d7e:	85 db                	test   ebx,ebx
  c81d80:	89 37                	mov    DWORD PTR [edi],esi
  c81d82:	74 09                	je     0xc81d8d
  c81d84:	8b 03                	mov    eax,DWORD PTR [ebx]
  c81d86:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c81d89:	8b cb                	mov    ecx,ebx
  c81d8b:	ff d2                	call   edx
  c81d8d:	85 f6                	test   esi,esi
  c81d8f:	74 09                	je     0xc81d9a
  c81d91:	8b 06                	mov    eax,DWORD PTR [esi]
  c81d93:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c81d96:	8b ce                	mov    ecx,esi
  c81d98:	ff d2                	call   edx
  c81d9a:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  c81d9e:	8b 00                	mov    eax,DWORD PTR [eax]
  c81da0:	3b 44 24 24          	cmp    eax,DWORD PTR [esp+0x24]
  c81da4:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  c81da8:	0f 85 e2 fc ff ff    	jne    0xc81a90
  c81dae:	8b 5c 24 3c          	mov    ebx,DWORD PTR [esp+0x3c]
  c81db2:	8b 84 24 bc 00 00 00 	mov    eax,DWORD PTR [esp+0xbc]
  c81db9:	85 c0                	test   eax,eax
  c81dbb:	74 12                	je     0xc81dcf
  c81dbd:	3b 84 24 cc 00 00 00 	cmp    eax,DWORD PTR [esp+0xcc]
  c81dc4:	74 09                	je     0xc81dcf
  c81dc6:	50                   	push   eax
  c81dc7:	e8 14 27 86 ff       	call   0x4e44e0
  c81dcc:	83 c4 04             	add    esp,0x4
  c81dcf:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  c81dd3:	85 c0                	test   eax,eax
  c81dd5:	74 09                	je     0xc81de0
  c81dd7:	50                   	push   eax
  c81dd8:	e8 03 27 86 ff       	call   0x4e44e0
  c81ddd:	83 c4 04             	add    esp,0x4
  c81de0:	5f                   	pop    edi
  c81de1:	5e                   	pop    esi
  c81de2:	8b c3                	mov    eax,ebx
  c81de4:	5b                   	pop    ebx
  c81de5:	8b e5                	mov    esp,ebp
  c81de7:	5d                   	pop    ebp
  c81de8:	c2 08 00             	ret    0x8
  c81deb:	33 f6                	xor    esi,esi
  c81ded:	e9 59 ff ff ff       	jmp    0xc81d4b
