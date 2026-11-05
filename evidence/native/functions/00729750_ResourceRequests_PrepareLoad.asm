# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00729750 (ResourceRequests_PrepareLoad)
Complete body envelope: 0x00729750..0x00729c39 (exclusive end)
Body ranges: [[00729750, 00729c38]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00729750 <.text+0x328750>:
  729750:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  729754:	83 ec 30             	sub    esp,0x30
  729757:	53                   	push   ebx
  729758:	55                   	push   ebp
  729759:	56                   	push   esi
  72975a:	57                   	push   edi
  72975b:	8b f9                	mov    edi,ecx
  72975d:	50                   	push   eax
  72975e:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  729762:	51                   	push   ecx
  729763:	e8 a8 eb 0a 00       	call   0x7d8310
  729768:	83 c4 08             	add    esp,0x8
  72976b:	83 7c 24 28 00       	cmp    DWORD PTR [esp+0x28],0x0
  729770:	0f 84 c2 01 00 00    	je     0x729938
  729776:	c6 44 24 44 00       	mov    BYTE PTR [esp+0x44],0x0
  72977b:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  72977f:	52                   	push   edx
  729780:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  729785:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  729789:	50                   	push   eax
  72978a:	8d 54 24 28          	lea    edx,[esp+0x28]
  72978e:	52                   	push   edx
  72978f:	8d 44 24 20          	lea    eax,[esp+0x20]
  729793:	8d 8f 80 00 00 00    	lea    ecx,[edi+0x80]
  729799:	50                   	push   eax
  72979a:	e8 c1 e6 ff ff       	call   0x727e60
  72979f:	8b 87 7c 03 00 00    	mov    eax,DWORD PTR [edi+0x37c]
  7297a5:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7297a9:	33 f6                	xor    esi,esi
  7297ab:	3b c8                	cmp    ecx,eax
  7297ad:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
  7297b1:	0f 84 eb 00 00 00    	je     0x7298a2
  7297b7:	85 c9                	test   ecx,ecx
  7297b9:	74 11                	je     0x7297cc
  7297bb:	8d 59 f8             	lea    ebx,[ecx-0x8]
  7297be:	85 db                	test   ebx,ebx
  7297c0:	74 0a                	je     0x7297cc
  7297c2:	8b 13                	mov    edx,DWORD PTR [ebx]
  7297c4:	8b 02                	mov    eax,DWORD PTR [edx]
  7297c6:	8b cb                	mov    ecx,ebx
  7297c8:	ff d0                	call   eax
  7297ca:	8b f3                	mov    esi,ebx
  7297cc:	80 be 99 00 00 00 00 	cmp    BYTE PTR [esi+0x99],0x0
  7297d3:	0f 84 8b 00 00 00    	je     0x729864
  7297d9:	80 7c 24 54 00       	cmp    BYTE PTR [esp+0x54],0x0
  7297de:	0f 84 80 00 00 00    	je     0x729864
  7297e4:	c6 86 9a 00 00 00 01 	mov    BYTE PTR [esi+0x9a],0x1
  7297eb:	8b 8e a4 00 00 00    	mov    ecx,DWORD PTR [esi+0xa4]
  7297f1:	68 f4 01 00 00       	push   0x1f4
  7297f6:	51                   	push   ecx
  7297f7:	8b cf                	mov    ecx,edi
  7297f9:	e8 32 e4 ff ff       	call   0x727c30
  7297fe:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  729801:	3b 47 1c             	cmp    eax,DWORD PTR [edi+0x1c]
  729804:	8b 57 10             	mov    edx,DWORD PTR [edi+0x10]
  729807:	8b 6f 14             	mov    ebp,DWORD PTR [edi+0x14]
  72980a:	8b 5f 18             	mov    ebx,DWORD PTR [edi+0x18]
  72980d:	74 55                	je     0x729864
  72980f:	90                   	nop
  729810:	8b 08                	mov    ecx,DWORD PTR [eax]
  729812:	89 4c 24 54          	mov    DWORD PTR [esp+0x54],ecx
  729816:	8b 8e a4 00 00 00    	mov    ecx,DWORD PTR [esi+0xa4]
  72981c:	3b 4c 24 54          	cmp    ecx,DWORD PTR [esp+0x54]
  729820:	74 1c                	je     0x72983e
  729822:	83 c0 08             	add    eax,0x8
  729825:	3b c5                	cmp    eax,ebp
  729827:	75 0e                	jne    0x729837
  729829:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
  72982c:	83 c3 04             	add    ebx,0x4
  72982f:	8d aa 00 01 00 00    	lea    ebp,[edx+0x100]
  729835:	8b c2                	mov    eax,edx
  729837:	3b 47 1c             	cmp    eax,DWORD PTR [edi+0x1c]
  72983a:	75 d4                	jne    0x729810
  72983c:	eb 26                	jmp    0x729864
  72983e:	83 ec 10             	sub    esp,0x10
  729841:	8b cc                	mov    ecx,esp
  729843:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  729846:	8d 54 24 40          	lea    edx,[esp+0x40]
  72984a:	89 01                	mov    DWORD PTR [ecx],eax
  72984c:	89 69 08             	mov    DWORD PTR [ecx+0x8],ebp
  72984f:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  729852:	52                   	push   edx
  729853:	8d 4f 04             	lea    ecx,[edi+0x4]
  729856:	e8 f5 f5 ff ff       	call   0x728e50
  72985b:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  72985f:	e8 ec 1a e7 ff       	call   0x59b350
  729864:	80 be 97 00 00 00 00 	cmp    BYTE PTR [esi+0x97],0x0
  72986b:	74 0e                	je     0x72987b
  72986d:	80 7c 24 48 00       	cmp    BYTE PTR [esp+0x48],0x0
  729872:	75 07                	jne    0x72987b
  729874:	c6 86 97 00 00 00 00 	mov    BYTE PTR [esi+0x97],0x0
  72987b:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  72987f:	39 86 ac 00 00 00    	cmp    DWORD PTR [esi+0xac],eax
  729885:	0f 8d 99 03 00 00    	jge    0x729c24
  72988b:	89 86 ac 00 00 00    	mov    DWORD PTR [esi+0xac],eax
  729891:	8b 8e a8 00 00 00    	mov    ecx,DWORD PTR [esi+0xa8]
  729897:	50                   	push   eax
  729898:	e8 43 19 e7 ff       	call   0x59b1e0
  72989d:	e9 82 03 00 00       	jmp    0x729c24
  7298a2:	e8 d9 65 d8 ff       	call   0x4afe80
  7298a7:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  7298ab:	8b f0                	mov    esi,eax
  7298ad:	8b 06                	mov    eax,DWORD PTR [esi]
  7298af:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
  7298b2:	6a ff                	push   0xffffffff
  7298b4:	51                   	push   ecx
  7298b5:	8b ce                	mov    ecx,esi
  7298b7:	ff d2                	call   edx
  7298b9:	8b d8                	mov    ebx,eax
  7298bb:	85 db                	test   ebx,ebx
  7298bd:	74 79                	je     0x729938
  7298bf:	8b 06                	mov    eax,DWORD PTR [esi]
  7298c1:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
  7298c4:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  7298c8:	51                   	push   ecx
  7298c9:	8b ce                	mov    ecx,esi
  7298cb:	ff d2                	call   edx
  7298cd:	8b e8                	mov    ebp,eax
  7298cf:	85 ed                	test   ebp,ebp
  7298d1:	74 65                	je     0x729938
  7298d3:	6a 00                	push   0x0
  7298d5:	6a 00                	push   0x0
  7298d7:	6a 00                	push   0x0
  7298d9:	6a 00                	push   0x0
  7298db:	68 fc e4 ff 00       	push   0xffe4fc
  7298e0:	68 18 01 00 00       	push   0x118
  7298e5:	e8 16 ac db ff       	call   0x4e4500
  7298ea:	83 c4 18             	add    esp,0x18
  7298ed:	85 c0                	test   eax,eax
  7298ef:	74 09                	je     0x7298fa
  7298f1:	8b c8                	mov    ecx,eax
  7298f3:	e8 08 e8 ff ff       	call   0x728100
  7298f8:	eb 02                	jmp    0x7298fc
  7298fa:	33 c0                	xor    eax,eax
  7298fc:	50                   	push   eax
  7298fd:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  729901:	e8 fa f3 19 00       	call   0x8c8d00
  729906:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  72990a:	85 f6                	test   esi,esi
  72990c:	74 2a                	je     0x729938
  72990e:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  729911:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
  729914:	8d 4e 34             	lea    ecx,[esi+0x34]
  729917:	51                   	push   ecx
  729918:	6a 00                	push   0x0
  72991a:	6a 06                	push   0x6
  72991c:	6a 01                	push   0x1
  72991e:	6a 00                	push   0x0
  729920:	8d 54 24 34          	lea    edx,[esp+0x34]
  729924:	52                   	push   edx
  729925:	8b cd                	mov    ecx,ebp
  729927:	ff d0                	call   eax
  729929:	83 7e 3c ff          	cmp    DWORD PTR [esi+0x3c],0xffffffff
  72992d:	75 15                	jne    0x729944
  72992f:	8b 16                	mov    edx,DWORD PTR [esi]
  729931:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  729934:	8b ce                	mov    ecx,esi
  729936:	ff d0                	call   eax
  729938:	33 c0                	xor    eax,eax
  72993a:	5f                   	pop    edi
  72993b:	5e                   	pop    esi
  72993c:	5d                   	pop    ebp
  72993d:	5b                   	pop    ebx
  72993e:	83 c4 30             	add    esp,0x30
  729941:	c2 18 00             	ret    0x18
  729944:	e8 d7 01 e7 ff       	call   0x599b20
  729949:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  72994d:	c7 44 24 44 00 00 00 	mov    DWORD PTR [esp+0x44],0x0
  729954:	00 
  729955:	8b 00                	mov    eax,DWORD PTR [eax]
  729957:	83 c0 10             	add    eax,0x10
  72995a:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  72995e:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  729962:	e8 59 1d ee ff       	call   0x60b6c0
  729967:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  72996b:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  72996f:	50                   	push   eax
  729970:	8b 02                	mov    eax,DWORD PTR [edx]
  729972:	ff d0                	call   eax
  729974:	83 7c 24 44 00       	cmp    DWORD PTR [esp+0x44],0x0
  729979:	74 b4                	je     0x72992f
  72997b:	d9 ee                	fldz
  72997d:	51                   	push   ecx
  72997e:	d9 1c 24             	fstp   DWORD PTR [esp]
  729981:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  729985:	6a 00                	push   0x0
  729987:	51                   	push   ecx
  729988:	8b cf                	mov    ecx,edi
  72998a:	e8 21 e4 ff ff       	call   0x727db0
  72998f:	55                   	push   ebp
  729990:	8d 4e 2c             	lea    ecx,[esi+0x2c]
  729993:	89 7e 20             	mov    DWORD PTR [esi+0x20],edi
  729996:	e8 65 6e d7 ff       	call   0x4a0800
  72999b:	89 5e 30             	mov    DWORD PTR [esi+0x30],ebx
  72999e:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  7299a2:	89 56 10             	mov    DWORD PTR [esi+0x10],edx
  7299a5:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  7299a9:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  7299ac:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  7299b0:	89 4e 18             	mov    DWORD PTR [esi+0x18],ecx
  7299b3:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  7299b7:	89 56 1c             	mov    DWORD PTR [esi+0x1c],edx
  7299ba:	8b 03                	mov    eax,DWORD PTR [ebx]
  7299bc:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  7299bf:	8b cb                	mov    ecx,ebx
  7299c1:	ff d2                	call   edx
  7299c3:	8a 4c 24 48          	mov    cl,BYTE PTR [esp+0x48]
  7299c7:	8a 54 24 54          	mov    dl,BYTE PTR [esp+0x54]
  7299cb:	8b 5c 24 50          	mov    ebx,DWORD PTR [esp+0x50]
  7299cf:	3d 4d e0 cc 01       	cmp    eax,0x1cce04d
  7299d4:	0f 94 c0             	sete   al
  7299d7:	88 86 94 00 00 00    	mov    BYTE PTR [esi+0x94],al
  7299dd:	c6 86 95 00 00 00 00 	mov    BYTE PTR [esi+0x95],0x0
  7299e4:	c6 86 96 00 00 00 00 	mov    BYTE PTR [esi+0x96],0x0
  7299eb:	88 8e 97 00 00 00    	mov    BYTE PTR [esi+0x97],cl
  7299f1:	c6 86 98 00 00 00 01 	mov    BYTE PTR [esi+0x98],0x1
  7299f8:	c6 86 99 00 00 00 00 	mov    BYTE PTR [esi+0x99],0x0
  7299ff:	88 96 9a 00 00 00    	mov    BYTE PTR [esi+0x9a],dl
  729a05:	c6 86 9c 00 00 00 00 	mov    BYTE PTR [esi+0x9c],0x0
  729a0c:	c6 86 9d 00 00 00 00 	mov    BYTE PTR [esi+0x9d],0x0
  729a13:	89 9e ac 00 00 00    	mov    DWORD PTR [esi+0xac],ebx
  729a19:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  729a1d:	89 86 a4 00 00 00    	mov    DWORD PTR [esi+0xa4],eax
  729a23:	8b ce                	mov    ecx,esi
  729a25:	c7 86 a8 00 00 00 00 	mov    DWORD PTR [esi+0xa8],0x0
  729a2c:	00 00 00 
  729a2f:	e8 dc d8 ff ff       	call   0x727310
  729a34:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  729a37:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  729a3a:	8b cd                	mov    ecx,ebp
  729a3c:	ff d0                	call   eax
  729a3e:	3d a4 b9 c4 03       	cmp    eax,0x3c4b9a4
  729a43:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729a47:	56                   	push   esi
  729a48:	0f 85 fa 00 00 00    	jne    0x729b48
  729a4e:	e8 cd 01 e7 ff       	call   0x599c20
  729a53:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  729a57:	c7 40 08 e0 7f 72 00 	mov    DWORD PTR [eax+0x8],0x727fe0
  729a5e:	89 78 0c             	mov    DWORD PTR [eax+0xc],edi
  729a61:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729a65:	53                   	push   ebx
  729a66:	e8 75 17 e7 ff       	call   0x59b1e0
  729a6b:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729a6f:	6a 01                	push   0x1
  729a71:	e8 da 01 e7 ff       	call   0x599c50
  729a76:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729a7a:	e8 c1 03 e7 ff       	call   0x599e40
  729a7f:	8d 4f 74             	lea    ecx,[edi+0x74]
  729a82:	ba 01 00 00 00       	mov    edx,0x1
  729a87:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  729a8b:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  729a8e:	8d 4f 78             	lea    ecx,[edi+0x78]
  729a91:	f0 0f c1 01          	lock xadd DWORD PTR [ecx],eax
  729a95:	c6 86 9c 00 00 00 01 	mov    BYTE PTR [esi+0x9c],0x1
  729a9c:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  729a9f:	8b 42 50             	mov    eax,DWORD PTR [edx+0x50]
  729aa2:	8b cd                	mov    ecx,ebp
  729aa4:	ff d0                	call   eax
  729aa6:	80 7c 24 54 00       	cmp    BYTE PTR [esp+0x54],0x0
  729aab:	c6 86 99 00 00 00 01 	mov    BYTE PTR [esi+0x99],0x1
  729ab2:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729ab6:	74 12                	je     0x729aca
  729ab8:	68 f4 01 00 00       	push   0x1f4
  729abd:	51                   	push   ecx
  729abe:	8b cf                	mov    ecx,edi
  729ac0:	e8 6b e1 ff ff       	call   0x727c30
  729ac5:	e9 d0 00 00 00       	jmp    0x729b9a
  729aca:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  729ace:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  729ad2:	e8 49 03 e7 ff       	call   0x599e20
  729ad7:	c6 44 24 54 00       	mov    BYTE PTR [esp+0x54],0x0
  729adc:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  729ae0:	52                   	push   edx
  729ae1:	8d 44 24 18          	lea    eax,[esp+0x18]
  729ae5:	50                   	push   eax
  729ae6:	83 ec 10             	sub    esp,0x10
  729ae9:	8d 6f 04             	lea    ebp,[edi+0x4]
  729aec:	54                   	push   esp
  729aed:	8b cd                	mov    ecx,ebp
  729aef:	e8 9c d6 ff ff       	call   0x727190
  729af4:	83 ec 10             	sub    esp,0x10
  729af7:	54                   	push   esp
  729af8:	8b cd                	mov    ecx,ebp
  729afa:	e8 71 d6 ff ff       	call   0x727170
  729aff:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  729b03:	51                   	push   ecx
  729b04:	e8 c7 e3 ff ff       	call   0x727ed0
  729b09:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  729b0d:	83 c4 2c             	add    esp,0x2c
  729b10:	8d 54 24 14          	lea    edx,[esp+0x14]
  729b14:	52                   	push   edx
  729b15:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  729b19:	83 ec 10             	sub    esp,0x10
  729b1c:	8b c4                	mov    eax,esp
  729b1e:	89 08                	mov    DWORD PTR [eax],ecx
  729b20:	8b 4c 24 4c          	mov    ecx,DWORD PTR [esp+0x4c]
  729b24:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  729b27:	8b 54 24 50          	mov    edx,DWORD PTR [esp+0x50]
  729b2b:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  729b2e:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  729b31:	8d 44 24 44          	lea    eax,[esp+0x44]
  729b35:	50                   	push   eax
  729b36:	8b cd                	mov    ecx,ebp
  729b38:	e8 13 f2 ff ff       	call   0x728d50
  729b3d:	6a 01                	push   0x1
  729b3f:	8b cf                	mov    ecx,edi
  729b41:	e8 ba e1 ff ff       	call   0x727d00
  729b46:	eb 52                	jmp    0x729b9a
  729b48:	e8 d3 00 e7 ff       	call   0x599c20
  729b4d:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  729b51:	c7 40 08 60 a4 72 00 	mov    DWORD PTR [eax+0x8],0x72a460
  729b58:	89 78 0c             	mov    DWORD PTR [eax+0xc],edi
  729b5b:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729b5f:	c7 41 20 02 00 00 00 	mov    DWORD PTR [ecx+0x20],0x2
  729b66:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729b6a:	53                   	push   ebx
  729b6b:	e8 70 16 e7 ff       	call   0x59b1e0
  729b70:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729b74:	6a 01                	push   0x1
  729b76:	e8 d5 00 e7 ff       	call   0x599c50
  729b7b:	8d 57 74             	lea    edx,[edi+0x74]
  729b7e:	b8 01 00 00 00       	mov    eax,0x1
  729b83:	f0 0f c1 02          	lock xadd DWORD PTR [edx],eax
  729b87:	8b 4e 38             	mov    ecx,DWORD PTR [esi+0x38]
  729b8a:	8d 57 78             	lea    edx,[edi+0x78]
  729b8d:	f0 0f c1 0a          	lock xadd DWORD PTR [edx],ecx
  729b91:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729b95:	e8 76 11 e7 ff       	call   0x59ad10
  729b9a:	8d 46 08             	lea    eax,[esi+0x8]
  729b9d:	50                   	push   eax
  729b9e:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  729ba2:	51                   	push   ecx
  729ba3:	8d 8f 80 00 00 00    	lea    ecx,[edi+0x80]
  729ba9:	e8 22 e9 ff ff       	call   0x7284d0
  729bae:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  729bb2:	8b 11                	mov    edx,DWORD PTR [ecx]
  729bb4:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  729bb7:	8d ae a8 00 00 00    	lea    ebp,[esi+0xa8]
  729bbd:	55                   	push   ebp
  729bbe:	ff d0                	call   eax
  729bc0:	8b 6d 00             	mov    ebp,DWORD PTR [ebp+0x0]
  729bc3:	56                   	push   esi
  729bc4:	8b cd                	mov    ecx,ebp
  729bc6:	e8 55 00 e7 ff       	call   0x599c20
  729bcb:	c7 45 08 30 97 72 00 	mov    DWORD PTR [ebp+0x8],0x729730
  729bd2:	89 7d 0c             	mov    DWORD PTR [ebp+0xc],edi
  729bd5:	c7 45 20 01 00 00 00 	mov    DWORD PTR [ebp+0x20],0x1
  729bdc:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729be0:	51                   	push   ecx
  729be1:	8b cd                	mov    ecx,ebp
  729be3:	e8 48 16 e7 ff       	call   0x59b230
  729be8:	6a 01                	push   0x1
  729bea:	8b cd                	mov    ecx,ebp
  729bec:	e8 5f 00 e7 ff       	call   0x599c50
  729bf1:	53                   	push   ebx
  729bf2:	8b cd                	mov    ecx,ebp
  729bf4:	e8 e7 15 e7 ff       	call   0x59b1e0
  729bf9:	8b cd                	mov    ecx,ebp
  729bfb:	e8 10 11 e7 ff       	call   0x59ad10
  729c00:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  729c04:	85 c0                	test   eax,eax
  729c06:	74 04                	je     0x729c0c
  729c08:	89 28                	mov    DWORD PTR [eax],ebp
  729c0a:	eb 0b                	jmp    0x729c17
  729c0c:	8b 8e a8 00 00 00    	mov    ecx,DWORD PTR [esi+0xa8]
  729c12:	e8 39 17 e7 ff       	call   0x59b350
  729c17:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  729c1b:	85 c9                	test   ecx,ecx
  729c1d:	74 05                	je     0x729c24
  729c1f:	e8 2c 17 e7 ff       	call   0x59b350
  729c24:	8b 16                	mov    edx,DWORD PTR [esi]
  729c26:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  729c29:	8b ce                	mov    ecx,esi
  729c2b:	ff d0                	call   eax
  729c2d:	5f                   	pop    edi
  729c2e:	8b c6                	mov    eax,esi
  729c30:	5e                   	pop    esi
  729c31:	5d                   	pop    ebp
  729c32:	5b                   	pop    ebx
  729c33:	83 c4 30             	add    esp,0x30
  729c36:	c2 18 00             	ret    0x18
