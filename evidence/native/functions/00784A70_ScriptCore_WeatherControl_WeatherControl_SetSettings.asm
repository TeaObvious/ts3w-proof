# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00784a70 <.text+0x383a70>:
  784a70:	55                   	push   ebp
  784a71:	8b ec                	mov    ebp,esp
  784a73:	83 e4 f0             	and    esp,0xfffffff0
  784a76:	83 ec 74             	sub    esp,0x74
  784a79:	53                   	push   ebx
  784a7a:	56                   	push   esi
  784a7b:	57                   	push   edi
  784a7c:	8b 3d c4 db 1e 01    	mov    edi,DWORD PTR ds:0x11edbc4
  784a82:	33 f6                	xor    esi,esi
  784a84:	3b fe                	cmp    edi,esi
  784a86:	0f 84 d5 02 00 00    	je     0x784d61
  784a8c:	8b 5f 74             	mov    ebx,DWORD PTR [edi+0x74]
  784a8f:	3b de                	cmp    ebx,esi
  784a91:	0f 84 ca 02 00 00    	je     0x784d61
  784a97:	e8 f4 48 fe ff       	call   0x769390
  784a9c:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  784aa0:	51                   	push   ecx
  784aa1:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  784aa5:	51                   	push   ecx
  784aa6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  784aa9:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  784aad:	8b 10                	mov    edx,DWORD PTR [eax]
  784aaf:	8b 52 78             	mov    edx,DWORD PTR [edx+0x78]
  784ab2:	51                   	push   ecx
  784ab3:	8b c8                	mov    ecx,eax
  784ab5:	ff d2                	call   edx
  784ab7:	83 7c 24 10 17       	cmp    DWORD PTR [esp+0x10],0x17
  784abc:	0f 85 9f 02 00 00    	jne    0x784d61
  784ac2:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  784ac9:	00 
  784aca:	f3 0f 10 0d 18 b2 fa 	movss  xmm1,DWORD PTR ds:0xfab218
  784ad1:	00 
  784ad2:	8d 44 24 20          	lea    eax,[esp+0x20]
  784ad6:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  784adc:	0f 57 c0             	xorps  xmm0,xmm0
  784adf:	50                   	push   eax
  784ae0:	8b cb                	mov    ecx,ebx
  784ae2:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  784ae6:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  784aec:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
  784af0:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  784af6:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  784afc:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  784b02:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  784b08:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  784b0e:	c6 44 24 48 00       	mov    BYTE PTR [esp+0x48],0x0
  784b13:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  784b19:	c6 44 24 50 01       	mov    BYTE PTR [esp+0x50],0x1
  784b1e:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  784b24:	f3 0f 11 4c 24 58    	movss  DWORD PTR [esp+0x58],xmm1
  784b2a:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  784b30:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  784b36:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  784b3c:	f3 0f 11 44 24 74    	movss  DWORD PTR [esp+0x74],xmm0
  784b42:	f3 0f 11 44 24 78    	movss  DWORD PTR [esp+0x78],xmm0
  784b48:	f3 0f 11 44 24 7c    	movss  DWORD PTR [esp+0x7c],xmm0
  784b4e:	e8 7d 4e 5e 00       	call   0xd699d0
  784b53:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  784b57:	d9 06                	fld    DWORD PTR [esi]
  784b59:	83 ec 08             	sub    esp,0x8
  784b5c:	dd 1c 24             	fstp   QWORD PTR [esp]
  784b5f:	e8 6c ac 7f 00       	call   0xf7f7d0
  784b64:	d9 7c 24 16          	fnstcw WORD PTR [esp+0x16]
  784b68:	83 c4 08             	add    esp,0x8
  784b6b:	0f b7 44 24 0e       	movzx  eax,WORD PTR [esp+0xe]
  784b70:	0d 00 0c 00 00       	or     eax,0xc00
  784b75:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  784b79:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
  784b7d:	df 7c 24 18          	fistp  QWORD PTR [esp+0x18]
  784b81:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  784b85:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  784b89:	f3 0f 10 46 04       	movss  xmm0,DWORD PTR [esi+0x4]
  784b8e:	d9 6c 24 0e          	fldcw  WORD PTR [esp+0xe]
  784b92:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  784b98:	d9 46 08             	fld    DWORD PTR [esi+0x8]
  784b9b:	d9 7c 24 0e          	fnstcw WORD PTR [esp+0xe]
  784b9f:	0f b7 44 24 0e       	movzx  eax,WORD PTR [esp+0xe]
  784ba4:	0d 00 0c 00 00       	or     eax,0xc00
  784ba9:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  784bad:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
  784bb1:	df 7c 24 18          	fistp  QWORD PTR [esp+0x18]
  784bb5:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  784bb9:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  784bbd:	f3 0f 10 46 0c       	movss  xmm0,DWORD PTR [esi+0xc]
  784bc2:	d9 6c 24 0e          	fldcw  WORD PTR [esp+0xe]
  784bc6:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  784bcc:	f3 0f 10 46 10       	movss  xmm0,DWORD PTR [esi+0x10]
  784bd1:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  784bd7:	d9 46 14             	fld    DWORD PTR [esi+0x14]
  784bda:	d9 7c 24 0e          	fnstcw WORD PTR [esp+0xe]
  784bde:	0f b7 44 24 0e       	movzx  eax,WORD PTR [esp+0xe]
  784be3:	0d 00 0c 00 00       	or     eax,0xc00
  784be8:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  784bec:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
  784bf0:	df 7c 24 18          	fistp  QWORD PTR [esp+0x18]
  784bf4:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  784bf8:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  784bfc:	d9 6c 24 0e          	fldcw  WORD PTR [esp+0xe]
  784c00:	d9 46 18             	fld    DWORD PTR [esi+0x18]
  784c03:	d9 7c 24 0e          	fnstcw WORD PTR [esp+0xe]
  784c07:	0f b7 44 24 0e       	movzx  eax,WORD PTR [esp+0xe]
  784c0c:	0d 00 0c 00 00       	or     eax,0xc00
  784c11:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  784c15:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
  784c19:	df 7c 24 18          	fistp  QWORD PTR [esp+0x18]
  784c1d:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  784c21:	89 4c 24 5c          	mov    DWORD PTR [esp+0x5c],ecx
  784c25:	f3 0f 2c 56 1c       	cvttss2si edx,DWORD PTR [esi+0x1c]
  784c2a:	d9 6c 24 0e          	fldcw  WORD PTR [esp+0xe]
  784c2e:	66 89 54 24 60       	mov    WORD PTR [esp+0x60],dx
  784c33:	f3 0f 10 46 20       	movss  xmm0,DWORD PTR [esi+0x20]
  784c38:	f3 0f 10 15 44 17 01 	movss  xmm2,DWORD PTR ds:0x1011744
  784c3f:	01 
  784c40:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  784c46:	f3 0f 10 46 24       	movss  xmm0,DWORD PTR [esi+0x24]
  784c4b:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  784c51:	f3 0f 10 46 28       	movss  xmm0,DWORD PTR [esi+0x28]
  784c56:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  784c5c:	f3 0f 10 46 2c       	movss  xmm0,DWORD PTR [esi+0x2c]
  784c61:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  784c67:	f3 0f 10 46 30       	movss  xmm0,DWORD PTR [esi+0x30]
  784c6c:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  784c72:	f3 0f 10 4e 34       	movss  xmm1,DWORD PTR [esi+0x34]
  784c77:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  784c7e:	00 
  784c7f:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  784c83:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  784c87:	0f 28 d8             	movaps xmm3,xmm0
  784c8a:	0f 59 d9             	mulps  xmm3,xmm1
  784c8d:	0f 5f d9             	maxps  xmm3,xmm1
  784c90:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  784c94:	0f c2 da 02          	cmpleps xmm3,xmm2
  784c98:	0f 50 c3             	movmskps eax,xmm3
  784c9b:	83 f8 0f             	cmp    eax,0xf
  784c9e:	0f 95 c1             	setne  cl
  784ca1:	88 4c 24 4c          	mov    BYTE PTR [esp+0x4c],cl
  784ca5:	f3 0f 10 4e 38       	movss  xmm1,DWORD PTR [esi+0x38]
  784caa:	f3 0f 11 4c 24 50    	movss  DWORD PTR [esp+0x50],xmm1
  784cb0:	f3 0f 10 4e 3c       	movss  xmm1,DWORD PTR [esi+0x3c]
  784cb5:	f3 0f 11 4c 24 64    	movss  DWORD PTR [esp+0x64],xmm1
  784cbb:	f3 0f 10 4e 40       	movss  xmm1,DWORD PTR [esi+0x40]
  784cc0:	f3 0f 11 4c 24 68    	movss  DWORD PTR [esp+0x68],xmm1
  784cc6:	f3 0f 10 4e 44       	movss  xmm1,DWORD PTR [esi+0x44]
  784ccb:	f3 0f 11 4c 24 54    	movss  DWORD PTR [esp+0x54],xmm1
  784cd1:	f3 0f 10 4e 48       	movss  xmm1,DWORD PTR [esi+0x48]
  784cd6:	f3 0f 11 4c 24 6c    	movss  DWORD PTR [esp+0x6c],xmm1
  784cdc:	f3 0f 10 4e 4c       	movss  xmm1,DWORD PTR [esi+0x4c]
  784ce1:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  784ce5:	0f 59 c1             	mulps  xmm0,xmm1
  784ce8:	0f 5f c1             	maxps  xmm0,xmm1
  784ceb:	0f c2 c2 02          	cmpleps xmm0,xmm2
  784cef:	0f 50 d0             	movmskps edx,xmm0
  784cf2:	83 fa 0f             	cmp    edx,0xf
  784cf5:	0f 95 c0             	setne  al
  784cf8:	88 44 24 44          	mov    BYTE PTR [esp+0x44],al
  784cfc:	f3 0f 10 46 50       	movss  xmm0,DWORD PTR [esi+0x50]
  784d01:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  784d07:	f3 0f 10 46 54       	movss  xmm0,DWORD PTR [esi+0x54]
  784d0c:	f3 0f 11 44 24 74    	movss  DWORD PTR [esp+0x74],xmm0
  784d12:	f3 0f 10 46 58       	movss  xmm0,DWORD PTR [esi+0x58]
  784d17:	8b cf                	mov    ecx,edi
  784d19:	f3 0f 11 44 24 78    	movss  DWORD PTR [esp+0x78],xmm0
  784d1f:	e8 0c ac 4d 00       	call   0xc5f930
  784d24:	83 e8 01             	sub    eax,0x1
  784d27:	74 18                	je     0x784d41
  784d29:	83 e8 01             	sub    eax,0x1
  784d2c:	75 27                	jne    0x784d55
  784d2e:	0f 57 c0             	xorps  xmm0,xmm0
  784d31:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  784d37:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  784d3e:	00 
  784d3f:	eb 0e                	jmp    0x784d4f
  784d41:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  784d48:	00 
  784d49:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  784d4f:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  784d55:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  784d59:	51                   	push   ecx
  784d5a:	8b cb                	mov    ecx,ebx
  784d5c:	e8 9f 4c 5e 00       	call   0xd69a00
  784d61:	5f                   	pop    edi
  784d62:	5e                   	pop    esi
  784d63:	5b                   	pop    ebx
  784d64:	8b e5                	mov    esp,ebp
  784d66:	5d                   	pop    ebp
  784d67:	c3                   	ret
