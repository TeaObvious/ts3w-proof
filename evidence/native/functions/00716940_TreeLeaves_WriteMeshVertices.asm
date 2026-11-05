# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00716940 <.text+0x315940>:
  716940:	81 ec a0 00 00 00    	sub    esp,0xa0
  716946:	53                   	push   ebx
  716947:	8b 9c 24 ac 00 00 00 	mov    ebx,DWORD PTR [esp+0xac]
  71694e:	8b 4b 34             	mov    ecx,DWORD PTR [ebx+0x34]
  716951:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
  716954:	8b 53 24             	mov    edx,DWORD PTR [ebx+0x24]
  716957:	55                   	push   ebp
  716958:	8b 6b 2c             	mov    ebp,DWORD PTR [ebx+0x2c]
  71695b:	56                   	push   esi
  71695c:	8b 73 28             	mov    esi,DWORD PTR [ebx+0x28]
  71695f:	89 4c 24 38          	mov    DWORD PTR [esp+0x38],ecx
  716963:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
  716966:	57                   	push   edi
  716967:	8b 7b 1c             	mov    edi,DWORD PTR [ebx+0x1c]
  71696a:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  71696e:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
  716971:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  716975:	b9 80 37 1d 01       	mov    ecx,0x11d3780
  71697a:	89 7c 24 48          	mov    DWORD PTR [esp+0x48],edi
  71697e:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
  716982:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
  716986:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  71698a:	e8 91 bf 0a 00       	call   0x7c2920
  71698f:	b9 80 37 1d 01       	mov    ecx,0x11d3780
  716994:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  716998:	e8 c3 bf 0a 00       	call   0x7c2960
  71699d:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  7169a1:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  7169a6:	85 c0                	test   eax,eax
  7169a8:	74 19                	je     0x7169c3
  7169aa:	80 b8 d8 01 00 00 00 	cmp    BYTE PTR [eax+0x1d8],0x0
  7169b1:	75 09                	jne    0x7169bc
  7169b3:	80 b8 d9 01 00 00 00 	cmp    BYTE PTR [eax+0x1d9],0x0
  7169ba:	74 07                	je     0x7169c3
  7169bc:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  7169c1:	eb 05                	jmp    0x7169c8
  7169c3:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  7169c8:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  7169cb:	83 f9 05             	cmp    ecx,0x5
  7169ce:	72 14                	jb     0x7169e4
  7169d0:	0f bf d1             	movsx  edx,cx
  7169d3:	b8 cd cc cc cc       	mov    eax,0xcccccccd
  7169d8:	f7 e2                	mul    edx
  7169da:	c1 ea 02             	shr    edx,0x2
  7169dd:	66 89 54 24 14       	mov    WORD PTR [esp+0x14],dx
  7169e2:	eb 0c                	jmp    0x7169f0
  7169e4:	66 c7 44 24 14 00 00 	mov    WORD PTR [esp+0x14],0x0
  7169eb:	66 8b 54 24 14       	mov    dx,WORD PTR [esp+0x14]
  7169f0:	66 83 fa 0a          	cmp    dx,0xa
  7169f4:	66 c7 44 24 16 00 00 	mov    WORD PTR [esp+0x16],0x0
  7169fb:	76 07                	jbe    0x716a04
  7169fd:	66 c7 44 24 14 0a 00 	mov    WORD PTR [esp+0x14],0xa
  716a04:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  716a08:	83 f8 01             	cmp    eax,0x1
  716a0b:	7d 07                	jge    0x716a14
  716a0d:	c6 44 24 12 00       	mov    BYTE PTR [esp+0x12],0x0
  716a12:	eb 06                	jmp    0x716a1a
  716a14:	2c 01                	sub    al,0x1
  716a16:	88 44 24 12          	mov    BYTE PTR [esp+0x12],al
  716a1a:	85 c9                	test   ecx,ecx
  716a1c:	c7 44 24 2c 00 00 00 	mov    DWORD PTR [esp+0x2c],0x0
  716a23:	00 
  716a24:	0f 86 34 04 00 00    	jbe    0x716e5e
  716a2a:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  716a2e:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  716a32:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  716a39:	00 
  716a3a:	f3 0f 10 15 f0 47 fe 	movss  xmm2,DWORD PTR ds:0xfe47f0
  716a41:	00 
  716a42:	f3 0f 10 05 b0 ce ff 	movss  xmm0,DWORD PTR ds:0xffceb0
  716a49:	00 
  716a4a:	2b c1                	sub    eax,ecx
  716a4c:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  716a50:	8b c5                	mov    eax,ebp
  716a52:	2b c1                	sub    eax,ecx
  716a54:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  716a58:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  716a5c:	83 c6 08             	add    esi,0x8
  716a5f:	2b c5                	sub    eax,ebp
  716a61:	89 6c 24 30          	mov    DWORD PTR [esp+0x30],ebp
  716a65:	89 74 24 44          	mov    DWORD PTR [esp+0x44],esi
  716a69:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  716a6d:	8d 49 00             	lea    ecx,[ecx+0x0]
  716a70:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  716a75:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  716a79:	0f b6 00             	movzx  eax,BYTE PTR [eax]
  716a7c:	8b 53 44             	mov    edx,DWORD PTR [ebx+0x44]
  716a7f:	8d 0c c0             	lea    ecx,[eax+eax*8]
  716a82:	8d 04 8a             	lea    eax,[edx+ecx*4]
  716a85:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  716a89:	74 36                	je     0x716ac1
  716a8b:	66 83 7c 24 14 00    	cmp    WORD PTR [esp+0x14],0x0
  716a91:	7e 2e                	jle    0x716ac1
  716a93:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  716a97:	50                   	push   eax
  716a98:	e8 a3 b8 0b 00       	call   0x7d2340
  716a9d:	f3 0f 10 05 b0 ce ff 	movss  xmm0,DWORD PTR ds:0xffceb0
  716aa4:	00 
  716aa5:	f3 0f 10 15 f0 47 fe 	movss  xmm2,DWORD PTR ds:0xfe47f0
  716aac:	00 
  716aad:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  716ab4:	00 
  716ab5:	66 89 44 24 1a       	mov    WORD PTR [esp+0x1a],ax
  716aba:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  716abe:	83 c4 04             	add    esp,0x4
  716ac1:	83 78 20 00          	cmp    DWORD PTR [eax+0x20],0x0
  716ac5:	0f 84 51 03 00 00    	je     0x716e1c
  716acb:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
  716ace:	8b 08                	mov    ecx,DWORD PTR [eax]
  716ad0:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  716ad3:	f3 0f 10 1f          	movss  xmm3,DWORD PTR [edi]
  716ad7:	f3 0f 10 3e          	movss  xmm7,DWORD PTR [esi]
  716adb:	f3 0f 59 d8          	mulss  xmm3,xmm0
  716adf:	f3 0f 11 5c 24 7c    	movss  DWORD PTR [esp+0x7c],xmm3
  716ae5:	f3 0f 10 5f 04       	movss  xmm3,DWORD PTR [edi+0x4]
  716aea:	f3 0f 59 d8          	mulss  xmm3,xmm0
  716aee:	89 54 24 5c          	mov    DWORD PTR [esp+0x5c],edx
  716af2:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  716af6:	f3 0f 11 9c 24 80 00 	movss  DWORD PTR [esp+0x80],xmm3
  716afd:	00 00 
  716aff:	f3 0f 10 5f 08       	movss  xmm3,DWORD PTR [edi+0x8]
  716b04:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  716b08:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  716b0b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  716b0e:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  716b12:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  716b16:	f3 0f 10 34 30       	movss  xmm6,DWORD PTR [eax+esi*1]
  716b1b:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  716b1f:	f3 0f 59 d8          	mulss  xmm3,xmm0
  716b23:	f3 0f 11 9c 24 84 00 	movss  DWORD PTR [esp+0x84],xmm3
  716b2a:	00 00 
  716b2c:	f3 0f 10 1c 2a       	movss  xmm3,DWORD PTR [edx+ebp*1]
  716b31:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
  716b35:	f3 0f 11 bc 24 a4 00 	movss  DWORD PTR [esp+0xa4],xmm7
  716b3c:	00 00 
  716b3e:	f3 0f 10 3c 32       	movss  xmm7,DWORD PTR [edx+esi*1]
  716b43:	33 d2                	xor    edx,edx
  716b45:	f7 74 24 50          	div    DWORD PTR [esp+0x50]
  716b49:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  716b4d:	8a 00                	mov    al,BYTE PTR [eax]
  716b4f:	f3 0f 10 66 f8       	movss  xmm4,DWORD PTR [esi-0x8]
  716b54:	f3 0f 10 6d 00       	movss  xmm5,DWORD PTR [ebp+0x0]
  716b59:	f3 0f 11 bc 24 a8 00 	movss  DWORD PTR [esp+0xa8],xmm7
  716b60:	00 00 
  716b62:	88 54 24 1c          	mov    BYTE PTR [esp+0x1c],dl
  716b66:	8a 54 24 12          	mov    dl,BYTE PTR [esp+0x12]
  716b6a:	3a c2                	cmp    al,dl
  716b6c:	76 02                	jbe    0x716b70
  716b6e:	8a c2                	mov    al,dl
  716b70:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  716b74:	33 ed                	xor    ebp,ebp
  716b76:	85 d2                	test   edx,edx
  716b78:	0f 8e 90 02 00 00    	jle    0x716e0e
  716b7e:	f3 0f 58 d9          	addss  xmm3,xmm1
  716b82:	f3 0f 59 da          	mulss  xmm3,xmm2
  716b86:	f3 0f 58 e9          	addss  xmm5,xmm1
  716b8a:	8b b4 24 b4 00 00 00 	mov    esi,DWORD PTR [esp+0xb4]
  716b91:	f3 0f 59 ea          	mulss  xmm5,xmm2
  716b95:	f3 0f 2c d5          	cvttss2si edx,xmm5
  716b99:	88 54 24 1e          	mov    BYTE PTR [esp+0x1e],dl
  716b9d:	f3 0f 58 e1          	addss  xmm4,xmm1
  716ba1:	0f 57 ff             	xorps  xmm7,xmm7
  716ba4:	f3 0f 59 e2          	mulss  xmm4,xmm2
  716ba8:	f3 0f 2c d4          	cvttss2si edx,xmm4
  716bac:	88 54 24 25          	mov    BYTE PTR [esp+0x25],dl
  716bb0:	f3 0f 2c d3          	cvttss2si edx,xmm3
  716bb4:	f3 0f 10 9c 24 a8 00 	movss  xmm3,DWORD PTR [esp+0xa8]
  716bbb:	00 00 
  716bbd:	f3 0f 58 d9          	addss  xmm3,xmm1
  716bc1:	88 54 24 1d          	mov    BYTE PTR [esp+0x1d],dl
  716bc5:	f3 0f 59 da          	mulss  xmm3,xmm2
  716bc9:	f3 0f 2c d3          	cvttss2si edx,xmm3
  716bcd:	f3 0f 10 9c 24 a4 00 	movss  xmm3,DWORD PTR [esp+0xa4]
  716bd4:	00 00 
  716bd6:	88 54 24 27          	mov    BYTE PTR [esp+0x27],dl
  716bda:	f3 0f 58 d9          	addss  xmm3,xmm1
  716bde:	f3 0f 59 da          	mulss  xmm3,xmm2
  716be2:	f3 0f 2c d3          	cvttss2si edx,xmm3
  716be6:	88 54 24 1f          	mov    BYTE PTR [esp+0x1f],dl
  716bea:	f3 0f 58 f1          	addss  xmm6,xmm1
  716bee:	f3 0f 59 f2          	mulss  xmm6,xmm2
  716bf2:	f3 0f 2c d6          	cvttss2si edx,xmm6
  716bf6:	88 54 24 1b          	mov    BYTE PTR [esp+0x1b],dl
  716bfa:	b2 03                	mov    dl,0x3
  716bfc:	f6 ea                	imul   dl
  716bfe:	88 44 24 26          	mov    BYTE PTR [esp+0x26],al
  716c02:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  716c06:	8b d8                	mov    ebx,eax
  716c08:	83 c6 0a             	add    esi,0xa
  716c0b:	2b c1                	sub    eax,ecx
  716c0d:	f3 0f 11 bc 24 98 00 	movss  DWORD PTR [esp+0x98],xmm7
  716c14:	00 00 
  716c16:	f3 0f 11 bc 24 9c 00 	movss  DWORD PTR [esp+0x9c],xmm7
  716c1d:	00 00 
  716c1f:	8d 79 08             	lea    edi,[ecx+0x8]
  716c22:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  716c26:	eb 0c                	jmp    0x716c34
  716c28:	eb 06                	jmp    0x716c30
  716c2a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  716c30:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  716c34:	f3 0f 10 4f f8       	movss  xmm1,DWORD PTR [edi-0x8]
  716c39:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  716c3d:	f3 0f 59 c8          	mulss  xmm1,xmm0
  716c41:	f3 0f 11 4c 24 70    	movss  DWORD PTR [esp+0x70],xmm1
  716c47:	f3 0f 10 4f fc       	movss  xmm1,DWORD PTR [edi-0x4]
  716c4c:	f3 0f 59 c8          	mulss  xmm1,xmm0
  716c50:	f3 0f 11 4c 24 74    	movss  DWORD PTR [esp+0x74],xmm1
  716c56:	f3 0f 10 0f          	movss  xmm1,DWORD PTR [edi]
  716c5a:	f3 0f 59 c8          	mulss  xmm1,xmm0
  716c5e:	f3 0f 10 03          	movss  xmm0,DWORD PTR [ebx]
  716c62:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  716c68:	f3 0f 10 43 04       	movss  xmm0,DWORD PTR [ebx+0x4]
  716c6d:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  716c73:	f3 0f 10 04 38       	movss  xmm0,DWORD PTR [eax+edi*1]
  716c78:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  716c7c:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  716c82:	f3 0f 10 04 e8       	movss  xmm0,DWORD PTR [eax+ebp*8]
  716c87:	f3 0f 11 84 24 88 00 	movss  DWORD PTR [esp+0x88],xmm0
  716c8e:	00 00 
  716c90:	f3 0f 10 44 e8 04    	movss  xmm0,DWORD PTR [eax+ebp*8+0x4]
  716c96:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  716c9a:	f3 0f 11 84 24 8c 00 	movss  DWORD PTR [esp+0x8c],xmm0
  716ca1:	00 00 
  716ca3:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  716ca7:	8d 56 f6             	lea    edx,[esi-0xa]
  716caa:	52                   	push   edx
  716cab:	8d 44 24 74          	lea    eax,[esp+0x74]
  716caf:	f3 0f 11 84 24 94 00 	movss  DWORD PTR [esp+0x94],xmm0
  716cb6:	00 00 
  716cb8:	f3 0f 10 01          	movss  xmm0,DWORD PTR [ecx]
  716cbc:	50                   	push   eax
  716cbd:	f3 0f 11 8c 24 80 00 	movss  DWORD PTR [esp+0x80],xmm1
  716cc4:	00 00 
  716cc6:	f3 0f 11 84 24 9c 00 	movss  DWORD PTR [esp+0x9c],xmm0
  716ccd:	00 00 
  716ccf:	e8 ec f4 ff ff       	call   0x7161c0
  716cd4:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  716cdb:	00 
  716cdc:	f3 0f 10 15 f0 47 fe 	movss  xmm2,DWORD PTR ds:0xfe47f0
  716ce3:	00 
  716ce4:	f3 0f 10 44 24 70    	movss  xmm0,DWORD PTR [esp+0x70]
  716cea:	f3 0f 58 c1          	addss  xmm0,xmm1
  716cee:	f3 0f 59 c2          	mulss  xmm0,xmm2
  716cf2:	f3 0f 2c c8          	cvttss2si ecx,xmm0
  716cf6:	f3 0f 10 44 24 6c    	movss  xmm0,DWORD PTR [esp+0x6c]
  716cfc:	f3 0f 58 c1          	addss  xmm0,xmm1
  716d00:	f3 0f 59 c2          	mulss  xmm0,xmm2
  716d04:	f3 0f 2c d0          	cvttss2si edx,xmm0
  716d08:	f3 0f 10 44 24 68    	movss  xmm0,DWORD PTR [esp+0x68]
  716d0e:	88 0e                	mov    BYTE PTR [esi],cl
  716d10:	8d 4e 02             	lea    ecx,[esi+0x2]
  716d13:	88 56 ff             	mov    BYTE PTR [esi-0x1],dl
  716d16:	f3 0f 58 c1          	addss  xmm0,xmm1
  716d1a:	51                   	push   ecx
  716d1b:	8d 94 24 94 00 00 00 	lea    edx,[esp+0x94]
  716d22:	f3 0f 59 c2          	mulss  xmm0,xmm2
  716d26:	f3 0f 2c c0          	cvttss2si eax,xmm0
  716d2a:	52                   	push   edx
  716d2b:	c6 46 01 7f          	mov    BYTE PTR [esi+0x1],0x7f
  716d2f:	88 46 fe             	mov    BYTE PTR [esi-0x2],al
  716d32:	e8 89 f4 ff ff       	call   0x7161c0
  716d37:	8d 46 0a             	lea    eax,[esi+0xa]
  716d3a:	50                   	push   eax
  716d3b:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  716d42:	51                   	push   ecx
  716d43:	e8 78 f4 ff ff       	call   0x7161c0
  716d48:	0f b6 54 24 36       	movzx  edx,BYTE PTR [esp+0x36]
  716d4d:	0f b6 44 24 3d       	movzx  eax,BYTE PTR [esp+0x3d]
  716d52:	0f b6 4c 24 35       	movzx  ecx,BYTE PTR [esp+0x35]
  716d57:	88 56 14             	mov    BYTE PTR [esi+0x14],dl
  716d5a:	0f b6 54 24 3f       	movzx  edx,BYTE PTR [esp+0x3f]
  716d5f:	88 46 13             	mov    BYTE PTR [esi+0x13],al
  716d62:	0f b6 44 24 37       	movzx  eax,BYTE PTR [esp+0x37]
  716d67:	88 4e 12             	mov    BYTE PTR [esi+0x12],cl
  716d6a:	0f b6 4c 24 33       	movzx  ecx,BYTE PTR [esp+0x33]
  716d6f:	c6 46 15 7f          	mov    BYTE PTR [esi+0x15],0x7f
  716d73:	88 56 18             	mov    BYTE PTR [esi+0x18],dl
  716d76:	8d 56 1a             	lea    edx,[esi+0x1a]
  716d79:	88 46 17             	mov    BYTE PTR [esi+0x17],al
  716d7c:	52                   	push   edx
  716d7d:	8d 84 24 98 00 00 00 	lea    eax,[esp+0x98]
  716d84:	50                   	push   eax
  716d85:	c6 46 19 7f          	mov    BYTE PTR [esi+0x19],0x7f
  716d89:	88 4e 16             	mov    BYTE PTR [esi+0x16],cl
  716d8c:	e8 2f f4 ff ff       	call   0x7161c0
  716d91:	0f b6 4c 24 46       	movzx  ecx,BYTE PTR [esp+0x46]
  716d96:	83 c4 20             	add    esp,0x20
  716d99:	88 4e 22             	mov    BYTE PTR [esi+0x22],cl
  716d9c:	0f b6 54 24 1c       	movzx  edx,BYTE PTR [esp+0x1c]
  716da1:	8b 84 24 bc 00 00 00 	mov    eax,DWORD PTR [esp+0xbc]
  716da8:	f3 0f 10 05 b0 ce ff 	movss  xmm0,DWORD PTR ds:0xffceb0
  716daf:	00 
  716db0:	88 56 23             	mov    BYTE PTR [esi+0x23],dl
  716db3:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
  716db6:	88 4e 24             	mov    BYTE PTR [esi+0x24],cl
  716db9:	0f b6 00             	movzx  eax,BYTE PTR [eax]
  716dbc:	66 8b 4c 24 16       	mov    cx,WORD PTR [esp+0x16]
  716dc1:	b2 03                	mov    dl,0x3
  716dc3:	f6 ea                	imul   dl
  716dc5:	88 46 25             	mov    BYTE PTR [esi+0x25],al
  716dc8:	66 8b 44 24 14       	mov    ax,WORD PTR [esp+0x14]
  716dcd:	66 89 46 26          	mov    WORD PTR [esi+0x26],ax
  716dd1:	66 89 4e 28          	mov    WORD PTR [esi+0x28],cx
  716dd5:	83 c5 01             	add    ebp,0x1
  716dd8:	83 c7 0c             	add    edi,0xc
  716ddb:	83 c3 0c             	add    ebx,0xc
  716dde:	83 c6 34             	add    esi,0x34
  716de1:	3b 6c 24 28          	cmp    ebp,DWORD PTR [esp+0x28]
  716de5:	0f 8c 45 fe ff ff    	jl     0x716c30
  716deb:	f3 0f 10 15 f0 47 fe 	movss  xmm2,DWORD PTR ds:0xfe47f0
  716df2:	00 
  716df3:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  716dfa:	00 
  716dfb:	8b 7c 24 48          	mov    edi,DWORD PTR [esp+0x48]
  716dff:	8b 9c 24 b8 00 00 00 	mov    ebx,DWORD PTR [esp+0xb8]
  716e06:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
  716e0a:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  716e0e:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
  716e12:	6b d2 34             	imul   edx,edx,0x34
  716e15:	01 94 24 b4 00 00 00 	add    DWORD PTR [esp+0xb4],edx
  716e1c:	b8 04 00 00 00       	mov    eax,0x4
  716e21:	01 44 24 3c          	add    DWORD PTR [esp+0x3c],eax
  716e25:	01 44 24 38          	add    DWORD PTR [esp+0x38],eax
  716e29:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  716e2d:	b9 01 00 00 00       	mov    ecx,0x1
  716e32:	01 4c 24 40          	add    DWORD PTR [esp+0x40],ecx
  716e36:	01 4c 24 34          	add    DWORD PTR [esp+0x34],ecx
  716e3a:	03 c1                	add    eax,ecx
  716e3c:	83 c7 0c             	add    edi,0xc
  716e3f:	83 c6 30             	add    esi,0x30
  716e42:	83 c5 30             	add    ebp,0x30
  716e45:	3b 43 08             	cmp    eax,DWORD PTR [ebx+0x8]
  716e48:	89 7c 24 48          	mov    DWORD PTR [esp+0x48],edi
  716e4c:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  716e50:	89 74 24 44          	mov    DWORD PTR [esp+0x44],esi
  716e54:	89 6c 24 30          	mov    DWORD PTR [esp+0x30],ebp
  716e58:	0f 82 12 fc ff ff    	jb     0x716a70
  716e5e:	8b 84 24 b4 00 00 00 	mov    eax,DWORD PTR [esp+0xb4]
  716e65:	5f                   	pop    edi
  716e66:	5e                   	pop    esi
  716e67:	5d                   	pop    ebp
  716e68:	5b                   	pop    ebx
  716e69:	81 c4 a0 00 00 00    	add    esp,0xa0
  716e6f:	c3                   	ret
