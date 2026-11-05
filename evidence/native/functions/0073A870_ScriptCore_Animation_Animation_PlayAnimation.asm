# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0073a870, 0x0073aa35); analyst name Animation_PlayAnimation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0073a870 <.text+0x339870>:
  73a870:	83 ec 14             	sub    esp,0x14
  73a873:	56                   	push   esi
  73a874:	e8 f7 cc 1f 00       	call   0x937570
  73a879:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  73a87d:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  73a881:	51                   	push   ecx
  73a882:	52                   	push   edx
  73a883:	8b c8                	mov    ecx,eax
  73a885:	e8 f6 d6 1f 00       	call   0x937f80
  73a88a:	8b f0                	mov    esi,eax
  73a88c:	85 f6                	test   esi,esi
  73a88e:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  73a892:	0f 84 98 01 00 00    	je     0x73aa30
  73a898:	53                   	push   ebx
  73a899:	bb 01 00 00 00       	mov    ebx,0x1
  73a89e:	55                   	push   ebp
  73a89f:	8d 46 04             	lea    eax,[esi+0x4]
  73a8a2:	8b cb                	mov    ecx,ebx
  73a8a4:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  73a8a8:	8b 15 84 d4 1d 01    	mov    edx,DWORD PTR ds:0x11dd484
  73a8ae:	52                   	push   edx
  73a8af:	8b ce                	mov    ecx,esi
  73a8b1:	e8 aa 99 1f 00       	call   0x934260
  73a8b6:	8b e8                	mov    ebp,eax
  73a8b8:	85 ed                	test   ebp,ebp
  73a8ba:	0f 84 4e 01 00 00    	je     0x73aa0e
  73a8c0:	57                   	push   edi
  73a8c1:	6a 00                	push   0x0
  73a8c3:	6a 00                	push   0x0
  73a8c5:	6a 00                	push   0x0
  73a8c7:	6a 00                	push   0x0
  73a8c9:	68 e0 fd ff 00       	push   0xfffde0
  73a8ce:	68 00 06 00 00       	push   0x600
  73a8d3:	e8 28 9c da ff       	call   0x4e4500
  73a8d8:	83 c4 18             	add    esp,0x18
  73a8db:	85 c0                	test   eax,eax
  73a8dd:	0f 84 94 00 00 00    	je     0x73a977
  73a8e3:	d9 ee                	fldz
  73a8e5:	51                   	push   ecx
  73a8e6:	8d 4d 08             	lea    ecx,[ebp+0x8]
  73a8e9:	d9 1c 24             	fstp   DWORD PTR [esp]
  73a8ec:	51                   	push   ecx
  73a8ed:	8b c8                	mov    ecx,eax
  73a8ef:	e8 6c e3 e2 ff       	call   0x568c60
  73a8f4:	8b f8                	mov    edi,eax
  73a8f6:	85 ff                	test   edi,edi
  73a8f8:	74 03                	je     0x73a8fd
  73a8fa:	01 5f 04             	add    DWORD PTR [edi+0x4],ebx
  73a8fd:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  73a901:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  73a905:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  73a909:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  73a90d:	8d 54 24 14          	lea    edx,[esp+0x14]
  73a911:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  73a915:	52                   	push   edx
  73a916:	8b cf                	mov    ecx,edi
  73a918:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  73a91c:	c7 44 24 20 f3 c4 20 6b 	mov    DWORD PTR [esp+0x20],0x6b20c4f3
  73a924:	e8 47 f8 e2 ff       	call   0x56a170
  73a929:	6a 00                	push   0x0
  73a92b:	6a 00                	push   0x0
  73a92d:	6a 00                	push   0x0
  73a92f:	6a 00                	push   0x0
  73a931:	68 c0 fd ff 00       	push   0xfffdc0
  73a936:	6a 38                	push   0x38
  73a938:	e8 c3 9b da ff       	call   0x4e4500
  73a93d:	83 c4 18             	add    esp,0x18
  73a940:	85 c0                	test   eax,eax
  73a942:	74 37                	je     0x73a97b
  73a944:	d9 44 24 44          	fld    DWORD PTR [esp+0x44]
  73a948:	51                   	push   ecx
  73a949:	d9 1c 24             	fstp   DWORD PTR [esp]
  73a94c:	57                   	push   edi
  73a94d:	8d 4d 08             	lea    ecx,[ebp+0x8]
  73a950:	51                   	push   ecx
  73a951:	8b c8                	mov    ecx,eax
  73a953:	e8 78 51 e3 ff       	call   0x56fad0
  73a958:	8b f0                	mov    esi,eax
  73a95a:	85 f6                	test   esi,esi
  73a95c:	74 03                	je     0x73a961
  73a95e:	01 5e 04             	add    DWORD PTR [esi+0x4],ebx
  73a961:	8a 5c 24 48          	mov    bl,BYTE PTR [esp+0x48]
  73a965:	84 db                	test   bl,bl
  73a967:	74 2b                	je     0x73a994
  73a969:	a1 34 4e 1d 01       	mov    eax,ds:0x11d4e34
  73a96e:	85 c0                	test   eax,eax
  73a970:	74 0d                	je     0x73a97f
  73a972:	83 c0 04             	add    eax,0x4
  73a975:	eb 0a                	jmp    0x73a981
  73a977:	33 ff                	xor    edi,edi
  73a979:	eb 82                	jmp    0x73a8fd
  73a97b:	33 f6                	xor    esi,esi
  73a97d:	eb e2                	jmp    0x73a961
  73a97f:	33 c0                	xor    eax,eax
  73a981:	85 f6                	test   esi,esi
  73a983:	74 05                	je     0x73a98a
  73a985:	8d 4e 0c             	lea    ecx,[esi+0xc]
  73a988:	eb 02                	jmp    0x73a98c
  73a98a:	33 c9                	xor    ecx,ecx
  73a98c:	6a ff                	push   0xffffffff
  73a98e:	50                   	push   eax
  73a98f:	e8 ec c4 e3 ff       	call   0x576e80
  73a994:	d9 05 18 b2 fa 00    	fld    DWORD PTR ds:0xfab218
  73a99a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  73a99d:	6a 01                	push   0x1
  73a99f:	84 db                	test   bl,bl
  73a9a1:	0f 94 c0             	sete   al
  73a9a4:	8b 52 14             	mov    edx,DWORD PTR [edx+0x14]
  73a9a7:	6a 00                	push   0x0
  73a9a9:	6a 00                	push   0x0
  73a9ab:	8d 4d 08             	lea    ecx,[ebp+0x8]
  73a9ae:	50                   	push   eax
  73a9af:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  73a9b3:	83 ec 08             	sub    esp,0x8
  73a9b6:	f6 db                	neg    bl
  73a9b8:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  73a9bc:	d9 1c 24             	fstp   DWORD PTR [esp]
  73a9bf:	1b db                	sbb    ebx,ebx
  73a9c1:	83 c3 02             	add    ebx,0x2
  73a9c4:	53                   	push   ebx
  73a9c5:	56                   	push   esi
  73a9c6:	50                   	push   eax
  73a9c7:	ff d2                	call   edx
  73a9c9:	85 f6                	test   esi,esi
  73a9cb:	74 1c                	je     0x73a9e9
  73a9cd:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  73a9d0:	83 c0 ff             	add    eax,0xffffffff
  73a9d3:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  73a9d6:	75 11                	jne    0x73a9e9
  73a9d8:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  73a9df:	8b 06                	mov    eax,DWORD PTR [esi]
  73a9e1:	8b 10                	mov    edx,DWORD PTR [eax]
  73a9e3:	6a 01                	push   0x1
  73a9e5:	8b ce                	mov    ecx,esi
  73a9e7:	ff d2                	call   edx
  73a9e9:	85 ff                	test   edi,edi
  73a9eb:	74 1c                	je     0x73aa09
  73a9ed:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  73a9f0:	83 c0 ff             	add    eax,0xffffffff
  73a9f3:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  73a9f6:	75 11                	jne    0x73aa09
  73a9f8:	c7 47 04 01 00 00 00 	mov    DWORD PTR [edi+0x4],0x1
  73a9ff:	8b 07                	mov    eax,DWORD PTR [edi]
  73aa01:	8b 10                	mov    edx,DWORD PTR [eax]
  73aa03:	6a 01                	push   0x1
  73aa05:	8b cf                	mov    ecx,edi
  73aa07:	ff d2                	call   edx
  73aa09:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  73aa0d:	5f                   	pop    edi
  73aa0e:	8d 46 04             	lea    eax,[esi+0x4]
  73aa11:	5d                   	pop    ebp
  73aa12:	8b c8                	mov    ecx,eax
  73aa14:	83 ca ff             	or     edx,0xffffffff
  73aa17:	5b                   	pop    ebx
  73aa18:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  73aa1c:	4a                   	dec    edx
  73aa1d:	75 11                	jne    0x73aa30
  73aa1f:	b9 01 00 00 00       	mov    ecx,0x1
  73aa24:	87 08                	xchg   DWORD PTR [eax],ecx
  73aa26:	8b 16                	mov    edx,DWORD PTR [esi]
  73aa28:	8b 02                	mov    eax,DWORD PTR [edx]
  73aa2a:	6a 01                	push   0x1
  73aa2c:	8b ce                	mov    ecx,esi
  73aa2e:	ff d0                	call   eax
  73aa30:	5e                   	pop    esi
  73aa31:	83 c4 14             	add    esp,0x14
  73aa34:	c3                   	ret
