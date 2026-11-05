# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b0c930 <.text+0x70b930>:
  b0c930:	55                   	push   ebp
  b0c931:	8b ec                	mov    ebp,esp
  b0c933:	83 e4 f0             	and    esp,0xfffffff0
  b0c936:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  b0c939:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  b0c93f:	81 ec e4 00 00 00    	sub    esp,0xe4
  b0c945:	53                   	push   ebx
  b0c946:	56                   	push   esi
  b0c947:	57                   	push   edi
  b0c948:	83 ec 08             	sub    esp,0x8
  b0c94b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b0c94f:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  b0c952:	d9 1c 24             	fstp   DWORD PTR [esp]
  b0c955:	e8 76 be 15 00       	call   0xc687d0
  b0c95a:	8b f0                	mov    esi,eax
  b0c95c:	85 f6                	test   esi,esi
  b0c95e:	0f 84 70 03 00 00    	je     0xb0ccd4
  b0c964:	f3 0f 10 4d 14       	movss  xmm1,DWORD PTR [ebp+0x14]
  b0c969:	f3 0f 10 45 0c       	movss  xmm0,DWORD PTR [ebp+0xc]
  b0c96e:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  b0c974:	f3 0f 10 4d 10       	movss  xmm1,DWORD PTR [ebp+0x10]
  b0c979:	8d 44 24 34          	lea    eax,[esp+0x34]
  b0c97d:	50                   	push   eax
  b0c97e:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  b0c984:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  b0c98a:	8d 8c 24 d4 00 00 00 	lea    ecx,[esp+0xd4]
  b0c991:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  b0c997:	0f 28 44 24 24       	movaps xmm0,XMMWORD PTR [esp+0x24]
  b0c99c:	51                   	push   ecx
  b0c99d:	0f 29 84 24 d8 00 00 	movaps XMMWORD PTR [esp+0xd8],xmm0
  b0c9a4:	00 
  b0c9a5:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  b0c9ac:	00 
  b0c9ad:	56                   	push   esi
  b0c9ae:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  b0c9b4:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  b0c9ba:	c7 44 24 48 00 00 00 	mov    DWORD PTR [esp+0x48],0x0
  b0c9c1:	00 
  b0c9c2:	e8 99 fe fc ff       	call   0xadc860
  b0c9c7:	83 c4 0c             	add    esp,0xc
  b0c9ca:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  b0c9ce:	e8 ad 0f ff ff       	call   0xafd980
  b0c9d3:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  b0c9d7:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  b0c9db:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  b0c9de:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  b0c9e2:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  b0c9e6:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  b0c9e9:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  b0c9ed:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  b0c9f0:	85 c0                	test   eax,eax
  b0c9f2:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
  b0c9f6:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  b0c9f9:	89 7c 24 40          	mov    DWORD PTR [esp+0x40],edi
  b0c9fd:	89 74 24 44          	mov    DWORD PTR [esp+0x44],esi
  b0ca01:	89 4c 24 50          	mov    DWORD PTR [esp+0x50],ecx
  b0ca05:	89 54 24 54          	mov    DWORD PTR [esp+0x54],edx
  b0ca09:	88 44 24 5c          	mov    BYTE PTR [esp+0x5c],al
  b0ca0d:	75 05                	jne    0xb0ca14
  b0ca0f:	c6 44 24 5c 01       	mov    BYTE PTR [esp+0x5c],0x1
  b0ca14:	8b 5d 24             	mov    ebx,DWORD PTR [ebp+0x24]
  b0ca17:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  b0ca1a:	8b 55 2c             	mov    edx,DWORD PTR [ebp+0x2c]
  b0ca1d:	89 4c 24 60          	mov    DWORD PTR [esp+0x60],ecx
  b0ca21:	89 54 24 64          	mov    DWORD PTR [esp+0x64],edx
  b0ca25:	8a c3                	mov    al,bl
  b0ca27:	24 01                	and    al,0x1
  b0ca29:	88 44 24 6c          	mov    BYTE PTR [esp+0x6c],al
  b0ca2d:	8b cb                	mov    ecx,ebx
  b0ca2f:	d1 e9                	shr    ecx,1
  b0ca31:	80 e1 01             	and    cl,0x1
  b0ca34:	8b d3                	mov    edx,ebx
  b0ca36:	c1 ea 02             	shr    edx,0x2
  b0ca39:	80 e2 01             	and    dl,0x1
  b0ca3c:	8b c3                	mov    eax,ebx
  b0ca3e:	c1 e8 03             	shr    eax,0x3
  b0ca41:	24 01                	and    al,0x1
  b0ca43:	88 4c 24 6d          	mov    BYTE PTR [esp+0x6d],cl
  b0ca47:	88 54 24 6e          	mov    BYTE PTR [esp+0x6e],dl
  b0ca4b:	88 44 24 6f          	mov    BYTE PTR [esp+0x6f],al
  b0ca4f:	8b cb                	mov    ecx,ebx
  b0ca51:	8b d3                	mov    edx,ebx
  b0ca53:	8b c3                	mov    eax,ebx
  b0ca55:	c1 e9 04             	shr    ecx,0x4
  b0ca58:	c1 ea 05             	shr    edx,0x5
  b0ca5b:	c1 e8 06             	shr    eax,0x6
  b0ca5e:	80 e1 01             	and    cl,0x1
  b0ca61:	80 e2 01             	and    dl,0x1
  b0ca64:	24 01                	and    al,0x1
  b0ca66:	85 ff                	test   edi,edi
  b0ca68:	88 4c 24 70          	mov    BYTE PTR [esp+0x70],cl
  b0ca6c:	88 54 24 71          	mov    BYTE PTR [esp+0x71],dl
  b0ca70:	88 44 24 72          	mov    BYTE PTR [esp+0x72],al
  b0ca74:	74 2e                	je     0xb0caa4
  b0ca76:	8b 0d 34 e0 1e 01    	mov    ecx,DWORD PTR ds:0x11ee034
  b0ca7c:	8d 57 18             	lea    edx,[edi+0x18]
  b0ca7f:	52                   	push   edx
  b0ca80:	e8 2b 21 18 00       	call   0xc8ebb0
  b0ca85:	85 c0                	test   eax,eax
  b0ca87:	74 1b                	je     0xb0caa4
  b0ca89:	8b 88 a4 00 00 00    	mov    ecx,DWORD PTR [eax+0xa4]
  b0ca8f:	c1 e9 0e             	shr    ecx,0xe
  b0ca92:	f6 c1 01             	test   cl,0x1
  b0ca95:	74 0d                	je     0xb0caa4
  b0ca97:	f6 80 9b 00 00 00 01 	test   BYTE PTR [eax+0x9b],0x1
  b0ca9e:	74 04                	je     0xb0caa4
  b0caa0:	b0 01                	mov    al,0x1
  b0caa2:	eb 02                	jmp    0xb0caa6
  b0caa4:	32 c0                	xor    al,al
  b0caa6:	88 44 24 75          	mov    BYTE PTR [esp+0x75],al
  b0caaa:	8b d3                	mov    edx,ebx
  b0caac:	c1 ea 0b             	shr    edx,0xb
  b0caaf:	80 e2 01             	and    dl,0x1
  b0cab2:	88 54 24 76          	mov    BYTE PTR [esp+0x76],dl
  b0cab6:	8b c3                	mov    eax,ebx
  b0cab8:	c1 e8 0c             	shr    eax,0xc
  b0cabb:	24 01                	and    al,0x1
  b0cabd:	88 44 24 77          	mov    BYTE PTR [esp+0x77],al
  b0cac1:	f3 0f 10 45 34       	movss  xmm0,DWORD PTR [ebp+0x34]
  b0cac6:	8b cb                	mov    ecx,ebx
  b0cac8:	c1 e9 0f             	shr    ecx,0xf
  b0cacb:	80 e1 01             	and    cl,0x1
  b0cace:	88 4c 24 73          	mov    BYTE PTR [esp+0x73],cl
  b0cad2:	8b d3                	mov    edx,ebx
  b0cad4:	c1 ea 10             	shr    edx,0x10
  b0cad7:	80 e2 01             	and    dl,0x1
  b0cada:	88 54 24 74          	mov    BYTE PTR [esp+0x74],dl
  b0cade:	8b c3                	mov    eax,ebx
  b0cae0:	c1 e8 11             	shr    eax,0x11
  b0cae3:	24 01                	and    al,0x1
  b0cae5:	88 44 24 78          	mov    BYTE PTR [esp+0x78],al
  b0cae9:	8b cb                	mov    ecx,ebx
  b0caeb:	c1 e9 12             	shr    ecx,0x12
  b0caee:	80 e1 01             	and    cl,0x1
  b0caf1:	88 4c 24 79          	mov    BYTE PTR [esp+0x79],cl
  b0caf5:	8b d3                	mov    edx,ebx
  b0caf7:	c1 ea 13             	shr    edx,0x13
  b0cafa:	80 e2 01             	and    dl,0x1
  b0cafd:	8b c3                	mov    eax,ebx
  b0caff:	c1 e8 16             	shr    eax,0x16
  b0cb02:	24 01                	and    al,0x1
  b0cb04:	88 54 24 7a          	mov    BYTE PTR [esp+0x7a],dl
  b0cb08:	88 44 24 7b          	mov    BYTE PTR [esp+0x7b],al
  b0cb0c:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  b0cb0f:	8b cb                	mov    ecx,ebx
  b0cb11:	c1 e9 17             	shr    ecx,0x17
  b0cb14:	80 e1 01             	and    cl,0x1
  b0cb17:	8b d3                	mov    edx,ebx
  b0cb19:	c1 ea 18             	shr    edx,0x18
  b0cb1c:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  b0cb20:	8b 45 50             	mov    eax,DWORD PTR [ebp+0x50]
  b0cb23:	88 4c 24 7c          	mov    BYTE PTR [esp+0x7c],cl
  b0cb27:	8b 4d 44             	mov    ecx,DWORD PTR [ebp+0x44]
  b0cb2a:	80 e2 01             	and    dl,0x1
  b0cb2d:	89 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],eax
  b0cb34:	8b 45 48             	mov    eax,DWORD PTR [ebp+0x48]
  b0cb37:	88 54 24 7d          	mov    BYTE PTR [esp+0x7d],dl
  b0cb3b:	8b 55 4c             	mov    edx,DWORD PTR [ebp+0x4c]
  b0cb3e:	89 8c 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],ecx
  b0cb45:	8b 08                	mov    ecx,DWORD PTR [eax]
  b0cb47:	89 94 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],edx
  b0cb4e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  b0cb51:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  b0cb54:	89 8c 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],ecx
  b0cb5b:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  b0cb5f:	51                   	push   ecx
  b0cb60:	89 94 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],edx
  b0cb67:	f3 0f 11 84 24 84 00 	movss  DWORD PTR [esp+0x84],xmm0
  b0cb6e:	00 00 
  b0cb70:	f3 0f 10 45 38       	movss  xmm0,DWORD PTR [ebp+0x38]
  b0cb75:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  b0cb79:	89 84 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],eax
  b0cb80:	52                   	push   edx
  b0cb81:	f3 0f 11 84 24 8c 00 	movss  DWORD PTR [esp+0x8c],xmm0
  b0cb88:	00 00 
  b0cb8a:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  b0cb91:	00 
  b0cb92:	8d 44 24 28          	lea    eax,[esp+0x28]
  b0cb96:	c1 eb 19             	shr    ebx,0x19
  b0cb99:	50                   	push   eax
  b0cb9a:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  b0cb9e:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  b0cba4:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  b0cbaa:	0f 57 c0             	xorps  xmm0,xmm0
  b0cbad:	80 e3 01             	and    bl,0x1
  b0cbb0:	51                   	push   ecx
  b0cbb1:	88 9c 24 8e 00 00 00 	mov    BYTE PTR [esp+0x8e],bl
  b0cbb8:	c7 44 24 38 00 00 00 	mov    DWORD PTR [esp+0x38],0x0
  b0cbbf:	00 
  b0cbc0:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  b0cbc6:	e8 e5 8d 03 00       	call   0xb459b0
  b0cbcb:	83 c4 10             	add    esp,0x10
  b0cbce:	84 c0                	test   al,al
  b0cbd0:	0f 84 fe 00 00 00    	je     0xb0ccd4
  b0cbd6:	8b 5d 3c             	mov    ebx,DWORD PTR [ebp+0x3c]
  b0cbd9:	85 db                	test   ebx,ebx
  b0cbdb:	0f 84 a0 00 00 00    	je     0xb0cc81
  b0cbe1:	8d 94 24 e0 00 00 00 	lea    edx,[esp+0xe0]
  b0cbe8:	52                   	push   edx
  b0cbe9:	8d 44 24 24          	lea    eax,[esp+0x24]
  b0cbed:	50                   	push   eax
  b0cbee:	56                   	push   esi
  b0cbef:	e8 5c fb fc ff       	call   0xadc750
  b0cbf4:	83 c4 0c             	add    esp,0xc
  b0cbf7:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  b0cbfe:	51                   	push   ecx
  b0cbff:	8d 94 24 e4 00 00 00 	lea    edx,[esp+0xe4]
  b0cc06:	52                   	push   edx
  b0cc07:	8b ce                	mov    ecx,esi
  b0cc09:	e8 32 a4 fa ff       	call   0xab7040
  b0cc0e:	8d 44 24 20          	lea    eax,[esp+0x20]
  b0cc12:	50                   	push   eax
  b0cc13:	56                   	push   esi
  b0cc14:	57                   	push   edi
  b0cc15:	e8 c6 f9 ff ff       	call   0xb0c5e0
  b0cc1a:	0f 28 84 24 bc 00 00 	movaps xmm0,XMMWORD PTR [esp+0xbc]
  b0cc21:	00 
  b0cc22:	0f 29 84 24 ac 00 00 	movaps XMMWORD PTR [esp+0xac],xmm0
  b0cc29:	00 
  b0cc2a:	d9 84 24 b4 00 00 00 	fld    DWORD PTR [esp+0xb4]
  b0cc31:	0f 28 c8             	movaps xmm1,xmm0
  b0cc34:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  b0cc38:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  b0cc3c:	8b cb                	mov    ecx,ebx
  b0cc3e:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  b0cc42:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  b0cc48:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b0cc4c:	0f 58 c8             	addps  xmm1,xmm0
  b0cc4f:	0f 28 84 24 bc 00 00 	movaps xmm0,XMMWORD PTR [esp+0xbc]
  b0cc56:	00 
  b0cc57:	0f 29 8c 24 ac 00 00 	movaps XMMWORD PTR [esp+0xac],xmm1
  b0cc5e:	00 
  b0cc5f:	d9 84 24 ac 00 00 00 	fld    DWORD PTR [esp+0xac]
  b0cc66:	0f 29 84 24 cc 00 00 	movaps XMMWORD PTR [esp+0xcc],xmm0
  b0cc6d:	00 
  b0cc6e:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b0cc72:	d9 84 24 cc 00 00 00 	fld    DWORD PTR [esp+0xcc]
  b0cc79:	d9 1c 24             	fstp   DWORD PTR [esp]
  b0cc7c:	e8 ef f2 c5 ff       	call   0x76bf70
  b0cc81:	8b 7d 40             	mov    edi,DWORD PTR [ebp+0x40]
  b0cc84:	85 ff                	test   edi,edi
  b0cc86:	74 43                	je     0xb0cccb
  b0cc88:	80 7c 24 7c 00       	cmp    BYTE PTR [esp+0x7c],0x0
  b0cc8d:	74 13                	je     0xb0cca2
  b0cc8f:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  b0cc95:	f3 0f 11 07          	movss  DWORD PTR [edi],xmm0
  b0cc99:	b0 01                	mov    al,0x1
  b0cc9b:	5f                   	pop    edi
  b0cc9c:	5e                   	pop    esi
  b0cc9d:	5b                   	pop    ebx
  b0cc9e:	8b e5                	mov    esp,ebp
  b0cca0:	5d                   	pop    ebp
  b0cca1:	c3                   	ret
  b0cca2:	db 44 24 18          	fild   DWORD PTR [esp+0x18]
  b0cca6:	8b 16                	mov    edx,DWORD PTR [esi]
  b0cca8:	8b 42 68             	mov    eax,DWORD PTR [edx+0x68]
  b0ccab:	8b ce                	mov    ecx,esi
  b0ccad:	d8 0d d4 45 18 01    	fmul   DWORD PTR ds:0x11845d4
  b0ccb3:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  b0ccb7:	ff d0                	call   eax
  b0ccb9:	d8 44 24 14          	fadd   DWORD PTR [esp+0x14]
  b0ccbd:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  b0ccc1:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  b0ccc7:	f3 0f 11 07          	movss  DWORD PTR [edi],xmm0
  b0cccb:	b0 01                	mov    al,0x1
  b0cccd:	5f                   	pop    edi
  b0ccce:	5e                   	pop    esi
  b0cccf:	5b                   	pop    ebx
  b0ccd0:	8b e5                	mov    esp,ebp
  b0ccd2:	5d                   	pop    ebp
  b0ccd3:	c3                   	ret
  b0ccd4:	5f                   	pop    edi
  b0ccd5:	5e                   	pop    esi
  b0ccd6:	32 c0                	xor    al,al
  b0ccd8:	5b                   	pop    ebx
  b0ccd9:	8b e5                	mov    esp,ebp
  b0ccdb:	5d                   	pop    ebp
  b0ccdc:	c3                   	ret
