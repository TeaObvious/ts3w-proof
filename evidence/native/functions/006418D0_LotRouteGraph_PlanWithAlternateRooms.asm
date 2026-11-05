# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x006418d0,0x00641b0b); analyst name LotRouteGraph_PlanWithAlternateRooms.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006418d0 <.text+0x2408d0>:
  6418d0:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  6418d4:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  6418d8:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  6418dc:	83 ec 38             	sub    esp,0x38
  6418df:	53                   	push   ebx
  6418e0:	55                   	push   ebp
  6418e1:	56                   	push   esi
  6418e2:	8b 5c 24 58          	mov    ebx,DWORD PTR [esp+0x58]
  6418e6:	57                   	push   edi
  6418e7:	8b 7c 24 70          	mov    edi,DWORD PTR [esp+0x70]
  6418eb:	50                   	push   eax
  6418ec:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  6418f0:	8b 74 24 58          	mov    esi,DWORD PTR [esp+0x58]
  6418f4:	8b e9                	mov    ebp,ecx
  6418f6:	8b 4c 24 7c          	mov    ecx,DWORD PTR [esp+0x7c]
  6418fa:	51                   	push   ecx
  6418fb:	8b 4c 24 70          	mov    ecx,DWORD PTR [esp+0x70]
  6418ff:	52                   	push   edx
  641900:	8b 54 24 70          	mov    edx,DWORD PTR [esp+0x70]
  641904:	57                   	push   edi
  641905:	50                   	push   eax
  641906:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  64190a:	51                   	push   ecx
  64190b:	52                   	push   edx
  64190c:	8b 54 24 68          	mov    edx,DWORD PTR [esp+0x68]
  641910:	50                   	push   eax
  641911:	53                   	push   ebx
  641912:	51                   	push   ecx
  641913:	8b 4c 24 78          	mov    ecx,DWORD PTR [esp+0x78]
  641917:	d9 1c 24             	fstp   DWORD PTR [esp]
  64191a:	56                   	push   esi
  64191b:	51                   	push   ecx
  64191c:	52                   	push   edx
  64191d:	8b cd                	mov    ecx,ebp
  64191f:	e8 dc e5 ff ff       	call   0x63ff00
  641924:	83 f8 05             	cmp    eax,0x5
  641927:	0f 85 ba 01 00 00    	jne    0x641ae7
  64192d:	33 c9                	xor    ecx,ecx
  64192f:	3b f9                	cmp    edi,ecx
  641931:	0f 84 b0 01 00 00    	je     0x641ae7
  641937:	33 c0                	xor    eax,eax
  641939:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  64193d:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  641941:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  641945:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  641949:	8d 44 24 30          	lea    eax,[esp+0x30]
  64194d:	8b d0                	mov    edx,eax
  64194f:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  641953:	8d 44 24 20          	lea    eax,[esp+0x20]
  641957:	50                   	push   eax
  641958:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
  64195c:	88 4c 24 40          	mov    BYTE PTR [esp+0x40],cl
  641960:	89 4c 24 44          	mov    DWORD PTR [esp+0x44],ecx
  641964:	8b 4f 4c             	mov    ecx,DWORD PTR [edi+0x4c]
  641967:	56                   	push   esi
  641968:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
  64196c:	8b 57 48             	mov    edx,DWORD PTR [edi+0x48]
  64196f:	51                   	push   ecx
  641970:	52                   	push   edx
  641971:	8b cd                	mov    ecx,ebp
  641973:	c7 44 24 54 60 dd fe 00 	mov    DWORD PTR [esp+0x54],0xfedd60
  64197b:	e8 e0 db fe ff       	call   0x62f560
  641980:	8d 44 24 20          	lea    eax,[esp+0x20]
  641984:	50                   	push   eax
  641985:	57                   	push   edi
  641986:	8b cd                	mov    ecx,ebp
  641988:	e8 f3 35 fe ff       	call   0x624f80
  64198d:	0f b7 c8             	movzx  ecx,ax
  641990:	c6 44 24 5c 00       	mov    BYTE PTR [esp+0x5c],0x0
  641995:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  641999:	52                   	push   edx
  64199a:	89 4c 24 74          	mov    DWORD PTR [esp+0x74],ecx
  64199e:	8d 44 24 74          	lea    eax,[esp+0x74]
  6419a2:	50                   	push   eax
  6419a3:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  6419a7:	51                   	push   ecx
  6419a8:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  6419ac:	e8 7f 73 fe ff       	call   0x628d30
  6419b1:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  6419b4:	8b 33                	mov    esi,DWORD PTR [ebx]
  6419b6:	3b f0                	cmp    esi,eax
  6419b8:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  6419bc:	0f 84 12 01 00 00    	je     0x641ad4
  6419c2:	8b 47 4c             	mov    eax,DWORD PTR [edi+0x4c]
  6419c5:	8b 4f 48             	mov    ecx,DWORD PTR [edi+0x48]
  6419c8:	8d 54 24 20          	lea    edx,[esp+0x20]
  6419cc:	52                   	push   edx
  6419cd:	56                   	push   esi
  6419ce:	50                   	push   eax
  6419cf:	51                   	push   ecx
  6419d0:	8b cd                	mov    ecx,ebp
  6419d2:	e8 89 db fe ff       	call   0x62f560
  6419d7:	8d 54 24 20          	lea    edx,[esp+0x20]
  6419db:	52                   	push   edx
  6419dc:	57                   	push   edi
  6419dd:	8b cd                	mov    ecx,ebp
  6419df:	e8 9c 35 fe ff       	call   0x624f80
  6419e4:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  6419e8:	0f b7 c0             	movzx  eax,ax
  6419eb:	51                   	push   ecx
  6419ec:	8d 54 24 14          	lea    edx,[esp+0x14]
  6419f0:	52                   	push   edx
  6419f1:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  6419f5:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
  6419f9:	e8 b2 46 fe ff       	call   0x6260b0
  6419fe:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  641a02:	39 08                	cmp    DWORD PTR [eax],ecx
  641a04:	74 62                	je     0x641a68
  641a06:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  641a0a:	66 3d 10 00          	cmp    ax,0x10
  641a0e:	76 0f                	jbe    0x641a1f
  641a10:	0f b7 c0             	movzx  eax,ax
  641a13:	83 c0 f0             	add    eax,0xfffffff0
  641a16:	66 85 c0             	test   ax,ax
  641a19:	0f 85 a8 00 00 00    	jne    0x641ac7
  641a1f:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  641a22:	2b 0b                	sub    ecx,DWORD PTR [ebx]
  641a24:	b8 93 24 49 92       	mov    eax,0x92492493
  641a29:	f7 e9                	imul   ecx
  641a2b:	03 d1                	add    edx,ecx
  641a2d:	c1 fa 04             	sar    edx,0x4
  641a30:	8b c2                	mov    eax,edx
  641a32:	c1 e8 1f             	shr    eax,0x1f
  641a35:	03 c2                	add    eax,edx
  641a37:	83 f8 02             	cmp    eax,0x2
  641a3a:	0f 85 87 00 00 00    	jne    0x641ac7
  641a40:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  641a44:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  641a48:	0f 2e 01             	ucomiss xmm0,DWORD PTR [ecx]
  641a4b:	9f                   	lahf
  641a4c:	f6 c4 44             	test   ah,0x44
  641a4f:	7a 17                	jp     0x641a68
  641a51:	f3 0f 10 46 04       	movss  xmm0,DWORD PTR [esi+0x4]
  641a56:	0f 2e 41 04          	ucomiss xmm0,DWORD PTR [ecx+0x4]
  641a5a:	9f                   	lahf
  641a5b:	f6 c4 44             	test   ah,0x44
  641a5e:	7a 08                	jp     0x641a68
  641a60:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  641a63:	3b 51 08             	cmp    edx,DWORD PTR [ecx+0x8]
  641a66:	74 5f                	je     0x641ac7
  641a68:	c6 44 24 5c 00       	mov    BYTE PTR [esp+0x5c],0x0
  641a6d:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  641a71:	50                   	push   eax
  641a72:	8d 4c 24 74          	lea    ecx,[esp+0x74]
  641a76:	51                   	push   ecx
  641a77:	8d 54 24 20          	lea    edx,[esp+0x20]
  641a7b:	52                   	push   edx
  641a7c:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  641a80:	e8 ab 72 fe ff       	call   0x628d30
  641a85:	d9 46 18             	fld    DWORD PTR [esi+0x18]
  641a88:	8b 44 24 7c          	mov    eax,DWORD PTR [esp+0x7c]
  641a8c:	8b 4c 24 78          	mov    ecx,DWORD PTR [esp+0x78]
  641a90:	8b 54 24 74          	mov    edx,DWORD PTR [esp+0x74]
  641a94:	50                   	push   eax
  641a95:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  641a99:	51                   	push   ecx
  641a9a:	8b 4c 24 70          	mov    ecx,DWORD PTR [esp+0x70]
  641a9e:	52                   	push   edx
  641a9f:	8b 54 24 70          	mov    edx,DWORD PTR [esp+0x70]
  641aa3:	57                   	push   edi
  641aa4:	50                   	push   eax
  641aa5:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  641aa9:	51                   	push   ecx
  641aaa:	52                   	push   edx
  641aab:	8b 54 24 68          	mov    edx,DWORD PTR [esp+0x68]
  641aaf:	50                   	push   eax
  641ab0:	53                   	push   ebx
  641ab1:	51                   	push   ecx
  641ab2:	8b 4c 24 78          	mov    ecx,DWORD PTR [esp+0x78]
  641ab6:	d9 1c 24             	fstp   DWORD PTR [esp]
  641ab9:	56                   	push   esi
  641aba:	51                   	push   ecx
  641abb:	52                   	push   edx
  641abc:	8b cd                	mov    ecx,ebp
  641abe:	e8 3d e4 ff ff       	call   0x63ff00
  641ac3:	85 c0                	test   eax,eax
  641ac5:	74 2a                	je     0x641af1
  641ac7:	83 c6 1c             	add    esi,0x1c
  641aca:	3b 74 24 58          	cmp    esi,DWORD PTR [esp+0x58]
  641ace:	0f 85 ee fe ff ff    	jne    0x6419c2
  641ad4:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  641ad8:	51                   	push   ecx
  641ad9:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  641add:	e8 ce fe 26 00       	call   0x8b19b0
  641ae2:	b8 05 00 00 00       	mov    eax,0x5
  641ae7:	5f                   	pop    edi
  641ae8:	5e                   	pop    esi
  641ae9:	5d                   	pop    ebp
  641aea:	5b                   	pop    ebx
  641aeb:	83 c4 38             	add    esp,0x38
  641aee:	c2 34 00             	ret    0x34
  641af1:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  641af5:	50                   	push   eax
  641af6:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  641afa:	e8 b1 fe 26 00       	call   0x8b19b0
  641aff:	5f                   	pop    edi
  641b00:	5e                   	pop    esi
  641b01:	5d                   	pop    ebp
  641b02:	33 c0                	xor    eax,eax
  641b04:	5b                   	pop    ebx
  641b05:	83 c4 38             	add    esp,0x38
  641b08:	c2 34 00             	ret    0x34
