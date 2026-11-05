# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0063e780,0x0063eb56); analyst name PortalGraphSearch_AppendNeighbors.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0063e780 <.text+0x23d780>:
  63e780:	83 ec 14             	sub    esp,0x14
  63e783:	53                   	push   ebx
  63e784:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  63e788:	55                   	push   ebp
  63e789:	8b e9                	mov    ebp,ecx
  63e78b:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  63e78f:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  63e792:	2b 01                	sub    eax,DWORD PTR [ecx]
  63e794:	56                   	push   esi
  63e795:	57                   	push   edi
  63e796:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
  63e79a:	c1 eb 10             	shr    ebx,0x10
  63e79d:	53                   	push   ebx
  63e79e:	c1 f8 02             	sar    eax,0x2
  63e7a1:	57                   	push   edi
  63e7a2:	8b cd                	mov    ecx,ebp
  63e7a4:	89 6c 24 20          	mov    DWORD PTR [esp+0x20],ebp
  63e7a8:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  63e7ac:	e8 5f f3 ff ff       	call   0x63db10
  63e7b1:	8b b7 90 00 00 00    	mov    esi,DWORD PTR [edi+0x90]
  63e7b7:	8b 8f 94 00 00 00    	mov    ecx,DWORD PTR [edi+0x94]
  63e7bd:	0f b7 c3             	movzx  eax,bx
  63e7c0:	2b ce                	sub    ecx,esi
  63e7c2:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  63e7c6:	b8 79 78 78 78       	mov    eax,0x78787879
  63e7cb:	f7 e9                	imul   ecx
  63e7cd:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  63e7d1:	c1 fa 05             	sar    edx,0x5
  63e7d4:	8b ca                	mov    ecx,edx
  63e7d6:	c1 e9 1f             	shr    ecx,0x1f
  63e7d9:	03 ca                	add    ecx,edx
  63e7db:	3b c1                	cmp    eax,ecx
  63e7dd:	0f 83 59 03 00 00    	jae    0x63eb3c
  63e7e3:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  63e7e7:	8b d0                	mov    edx,eax
  63e7e9:	c1 e2 04             	shl    edx,0x4
  63e7ec:	03 d0                	add    edx,eax
  63e7ee:	66 81 f9 fe ff       	cmp    cx,0xfffe
  63e7f3:	8d 14 96             	lea    edx,[esi+edx*4]
  63e7f6:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  63e7fa:	0f 85 ed 00 00 00    	jne    0x63e8ed
  63e800:	66 39 4d 04          	cmp    WORD PTR [ebp+0x4],cx
  63e804:	75 1f                	jne    0x63e825
  63e806:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  63e80a:	8b 51 40             	mov    edx,DWORD PTR [ecx+0x40]
  63e80d:	6a 00                	push   0x0
  63e80f:	8d 45 08             	lea    eax,[ebp+0x8]
  63e812:	50                   	push   eax
  63e813:	53                   	push   ebx
  63e814:	57                   	push   edi
  63e815:	52                   	push   edx
  63e816:	8b cd                	mov    ecx,ebp
  63e818:	e8 a3 5f ff ff       	call   0x6347c0
  63e81d:	66 89 45 04          	mov    WORD PTR [ebp+0x4],ax
  63e821:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  63e825:	0f b7 4d 04          	movzx  ecx,WORD PTR [ebp+0x4]
  63e829:	66 81 f9 ff ff       	cmp    cx,0xffff
  63e82e:	0f 84 08 03 00 00    	je     0x63eb3c
  63e834:	c1 e0 10             	shl    eax,0x10
  63e837:	0f b7 c9             	movzx  ecx,cx
  63e83a:	03 c8                	add    ecx,eax
  63e83c:	80 7c 24 38 00       	cmp    BYTE PTR [esp+0x38],0x0
  63e841:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  63e845:	89 4c 24 30          	mov    DWORD PTR [esp+0x30],ecx
  63e849:	74 11                	je     0x63e85c
  63e84b:	8d 54 24 30          	lea    edx,[esp+0x30]
  63e84f:	52                   	push   edx
  63e850:	57                   	push   edi
  63e851:	8b cd                	mov    ecx,ebp
  63e853:	e8 18 84 fe ff       	call   0x626c70
  63e858:	84 c0                	test   al,al
  63e85a:	75 0e                	jne    0x63e86a
  63e85c:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  63e860:	8d 44 24 30          	lea    eax,[esp+0x30]
  63e864:	50                   	push   eax
  63e865:	e8 66 d8 fe ff       	call   0x62c0d0
  63e86a:	0f b7 75 04          	movzx  esi,WORD PTR [ebp+0x4]
  63e86e:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  63e872:	c1 e6 04             	shl    esi,0x4
  63e875:	03 71 34             	add    esi,DWORD PTR [ecx+0x34]
  63e878:	bd 00 00 00 00       	mov    ebp,0x0
  63e87d:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
  63e880:	2b 1e                	sub    ebx,DWORD PTR [esi]
  63e882:	c1 fb 03             	sar    ebx,0x3
  63e885:	0f 84 b1 02 00 00    	je     0x63eb3c
  63e88b:	eb 03                	jmp    0x63e890
  63e88d:	8d 49 00             	lea    ecx,[ecx+0x0]
  63e890:	8b 16                	mov    edx,DWORD PTR [esi]
  63e892:	0f b7 3c ea          	movzx  edi,WORD PTR [edx+ebp*8]
  63e896:	03 7c 24 28          	add    edi,DWORD PTR [esp+0x28]
  63e89a:	80 7c 24 38 00       	cmp    BYTE PTR [esp+0x38],0x0
  63e89f:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  63e8a3:	74 17                	je     0x63e8bc
  63e8a5:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  63e8a9:	8d 44 24 30          	lea    eax,[esp+0x30]
  63e8ad:	50                   	push   eax
  63e8ae:	51                   	push   ecx
  63e8af:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  63e8b3:	e8 b8 83 fe ff       	call   0x626c70
  63e8b8:	84 c0                	test   al,al
  63e8ba:	75 25                	jne    0x63e8e1
  63e8bc:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  63e8c0:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  63e8c3:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  63e8c6:	73 0e                	jae    0x63e8d6
  63e8c8:	85 c0                	test   eax,eax
  63e8ca:	8d 50 04             	lea    edx,[eax+0x4]
  63e8cd:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  63e8d0:	74 0f                	je     0x63e8e1
  63e8d2:	89 38                	mov    DWORD PTR [eax],edi
  63e8d4:	eb 0b                	jmp    0x63e8e1
  63e8d6:	8d 54 24 30          	lea    edx,[esp+0x30]
  63e8da:	52                   	push   edx
  63e8db:	50                   	push   eax
  63e8dc:	e8 3f 3b 34 00       	call   0x982420
  63e8e1:	83 c5 01             	add    ebp,0x1
  63e8e4:	3b eb                	cmp    ebp,ebx
  63e8e6:	72 a8                	jb     0x63e890
  63e8e8:	e9 4f 02 00 00       	jmp    0x63eb3c
  63e8ed:	8b 42 38             	mov    eax,DWORD PTR [edx+0x38]
  63e8f0:	2b 42 34             	sub    eax,DWORD PTR [edx+0x34]
  63e8f3:	0f b7 f1             	movzx  esi,cx
  63e8f6:	c1 f8 04             	sar    eax,0x4
  63e8f9:	3b f0                	cmp    esi,eax
  63e8fb:	0f 83 3b 02 00 00    	jae    0x63eb3c
  63e901:	66 3b 5d 20          	cmp    bx,WORD PTR [ebp+0x20]
  63e905:	0f 85 97 00 00 00    	jne    0x63e9a2
  63e90b:	66 81 7d 06 fe ff    	cmp    WORD PTR [ebp+0x6],0xfffe
  63e911:	75 23                	jne    0x63e936
  63e913:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  63e917:	8b 42 40             	mov    eax,DWORD PTR [edx+0x40]
  63e91a:	6a 00                	push   0x0
  63e91c:	8d 4d 14             	lea    ecx,[ebp+0x14]
  63e91f:	51                   	push   ecx
  63e920:	53                   	push   ebx
  63e921:	57                   	push   edi
  63e922:	50                   	push   eax
  63e923:	8b cd                	mov    ecx,ebp
  63e925:	e8 96 5e ff ff       	call   0x6347c0
  63e92a:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  63e92e:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  63e932:	66 89 45 06          	mov    WORD PTR [ebp+0x6],ax
  63e936:	0f b7 45 06          	movzx  eax,WORD PTR [ebp+0x6]
  63e93a:	66 3d ff ff          	cmp    ax,0xffff
  63e93e:	74 62                	je     0x63e9a2
  63e940:	66 3b c8             	cmp    cx,ax
  63e943:	75 18                	jne    0x63e95d
  63e945:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  63e949:	c1 e1 10             	shl    ecx,0x10
  63e94c:	81 c1 ff ff 00 00    	add    ecx,0xffff
  63e952:	8d 54 24 28          	lea    edx,[esp+0x28]
  63e956:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  63e95a:	52                   	push   edx
  63e95b:	eb 38                	jmp    0x63e995
  63e95d:	8b 4a 34             	mov    ecx,DWORD PTR [edx+0x34]
  63e960:	8b c6                	mov    eax,esi
  63e962:	c1 e0 04             	shl    eax,0x4
  63e965:	03 c1                	add    eax,ecx
  63e967:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  63e96a:	2b 08                	sub    ecx,DWORD PTR [eax]
  63e96c:	83 e1 f8             	and    ecx,0xfffffff8
  63e96f:	83 f9 08             	cmp    ecx,0x8
  63e972:	75 2e                	jne    0x63e9a2
  63e974:	8b 08                	mov    ecx,DWORD PTR [eax]
  63e976:	0f b7 45 06          	movzx  eax,WORD PTR [ebp+0x6]
  63e97a:	66 39 01             	cmp    WORD PTR [ecx],ax
  63e97d:	75 23                	jne    0x63e9a2
  63e97f:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  63e983:	c1 e2 10             	shl    edx,0x10
  63e986:	81 c2 ff ff 00 00    	add    edx,0xffff
  63e98c:	8d 44 24 28          	lea    eax,[esp+0x28]
  63e990:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  63e994:	50                   	push   eax
  63e995:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  63e999:	e8 32 d7 fe ff       	call   0x62c0d0
  63e99e:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  63e9a2:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  63e9a5:	8b 04 b1             	mov    eax,DWORD PTR [ecx+esi*4]
  63e9a8:	8b 4a 34             	mov    ecx,DWORD PTR [edx+0x34]
  63e9ab:	c1 e6 04             	shl    esi,0x4
  63e9ae:	03 ce                	add    ecx,esi
  63e9b0:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  63e9b4:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  63e9b7:	2b 01                	sub    eax,DWORD PTR [ecx]
  63e9b9:	c1 f8 03             	sar    eax,0x3
  63e9bc:	0f 84 e1 00 00 00    	je     0x63eaa3
  63e9c2:	83 f8 01             	cmp    eax,0x1
  63e9c5:	0f b7 74 24 30       	movzx  esi,WORD PTR [esp+0x30]
  63e9ca:	75 3f                	jne    0x63ea0b
  63e9cc:	8b 11                	mov    edx,DWORD PTR [ecx]
  63e9ce:	0f b7 32             	movzx  esi,WORD PTR [edx]
  63e9d1:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  63e9d5:	0f b7 ce             	movzx  ecx,si
  63e9d8:	c1 e0 10             	shl    eax,0x10
  63e9db:	03 c1                	add    eax,ecx
  63e9dd:	80 7c 24 38 00       	cmp    BYTE PTR [esp+0x38],0x0
  63e9e2:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  63e9e6:	74 11                	je     0x63e9f9
  63e9e8:	8d 54 24 28          	lea    edx,[esp+0x28]
  63e9ec:	52                   	push   edx
  63e9ed:	57                   	push   edi
  63e9ee:	8b cd                	mov    ecx,ebp
  63e9f0:	e8 7b 82 fe ff       	call   0x626c70
  63e9f5:	84 c0                	test   al,al
  63e9f7:	75 0e                	jne    0x63ea07
  63e9f9:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  63e9fd:	8d 44 24 28          	lea    eax,[esp+0x28]
  63ea01:	50                   	push   eax
  63ea02:	e8 c9 d6 fe ff       	call   0x62c0d0
  63ea07:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  63ea0b:	0f b7 fe             	movzx  edi,si
  63ea0e:	c1 e7 04             	shl    edi,0x4
  63ea11:	03 7a 34             	add    edi,DWORD PTR [edx+0x34]
  63ea14:	b8 00 00 00 00       	mov    eax,0x0
  63ea19:	8b 6f 04             	mov    ebp,DWORD PTR [edi+0x4]
  63ea1c:	2b 2f                	sub    ebp,DWORD PTR [edi]
  63ea1e:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  63ea22:	c1 fd 03             	sar    ebp,0x3
  63ea25:	74 78                	je     0x63ea9f
  63ea27:	eb 07                	jmp    0x63ea30
  63ea29:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  63ea30:	8b 0f                	mov    ecx,DWORD PTR [edi]
  63ea32:	0f b7 04 c1          	movzx  eax,WORD PTR [ecx+eax*8]
  63ea36:	66 3b 44 24 30       	cmp    ax,WORD PTR [esp+0x30]
  63ea3b:	74 53                	je     0x63ea90
  63ea3d:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  63ea41:	0f b7 d0             	movzx  edx,ax
  63ea44:	c1 e6 10             	shl    esi,0x10
  63ea47:	03 f2                	add    esi,edx
  63ea49:	80 7c 24 38 00       	cmp    BYTE PTR [esp+0x38],0x0
  63ea4e:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
  63ea52:	74 17                	je     0x63ea6b
  63ea54:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  63ea58:	8d 44 24 28          	lea    eax,[esp+0x28]
  63ea5c:	50                   	push   eax
  63ea5d:	51                   	push   ecx
  63ea5e:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  63ea62:	e8 09 82 fe ff       	call   0x626c70
  63ea67:	84 c0                	test   al,al
  63ea69:	75 25                	jne    0x63ea90
  63ea6b:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  63ea6f:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  63ea72:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  63ea75:	73 0e                	jae    0x63ea85
  63ea77:	85 c0                	test   eax,eax
  63ea79:	8d 50 04             	lea    edx,[eax+0x4]
  63ea7c:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  63ea7f:	74 0f                	je     0x63ea90
  63ea81:	89 30                	mov    DWORD PTR [eax],esi
  63ea83:	eb 0b                	jmp    0x63ea90
  63ea85:	8d 54 24 28          	lea    edx,[esp+0x28]
  63ea89:	52                   	push   edx
  63ea8a:	50                   	push   eax
  63ea8b:	e8 90 39 34 00       	call   0x982420
  63ea90:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  63ea94:	83 c0 01             	add    eax,0x1
  63ea97:	3b c5                	cmp    eax,ebp
  63ea99:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  63ea9d:	72 91                	jb     0x63ea30
  63ea9f:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
  63eaa3:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  63eaa7:	0f b7 41 48          	movzx  eax,WORD PTR [ecx+0x48]
  63eaab:	66 3b c3             	cmp    ax,bx
  63eaae:	75 06                	jne    0x63eab6
  63eab0:	0f b7 41 4a          	movzx  eax,WORD PTR [ecx+0x4a]
  63eab4:	eb 03                	jmp    0x63eab9
  63eab6:	0f b7 c0             	movzx  eax,ax
  63eab9:	66 3d ff ff          	cmp    ax,0xffff
  63eabd:	74 7d                	je     0x63eb3c
  63eabf:	8b 97 90 00 00 00    	mov    edx,DWORD PTR [edi+0x90]
  63eac5:	0f b7 e8             	movzx  ebp,ax
  63eac8:	8b c5                	mov    eax,ebp
  63eaca:	c1 e0 04             	shl    eax,0x4
  63eacd:	03 c5                	add    eax,ebp
  63eacf:	8b 7c 82 08          	mov    edi,DWORD PTR [edx+eax*4+0x8]
  63ead3:	2b 7c 82 04          	sub    edi,DWORD PTR [edx+eax*4+0x4]
  63ead7:	8d 04 82             	lea    eax,[edx+eax*4]
  63eada:	c1 ff 02             	sar    edi,0x2
  63eadd:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  63eae1:	be 00 00 00 00       	mov    esi,0x0
  63eae6:	74 54                	je     0x63eb3c
  63eae8:	eb 0e                	jmp    0x63eaf8
  63eaea:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  63eaf0:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  63eaf4:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  63eaf8:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  63eafb:	39 0c b0             	cmp    DWORD PTR [eax+esi*4],ecx
  63eafe:	75 35                	jne    0x63eb35
  63eb00:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  63eb04:	0f b7 ce             	movzx  ecx,si
  63eb07:	8b c5                	mov    eax,ebp
  63eb09:	c1 e0 10             	shl    eax,0x10
  63eb0c:	03 c1                	add    eax,ecx
  63eb0e:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  63eb11:	3b 4a 08             	cmp    ecx,DWORD PTR [edx+0x8]
  63eb14:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  63eb18:	73 0e                	jae    0x63eb28
  63eb1a:	85 c9                	test   ecx,ecx
  63eb1c:	8d 59 04             	lea    ebx,[ecx+0x4]
  63eb1f:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
  63eb22:	74 11                	je     0x63eb35
  63eb24:	89 01                	mov    DWORD PTR [ecx],eax
  63eb26:	eb 0d                	jmp    0x63eb35
  63eb28:	8d 44 24 30          	lea    eax,[esp+0x30]
  63eb2c:	50                   	push   eax
  63eb2d:	51                   	push   ecx
  63eb2e:	8b ca                	mov    ecx,edx
  63eb30:	e8 eb 38 34 00       	call   0x982420
  63eb35:	83 c6 01             	add    esi,0x1
  63eb38:	3b f7                	cmp    esi,edi
  63eb3a:	72 b4                	jb     0x63eaf0
  63eb3c:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  63eb40:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  63eb43:	2b 01                	sub    eax,DWORD PTR [ecx]
  63eb45:	5f                   	pop    edi
  63eb46:	5e                   	pop    esi
  63eb47:	c1 f8 02             	sar    eax,0x2
  63eb4a:	2b 44 24 18          	sub    eax,DWORD PTR [esp+0x18]
  63eb4e:	5d                   	pop    ebp
  63eb4f:	5b                   	pop    ebx
  63eb50:	83 c4 14             	add    esp,0x14
  63eb53:	c2 14 00             	ret    0x14
