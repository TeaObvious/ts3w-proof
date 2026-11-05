# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00c825a0,0x00c8300b); analyst name Terrain_BuildWorldMaterialLayers.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c825a0 <.text+0x8815a0>:
  c825a0:	81 ec b4 00 00 00    	sub    esp,0xb4
  c825a6:	53                   	push   ebx
  c825a7:	55                   	push   ebp
  c825a8:	56                   	push   esi
  c825a9:	57                   	push   edi
  c825aa:	8b f9                	mov    edi,ecx
  c825ac:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c825af:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  c825b3:	e8 b8 06 c4 ff       	call   0x8c2c70
  c825b8:	8b b4 24 c8 00 00 00 	mov    esi,DWORD PTR [esp+0xc8]
  c825bf:	8b d8                	mov    ebx,eax
  c825c1:	8b ce                	mov    ecx,esi
  c825c3:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  c825c7:	e8 44 36 00 00       	call   0xc85c10
  c825cc:	83 7e 7c 00          	cmp    DWORD PTR [esi+0x7c],0x0
  c825d0:	75 0d                	jne    0xc825df
  c825d2:	83 be 84 00 00 00 00 	cmp    DWORD PTR [esi+0x84],0x0
  c825d9:	0f 84 18 0a 00 00    	je     0xc82ff7
  c825df:	85 db                	test   ebx,ebx
  c825e1:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  c825e4:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c825e7:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  c825ea:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  c825ee:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c825f1:	89 4c 24 38          	mov    DWORD PTR [esp+0x38],ecx
  c825f5:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  c825f9:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  c825fd:	74 12                	je     0xc82611
  c825ff:	f6 87 40 01 00 00 06 	test   BYTE PTR [edi+0x140],0x6
  c82606:	75 09                	jne    0xc82611
  c82608:	6a 01                	push   0x1
  c8260a:	8b cb                	mov    ecx,ebx
  c8260c:	e8 cf f0 f9 ff       	call   0xc216e0
  c82611:	8b 9e 24 01 00 00    	mov    ebx,DWORD PTR [esi+0x124]
  c82617:	2b 9e 20 01 00 00    	sub    ebx,DWORD PTR [esi+0x120]
  c8261d:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  c82621:	83 c3 03             	add    ebx,0x3
  c82624:	c1 eb 02             	shr    ebx,0x2
  c82627:	80 bc 24 cc 00 00 00 00 	cmp    BYTE PTR [esp+0xcc],0x0
  c8262f:	75 19                	jne    0xc8264a
  c82631:	8b 8e c4 00 00 00    	mov    ecx,DWORD PTR [esi+0xc4]
  c82637:	2b 8e c0 00 00 00    	sub    ecx,DWORD PTR [esi+0xc0]
  c8263d:	8d ae c0 00 00 00    	lea    ebp,[esi+0xc0]
  c82643:	c1 f9 02             	sar    ecx,0x2
  c82646:	3b cb                	cmp    ecx,ebx
  c82648:	74 4d                	je     0xc82697
  c8264a:	8d ae c0 00 00 00    	lea    ebp,[esi+0xc0]
  c82650:	8b cd                	mov    ecx,ebp
  c82652:	e8 69 bc a2 ff       	call   0x6ae2c0
  c82657:	8b 4d 04             	mov    ecx,DWORD PTR [ebp+0x4]
  c8265a:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  c8265d:	8b d1                	mov    edx,ecx
  c8265f:	2b d0                	sub    edx,eax
  c82661:	c1 fa 02             	sar    edx,0x2
  c82664:	3b da                	cmp    ebx,edx
  c82666:	c7 44 24 34 00 00 00 00 	mov    DWORD PTR [esp+0x34],0x0
  c8266e:	76 1b                	jbe    0xc8268b
  c82670:	8d 54 24 34          	lea    edx,[esp+0x34]
  c82674:	52                   	push   edx
  c82675:	8b d1                	mov    edx,ecx
  c82677:	2b d0                	sub    edx,eax
  c82679:	c1 fa 02             	sar    edx,0x2
  c8267c:	8b c3                	mov    eax,ebx
  c8267e:	2b c2                	sub    eax,edx
  c82680:	50                   	push   eax
  c82681:	51                   	push   ecx
  c82682:	8b cd                	mov    ecx,ebp
  c82684:	e8 a7 96 e6 ff       	call   0xaebd30
  c82689:	eb 0c                	jmp    0xc82697
  c8268b:	51                   	push   ecx
  c8268c:	8d 0c 98             	lea    ecx,[eax+ebx*4]
  c8268f:	51                   	push   ecx
  c82690:	8b cd                	mov    ecx,ebp
  c82692:	e8 99 94 e6 ff       	call   0xaebb30
  c82697:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  c8269f:	8b 47 64             	mov    eax,DWORD PTR [edi+0x64]
  c826a2:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  c826a8:	80 78 1f 00          	cmp    BYTE PTR [eax+0x1f],0x0
  c826ac:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  c826b1:	75 38                	jne    0xc826eb
  c826b3:	80 78 1c 00          	cmp    BYTE PTR [eax+0x1c],0x0
  c826b7:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  c826bc:	75 0e                	jne    0xc826cc
  c826be:	80 bc 24 d0 00 00 00 00 	cmp    BYTE PTR [esp+0xd0],0x0
  c826c6:	75 04                	jne    0xc826cc
  c826c8:	b0 01                	mov    al,0x1
  c826ca:	eb 02                	jmp    0xc826ce
  c826cc:	32 c0                	xor    al,al
  c826ce:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  c826d2:	8b 8c 24 cc 00 00 00 	mov    ecx,DWORD PTR [esp+0xcc]
  c826d9:	50                   	push   eax
  c826da:	8b 86 20 01 00 00    	mov    eax,DWORD PTR [esi+0x120]
  c826e0:	52                   	push   edx
  c826e1:	50                   	push   eax
  c826e2:	51                   	push   ecx
  c826e3:	56                   	push   esi
  c826e4:	8b cf                	mov    ecx,edi
  c826e6:	e8 b5 df ff ff       	call   0xc806a0
  c826eb:	8b 47 64             	mov    eax,DWORD PTR [edi+0x64]
  c826ee:	80 78 1c 00          	cmp    BYTE PTR [eax+0x1c],0x0
  c826f2:	75 06                	jne    0xc826fa
  c826f4:	80 78 1d 00          	cmp    BYTE PTR [eax+0x1d],0x0
  c826f8:	74 47                	je     0xc82741
  c826fa:	83 be d8 00 00 00 00 	cmp    DWORD PTR [esi+0xd8],0x0
  c82701:	75 3e                	jne    0xc82741
  c82703:	8d 8e a8 00 00 00    	lea    ecx,[esi+0xa8]
  c82709:	e8 c2 07 aa ff       	call   0x722ed0
  c8270e:	85 c0                	test   eax,eax
  c82710:	75 2f                	jne    0xc82741
  c82712:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  c82716:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  c8271a:	6a 05                	push   0x5
  c8271c:	52                   	push   edx
  c8271d:	50                   	push   eax
  c8271e:	8d 4c 24 5c          	lea    ecx,[esp+0x5c]
  c82722:	51                   	push   ecx
  c82723:	e8 f8 e5 fa ff       	call   0xc30d20
  c82728:	83 c4 10             	add    esp,0x10
  c8272b:	6a 00                	push   0x0
  c8272d:	6a 00                	push   0x0
  c8272f:	6a 00                	push   0x0
  c82731:	8d 54 24 5c          	lea    edx,[esp+0x5c]
  c82735:	52                   	push   edx
  c82736:	8d 8e a8 00 00 00    	lea    ecx,[esi+0xa8]
  c8273c:	e8 af 07 aa ff       	call   0x722ef0
  c82741:	8d 84 24 84 00 00 00 	lea    eax,[esp+0x84]
  c82748:	8b c8                	mov    ecx,eax
  c8274a:	89 4c 24 74          	mov    DWORD PTR [esp+0x74],ecx
  c8274e:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  c82752:	8b d0                	mov    edx,eax
  c82754:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
  c8275b:	8d 84 24 c4 00 00 00 	lea    eax,[esp+0xc4]
  c82762:	51                   	push   ecx
  c82763:	8d 4c 24 74          	lea    ecx,[esp+0x74]
  c82767:	89 54 24 74          	mov    DWORD PTR [esp+0x74],edx
  c8276b:	89 44 24 7c          	mov    DWORD PTR [esp+0x7c],eax
  c8276f:	c7 84 24 80 00 00 00 14 b7 07 01 	mov    DWORD PTR [esp+0x80],0x107b714
  c8277a:	e8 91 d5 7c ff       	call   0x44fd10
  c8277f:	33 c0                	xor    eax,eax
  c82781:	85 db                	test   ebx,ebx
  c82783:	76 14                	jbe    0xc82799
  c82785:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  c82788:	8b 0c 82             	mov    ecx,DWORD PTR [edx+eax*4]
  c8278b:	8b 54 24 70          	mov    edx,DWORD PTR [esp+0x70]
  c8278f:	89 0c 82             	mov    DWORD PTR [edx+eax*4],ecx
  c82792:	83 c0 01             	add    eax,0x1
  c82795:	3b c3                	cmp    eax,ebx
  c82797:	72 ec                	jb     0xc82785
  c82799:	8b 8e 8c 00 00 00    	mov    ecx,DWORD PTR [esi+0x8c]
  c8279f:	8b 86 90 00 00 00    	mov    eax,DWORD PTR [esi+0x90]
  c827a5:	3b c8                	cmp    ecx,eax
  c827a7:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  c827ab:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  c827af:	0f 84 20 03 00 00    	je     0xc82ad5
  c827b5:	33 c0                	xor    eax,eax
  c827b7:	38 41 03             	cmp    BYTE PTR [ecx+0x3],al
  c827ba:	8d 51 0c             	lea    edx,[ecx+0xc]
  c827bd:	0f 85 f2 02 00 00    	jne    0xc82ab5
  c827c3:	8b 6a fc             	mov    ebp,DWORD PTR [edx-0x4]
  c827c6:	3b e8                	cmp    ebp,eax
  c827c8:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
  c827cc:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  c827d0:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  c827d4:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  c827d8:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  c827dc:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  c827e0:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  c827e4:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  c827e8:	76 36                	jbe    0xc82820
  c827ea:	8b 5c 24 70          	mov    ebx,DWORD PTR [esp+0x70]
  c827ee:	89 6c 24 20          	mov    DWORD PTR [esp+0x20],ebp
  c827f2:	0f b6 0a             	movzx  ecx,BYTE PTR [edx]
  c827f5:	8b f9                	mov    edi,ecx
  c827f7:	c1 ef 02             	shr    edi,0x2
  c827fa:	8b 3c bb             	mov    edi,DWORD PTR [ebx+edi*4]
  c827fd:	89 7c 04 60          	mov    DWORD PTR [esp+eax*1+0x60],edi
  c82801:	8b be 20 01 00 00    	mov    edi,DWORD PTR [esi+0x120]
  c82807:	0f b6 0c 39          	movzx  ecx,BYTE PTR [ecx+edi*1]
  c8280b:	89 4c 04 3c          	mov    DWORD PTR [esp+eax*1+0x3c],ecx
  c8280f:	83 c2 01             	add    edx,0x1
  c82812:	83 c0 04             	add    eax,0x4
  c82815:	83 6c 24 20 01       	sub    DWORD PTR [esp+0x20],0x1
  c8281a:	75 d6                	jne    0xc827f2
  c8281c:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  c82820:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c82824:	80 78 04 00          	cmp    BYTE PTR [eax+0x4],0x0
  c82828:	8d 58 0c             	lea    ebx,[eax+0xc]
  c8282b:	74 2b                	je     0xc82858
  c8282d:	8b 48 44             	mov    ecx,DWORD PTR [eax+0x44]
  c82830:	85 c9                	test   ecx,ecx
  c82832:	8d 58 44             	lea    ebx,[eax+0x44]
  c82835:	74 0d                	je     0xc82844
  c82837:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
  c8283d:	8b 11                	mov    edx,DWORD PTR [ecx]
  c8283f:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c82842:	ff d0                	call   eax
  c82844:	53                   	push   ebx
  c82845:	6a 00                	push   0x0
  c82847:	56                   	push   esi
  c82848:	8b cf                	mov    ecx,edi
  c8284a:	e8 61 ce ff ff       	call   0xc7f6b0
  c8284f:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  c82853:	e9 44 02 00 00       	jmp    0xc82a9c
  c82858:	8d b7 d0 00 00 00    	lea    esi,[edi+0xd0]
  c8285e:	8b ce                	mov    ecx,esi
  c82860:	e8 7b 6e b1 ff       	call   0x7996e0
  c82865:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  c82869:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  c8286d:	51                   	push   ecx
  c8286e:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c82871:	52                   	push   edx
  c82872:	56                   	push   esi
  c82873:	e8 18 16 fa ff       	call   0xc23e90
  c82878:	0f b6 1b             	movzx  ebx,BYTE PTR [ebx]
  c8287b:	c1 eb 02             	shr    ebx,0x2
  c8287e:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  c82883:	55                   	push   ebp
  c82884:	75 14                	jne    0xc8289a
  c82886:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  c8288a:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  c8288e:	6a 00                	push   0x0
  c82890:	8d 44 24 44          	lea    eax,[esp+0x44]
  c82894:	50                   	push   eax
  c82895:	53                   	push   ebx
  c82896:	51                   	push   ecx
  c82897:	52                   	push   edx
  c82898:	eb 15                	jmp    0xc828af
  c8289a:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  c8289e:	8d 44 24 64          	lea    eax,[esp+0x64]
  c828a2:	50                   	push   eax
  c828a3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  c828a7:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c828ab:	51                   	push   ecx
  c828ac:	53                   	push   ebx
  c828ad:	52                   	push   edx
  c828ae:	50                   	push   eax
  c828af:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c828b2:	56                   	push   esi
  c828b3:	e8 a8 0b fa ff       	call   0xc23460
  c828b8:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c828bc:	80 39 00             	cmp    BYTE PTR [ecx],0x0
  c828bf:	0f 57 c0             	xorps  xmm0,xmm0
  c828c2:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  c828ca:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  c828d0:	f3 0f 11 4c 24 34    	movss  DWORD PTR [esp+0x34],xmm1
  c828d6:	75 0c                	jne    0xc828e4
  c828d8:	f3 0f 11 4c 24 38    	movss  DWORD PTR [esp+0x38],xmm1
  c828de:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  c828e4:	6a 01                	push   0x1
  c828e6:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  c828ea:	52                   	push   edx
  c828eb:	68 00 b7 07 01       	push   0x107b700
  c828f0:	e8 fb d7 b4 ff       	call   0x7d00f0
  c828f5:	83 c4 04             	add    esp,0x4
  c828f8:	50                   	push   eax
  c828f9:	8b ce                	mov    ecx,esi
  c828fb:	e8 d0 70 b1 ff       	call   0x7999d0
  c82900:	6a 01                	push   0x1
  c82902:	8d 44 24 38          	lea    eax,[esp+0x38]
  c82906:	50                   	push   eax
  c82907:	68 f4 b6 07 01       	push   0x107b6f4
  c8290c:	e8 df d7 b4 ff       	call   0x7d00f0
  c82911:	83 c4 04             	add    esp,0x4
  c82914:	50                   	push   eax
  c82915:	8b ce                	mov    ecx,esi
  c82917:	e8 b4 70 b1 ff       	call   0x7999d0
  c8291c:	83 fd 04             	cmp    ebp,0x4
  c8291f:	73 6a                	jae    0xc8298b
  c82921:	33 ff                	xor    edi,edi
  c82923:	85 ed                	test   ebp,ebp
  c82925:	76 64                	jbe    0xc8298b
  c82927:	8d 0c 9d 00 00 00 00 	lea    ecx,[ebx*4+0x0]
  c8292e:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  c82932:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  c82936:	eb 08                	jmp    0xc82940
  c82938:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  c8293f:	90                   	nop
  c82940:	0f b6 54 3b 0c       	movzx  edx,BYTE PTR [ebx+edi*1+0xc]
  c82945:	8b 0c bd d4 b8 07 01 	mov    ecx,DWORD PTR [edi*4+0x107b8d4]
  c8294c:	0f 57 c0             	xorps  xmm0,xmm0
  c8294f:	2b 54 24 20          	sub    edx,DWORD PTR [esp+0x20]
  c82953:	33 c0                	xor    eax,eax
  c82955:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  c82959:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  c8295d:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
  c82961:	6a 04                	push   0x4
  c82963:	8d 44 24 54          	lea    eax,[esp+0x54]
  c82967:	50                   	push   eax
  c82968:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  c8296e:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  c82976:	51                   	push   ecx
  c82977:	8b ce                	mov    ecx,esi
  c82979:	f3 0f 11 44 94 5c    	movss  DWORD PTR [esp+edx*4+0x5c],xmm0
  c8297f:	e8 4c 70 b1 ff       	call   0x7999d0
  c82984:	83 c7 01             	add    edi,0x1
  c82987:	3b fd                	cmp    edi,ebp
  c82989:	72 b5                	jb     0xc82940
  c8298b:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  c8298f:	80 7b 02 00          	cmp    BYTE PTR [ebx+0x2],0x0
  c82993:	74 47                	je     0xc829dc
  c82995:	6a 01                	push   0x1
  c82997:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  c8299b:	52                   	push   edx
  c8299c:	68 c8 b8 07 01       	push   0x107b8c8
  c829a1:	e8 4a d7 b4 ff       	call   0x7d00f0
  c829a6:	83 c4 04             	add    esp,0x4
  c829a9:	50                   	push   eax
  c829aa:	8b ce                	mov    ecx,esi
  c829ac:	e8 1f 70 b1 ff       	call   0x7999d0
  c829b1:	8b bc 24 c8 00 00 00 	mov    edi,DWORD PTR [esp+0xc8]
  c829b8:	8b 87 d8 00 00 00    	mov    eax,DWORD PTR [edi+0xd8]
  c829be:	8b 4f 74             	mov    ecx,DWORD PTR [edi+0x74]
  c829c1:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  c829c5:	50                   	push   eax
  c829c6:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  c829ca:	51                   	push   ecx
  c829cb:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  c829cf:	8b 49 68             	mov    ecx,DWORD PTR [ecx+0x68]
  c829d2:	52                   	push   edx
  c829d3:	50                   	push   eax
  c829d4:	56                   	push   esi
  c829d5:	e8 d6 0b fa ff       	call   0xc235b0
  c829da:	eb 07                	jmp    0xc829e3
  c829dc:	8b bc 24 c8 00 00 00 	mov    edi,DWORD PTR [esp+0xc8]
  c829e3:	8b 97 dc 00 00 00    	mov    edx,DWORD PTR [edi+0xdc]
  c829e9:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  c829ed:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  c829f1:	52                   	push   edx
  c829f2:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  c829f6:	50                   	push   eax
  c829f7:	51                   	push   ecx
  c829f8:	8b 4a 68             	mov    ecx,DWORD PTR [edx+0x68]
  c829fb:	56                   	push   esi
  c829fc:	e8 7f 0d fa ff       	call   0xc23780
  c82a01:	6a 00                	push   0x0
  c82a03:	6a 00                	push   0x0
  c82a05:	6a 00                	push   0x0
  c82a07:	6a 00                	push   0x0
  c82a09:	68 40 b5 07 01       	push   0x107b540
  c82a0e:	6a 00                	push   0x0
  c82a10:	6a 08                	push   0x8
  c82a12:	6a 40                	push   0x40
  c82a14:	e8 07 1b 86 ff       	call   0x4e4520
  c82a19:	83 c4 20             	add    esp,0x20
  c82a1c:	85 c0                	test   eax,eax
  c82a1e:	74 56                	je     0xc82a76
  c82a20:	8b c8                	mov    ecx,eax
  c82a22:	e8 e9 87 a4 ff       	call   0x6cb210
  c82a27:	8b f8                	mov    edi,eax
  c82a29:	85 ff                	test   edi,edi
  c82a2b:	74 08                	je     0xc82a35
  c82a2d:	8b 07                	mov    eax,DWORD PTR [edi]
  c82a2f:	8b 10                	mov    edx,DWORD PTR [eax]
  c82a31:	8b cf                	mov    ecx,edi
  c82a33:	ff d2                	call   edx
  c82a35:	56                   	push   esi
  c82a36:	8b cf                	mov    ecx,edi
  c82a38:	e8 e3 86 a4 ff       	call   0x6cb120
  c82a3d:	84 c0                	test   al,al
  c82a3f:	74 39                	je     0xc82a7a
  c82a41:	68 b8 b8 07 01       	push   0x107b8b8
  c82a46:	e8 a5 d6 b4 ff       	call   0x7d00f0
  c82a4b:	83 c4 04             	add    esp,0x4
  c82a4e:	50                   	push   eax
  c82a4f:	8b cf                	mov    ecx,edi
  c82a51:	e8 5a bf d5 ff       	call   0x9de9b0
  c82a56:	8b 73 44             	mov    esi,DWORD PTR [ebx+0x44]
  c82a59:	3b fe                	cmp    edi,esi
  c82a5b:	74 32                	je     0xc82a8f
  c82a5d:	85 ff                	test   edi,edi
  c82a5f:	74 08                	je     0xc82a69
  c82a61:	8b 07                	mov    eax,DWORD PTR [edi]
  c82a63:	8b 10                	mov    edx,DWORD PTR [eax]
  c82a65:	8b cf                	mov    ecx,edi
  c82a67:	ff d2                	call   edx
  c82a69:	85 f6                	test   esi,esi
  c82a6b:	89 7b 44             	mov    DWORD PTR [ebx+0x44],edi
  c82a6e:	74 1f                	je     0xc82a8f
  c82a70:	8b 06                	mov    eax,DWORD PTR [esi]
  c82a72:	8b ce                	mov    ecx,esi
  c82a74:	eb 14                	jmp    0xc82a8a
  c82a76:	33 ff                	xor    edi,edi
  c82a78:	eb bb                	jmp    0xc82a35
  c82a7a:	8b 4b 44             	mov    ecx,DWORD PTR [ebx+0x44]
  c82a7d:	85 c9                	test   ecx,ecx
  c82a7f:	74 0e                	je     0xc82a8f
  c82a81:	c7 43 44 00 00 00 00 	mov    DWORD PTR [ebx+0x44],0x0
  c82a88:	8b 01                	mov    eax,DWORD PTR [ecx]
  c82a8a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c82a8d:	ff d2                	call   edx
  c82a8f:	85 ff                	test   edi,edi
  c82a91:	74 09                	je     0xc82a9c
  c82a93:	8b 07                	mov    eax,DWORD PTR [edi]
  c82a95:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c82a98:	8b cf                	mov    ecx,edi
  c82a9a:	ff d2                	call   edx
  c82a9c:	8b 4b 48             	mov    ecx,DWORD PTR [ebx+0x48]
  c82a9f:	85 c9                	test   ecx,ecx
  c82aa1:	74 12                	je     0xc82ab5
  c82aa3:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c82aa7:	c7 40 48 00 00 00 00 	mov    DWORD PTR [eax+0x48],0x0
  c82aae:	8b 11                	mov    edx,DWORD PTR [ecx]
  c82ab0:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c82ab3:	ff d0                	call   eax
  c82ab5:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c82ab9:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  c82abd:	8b b4 24 c8 00 00 00 	mov    esi,DWORD PTR [esp+0xc8]
  c82ac4:	83 c1 50             	add    ecx,0x50
  c82ac7:	3b 4c 24 4c          	cmp    ecx,DWORD PTR [esp+0x4c]
  c82acb:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  c82acf:	0f 85 e0 fc ff ff    	jne    0xc827b5
  c82ad5:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  c82ad9:	33 db                	xor    ebx,ebx
  c82adb:	3b d3                	cmp    edx,ebx
  c82add:	0f 84 9f 04 00 00    	je     0xc82f82
  c82ae3:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  c82ae6:	8b 6e 14             	mov    ebp,DWORD PTR [esi+0x14]
  c82ae9:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c82aec:	03 e8                	add    ebp,eax
  c82aee:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  c82af2:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  c82af5:	03 c1                	add    eax,ecx
  c82af7:	89 4c 24 54          	mov    DWORD PTR [esp+0x54],ecx
  c82afb:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  c82aff:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
  c82b03:	51                   	push   ecx
  c82b04:	8d 44 24 54          	lea    eax,[esp+0x54]
  c82b08:	50                   	push   eax
  c82b09:	8b ca                	mov    ecx,edx
  c82b0b:	89 6c 24 60          	mov    DWORD PTR [esp+0x60],ebp
  c82b0f:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
  c82b13:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
  c82b17:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  c82b1b:	c7 44 24 50 84 b8 07 01 	mov    DWORD PTR [esp+0x50],0x107b884
  c82b23:	e8 68 f6 f9 ff       	call   0xc22190
  c82b28:	8d af d0 00 00 00    	lea    ebp,[edi+0xd0]
  c82b2e:	8b cd                	mov    ecx,ebp
  c82b30:	88 5c 24 13          	mov    BYTE PTR [esp+0x13],bl
  c82b34:	e8 a7 6b b1 ff       	call   0x7996e0
  c82b39:	f6 87 40 01 00 00 10 	test   BYTE PTR [edi+0x140],0x10
  c82b40:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  c82b44:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  c82b48:	74 6f                	je     0xc82bb9
  c82b4a:	6a 01                	push   0x1
  c82b4c:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c82b50:	51                   	push   ecx
  c82b51:	68 6c b8 07 01       	push   0x107b86c
  c82b56:	e8 95 d5 b4 ff       	call   0x7d00f0
  c82b5b:	83 c4 04             	add    esp,0x4
  c82b5e:	50                   	push   eax
  c82b5f:	8b cd                	mov    ecx,ebp
  c82b61:	e8 6a 6e b1 ff       	call   0x7999d0
  c82b66:	83 7c 24 1c 08       	cmp    DWORD PTR [esp+0x1c],0x8
  c82b6b:	76 47                	jbe    0xc82bb4
  c82b6d:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  c82b75:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  c82b7b:	0f 57 c0             	xorps  xmm0,xmm0
  c82b7e:	6a 04                	push   0x4
  c82b80:	8d 54 24 64          	lea    edx,[esp+0x64]
  c82b84:	52                   	push   edx
  c82b85:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  c82b8b:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  c82b91:	f3 0f 10 05 b4 b5 f9 00 	movss  xmm0,DWORD PTR ds:0xf9b5b4
  c82b99:	68 50 b8 07 01       	push   0x107b850
  c82b9e:	f3 0f 11 44 24 78    	movss  DWORD PTR [esp+0x78],xmm0
  c82ba4:	e8 47 d5 b4 ff       	call   0x7d00f0
  c82ba9:	83 c4 04             	add    esp,0x4
  c82bac:	50                   	push   eax
  c82bad:	8b cd                	mov    ecx,ebp
  c82baf:	e8 1c 6e b1 ff       	call   0x7999d0
  c82bb4:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  c82bb9:	f6 87 40 01 00 00 01 	test   BYTE PTR [edi+0x140],0x1
  c82bc0:	74 21                	je     0xc82be3
  c82bc2:	6a 01                	push   0x1
  c82bc4:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  c82bc8:	50                   	push   eax
  c82bc9:	68 40 b8 07 01       	push   0x107b840
  c82bce:	e8 1d d5 b4 ff       	call   0x7d00f0
  c82bd3:	83 c4 04             	add    esp,0x4
  c82bd6:	50                   	push   eax
  c82bd7:	8b cd                	mov    ecx,ebp
  c82bd9:	e8 f2 6d b1 ff       	call   0x7999d0
  c82bde:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  c82be3:	f6 87 40 01 00 00 08 	test   BYTE PTR [edi+0x140],0x8
  c82bea:	74 21                	je     0xc82c0d
  c82bec:	6a 01                	push   0x1
  c82bee:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c82bf2:	51                   	push   ecx
  c82bf3:	68 30 b8 07 01       	push   0x107b830
  c82bf8:	e8 f3 d4 b4 ff       	call   0x7d00f0
  c82bfd:	83 c4 04             	add    esp,0x4
  c82c00:	50                   	push   eax
  c82c01:	8b cd                	mov    ecx,ebp
  c82c03:	e8 c8 6d b1 ff       	call   0x7999d0
  c82c08:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  c82c0d:	8a 87 40 01 00 00    	mov    al,BYTE PTR [edi+0x140]
  c82c13:	a8 06                	test   al,0x6
  c82c15:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  c82c19:	0f 84 b1 00 00 00    	je     0xc82cd0
  c82c1f:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  c82c23:	3b c1                	cmp    eax,ecx
  c82c25:	0f 84 a5 00 00 00    	je     0xc82cd0
  c82c2b:	eb 03                	jmp    0xc82c30
  c82c2d:	8d 49 00             	lea    ecx,[ecx+0x0]
  c82c30:	80 38 01             	cmp    BYTE PTR [eax],0x1
  c82c33:	74 0c                	je     0xc82c41
  c82c35:	83 c0 01             	add    eax,0x1
  c82c38:	3b c1                	cmp    eax,ecx
  c82c3a:	75 f4                	jne    0xc82c30
  c82c3c:	e9 8f 00 00 00       	jmp    0xc82cd0
  c82c41:	3b c1                	cmp    eax,ecx
  c82c43:	0f 84 87 00 00 00    	je     0xc82cd0
  c82c49:	6a 01                	push   0x1
  c82c4b:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  c82c4f:	52                   	push   edx
  c82c50:	68 20 b8 07 01       	push   0x107b820
  c82c55:	e8 96 d4 b4 ff       	call   0x7d00f0
  c82c5a:	83 c4 04             	add    esp,0x4
  c82c5d:	50                   	push   eax
  c82c5e:	8b cd                	mov    ecx,ebp
  c82c60:	e8 6b 6d b1 ff       	call   0x7999d0
  c82c65:	53                   	push   ebx
  c82c66:	53                   	push   ebx
  c82c67:	53                   	push   ebx
  c82c68:	53                   	push   ebx
  c82c69:	68 0c b8 07 01       	push   0x107b80c
  c82c6e:	6a 34                	push   0x34
  c82c70:	c6 44 24 2b 01       	mov    BYTE PTR [esp+0x2b],0x1
  c82c75:	e8 86 18 86 ff       	call   0x4e4500
  c82c7a:	83 c4 18             	add    esp,0x18
  c82c7d:	3b c3                	cmp    eax,ebx
  c82c7f:	74 1a                	je     0xc82c9b
  c82c81:	8b c8                	mov    ecx,eax
  c82c83:	e8 18 76 99 ff       	call   0x61a2a0
  c82c88:	8b d8                	mov    ebx,eax
  c82c8a:	85 db                	test   ebx,ebx
  c82c8c:	74 0d                	je     0xc82c9b
  c82c8e:	8b 03                	mov    eax,DWORD PTR [ebx]
  c82c90:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c82c93:	8b cb                	mov    ecx,ebx
  c82c95:	ff d2                	call   edx
  c82c97:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  c82c9b:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c82c9e:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  c82ca1:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  c82ca5:	6a 01                	push   0x1
  c82ca7:	6a 01                	push   0x1
  c82ca9:	50                   	push   eax
  c82caa:	51                   	push   ecx
  c82cab:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c82cae:	53                   	push   ebx
  c82caf:	e8 1c 05 fa ff       	call   0xc231d0
  c82cb4:	6a 00                	push   0x0
  c82cb6:	53                   	push   ebx
  c82cb7:	68 70 77 07 01       	push   0x1077770
  c82cbc:	e8 2f d4 b4 ff       	call   0x7d00f0
  c82cc1:	83 c4 04             	add    esp,0x4
  c82cc4:	50                   	push   eax
  c82cc5:	8b cd                	mov    ecx,ebp
  c82cc7:	e8 e4 6d b1 ff       	call   0x799ab0
  c82ccc:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  c82cd0:	f6 87 40 01 00 00 40 	test   BYTE PTR [edi+0x140],0x40
  c82cd7:	74 11                	je     0xc82cea
  c82cd9:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  c82cdd:	e8 de d7 f9 ff       	call   0xc204c0
  c82ce2:	84 c0                	test   al,al
  c82ce4:	75 29                	jne    0xc82d0f
  c82ce6:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  c82cea:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  c82cee:	3b c1                	cmp    eax,ecx
  c82cf0:	0f 84 70 01 00 00    	je     0xc82e66
  c82cf6:	80 38 00             	cmp    BYTE PTR [eax],0x0
  c82cf9:	74 0c                	je     0xc82d07
  c82cfb:	83 c0 01             	add    eax,0x1
  c82cfe:	3b c1                	cmp    eax,ecx
  c82d00:	75 f4                	jne    0xc82cf6
  c82d02:	e9 5f 01 00 00       	jmp    0xc82e66
  c82d07:	3b c1                	cmp    eax,ecx
  c82d09:	0f 84 57 01 00 00    	je     0xc82e66
  c82d0f:	6a 01                	push   0x1
  c82d11:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  c82d15:	52                   	push   edx
  c82d16:	68 f8 b7 07 01       	push   0x107b7f8
  c82d1b:	e8 d0 d3 b4 ff       	call   0x7d00f0
  c82d20:	83 c4 04             	add    esp,0x4
  c82d23:	50                   	push   eax
  c82d24:	8b cd                	mov    ecx,ebp
  c82d26:	e8 a5 6c b1 ff       	call   0x7999d0
  c82d2b:	6a 00                	push   0x0
  c82d2d:	6a 00                	push   0x0
  c82d2f:	6a 00                	push   0x0
  c82d31:	6a 00                	push   0x0
  c82d33:	68 0c b8 07 01       	push   0x107b80c
  c82d38:	6a 34                	push   0x34
  c82d3a:	c6 44 24 2b 01       	mov    BYTE PTR [esp+0x2b],0x1
  c82d3f:	e8 bc 17 86 ff       	call   0x4e4500
  c82d44:	83 c4 18             	add    esp,0x18
  c82d47:	85 c0                	test   eax,eax
  c82d49:	74 1a                	je     0xc82d65
  c82d4b:	8b c8                	mov    ecx,eax
  c82d4d:	e8 4e 75 99 ff       	call   0x61a2a0
  c82d52:	8b d8                	mov    ebx,eax
  c82d54:	85 db                	test   ebx,ebx
  c82d56:	74 0d                	je     0xc82d65
  c82d58:	8b 03                	mov    eax,DWORD PTR [ebx]
  c82d5a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c82d5d:	8b cb                	mov    ecx,ebx
  c82d5f:	ff d2                	call   edx
  c82d61:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  c82d65:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c82d68:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  c82d6b:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  c82d6f:	6a 01                	push   0x1
  c82d71:	6a 00                	push   0x0
  c82d73:	50                   	push   eax
  c82d74:	51                   	push   ecx
  c82d75:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c82d78:	53                   	push   ebx
  c82d79:	e8 52 04 fa ff       	call   0xc231d0
  c82d7e:	6a 00                	push   0x0
  c82d80:	53                   	push   ebx
  c82d81:	68 ec b7 07 01       	push   0x107b7ec
  c82d86:	e8 65 d3 b4 ff       	call   0x7d00f0
  c82d8b:	83 c4 04             	add    esp,0x4
  c82d8e:	50                   	push   eax
  c82d8f:	8b cd                	mov    ecx,ebp
  c82d91:	e8 1a 6d b1 ff       	call   0x799ab0
  c82d96:	8a 97 40 01 00 00    	mov    dl,BYTE PTR [edi+0x140]
  c82d9c:	c0 ea 06             	shr    dl,0x6
  c82d9f:	80 e2 01             	and    dl,0x1
  c82da2:	0f b6 c2             	movzx  eax,dl
  c82da5:	6a 01                	push   0x1
  c82da7:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  c82dab:	51                   	push   ecx
  c82dac:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  c82db0:	68 cc b7 07 01       	push   0x107b7cc
  c82db5:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  c82dbb:	e8 30 d3 b4 ff       	call   0x7d00f0
  c82dc0:	83 c4 04             	add    esp,0x4
  c82dc3:	50                   	push   eax
  c82dc4:	8b cd                	mov    ecx,ebp
  c82dc6:	e8 05 6c b1 ff       	call   0x7999d0
  c82dcb:	6a 01                	push   0x1
  c82dcd:	8d 97 44 01 00 00    	lea    edx,[edi+0x144]
  c82dd3:	52                   	push   edx
  c82dd4:	68 a4 b4 07 01       	push   0x107b4a4
  c82dd9:	e8 12 d3 b4 ff       	call   0x7d00f0
  c82dde:	83 c4 04             	add    esp,0x4
  c82de1:	50                   	push   eax
  c82de2:	8b cd                	mov    ecx,ebp
  c82de4:	e8 e7 6b b1 ff       	call   0x7999d0
  c82de9:	f6 87 40 01 00 00 40 	test   BYTE PTR [edi+0x140],0x40
  c82df0:	74 74                	je     0xc82e66
  c82df2:	8b 47 14             	mov    eax,DWORD PTR [edi+0x14]
  c82df5:	83 b8 b4 01 00 00 00 	cmp    DWORD PTR [eax+0x1b4],0x0
  c82dfc:	75 1d                	jne    0xc82e1b
  c82dfe:	8b 46 74             	mov    eax,DWORD PTR [esi+0x74]
  c82e01:	6a 00                	push   0x0
  c82e03:	50                   	push   eax
  c82e04:	68 b4 51 fe 00       	push   0xfe51b4
  c82e09:	e8 e2 d2 b4 ff       	call   0x7d00f0
  c82e0e:	83 c4 04             	add    esp,0x4
  c82e11:	50                   	push   eax
  c82e12:	8b cd                	mov    ecx,ebp
  c82e14:	e8 97 6c b1 ff       	call   0x799ab0
  c82e19:	eb 4b                	jmp    0xc82e66
  c82e1b:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  c82e1f:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  c82e23:	6a 01                	push   0x1
  c82e25:	51                   	push   ecx
  c82e26:	52                   	push   edx
  c82e27:	8d 44 24 6c          	lea    eax,[esp+0x6c]
  c82e2b:	50                   	push   eax
  c82e2c:	e8 4f de fa ff       	call   0xc30c80
  c82e31:	8b 10                	mov    edx,DWORD PTR [eax]
  c82e33:	83 c4 10             	add    esp,0x10
  c82e36:	6a 00                	push   0x0
  c82e38:	83 ec 10             	sub    esp,0x10
  c82e3b:	8b cc                	mov    ecx,esp
  c82e3d:	89 11                	mov    DWORD PTR [ecx],edx
  c82e3f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c82e42:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  c82e45:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  c82e48:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  c82e4b:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  c82e4e:	68 b4 51 fe 00       	push   0xfe51b4
  c82e53:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
  c82e56:	e8 95 d2 b4 ff       	call   0x7d00f0
  c82e5b:	83 c4 04             	add    esp,0x4
  c82e5e:	50                   	push   eax
  c82e5f:	8b cd                	mov    ecx,ebp
  c82e61:	e8 ca 6b b1 ff       	call   0x799a30
  c82e66:	8b ce                	mov    ecx,esi
  c82e68:	e8 93 25 00 00       	call   0xc85400
  c82e6d:	85 c0                	test   eax,eax
  c82e6f:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  c82e73:	0f 84 da 00 00 00    	je     0xc82f53
  c82e79:	8b d8                	mov    ebx,eax
  c82e7b:	8b 4b 48             	mov    ecx,DWORD PTR [ebx+0x48]
  c82e7e:	85 c9                	test   ecx,ecx
  c82e80:	74 0e                	je     0xc82e90
  c82e82:	c7 43 48 00 00 00 00 	mov    DWORD PTR [ebx+0x48],0x0
  c82e89:	8b 11                	mov    edx,DWORD PTR [ecx]
  c82e8b:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c82e8e:	ff d0                	call   eax
  c82e90:	8b 4b 44             	mov    ecx,DWORD PTR [ebx+0x44]
  c82e93:	85 c9                	test   ecx,ecx
  c82e95:	74 0e                	je     0xc82ea5
  c82e97:	c7 43 44 00 00 00 00 	mov    DWORD PTR [ebx+0x44],0x0
  c82e9e:	8b 11                	mov    edx,DWORD PTR [ecx]
  c82ea0:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c82ea3:	ff d0                	call   eax
  c82ea5:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  c82eaa:	0f 84 a3 00 00 00    	je     0xc82f53
  c82eb0:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c82eb3:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  c82eb6:	51                   	push   ecx
  c82eb7:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c82eba:	52                   	push   edx
  c82ebb:	55                   	push   ebp
  c82ebc:	e8 cf 0f fa ff       	call   0xc23e90
  c82ec1:	6a 00                	push   0x0
  c82ec3:	6a 00                	push   0x0
  c82ec5:	6a 00                	push   0x0
  c82ec7:	6a 00                	push   0x0
  c82ec9:	68 40 b5 07 01       	push   0x107b540
  c82ece:	6a 00                	push   0x0
  c82ed0:	6a 08                	push   0x8
  c82ed2:	6a 40                	push   0x40
  c82ed4:	e8 47 16 86 ff       	call   0x4e4520
  c82ed9:	83 c4 20             	add    esp,0x20
  c82edc:	85 c0                	test   eax,eax
  c82ede:	0f 84 20 01 00 00    	je     0xc83004
  c82ee4:	8b c8                	mov    ecx,eax
  c82ee6:	e8 25 83 a4 ff       	call   0x6cb210
  c82eeb:	8b d8                	mov    ebx,eax
  c82eed:	85 db                	test   ebx,ebx
  c82eef:	74 08                	je     0xc82ef9
  c82ef1:	8b 03                	mov    eax,DWORD PTR [ebx]
  c82ef3:	8b 10                	mov    edx,DWORD PTR [eax]
  c82ef5:	8b cb                	mov    ecx,ebx
  c82ef7:	ff d2                	call   edx
  c82ef9:	55                   	push   ebp
  c82efa:	8b cb                	mov    ecx,ebx
  c82efc:	e8 1f 82 a4 ff       	call   0x6cb120
  c82f01:	84 c0                	test   al,al
  c82f03:	74 41                	je     0xc82f46
  c82f05:	68 b4 b7 07 01       	push   0x107b7b4
  c82f0a:	e8 e1 d1 b4 ff       	call   0x7d00f0
  c82f0f:	83 c4 04             	add    esp,0x4
  c82f12:	50                   	push   eax
  c82f13:	8b cb                	mov    ecx,ebx
  c82f15:	e8 96 ba d5 ff       	call   0x9de9b0
  c82f1a:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c82f1e:	8b 68 44             	mov    ebp,DWORD PTR [eax+0x44]
  c82f21:	3b dd                	cmp    ebx,ebp
  c82f23:	74 21                	je     0xc82f46
  c82f25:	85 db                	test   ebx,ebx
  c82f27:	74 08                	je     0xc82f31
  c82f29:	8b 13                	mov    edx,DWORD PTR [ebx]
  c82f2b:	8b 02                	mov    eax,DWORD PTR [edx]
  c82f2d:	8b cb                	mov    ecx,ebx
  c82f2f:	ff d0                	call   eax
  c82f31:	85 ed                	test   ebp,ebp
  c82f33:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  c82f37:	89 59 44             	mov    DWORD PTR [ecx+0x44],ebx
  c82f3a:	74 0a                	je     0xc82f46
  c82f3c:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  c82f3f:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c82f42:	8b cd                	mov    ecx,ebp
  c82f44:	ff d0                	call   eax
  c82f46:	85 db                	test   ebx,ebx
  c82f48:	74 09                	je     0xc82f53
  c82f4a:	8b 13                	mov    edx,DWORD PTR [ebx]
  c82f4c:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c82f4f:	8b cb                	mov    ecx,ebx
  c82f51:	ff d0                	call   eax
  c82f53:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  c82f57:	85 c9                	test   ecx,ecx
  c82f59:	74 07                	je     0xc82f62
  c82f5b:	8b 11                	mov    edx,DWORD PTR [ecx]
  c82f5d:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c82f60:	ff d0                	call   eax
  c82f62:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c82f66:	85 c9                	test   ecx,ecx
  c82f68:	74 07                	je     0xc82f71
  c82f6a:	8b 11                	mov    edx,DWORD PTR [ecx]
  c82f6c:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c82f6f:	ff d0                	call   eax
  c82f71:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  c82f75:	85 c0                	test   eax,eax
  c82f77:	74 09                	je     0xc82f82
  c82f79:	50                   	push   eax
  c82f7a:	e8 61 15 86 ff       	call   0x4e44e0
  c82f7f:	83 c4 04             	add    esp,0x4
  c82f82:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  c82f86:	51                   	push   ecx
  c82f87:	6a 01                	push   0x1
  c82f89:	56                   	push   esi
  c82f8a:	8b cf                	mov    ecx,edi
  c82f8c:	c7 44 24 3c 00 00 00 00 	mov    DWORD PTR [esp+0x3c],0x0
  c82f94:	e8 17 c7 ff ff       	call   0xc7f6b0
  c82f99:	8b 8e 08 01 00 00    	mov    ecx,DWORD PTR [esi+0x108]
  c82f9f:	85 c9                	test   ecx,ecx
  c82fa1:	8d 9e 08 01 00 00    	lea    ebx,[esi+0x108]
  c82fa7:	74 0d                	je     0xc82fb6
  c82fa9:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
  c82faf:	8b 11                	mov    edx,DWORD PTR [ecx]
  c82fb1:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c82fb4:	ff d0                	call   eax
  c82fb6:	e8 a5 7f a4 ff       	call   0x6caf60
  c82fbb:	50                   	push   eax
  c82fbc:	53                   	push   ebx
  c82fbd:	8b 5c 24 38          	mov    ebx,DWORD PTR [esp+0x38]
  c82fc1:	8b cb                	mov    ecx,ebx
  c82fc3:	e8 f8 7e a4 ff       	call   0x6caec0
  c82fc8:	56                   	push   esi
  c82fc9:	8b cf                	mov    ecx,edi
  c82fcb:	e8 80 e0 ff ff       	call   0xc81050
  c82fd0:	85 db                	test   ebx,ebx
  c82fd2:	74 09                	je     0xc82fdd
  c82fd4:	8b 13                	mov    edx,DWORD PTR [ebx]
  c82fd6:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c82fd9:	8b cb                	mov    ecx,ebx
  c82fdb:	ff d0                	call   eax
  c82fdd:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  c82fe1:	85 c0                	test   eax,eax
  c82fe3:	74 12                	je     0xc82ff7
  c82fe5:	3b 84 24 80 00 00 00 	cmp    eax,DWORD PTR [esp+0x80]
  c82fec:	74 09                	je     0xc82ff7
  c82fee:	50                   	push   eax
  c82fef:	e8 ec 14 86 ff       	call   0x4e44e0
  c82ff4:	83 c4 04             	add    esp,0x4
  c82ff7:	5f                   	pop    edi
  c82ff8:	5e                   	pop    esi
  c82ff9:	5d                   	pop    ebp
  c82ffa:	5b                   	pop    ebx
  c82ffb:	81 c4 b4 00 00 00    	add    esp,0xb4
  c83001:	c2 0c 00             	ret    0xc
  c83004:	33 db                	xor    ebx,ebx
  c83006:	e9 ee fe ff ff       	jmp    0xc82ef9
