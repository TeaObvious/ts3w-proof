# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0073ac90, 0x0073afa6); analyst name Animation_PlayProcedurallyMotionAccumulatedAnimation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0073ac90 <.text+0x339c90>:
  73ac90:	55                   	push   ebp
  73ac91:	8b ec                	mov    ebp,esp
  73ac93:	83 e4 f0             	and    esp,0xfffffff0
  73ac96:	81 ec 84 00 00 00    	sub    esp,0x84
  73ac9c:	53                   	push   ebx
  73ac9d:	56                   	push   esi
  73ac9e:	57                   	push   edi
  73ac9f:	e8 cc c8 1f 00       	call   0x937570
  73aca4:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  73aca7:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  73acaa:	51                   	push   ecx
  73acab:	52                   	push   edx
  73acac:	8b c8                	mov    ecx,eax
  73acae:	e8 cd d2 1f 00       	call   0x937f80
  73acb3:	8b f0                	mov    esi,eax
  73acb5:	33 ff                	xor    edi,edi
  73acb7:	3b f7                	cmp    esi,edi
  73acb9:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  73acbd:	0f 84 dc 02 00 00    	je     0x73af9f
  73acc3:	8d 46 04             	lea    eax,[esi+0x4]
  73acc6:	b9 01 00 00 00       	mov    ecx,0x1
  73accb:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  73accf:	8b 15 84 d4 1d 01    	mov    edx,DWORD PTR ds:0x11dd484
  73acd5:	52                   	push   edx
  73acd6:	8b ce                	mov    ecx,esi
  73acd8:	e8 83 95 1f 00       	call   0x934260
  73acdd:	8b d8                	mov    ebx,eax
  73acdf:	3b df                	cmp    ebx,edi
  73ace1:	0f 84 98 02 00 00    	je     0x73af7f
  73ace7:	57                   	push   edi
  73ace8:	57                   	push   edi
  73ace9:	57                   	push   edi
  73acea:	57                   	push   edi
  73aceb:	68 e0 fd ff 00       	push   0xfffde0
  73acf0:	68 00 06 00 00       	push   0x600
  73acf5:	e8 06 98 da ff       	call   0x4e4500
  73acfa:	83 c4 18             	add    esp,0x18
  73acfd:	3b c7                	cmp    eax,edi
  73acff:	0f 84 d1 01 00 00    	je     0x73aed6
  73ad05:	d9 ee                	fldz
  73ad07:	51                   	push   ecx
  73ad08:	8d 4b 08             	lea    ecx,[ebx+0x8]
  73ad0b:	d9 1c 24             	fstp   DWORD PTR [esp]
  73ad0e:	51                   	push   ecx
  73ad0f:	8b c8                	mov    ecx,eax
  73ad11:	e8 4a df e2 ff       	call   0x568c60
  73ad16:	8b f0                	mov    esi,eax
  73ad18:	3b f7                	cmp    esi,edi
  73ad1a:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  73ad1e:	74 04                	je     0x73ad24
  73ad20:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  73ad24:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  73ad27:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  73ad2a:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  73ad2d:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  73ad31:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  73ad35:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  73ad38:	8d 44 24 20          	lea    eax,[esp+0x20]
  73ad3c:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  73ad40:	50                   	push   eax
  73ad41:	8b ce                	mov    ecx,esi
  73ad43:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
  73ad47:	e8 24 f4 e2 ff       	call   0x56a170
  73ad4c:	0f 57 c0             	xorps  xmm0,xmm0
  73ad4f:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  73ad55:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  73ad5b:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  73ad61:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  73ad67:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  73ad6c:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  73ad70:	51                   	push   ecx
  73ad71:	0f 29 4c 24 44       	movaps XMMWORD PTR [esp+0x44],xmm1
  73ad76:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  73ad7e:	8d 54 24 44          	lea    edx,[esp+0x44]
  73ad82:	f3 0f 11 4c 24 40    	movss  DWORD PTR [esp+0x40],xmm1
  73ad88:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  73ad8e:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  73ad94:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  73ad9a:	0f 28 44 24 34       	movaps xmm0,XMMWORD PTR [esp+0x34]
  73ad9f:	52                   	push   edx
  73ada0:	56                   	push   esi
  73ada1:	0f 29 44 24 5c       	movaps XMMWORD PTR [esp+0x5c],xmm0
  73ada6:	e8 d5 dc 10 00       	call   0x848a80
  73adab:	dd d8                	fstp   st(0)
  73adad:	f3 0f 10 4d 2c       	movss  xmm1,DWORD PTR [ebp+0x2c]
  73adb2:	f3 0f 10 45 24       	movss  xmm0,DWORD PTR [ebp+0x24]
  73adb7:	f3 0f 10 55 38       	movss  xmm2,DWORD PTR [ebp+0x38]
  73adbc:	f3 0f 11 4c 24 44    	movss  DWORD PTR [esp+0x44],xmm1
  73adc2:	f3 0f 10 4d 28       	movss  xmm1,DWORD PTR [ebp+0x28]
  73adc7:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  73adcd:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  73add3:	f3 0f 10 45 30       	movss  xmm0,DWORD PTR [ebp+0x30]
  73add8:	57                   	push   edi
  73add9:	f3 0f 11 4c 24 44    	movss  DWORD PTR [esp+0x44],xmm1
  73addf:	0f 28 4c 24 40       	movaps xmm1,XMMWORD PTR [esp+0x40]
  73ade4:	57                   	push   edi
  73ade5:	f3 0f 11 54 24 4c    	movss  DWORD PTR [esp+0x4c],xmm2
  73adeb:	f3 0f 10 55 34       	movss  xmm2,DWORD PTR [ebp+0x34]
  73adf0:	57                   	push   edi
  73adf1:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  73adf7:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  73adfd:	f3 0f 11 54 24 4c    	movss  DWORD PTR [esp+0x4c],xmm2
  73ae03:	0f 28 44 24 48       	movaps xmm0,XMMWORD PTR [esp+0x48]
  73ae08:	57                   	push   edi
  73ae09:	0f 29 44 24 7c       	movaps XMMWORD PTR [esp+0x7c],xmm0
  73ae0e:	68 fc fd ff 00       	push   0xfffdfc
  73ae13:	0f 5c c1             	subps  xmm0,xmm1
  73ae16:	6a 50                	push   0x50
  73ae18:	0f 29 8c 24 94 00 00 00 	movaps XMMWORD PTR [esp+0x94],xmm1
  73ae20:	0f 29 84 24 a4 00 00 00 	movaps XMMWORD PTR [esp+0xa4],xmm0
  73ae28:	e8 d3 96 da ff       	call   0x4e4500
  73ae2d:	83 c4 24             	add    esp,0x24
  73ae30:	3b c7                	cmp    eax,edi
  73ae32:	74 20                	je     0x73ae54
  73ae34:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  73ae38:	51                   	push   ecx
  73ae39:	8d 54 24 74          	lea    edx,[esp+0x74]
  73ae3d:	52                   	push   edx
  73ae3e:	56                   	push   esi
  73ae3f:	8d 4b 08             	lea    ecx,[ebx+0x8]
  73ae42:	51                   	push   ecx
  73ae43:	8b c8                	mov    ecx,eax
  73ae45:	e8 c6 54 e3 ff       	call   0x570310
  73ae4a:	8b f8                	mov    edi,eax
  73ae4c:	85 ff                	test   edi,edi
  73ae4e:	74 04                	je     0x73ae54
  73ae50:	83 47 04 01          	add    DWORD PTR [edi+0x4],0x1
  73ae54:	0f 28 84 24 80 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x80]
  73ae5c:	0f 28 4c 24 40       	movaps xmm1,XMMWORD PTR [esp+0x40]
  73ae61:	6a 00                	push   0x0
  73ae63:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  73ae67:	6a 00                	push   0x0
  73ae69:	0f c6 c9 55          	shufps xmm1,xmm1,0x55
  73ae6d:	0f 5e c1             	divps  xmm0,xmm1
  73ae70:	0f 51 c0             	sqrtps xmm0,xmm0
  73ae73:	0f 29 44 24 38       	movaps XMMWORD PTR [esp+0x38],xmm0
  73ae78:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  73ae80:	f3 0f 5e 44 24 38    	divss  xmm0,DWORD PTR [esp+0x38]
  73ae86:	6a 00                	push   0x0
  73ae88:	6a 00                	push   0x0
  73ae8a:	f3 0f 10 c0          	movss  xmm0,xmm0
  73ae8e:	68 c0 fd ff 00       	push   0xfffdc0
  73ae93:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  73ae97:	6a 38                	push   0x38
  73ae99:	0f 29 44 24 48       	movaps XMMWORD PTR [esp+0x48],xmm0
  73ae9e:	e8 5d 96 da ff       	call   0x4e4500
  73aea3:	83 c4 18             	add    esp,0x18
  73aea6:	85 c0                	test   eax,eax
  73aea8:	74 37                	je     0x73aee1
  73aeaa:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  73aeae:	51                   	push   ecx
  73aeaf:	d9 1c 24             	fstp   DWORD PTR [esp]
  73aeb2:	57                   	push   edi
  73aeb3:	8d 53 08             	lea    edx,[ebx+0x8]
  73aeb6:	52                   	push   edx
  73aeb7:	8b c8                	mov    ecx,eax
  73aeb9:	e8 12 4c e3 ff       	call   0x56fad0
  73aebe:	8b f0                	mov    esi,eax
  73aec0:	85 f6                	test   esi,esi
  73aec2:	74 04                	je     0x73aec8
  73aec4:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  73aec8:	a1 34 4e 1d 01       	mov    eax,ds:0x11d4e34
  73aecd:	85 c0                	test   eax,eax
  73aecf:	74 14                	je     0x73aee5
  73aed1:	83 c0 04             	add    eax,0x4
  73aed4:	eb 11                	jmp    0x73aee7
  73aed6:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  73aeda:	8b f7                	mov    esi,edi
  73aedc:	e9 43 fe ff ff       	jmp    0x73ad24
  73aee1:	33 f6                	xor    esi,esi
  73aee3:	eb e3                	jmp    0x73aec8
  73aee5:	33 c0                	xor    eax,eax
  73aee7:	85 f6                	test   esi,esi
  73aee9:	74 05                	je     0x73aef0
  73aeeb:	8d 4e 0c             	lea    ecx,[esi+0xc]
  73aeee:	eb 02                	jmp    0x73aef2
  73aef0:	33 c9                	xor    ecx,ecx
  73aef2:	6a ff                	push   0xffffffff
  73aef4:	50                   	push   eax
  73aef5:	e8 86 bf e3 ff       	call   0x576e80
  73aefa:	d9 05 18 b2 fa 00    	fld    DWORD PTR ds:0xfab218
  73af00:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  73af03:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  73af06:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
  73af09:	8d 4b 08             	lea    ecx,[ebx+0x8]
  73af0c:	bb 01 00 00 00       	mov    ebx,0x1
  73af11:	53                   	push   ebx
  73af12:	6a 00                	push   0x0
  73af14:	6a 00                	push   0x0
  73af16:	6a 00                	push   0x0
  73af18:	83 ec 08             	sub    esp,0x8
  73af1b:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  73af1f:	d9 1c 24             	fstp   DWORD PTR [esp]
  73af22:	53                   	push   ebx
  73af23:	56                   	push   esi
  73af24:	52                   	push   edx
  73af25:	ff d0                	call   eax
  73af27:	85 f6                	test   esi,esi
  73af29:	74 17                	je     0x73af42
  73af2b:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  73af2e:	83 c0 ff             	add    eax,0xffffffff
  73af31:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  73af34:	75 0c                	jne    0x73af42
  73af36:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  73af39:	8b 16                	mov    edx,DWORD PTR [esi]
  73af3b:	8b 02                	mov    eax,DWORD PTR [edx]
  73af3d:	53                   	push   ebx
  73af3e:	8b ce                	mov    ecx,esi
  73af40:	ff d0                	call   eax
  73af42:	85 ff                	test   edi,edi
  73af44:	74 17                	je     0x73af5d
  73af46:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  73af49:	83 c0 ff             	add    eax,0xffffffff
  73af4c:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  73af4f:	75 0c                	jne    0x73af5d
  73af51:	89 5f 04             	mov    DWORD PTR [edi+0x4],ebx
  73af54:	8b 17                	mov    edx,DWORD PTR [edi]
  73af56:	8b 02                	mov    eax,DWORD PTR [edx]
  73af58:	53                   	push   ebx
  73af59:	8b cf                	mov    ecx,edi
  73af5b:	ff d0                	call   eax
  73af5d:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  73af61:	85 c9                	test   ecx,ecx
  73af63:	74 16                	je     0x73af7b
  73af65:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  73af68:	83 c0 ff             	add    eax,0xffffffff
  73af6b:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  73af6e:	75 0b                	jne    0x73af7b
  73af70:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  73af73:	8b 11                	mov    edx,DWORD PTR [ecx]
  73af75:	8b 02                	mov    eax,DWORD PTR [edx]
  73af77:	6a 01                	push   0x1
  73af79:	ff d0                	call   eax
  73af7b:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  73af7f:	8d 46 04             	lea    eax,[esi+0x4]
  73af82:	8b c8                	mov    ecx,eax
  73af84:	83 ca ff             	or     edx,0xffffffff
  73af87:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  73af8b:	4a                   	dec    edx
  73af8c:	75 11                	jne    0x73af9f
  73af8e:	b9 01 00 00 00       	mov    ecx,0x1
  73af93:	87 08                	xchg   DWORD PTR [eax],ecx
  73af95:	8b 16                	mov    edx,DWORD PTR [esi]
  73af97:	8b 02                	mov    eax,DWORD PTR [edx]
  73af99:	6a 01                	push   0x1
  73af9b:	8b ce                	mov    ecx,esi
  73af9d:	ff d0                	call   eax
  73af9f:	5f                   	pop    edi
  73afa0:	5e                   	pop    esi
  73afa1:	5b                   	pop    ebx
  73afa2:	8b e5                	mov    esp,ebp
  73afa4:	5d                   	pop    ebp
  73afa5:	c3                   	ret
