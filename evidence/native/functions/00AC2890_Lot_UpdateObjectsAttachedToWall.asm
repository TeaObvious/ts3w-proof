# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00ac2890 (Lot_UpdateObjectsAttachedToWall)
Full Ghidra function-body envelope: 0x00ac2890..0x00ac2d06 (exclusive end)
Ghidra body ranges: [[00ac2890, 00ac2a99] [00ac2aa0, 00ac2b8d] [00ac2b90, 00ac2d05]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ac2890 <.text+0x6c1890>:
  ac2890:	83 ec 40             	sub    esp,0x40
  ac2893:	53                   	push   ebx
  ac2894:	55                   	push   ebp
  ac2895:	8b d9                	mov    ebx,ecx
  ac2897:	33 ed                	xor    ebp,ebp
  ac2899:	39 ab 64 03 00 00    	cmp    DWORD PTR [ebx+0x364],ebp
  ac289f:	0f 84 59 04 00 00    	je     0xac2cfe
  ac28a5:	57                   	push   edi
  ac28a6:	8b 7c 24 50          	mov    edi,DWORD PTR [esp+0x50]
  ac28aa:	8d 44 24 10          	lea    eax,[esp+0x10]
  ac28ae:	50                   	push   eax
  ac28af:	57                   	push   edi
  ac28b0:	c6 44 24 18 ff       	mov    BYTE PTR [esp+0x18],0xff
  ac28b5:	c6 44 24 19 ff       	mov    BYTE PTR [esp+0x19],0xff
  ac28ba:	c6 44 24 1a 00       	mov    BYTE PTR [esp+0x1a],0x0
  ac28bf:	c6 44 24 1b ff       	mov    BYTE PTR [esp+0x1b],0xff
  ac28c4:	e8 57 36 18 00       	call   0xc45f20
  ac28c9:	83 c4 08             	add    esp,0x8
  ac28cc:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  ac28d0:	51                   	push   ecx
  ac28d1:	8b cb                	mov    ecx,ebx
  ac28d3:	e8 98 60 da ff       	call   0x868970
  ac28d8:	84 c0                	test   al,al
  ac28da:	0f 84 1d 04 00 00    	je     0xac2cfd
  ac28e0:	80 7c 24 54 00       	cmp    BYTE PTR [esp+0x54],0x0
  ac28e5:	74 0c                	je     0xac28f3
  ac28e7:	80 7c 24 58 00       	cmp    BYTE PTR [esp+0x58],0x0
  ac28ec:	c6 44 24 18 01       	mov    BYTE PTR [esp+0x18],0x1
  ac28f1:	75 05                	jne    0xac28f8
  ac28f3:	c6 44 24 18 00       	mov    BYTE PTR [esp+0x18],0x0
  ac28f8:	56                   	push   esi
  ac28f9:	8d 54 24 14          	lea    edx,[esp+0x14]
  ac28fd:	52                   	push   edx
  ac28fe:	8b cb                	mov    ecx,ebx
  ac2900:	e8 fb 1e ff ff       	call   0xab4800
  ac2905:	8b f0                	mov    esi,eax
  ac2907:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
  ac290b:	89 6c 24 3c          	mov    DWORD PTR [esp+0x3c],ebp
  ac290f:	89 6c 24 40          	mov    DWORD PTR [esp+0x40],ebp
  ac2913:	89 6c 24 44          	mov    DWORD PTR [esp+0x44],ebp
  ac2917:	c7 44 24 48 a4 63 06 	mov    DWORD PTR [esp+0x48],0x10663a4
  ac291e:	01 
  ac291f:	e8 4c 4c e7 ff       	call   0x937570
  ac2924:	3b f5                	cmp    esi,ebp
  ac2926:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  ac292a:	0f 8e 29 01 00 00    	jle    0xac2a59
  ac2930:	0f be 44 24 16       	movsx  eax,BYTE PTR [esp+0x16]
  ac2935:	2b 83 7c 01 00 00    	sub    eax,DWORD PTR [ebx+0x17c]
  ac293b:	8b 8b d0 02 00 00    	mov    ecx,DWORD PTR [ebx+0x2d0]
  ac2941:	0f af 41 20          	imul   eax,DWORD PTR [ecx+0x20]
  ac2945:	0f be 74 24 14       	movsx  esi,BYTE PTR [esp+0x14]
  ac294a:	0f be 54 24 15       	movsx  edx,BYTE PTR [esp+0x15]
  ac294f:	8b fe                	mov    edi,esi
  ac2951:	c1 ff 02             	sar    edi,0x2
  ac2954:	03 c7                	add    eax,edi
  ac2956:	0f af 41 24          	imul   eax,DWORD PTR [ecx+0x24]
  ac295a:	8b fa                	mov    edi,edx
  ac295c:	c1 ff 02             	sar    edi,0x2
  ac295f:	03 c7                	add    eax,edi
  ac2961:	8b 79 48             	mov    edi,DWORD PTR [ecx+0x48]
  ac2964:	0f b7 3c 47          	movzx  edi,WORD PTR [edi+eax*2]
  ac2968:	f7 c7 00 80 00 00    	test   edi,0x8000
  ac296e:	74 08                	je     0xac2978
  ac2970:	c1 e0 04             	shl    eax,0x4
  ac2973:	03 41 38             	add    eax,DWORD PTR [ecx+0x38]
  ac2976:	eb 15                	jmp    0xac298d
  ac2978:	0f b7 c7             	movzx  eax,di
  ac297b:	83 e6 03             	and    esi,0x3
  ac297e:	8d 04 86             	lea    eax,[esi+eax*4]
  ac2981:	83 e2 03             	and    edx,0x3
  ac2984:	8d 04 82             	lea    eax,[edx+eax*4]
  ac2987:	c1 e0 04             	shl    eax,0x4
  ac298a:	03 41 28             	add    eax,DWORD PTR [ecx+0x28]
  ac298d:	85 ed                	test   ebp,ebp
  ac298f:	7c 17                	jl     0xac29a8
  ac2991:	8b 08                	mov    ecx,DWORD PTR [eax]
  ac2993:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  ac2996:	2b d1                	sub    edx,ecx
  ac2998:	c1 fa 03             	sar    edx,0x3
  ac299b:	3b ea                	cmp    ebp,edx
  ac299d:	7d 09                	jge    0xac29a8
  ac299f:	8b 34 e9             	mov    esi,DWORD PTR [ecx+ebp*8]
  ac29a2:	8b 7c e9 04          	mov    edi,DWORD PTR [ecx+ebp*8+0x4]
  ac29a6:	eb 04                	jmp    0xac29ac
  ac29a8:	33 f6                	xor    esi,esi
  ac29aa:	33 ff                	xor    edi,edi
  ac29ac:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  ac29b0:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  ac29b4:	50                   	push   eax
  ac29b5:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  ac29b9:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  ac29bd:	51                   	push   ecx
  ac29be:	52                   	push   edx
  ac29bf:	50                   	push   eax
  ac29c0:	89 74 24 3c          	mov    DWORD PTR [esp+0x3c],esi
  ac29c4:	89 7c 24 40          	mov    DWORD PTR [esp+0x40],edi
  ac29c8:	e8 63 49 b6 ff       	call   0x627330
  ac29cd:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  ac29d1:	83 c4 10             	add    esp,0x10
  ac29d4:	3b c1                	cmp    eax,ecx
  ac29d6:	74 0b                	je     0xac29e3
  ac29d8:	3b 78 04             	cmp    edi,DWORD PTR [eax+0x4]
  ac29db:	77 33                	ja     0xac2a10
  ac29dd:	72 04                	jb     0xac29e3
  ac29df:	3b 30                	cmp    esi,DWORD PTR [eax]
  ac29e1:	73 2d                	jae    0xac2a10
  ac29e3:	3b 4c 24 44          	cmp    ecx,DWORD PTR [esp+0x44]
  ac29e7:	74 18                	je     0xac2a01
  ac29e9:	3b c1                	cmp    eax,ecx
  ac29eb:	75 14                	jne    0xac2a01
  ac29ed:	8b c1                	mov    eax,ecx
  ac29ef:	83 c1 08             	add    ecx,0x8
  ac29f2:	85 c0                	test   eax,eax
  ac29f4:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  ac29f8:	74 16                	je     0xac2a10
  ac29fa:	89 30                	mov    DWORD PTR [eax],esi
  ac29fc:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  ac29ff:	eb 0f                	jmp    0xac2a10
  ac2a01:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  ac2a05:	51                   	push   ecx
  ac2a06:	50                   	push   eax
  ac2a07:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  ac2a0b:	e8 50 f9 aa ff       	call   0x572360
  ac2a10:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  ac2a14:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  ac2a18:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  ac2a1c:	52                   	push   edx
  ac2a1d:	50                   	push   eax
  ac2a1e:	e8 5d 55 e7 ff       	call   0x937f80
  ac2a23:	85 c0                	test   eax,eax
  ac2a25:	74 21                	je     0xac2a48
  ac2a27:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  ac2a2b:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
  ac2a2f:	51                   	push   ecx
  ac2a30:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  ac2a34:	52                   	push   edx
  ac2a35:	51                   	push   ecx
  ac2a36:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  ac2a3a:	8d 54 24 20          	lea    edx,[esp+0x20]
  ac2a3e:	52                   	push   edx
  ac2a3f:	51                   	push   ecx
  ac2a40:	50                   	push   eax
  ac2a41:	8b cb                	mov    ecx,ebx
  ac2a43:	e8 08 d8 ff ff       	call   0xac0250
  ac2a48:	83 c5 01             	add    ebp,0x1
  ac2a4b:	3b 6c 24 28          	cmp    ebp,DWORD PTR [esp+0x28]
  ac2a4f:	0f 8c db fe ff ff    	jl     0xac2930
  ac2a55:	8b 7c 24 54          	mov    edi,DWORD PTR [esp+0x54]
  ac2a59:	8a 57 03             	mov    dl,BYTE PTR [edi+0x3]
  ac2a5c:	3a 17                	cmp    dl,BYTE PTR [edi]
  ac2a5e:	0f 84 87 02 00 00    	je     0xac2ceb
  ac2a64:	8a 47 04             	mov    al,BYTE PTR [edi+0x4]
  ac2a67:	3a 47 01             	cmp    al,BYTE PTR [edi+0x1]
  ac2a6a:	0f 84 7b 02 00 00    	je     0xac2ceb
  ac2a70:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  ac2a74:	51                   	push   ecx
  ac2a75:	57                   	push   edi
  ac2a76:	c6 44 24 20 ff       	mov    BYTE PTR [esp+0x20],0xff
  ac2a7b:	c6 44 24 21 ff       	mov    BYTE PTR [esp+0x21],0xff
  ac2a80:	c6 44 24 22 00       	mov    BYTE PTR [esp+0x22],0x0
  ac2a85:	c6 44 24 23 ff       	mov    BYTE PTR [esp+0x23],0xff
  ac2a8a:	e8 21 35 18 00       	call   0xc45fb0
  ac2a8f:	83 c4 08             	add    esp,0x8
  ac2a92:	33 f6                	xor    esi,esi
  ac2a94:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
  ac2a98:	eb 06                	jmp    0xac2aa0
  ac2a9a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  ac2aa0:	8d 54 24 10          	lea    edx,[esp+0x10]
  ac2aa4:	52                   	push   edx
  ac2aa5:	8d 44 24 18          	lea    eax,[esp+0x18]
  ac2aa9:	56                   	push   esi
  ac2aaa:	50                   	push   eax
  ac2aab:	c6 44 24 1c ff       	mov    BYTE PTR [esp+0x1c],0xff
  ac2ab0:	c6 44 24 1d ff       	mov    BYTE PTR [esp+0x1d],0xff
  ac2ab5:	c6 44 24 1e 00       	mov    BYTE PTR [esp+0x1e],0x0
  ac2aba:	c6 44 24 1f ff       	mov    BYTE PTR [esp+0x1f],0xff
  ac2abf:	e8 0c 4a 03 00       	call   0xaf74d0
  ac2ac4:	8a 44 24 1c          	mov    al,BYTE PTR [esp+0x1c]
  ac2ac8:	83 c4 0c             	add    esp,0xc
  ac2acb:	3a 44 24 18          	cmp    al,BYTE PTR [esp+0x18]
  ac2acf:	75 22                	jne    0xac2af3
  ac2ad1:	8a 4c 24 11          	mov    cl,BYTE PTR [esp+0x11]
  ac2ad5:	3a 4c 24 19          	cmp    cl,BYTE PTR [esp+0x19]
  ac2ad9:	75 18                	jne    0xac2af3
  ac2adb:	8a 54 24 12          	mov    dl,BYTE PTR [esp+0x12]
  ac2adf:	3a 54 24 1a          	cmp    dl,BYTE PTR [esp+0x1a]
  ac2ae3:	75 0e                	jne    0xac2af3
  ac2ae5:	8a 4c 24 13          	mov    cl,BYTE PTR [esp+0x13]
  ac2ae9:	3a 4c 24 1b          	cmp    cl,BYTE PTR [esp+0x1b]
  ac2aed:	0f 84 e8 01 00 00    	je     0xac2cdb
  ac2af3:	0f be 4c 24 11       	movsx  ecx,BYTE PTR [esp+0x11]
  ac2af8:	0f be c0             	movsx  eax,al
  ac2afb:	85 c0                	test   eax,eax
  ac2afd:	0f 8c d8 01 00 00    	jl     0xac2cdb
  ac2b03:	3b 83 74 01 00 00    	cmp    eax,DWORD PTR [ebx+0x174]
  ac2b09:	0f 8d cc 01 00 00    	jge    0xac2cdb
  ac2b0f:	85 c9                	test   ecx,ecx
  ac2b11:	0f 8c c4 01 00 00    	jl     0xac2cdb
  ac2b17:	3b 8b 78 01 00 00    	cmp    ecx,DWORD PTR [ebx+0x178]
  ac2b1d:	0f 8d b8 01 00 00    	jge    0xac2cdb
  ac2b23:	0f be 44 24 12       	movsx  eax,BYTE PTR [esp+0x12]
  ac2b28:	3b 83 7c 01 00 00    	cmp    eax,DWORD PTR [ebx+0x17c]
  ac2b2e:	0f 8c a7 01 00 00    	jl     0xac2cdb
  ac2b34:	3b 83 80 01 00 00    	cmp    eax,DWORD PTR [ebx+0x180]
  ac2b3a:	0f 8f 9b 01 00 00    	jg     0xac2cdb
  ac2b40:	8a 54 24 5c          	mov    dl,BYTE PTR [esp+0x5c]
  ac2b44:	38 54 24 58          	cmp    BYTE PTR [esp+0x58],dl
  ac2b48:	74 24                	je     0xac2b6e
  ac2b4a:	8d 44 24 10          	lea    eax,[esp+0x10]
  ac2b4e:	50                   	push   eax
  ac2b4f:	57                   	push   edi
  ac2b50:	e8 1b 50 03 00       	call   0xaf7b70
  ac2b55:	83 c4 08             	add    esp,0x8
  ac2b58:	84 c0                	test   al,al
  ac2b5a:	74 0a                	je     0xac2b66
  ac2b5c:	8a 4c 24 58          	mov    cl,BYTE PTR [esp+0x58]
  ac2b60:	88 4c 24 1c          	mov    BYTE PTR [esp+0x1c],cl
  ac2b64:	eb 08                	jmp    0xac2b6e
  ac2b66:	8a 54 24 5c          	mov    dl,BYTE PTR [esp+0x5c]
  ac2b6a:	88 54 24 1c          	mov    BYTE PTR [esp+0x1c],dl
  ac2b6e:	8d 44 24 10          	lea    eax,[esp+0x10]
  ac2b72:	50                   	push   eax
  ac2b73:	8b cb                	mov    ecx,ebx
  ac2b75:	e8 86 1c ff ff       	call   0xab4800
  ac2b7a:	33 ed                	xor    ebp,ebp
  ac2b7c:	85 c0                	test   eax,eax
  ac2b7e:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  ac2b82:	89 6c 24 20          	mov    DWORD PTR [esp+0x20],ebp
  ac2b86:	0f 8e 4f 01 00 00    	jle    0xac2cdb
  ac2b8c:	eb 06                	jmp    0xac2b94
  ac2b8e:	8b ff                	mov    edi,edi
  ac2b90:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
  ac2b94:	0f be 44 24 12       	movsx  eax,BYTE PTR [esp+0x12]
  ac2b99:	2b 83 7c 01 00 00    	sub    eax,DWORD PTR [ebx+0x17c]
  ac2b9f:	8b 8b d0 02 00 00    	mov    ecx,DWORD PTR [ebx+0x2d0]
  ac2ba5:	0f af 41 20          	imul   eax,DWORD PTR [ecx+0x20]
  ac2ba9:	0f be 74 24 10       	movsx  esi,BYTE PTR [esp+0x10]
  ac2bae:	0f be 54 24 11       	movsx  edx,BYTE PTR [esp+0x11]
  ac2bb3:	8b fe                	mov    edi,esi
  ac2bb5:	c1 ff 02             	sar    edi,0x2
  ac2bb8:	03 c7                	add    eax,edi
  ac2bba:	0f af 41 24          	imul   eax,DWORD PTR [ecx+0x24]
  ac2bbe:	8b fa                	mov    edi,edx
  ac2bc0:	c1 ff 02             	sar    edi,0x2
  ac2bc3:	03 c7                	add    eax,edi
  ac2bc5:	8b 79 48             	mov    edi,DWORD PTR [ecx+0x48]
  ac2bc8:	0f b7 3c 47          	movzx  edi,WORD PTR [edi+eax*2]
  ac2bcc:	f7 c7 00 80 00 00    	test   edi,0x8000
  ac2bd2:	74 08                	je     0xac2bdc
  ac2bd4:	c1 e0 04             	shl    eax,0x4
  ac2bd7:	03 41 38             	add    eax,DWORD PTR [ecx+0x38]
  ac2bda:	eb 15                	jmp    0xac2bf1
  ac2bdc:	0f b7 c7             	movzx  eax,di
  ac2bdf:	83 e6 03             	and    esi,0x3
  ac2be2:	8d 04 86             	lea    eax,[esi+eax*4]
  ac2be5:	83 e2 03             	and    edx,0x3
  ac2be8:	8d 04 82             	lea    eax,[edx+eax*4]
  ac2beb:	c1 e0 04             	shl    eax,0x4
  ac2bee:	03 41 28             	add    eax,DWORD PTR [ecx+0x28]
  ac2bf1:	85 ed                	test   ebp,ebp
  ac2bf3:	7c 17                	jl     0xac2c0c
  ac2bf5:	8b 08                	mov    ecx,DWORD PTR [eax]
  ac2bf7:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  ac2bfa:	2b d1                	sub    edx,ecx
  ac2bfc:	c1 fa 03             	sar    edx,0x3
  ac2bff:	3b ea                	cmp    ebp,edx
  ac2c01:	7d 09                	jge    0xac2c0c
  ac2c03:	8b 34 e9             	mov    esi,DWORD PTR [ecx+ebp*8]
  ac2c06:	8b 7c e9 04          	mov    edi,DWORD PTR [ecx+ebp*8+0x4]
  ac2c0a:	eb 04                	jmp    0xac2c10
  ac2c0c:	33 f6                	xor    esi,esi
  ac2c0e:	33 ff                	xor    edi,edi
  ac2c10:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  ac2c14:	8b 6c 24 40          	mov    ebp,DWORD PTR [esp+0x40]
  ac2c18:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  ac2c1c:	50                   	push   eax
  ac2c1d:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  ac2c21:	51                   	push   ecx
  ac2c22:	55                   	push   ebp
  ac2c23:	52                   	push   edx
  ac2c24:	89 74 24 44          	mov    DWORD PTR [esp+0x44],esi
  ac2c28:	89 7c 24 48          	mov    DWORD PTR [esp+0x48],edi
  ac2c2c:	e8 ff 46 b6 ff       	call   0x627330
  ac2c31:	83 c4 10             	add    esp,0x10
  ac2c34:	3b c5                	cmp    eax,ebp
  ac2c36:	74 21                	je     0xac2c59
  ac2c38:	3b 78 04             	cmp    edi,DWORD PTR [eax+0x4]
  ac2c3b:	72 0d                	jb     0xac2c4a
  ac2c3d:	77 04                	ja     0xac2c43
  ac2c3f:	3b 30                	cmp    esi,DWORD PTR [eax]
  ac2c41:	72 07                	jb     0xac2c4a
  ac2c43:	8d 48 08             	lea    ecx,[eax+0x8]
  ac2c46:	3b c1                	cmp    eax,ecx
  ac2c48:	75 74                	jne    0xac2cbe
  ac2c4a:	3b c5                	cmp    eax,ebp
  ac2c4c:	74 0b                	je     0xac2c59
  ac2c4e:	3b 78 04             	cmp    edi,DWORD PTR [eax+0x4]
  ac2c51:	77 33                	ja     0xac2c86
  ac2c53:	72 04                	jb     0xac2c59
  ac2c55:	3b 30                	cmp    esi,DWORD PTR [eax]
  ac2c57:	73 2d                	jae    0xac2c86
  ac2c59:	3b 6c 24 44          	cmp    ebp,DWORD PTR [esp+0x44]
  ac2c5d:	74 18                	je     0xac2c77
  ac2c5f:	3b c5                	cmp    eax,ebp
  ac2c61:	75 14                	jne    0xac2c77
  ac2c63:	8b c5                	mov    eax,ebp
  ac2c65:	83 c5 08             	add    ebp,0x8
  ac2c68:	85 c0                	test   eax,eax
  ac2c6a:	89 6c 24 40          	mov    DWORD PTR [esp+0x40],ebp
  ac2c6e:	74 16                	je     0xac2c86
  ac2c70:	89 30                	mov    DWORD PTR [eax],esi
  ac2c72:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  ac2c75:	eb 0f                	jmp    0xac2c86
  ac2c77:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  ac2c7b:	51                   	push   ecx
  ac2c7c:	50                   	push   eax
  ac2c7d:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  ac2c81:	e8 da f6 aa ff       	call   0x572360
  ac2c86:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  ac2c8a:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  ac2c8e:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  ac2c92:	52                   	push   edx
  ac2c93:	50                   	push   eax
  ac2c94:	e8 e7 52 e7 ff       	call   0x937f80
  ac2c99:	85 c0                	test   eax,eax
  ac2c9b:	74 21                	je     0xac2cbe
  ac2c9d:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  ac2ca1:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
  ac2ca5:	51                   	push   ecx
  ac2ca6:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  ac2caa:	52                   	push   edx
  ac2cab:	51                   	push   ecx
  ac2cac:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  ac2cb0:	8d 54 24 20          	lea    edx,[esp+0x20]
  ac2cb4:	52                   	push   edx
  ac2cb5:	51                   	push   ecx
  ac2cb6:	50                   	push   eax
  ac2cb7:	8b cb                	mov    ecx,ebx
  ac2cb9:	e8 92 d5 ff ff       	call   0xac0250
  ac2cbe:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  ac2cc2:	83 c0 01             	add    eax,0x1
  ac2cc5:	3b 44 24 2c          	cmp    eax,DWORD PTR [esp+0x2c]
  ac2cc9:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  ac2ccd:	0f 8c bd fe ff ff    	jl     0xac2b90
  ac2cd3:	8b 7c 24 54          	mov    edi,DWORD PTR [esp+0x54]
  ac2cd7:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
  ac2cdb:	83 c6 01             	add    esi,0x1
  ac2cde:	83 fe 03             	cmp    esi,0x3
  ac2ce1:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
  ac2ce5:	0f 82 b5 fd ff ff    	jb     0xac2aa0
  ac2ceb:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  ac2cef:	85 c0                	test   eax,eax
  ac2cf1:	5e                   	pop    esi
  ac2cf2:	74 09                	je     0xac2cfd
  ac2cf4:	50                   	push   eax
  ac2cf5:	e8 e6 17 a2 ff       	call   0x4e44e0
  ac2cfa:	83 c4 04             	add    esp,0x4
  ac2cfd:	5f                   	pop    edi
  ac2cfe:	5d                   	pop    ebp
  ac2cff:	5b                   	pop    ebx
  ac2d00:	83 c4 40             	add    esp,0x40
  ac2d03:	c2 0c 00             	ret    0xc
