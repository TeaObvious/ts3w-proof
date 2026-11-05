# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00aa8810, 0x00aa89d3).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: LayerManager_ReadChildDescriptions.
Paired annotated Ghidra pseudocode: 00AA8810_LayerManager_ReadChildDescriptions.c
Instruction-verified function envelope [0x00aa8810,0x00aa89d3); inferred boundaries.
Includes any internal alignment gaps; original instructions govern decompiler interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00aa8810 <.text+0x6a7810>:
  aa8810:	83 ec 28             	sub    esp,0x28
  aa8813:	53                   	push   ebx
  aa8814:	8b d9                	mov    ebx,ecx
  aa8816:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  aa8819:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
  aa881c:	57                   	push   edi
  aa881d:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  aa8821:	6a 00                	push   0x0
  aa8823:	8d 54 24 24          	lea    edx,[esp+0x24]
  aa8827:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  aa882b:	52                   	push   edx
  aa882c:	8b cf                	mov    ecx,edi
  aa882e:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  aa8832:	c7 44 24 30 a4 6e d8 	mov    DWORD PTR [esp+0x30],0x3d86ea4
  aa8839:	03
  aa883a:	c7 44 24 34 00 00 00 	mov    DWORD PTR [esp+0x34],0x0
  aa8841:	00
  aa8842:	e8 79 fc d2 ff       	call   0x7d84c0
  aa8847:	84 c0                	test   al,al
  aa8849:	75 08                	jne    0xaa8853
  aa884b:	5f                   	pop    edi
  aa884c:	5b                   	pop    ebx
  aa884d:	83 c4 28             	add    esp,0x28
  aa8850:	c2 04 00             	ret    0x4
  aa8853:	55                   	push   ebp
  aa8854:	8d ab a0 00 00 00    	lea    ebp,[ebx+0xa0]
  aa885a:	56                   	push   esi
  aa885b:	8b cd                	mov    ecx,ebp
  aa885d:	e8 3e 4a 2a 00       	call   0xd4d2a0
  aa8862:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  aa8865:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  aa8868:	50                   	push   eax
  aa8869:	8d 73 78             	lea    esi,[ebx+0x78]
  aa886c:	56                   	push   esi
  aa886d:	51                   	push   ecx
  aa886e:	e8 6d 50 a3 ff       	call   0x4dd8e0
  aa8873:	83 c4 0c             	add    esp,0xc
  aa8876:	8b cf                	mov    ecx,edi
  aa8878:	50                   	push   eax
  aa8879:	e8 72 f1 d2 ff       	call   0x7d79f0
  aa887e:	66 83 3e 04          	cmp    WORD PTR [esi],0x4
  aa8882:	76 0c                	jbe    0xaa8890
  aa8884:	5e                   	pop    esi
  aa8885:	5d                   	pop    ebp
  aa8886:	5f                   	pop    edi
  aa8887:	32 c0                	xor    al,al
  aa8889:	5b                   	pop    ebx
  aa888a:	83 c4 28             	add    esp,0x28
  aa888d:	c2 04 00             	ret    0x4
  aa8890:	8d 53 50             	lea    edx,[ebx+0x50]
  aa8893:	52                   	push   edx
  aa8894:	8b cf                	mov    ecx,edi
  aa8896:	e8 15 0e d3 ff       	call   0x7d96b0
  aa889b:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  aa889e:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  aa88a1:	50                   	push   eax
  aa88a2:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  aa88a6:	51                   	push   ecx
  aa88a7:	52                   	push   edx
  aa88a8:	e8 d3 50 a3 ff       	call   0x4dd980
  aa88ad:	83 c4 0c             	add    esp,0xc
  aa88b0:	8b cf                	mov    ecx,edi
  aa88b2:	50                   	push   eax
  aa88b3:	e8 38 f1 d2 ff       	call   0x7d79f0
  aa88b8:	83 7c 24 14 00       	cmp    DWORD PTR [esp+0x14],0x0
  aa88bd:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  aa88c4:	00
  aa88c5:	0f 86 f4 00 00 00    	jbe    0xaa89bf
  aa88cb:	eb 03                	jmp    0xaa88d0
  aa88cd:	8d 49 00             	lea    ecx,[ecx+0x0]
  aa88d0:	66 83 7b 78 02       	cmp    WORD PTR [ebx+0x78],0x2
  aa88d5:	73 2f                	jae    0xaa8906
  aa88d7:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  aa88da:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  aa88dd:	50                   	push   eax
  aa88de:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  aa88e2:	51                   	push   ecx
  aa88e3:	52                   	push   edx
  aa88e4:	e8 97 50 a3 ff       	call   0x4dd980
  aa88e9:	83 c4 0c             	add    esp,0xc
  aa88ec:	8b cf                	mov    ecx,edi
  aa88ee:	50                   	push   eax
  aa88ef:	e8 fc f0 d2 ff       	call   0x7d79f0
  aa88f4:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  aa88f8:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  aa88fc:	c7 44 24 24 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
  aa8903:	00
  aa8904:	eb 1d                	jmp    0xaa8923
  aa8906:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  aa8909:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  aa890c:	51                   	push   ecx
  aa890d:	8d 54 24 24          	lea    edx,[esp+0x24]
  aa8911:	52                   	push   edx
  aa8912:	50                   	push   eax
  aa8913:	e8 98 51 a3 ff       	call   0x4ddab0
  aa8918:	83 c4 0c             	add    esp,0xc
  aa891b:	8b cf                	mov    ecx,edi
  aa891d:	50                   	push   eax
  aa891e:	e8 cd f0 d2 ff       	call   0x7d79f0
  aa8923:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  aa8926:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  aa8929:	51                   	push   ecx
  aa892a:	8d 54 24 20          	lea    edx,[esp+0x20]
  aa892e:	52                   	push   edx
  aa892f:	50                   	push   eax
  aa8930:	e8 4b 50 a3 ff       	call   0x4dd980
  aa8935:	83 c4 0c             	add    esp,0xc
  aa8938:	8b cf                	mov    ecx,edi
  aa893a:	50                   	push   eax
  aa893b:	e8 b0 f0 d2 ff       	call   0x7d79f0
  aa8940:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  aa8944:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  aa8948:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  aa894c:	51                   	push   ecx
  aa894d:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  aa8950:	52                   	push   edx
  aa8951:	6a 00                	push   0x0
  aa8953:	50                   	push   eax
  aa8954:	e8 a7 b6 1b 00       	call   0xc64000
  aa8959:	8b f0                	mov    esi,eax
  aa895b:	85 f6                	test   esi,esi
  aa895d:	89 74 24 3c          	mov    DWORD PTR [esp+0x3c],esi
  aa8961:	74 47                	je     0xaa89aa
  aa8963:	8b 16                	mov    edx,DWORD PTR [esi]
  aa8965:	8b 02                	mov    eax,DWORD PTR [edx]
  aa8967:	8b ce                	mov    ecx,esi
  aa8969:	ff d0                	call   eax
  aa896b:	89 5e 10             	mov    DWORD PTR [esi+0x10],ebx
  aa896e:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  aa8971:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
  aa8974:	73 16                	jae    0xaa898c
  aa8976:	85 c0                	test   eax,eax
  aa8978:	8d 48 04             	lea    ecx,[eax+0x4]
  aa897b:	89 4d 04             	mov    DWORD PTR [ebp+0x4],ecx
  aa897e:	74 1d                	je     0xaa899d
  aa8980:	89 30                	mov    DWORD PTR [eax],esi
  aa8982:	8b 16                	mov    edx,DWORD PTR [esi]
  aa8984:	8b 02                	mov    eax,DWORD PTR [edx]
  aa8986:	8b ce                	mov    ecx,esi
  aa8988:	ff d0                	call   eax
  aa898a:	eb 11                	jmp    0xaa899d
  aa898c:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  aa8990:	51                   	push   ecx
  aa8991:	50                   	push   eax
  aa8992:	8b cd                	mov    ecx,ebp
  aa8994:	e8 37 d1 1b 00       	call   0xc65ad0
  aa8999:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
  aa899d:	85 f6                	test   esi,esi
  aa899f:	74 09                	je     0xaa89aa
  aa89a1:	8b 16                	mov    edx,DWORD PTR [esi]
  aa89a3:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  aa89a6:	8b ce                	mov    ecx,esi
  aa89a8:	ff d0                	call   eax
  aa89aa:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  aa89ae:	83 c0 01             	add    eax,0x1
  aa89b1:	3b 44 24 14          	cmp    eax,DWORD PTR [esp+0x14]
  aa89b5:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  aa89b9:	0f 82 11 ff ff ff    	jb     0xaa88d0
  aa89bf:	8b cf                	mov    ecx,edi
  aa89c1:	e8 aa f0 d2 ff       	call   0x7d7a70
  aa89c6:	8a 47 14             	mov    al,BYTE PTR [edi+0x14]
  aa89c9:	5e                   	pop    esi
  aa89ca:	5d                   	pop    ebp
  aa89cb:	5f                   	pop    edi
  aa89cc:	5b                   	pop    ebx
  aa89cd:	83 c4 28             	add    esp,0x28
  aa89d0:	c2 04 00             	ret    0x4
