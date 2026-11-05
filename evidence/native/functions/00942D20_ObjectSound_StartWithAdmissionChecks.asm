# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942d20 <.text+0x541d20>:
  942d20:	55                   	push   ebp
  942d21:	8b ec                	mov    ebp,esp
  942d23:	83 e4 f0             	and    esp,0xfffffff0
  942d26:	83 ec 74             	sub    esp,0x74
  942d29:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  942d2c:	53                   	push   ebx
  942d2d:	8a d0                	mov    dl,al
  942d2f:	56                   	push   esi
  942d30:	8b 35 40 9c 1d 01    	mov    esi,DWORD PTR ds:0x11d9c40
  942d36:	d1 e8                	shr    eax,1
  942d38:	80 e2 01             	and    dl,0x1
  942d3b:	24 01                	and    al,0x1
  942d3d:	85 f6                	test   esi,esi
  942d3f:	8b d9                	mov    ebx,ecx
  942d41:	57                   	push   edi
  942d42:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  942d46:	88 54 24 11          	mov    BYTE PTR [esp+0x11],dl
  942d4a:	88 44 24 12          	mov    BYTE PTR [esp+0x12],al
  942d4e:	0f 84 37 06 00 00    	je     0x94338b
  942d54:	81 c6 30 84 fd ff    	add    esi,0xfffd8430
  942d5a:	0f 84 2b 06 00 00    	je     0x94338b
  942d60:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  942d63:	85 c9                	test   ecx,ecx
  942d65:	74 15                	je     0x942d7c
  942d67:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  942d6c:	50                   	push   eax
  942d6d:	e8 ee 14 ff ff       	call   0x934260
  942d72:	8a 54 24 11          	mov    dl,BYTE PTR [esp+0x11]
  942d76:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  942d7a:	eb 08                	jmp    0x942d84
  942d7c:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
  942d83:	00 
  942d84:	84 d2                	test   dl,dl
  942d86:	75 65                	jne    0x942ded
  942d88:	38 54 24 12          	cmp    BYTE PTR [esp+0x12],dl
  942d8c:	75 5f                	jne    0x942ded
  942d8e:	83 7c 24 14 00       	cmp    DWORD PTR [esp+0x14],0x0
  942d93:	74 58                	je     0x942ded
  942d95:	e8 b6 72 02 00       	call   0x96a050
  942d9a:	8b f8                	mov    edi,eax
  942d9c:	85 ff                	test   edi,edi
  942d9e:	74 4d                	je     0x942ded
  942da0:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  942da4:	51                   	push   ecx
  942da5:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  942da9:	e8 c2 52 01 00       	call   0x958070
  942dae:	0f 28 4f 60          	movaps xmm1,XMMWORD PTR [edi+0x60]
  942db2:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  942db7:	0f 5c c1             	subps  xmm0,xmm1
  942dba:	0f 59 c0             	mulps  xmm0,xmm0
  942dbd:	0f 28 c8             	movaps xmm1,xmm0
  942dc0:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  942dc4:	0f 28 d1             	movaps xmm2,xmm1
  942dc7:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  942dcb:	0f 58 c2             	addps  xmm0,xmm2
  942dce:	0f 58 c1             	addps  xmm0,xmm1
  942dd1:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  942dd5:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  942dda:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  942de0:	0f 2f 05 5c 46 04 01 	comiss xmm0,DWORD PTR ds:0x104465c
  942de7:	0f 87 9e 05 00 00    	ja     0x94338b
  942ded:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  942df0:	8b 3d b4 ed 1c 01    	mov    edi,DWORD PTR ds:0x11cedb4
  942df6:	6a 03                	push   0x3
  942df8:	68 58 46 04 01       	push   0x1044658
  942dfd:	52                   	push   edx
  942dfe:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
  942e02:	e8 59 b9 bb ff       	call   0x4fe760
  942e07:	85 c0                	test   eax,eax
  942e09:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  942e0c:	6a 07                	push   0x7
  942e0e:	68 1c 1a 01 01       	push   0x1011a1c
  942e13:	50                   	push   eax
  942e14:	0f 94 44 24 28       	sete   BYTE PTR [esp+0x28]
  942e19:	e8 42 b9 bb ff       	call   0x4fe760
  942e1e:	83 c4 18             	add    esp,0x18
  942e21:	85 c0                	test   eax,eax
  942e23:	0f 94 44 24 13       	sete   BYTE PTR [esp+0x13]
  942e28:	83 ff 03             	cmp    edi,0x3
  942e2b:	75 13                	jne    0x942e40
  942e2d:	80 7c 24 10 00       	cmp    BYTE PTR [esp+0x10],0x0
  942e32:	74 0c                	je     0x942e40
  942e34:	8b 4b 20             	mov    ecx,DWORD PTR [ebx+0x20]
  942e37:	3b 4b 24             	cmp    ecx,DWORD PTR [ebx+0x24]
  942e3a:	0f 85 4b 05 00 00    	jne    0x94338b
  942e40:	8b 4b 24             	mov    ecx,DWORD PTR [ebx+0x24]
  942e43:	2b 4b 20             	sub    ecx,DWORD PTR [ebx+0x20]
  942e46:	8d 7b 20             	lea    edi,[ebx+0x20]
  942e49:	b8 67 66 66 66       	mov    eax,0x66666667
  942e4e:	f7 e9                	imul   ecx
  942e50:	c1 fa 03             	sar    edx,0x3
  942e53:	8b c2                	mov    eax,edx
  942e55:	c1 e8 1f             	shr    eax,0x1f
  942e58:	03 c2                	add    eax,edx
  942e5a:	83 f8 08             	cmp    eax,0x8
  942e5d:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  942e61:	0f 83 24 05 00 00    	jae    0x94338b
  942e67:	80 7b 4c 00          	cmp    BYTE PTR [ebx+0x4c],0x0
  942e6b:	75 70                	jne    0x942edd
  942e6d:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  942e72:	75 69                	jne    0x942edd
  942e74:	80 7c 24 11 00       	cmp    BYTE PTR [esp+0x11],0x0
  942e79:	75 0b                	jne    0x942e86
  942e7b:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  942e80:	0f 84 05 05 00 00    	je     0x94338b
  942e86:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  942e89:	85 c0                	test   eax,eax
  942e8b:	75 09                	jne    0x942e96
  942e8d:	8b 16                	mov    edx,DWORD PTR [esi]
  942e8f:	8b 42 2c             	mov    eax,DWORD PTR [edx+0x2c]
  942e92:	8b ce                	mov    ecx,esi
  942e94:	ff d0                	call   eax
  942e96:	8b f0                	mov    esi,eax
  942e98:	85 f6                	test   esi,esi
  942e9a:	0f 84 eb 04 00 00    	je     0x94338b
  942ea0:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  942ea3:	51                   	push   ecx
  942ea4:	56                   	push   esi
  942ea5:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  942ea9:	e8 92 f7 ff ff       	call   0x942640
  942eae:	80 7c 24 10 00       	cmp    BYTE PTR [esp+0x10],0x0
  942eb3:	74 08                	je     0x942ebd
  942eb5:	81 4c 24 40 00 00 00 	or     DWORD PTR [esp+0x40],0x80000000
  942ebc:	80 
  942ebd:	8d 54 24 40          	lea    edx,[esp+0x40]
  942ec1:	52                   	push   edx
  942ec2:	8b cf                	mov    ecx,edi
  942ec4:	e8 e7 fb ff ff       	call   0x942ab0
  942ec9:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  942ecd:	e8 7e f5 ff ff       	call   0x942450
  942ed2:	8b c6                	mov    eax,esi
  942ed4:	5f                   	pop    edi
  942ed5:	5e                   	pop    esi
  942ed6:	5b                   	pop    ebx
  942ed7:	8b e5                	mov    esp,ebp
  942ed9:	5d                   	pop    ebp
  942eda:	c2 10 00             	ret    0x10
  942edd:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  942ee0:	85 c0                	test   eax,eax
  942ee2:	74 08                	je     0x942eec
  942ee4:	8b f8                	mov    edi,eax
  942ee6:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  942eea:	eb 0f                	jmp    0x942efb
  942eec:	8b 06                	mov    eax,DWORD PTR [esi]
  942eee:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
  942ef1:	8b ce                	mov    ecx,esi
  942ef3:	ff d2                	call   edx
  942ef5:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  942ef9:	8b f8                	mov    edi,eax
  942efb:	85 ff                	test   edi,edi
  942efd:	0f 84 88 04 00 00    	je     0x94338b
  942f03:	8b 06                	mov    eax,DWORD PTR [esi]
  942f05:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
  942f08:	68 65 53 47 03       	push   0x3475365
  942f0d:	8b ce                	mov    ecx,esi
  942f0f:	ff d2                	call   edx
  942f11:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  942f14:	8b 06                	mov    eax,DWORD PTR [esi]
  942f16:	8b 50 54             	mov    edx,DWORD PTR [eax+0x54]
  942f19:	6a 00                	push   0x0
  942f1b:	51                   	push   ecx
  942f1c:	68 7e 53 47 03       	push   0x347537e
  942f21:	8b ce                	mov    ecx,esi
  942f23:	ff d2                	call   edx
  942f25:	8b 06                	mov    eax,DWORD PTR [esi]
  942f27:	8b 50 50             	mov    edx,DWORD PTR [eax+0x50]
  942f2a:	6a 00                	push   0x0
  942f2c:	6a 00                	push   0x0
  942f2e:	68 81 53 47 03       	push   0x3475381
  942f33:	8b ce                	mov    ecx,esi
  942f35:	ff d2                	call   edx
  942f37:	8b 06                	mov    eax,DWORD PTR [esi]
  942f39:	8b 50 4c             	mov    edx,DWORD PTR [eax+0x4c]
  942f3c:	57                   	push   edi
  942f3d:	68 85 53 47 03       	push   0x3475385
  942f42:	8b ce                	mov    ecx,esi
  942f44:	ff d2                	call   edx
  942f46:	8b 06                	mov    eax,DWORD PTR [esi]
  942f48:	8b 50 4c             	mov    edx,DWORD PTR [eax+0x4c]
  942f4b:	33 c9                	xor    ecx,ecx
  942f4d:	38 4c 24 11          	cmp    BYTE PTR [esp+0x11],cl
  942f51:	0f 95 c1             	setne  cl
  942f54:	51                   	push   ecx
  942f55:	68 8c 53 47 03       	push   0x347538c
  942f5a:	8b ce                	mov    ecx,esi
  942f5c:	ff d2                	call   edx
  942f5e:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  942f61:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  942f64:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  942f67:	8b 16                	mov    edx,DWORD PTR [esi]
  942f69:	8b 52 50             	mov    edx,DWORD PTR [edx+0x50]
  942f6c:	51                   	push   ecx
  942f6d:	50                   	push   eax
  942f6e:	68 1f 8a f1 13       	push   0x13f18a1f
  942f73:	8b ce                	mov    ecx,esi
  942f75:	ff d2                	call   edx
  942f77:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  942f7a:	85 c0                	test   eax,eax
  942f7c:	74 16                	je     0x942f94
  942f7e:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  942f81:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  942f84:	8b 16                	mov    edx,DWORD PTR [esi]
  942f86:	8b 52 50             	mov    edx,DWORD PTR [edx+0x50]
  942f89:	51                   	push   ecx
  942f8a:	50                   	push   eax
  942f8b:	68 1e 6a f1 6b       	push   0x6bf16a1e
  942f90:	8b ce                	mov    ecx,esi
  942f92:	ff d2                	call   edx
  942f94:	80 7c 24 10 00       	cmp    BYTE PTR [esp+0x10],0x0
  942f99:	75 12                	jne    0x942fad
  942f9b:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  942f9e:	8b 0d fc a0 1e 01    	mov    ecx,DWORD PTR ds:0x11ea0fc
  942fa4:	85 48 2c             	test   DWORD PTR [eax+0x2c],ecx
  942fa7:	0f 84 a0 00 00 00    	je     0x94304d
  942fad:	d9 ee                	fldz
  942faf:	8b 16                	mov    edx,DWORD PTR [esi]
  942fb1:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  942fb4:	51                   	push   ecx
  942fb5:	d9 1c 24             	fstp   DWORD PTR [esp]
  942fb8:	68 62 37 9c 48       	push   0x489c3762
  942fbd:	8b ce                	mov    ecx,esi
  942fbf:	ff d0                	call   eax
  942fc1:	d9 ee                	fldz
  942fc3:	8b 16                	mov    edx,DWORD PTR [esi]
  942fc5:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  942fc8:	51                   	push   ecx
  942fc9:	d9 1c 24             	fstp   DWORD PTR [esp]
  942fcc:	68 f4 5f 9a 77       	push   0x779a5ff4
  942fd1:	8b ce                	mov    ecx,esi
  942fd3:	ff d0                	call   eax
  942fd5:	d9 ee                	fldz
  942fd7:	8b 16                	mov    edx,DWORD PTR [esi]
  942fd9:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  942fdc:	51                   	push   ecx
  942fdd:	d9 1c 24             	fstp   DWORD PTR [esp]
  942fe0:	68 78 2a f8 4a       	push   0x4af82a78
  942fe5:	8b ce                	mov    ecx,esi
  942fe7:	ff d0                	call   eax
  942fe9:	d9 ee                	fldz
  942feb:	8b 16                	mov    edx,DWORD PTR [esi]
  942fed:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  942ff0:	51                   	push   ecx
  942ff1:	d9 1c 24             	fstp   DWORD PTR [esp]
  942ff4:	68 2b 68 3d 70       	push   0x703d682b
  942ff9:	8b ce                	mov    ecx,esi
  942ffb:	ff d0                	call   eax
  942ffd:	d9 ee                	fldz
  942fff:	8b 16                	mov    edx,DWORD PTR [esi]
  943001:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  943004:	51                   	push   ecx
  943005:	d9 1c 24             	fstp   DWORD PTR [esp]
  943008:	68 aa 5b 52 15       	push   0x15525baa
  94300d:	8b ce                	mov    ecx,esi
  94300f:	ff d0                	call   eax
  943011:	d9 ee                	fldz
  943013:	8b 16                	mov    edx,DWORD PTR [esi]
  943015:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  943018:	51                   	push   ecx
  943019:	d9 1c 24             	fstp   DWORD PTR [esp]
  94301c:	68 ec 7e 04 fc       	push   0xfc047eec
  943021:	8b ce                	mov    ecx,esi
  943023:	ff d0                	call   eax
  943025:	d9 ee                	fldz
  943027:	8b 16                	mov    edx,DWORD PTR [esi]
  943029:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  94302c:	51                   	push   ecx
  94302d:	d9 1c 24             	fstp   DWORD PTR [esp]
  943030:	68 db 68 eb 49       	push   0x49eb68db
  943035:	8b ce                	mov    ecx,esi
  943037:	ff d0                	call   eax
  943039:	d9 e8                	fld1
  94303b:	8b 16                	mov    edx,DWORD PTR [esi]
  94303d:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  943040:	51                   	push   ecx
  943041:	d9 1c 24             	fstp   DWORD PTR [esp]
  943044:	68 08 01 df 25       	push   0x25df0108
  943049:	8b ce                	mov    ecx,esi
  94304b:	ff d0                	call   eax
  94304d:	80 7b 4d 00          	cmp    BYTE PTR [ebx+0x4d],0x0
  943051:	74 14                	je     0x943067
  943053:	d9 e8                	fld1
  943055:	8b 16                	mov    edx,DWORD PTR [esi]
  943057:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  94305a:	51                   	push   ecx
  94305b:	d9 1c 24             	fstp   DWORD PTR [esp]
  94305e:	68 f2 72 f8 e1       	push   0xe1f872f2
  943063:	8b ce                	mov    ecx,esi
  943065:	ff d0                	call   eax
  943067:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  94306b:	85 c9                	test   ecx,ecx
  94306d:	0f 84 8d 00 00 00    	je     0x943100
  943073:	8d 54 24 30          	lea    edx,[esp+0x30]
  943077:	52                   	push   edx
  943078:	e8 f3 4f 01 00       	call   0x958070
  94307d:	8b 06                	mov    eax,DWORD PTR [esi]
  94307f:	8b 50 4c             	mov    edx,DWORD PTR [eax+0x4c]
  943082:	6a 01                	push   0x1
  943084:	68 89 53 47 03       	push   0x3475389
  943089:	8b ce                	mov    ecx,esi
  94308b:	ff d2                	call   edx
  94308d:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  943092:	8b 06                	mov    eax,DWORD PTR [esi]
  943094:	8b 50 48             	mov    edx,DWORD PTR [eax+0x48]
  943097:	51                   	push   ecx
  943098:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  94309d:	d9 44 24 44          	fld    DWORD PTR [esp+0x44]
  9430a1:	d9 1c 24             	fstp   DWORD PTR [esp]
  9430a4:	68 91 53 47 03       	push   0x3475391
  9430a9:	8b ce                	mov    ecx,esi
  9430ab:	ff d2                	call   edx
  9430ad:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  9430b2:	8b 06                	mov    eax,DWORD PTR [esi]
  9430b4:	8b 50 48             	mov    edx,DWORD PTR [eax+0x48]
  9430b7:	51                   	push   ecx
  9430b8:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  9430bd:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  9430c1:	d9 1c 24             	fstp   DWORD PTR [esp]
  9430c4:	68 95 53 47 03       	push   0x3475395
  9430c9:	8b ce                	mov    ecx,esi
  9430cb:	ff d2                	call   edx
  9430cd:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  9430d2:	8b 06                	mov    eax,DWORD PTR [esi]
  9430d4:	8b 50 48             	mov    edx,DWORD PTR [eax+0x48]
  9430d7:	51                   	push   ecx
  9430d8:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  9430dd:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  9430e1:	d9 1c 24             	fstp   DWORD PTR [esp]
  9430e4:	68 98 53 47 03       	push   0x3475398
  9430e9:	8b ce                	mov    ecx,esi
  9430eb:	ff d2                	call   edx
  9430ed:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  9430f0:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  9430f3:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  9430f6:	51                   	push   ecx
  9430f7:	52                   	push   edx
  9430f8:	57                   	push   edi
  9430f9:	8b ce                	mov    ecx,esi
  9430fb:	e8 80 31 f2 ff       	call   0x866280
  943100:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  943103:	85 c9                	test   ecx,ecx
  943105:	0f 84 d1 01 00 00    	je     0x9432dc
  94310b:	a1 08 df 1e 01       	mov    eax,ds:0x11edf08
  943110:	50                   	push   eax
  943111:	e8 4a 11 ff ff       	call   0x934260
  943116:	8b f8                	mov    edi,eax
  943118:	85 ff                	test   edi,edi
  94311a:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  94311e:	0f 84 b4 01 00 00    	je     0x9432d8
  943124:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  94312a:	85 c9                	test   ecx,ecx
  94312c:	74 23                	je     0x943151
  94312e:	8b 57 0c             	mov    edx,DWORD PTR [edi+0xc]
  943131:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  943134:	6a 00                	push   0x0
  943136:	52                   	push   edx
  943137:	50                   	push   eax
  943138:	e8 d3 f6 31 00       	call   0xc62810
  94313d:	8b d8                	mov    ebx,eax
  94313f:	33 c0                	xor    eax,eax
  943141:	3b d8                	cmp    ebx,eax
  943143:	74 10                	je     0x943155
  943145:	8b 8b 98 02 00 00    	mov    ecx,DWORD PTR [ebx+0x298]
  94314b:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  94314f:	eb 08                	jmp    0x943159
  943151:	33 db                	xor    ebx,ebx
  943153:	33 c0                	xor    eax,eax
  943155:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  943159:	39 44 24 14          	cmp    DWORD PTR [esp+0x14],eax
  94315d:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  943164:	00 
  943165:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  943169:	0f 84 aa 00 00 00    	je     0x943219
  94316f:	8d 54 24 38          	lea    edx,[esp+0x38]
  943173:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  943177:	52                   	push   edx
  943178:	8d 44 24 38          	lea    eax,[esp+0x38]
  94317c:	50                   	push   eax
  94317d:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  943181:	51                   	push   ecx
  943182:	8b cf                	mov    ecx,edi
  943184:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  94318a:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  943190:	e8 4b 63 34 00       	call   0xc894e0
  943195:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  943199:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  94319c:	50                   	push   eax
  94319d:	e8 be 27 1c 00       	call   0xb05960
  9431a2:	83 c4 04             	add    esp,0x4
  9431a5:	84 c0                	test   al,al
  9431a7:	74 4f                	je     0x9431f8
  9431a9:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  9431ad:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9431b0:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  9431b4:	51                   	push   ecx
  9431b5:	53                   	push   ebx
  9431b6:	50                   	push   eax
  9431b7:	e8 f4 e0 1b 00       	call   0xb012b0
  9431bc:	83 c4 0c             	add    esp,0xc
  9431bf:	84 c0                	test   al,al
  9431c1:	74 35                	je     0x9431f8
  9431c3:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  9431c7:	51                   	push   ecx
  9431c8:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  9431cc:	e8 cf 8b d4 ff       	call   0x68bda0
  9431d1:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [esp+0x40]
  9431d6:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  9431db:	f3 0f 10 4c 24 40    	movss  xmm1,DWORD PTR [esp+0x40]
  9431e1:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  9431e6:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  9431ec:	f3 0f 11 4c 24 30    	movss  DWORD PTR [esp+0x30],xmm1
  9431f2:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  9431f8:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  9431fc:	6a 01                	push   0x1
  9431fe:	6a 00                	push   0x0
  943200:	8d 54 24 38          	lea    edx,[esp+0x38]
  943204:	52                   	push   edx
  943205:	e8 b6 50 20 00       	call   0xb482c0
  94320a:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  943211:	00 
  943212:	0f bf c0             	movsx  eax,ax
  943215:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  943219:	8b 47 18             	mov    eax,DWORD PTR [edi+0x18]
  94321c:	8b f8                	mov    edi,eax
  94321e:	81 ef ff ff ff 7f    	sub    edi,0x7fffffff
  943224:	f7 df                	neg    edi
  943226:	1b ff                	sbb    edi,edi
  943228:	23 f8                	and    edi,eax
  94322a:	85 db                	test   ebx,ebx
  94322c:	74 65                	je     0x943293
  94322e:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  943232:	51                   	push   ecx
  943233:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  943237:	8d 54 24 38          	lea    edx,[esp+0x38]
  94323b:	52                   	push   edx
  94323c:	8d 44 24 38          	lea    eax,[esp+0x38]
  943240:	50                   	push   eax
  943241:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  943247:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  94324d:	c7 44 24 44 00 00 00 	mov    DWORD PTR [esp+0x44],0x0
  943254:	00 
  943255:	e8 86 62 34 00       	call   0xc894e0
  94325a:	6a 01                	push   0x1
  94325c:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  943260:	51                   	push   ecx
  943261:	53                   	push   ebx
  943262:	e8 39 c4 1b 00       	call   0xaff6a0
  943267:	83 c4 0c             	add    esp,0xc
  94326a:	84 c0                	test   al,al
  94326c:	74 25                	je     0x943293
  94326e:	8b 8b 98 02 00 00    	mov    ecx,DWORD PTR [ebx+0x298]
  943274:	33 ff                	xor    edi,edi
  943276:	85 c9                	test   ecx,ecx
  943278:	74 19                	je     0x943293
  94327a:	83 44 24 38 01       	add    DWORD PTR [esp+0x38],0x1
  94327f:	6a 01                	push   0x1
  943281:	57                   	push   edi
  943282:	8d 54 24 38          	lea    edx,[esp+0x38]
  943286:	52                   	push   edx
  943287:	e8 34 50 20 00       	call   0xb482c0
  94328c:	0f bf c0             	movsx  eax,ax
  94328f:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  943293:	8b 16                	mov    edx,DWORD PTR [esi]
  943295:	8b 42 58             	mov    eax,DWORD PTR [edx+0x58]
  943298:	53                   	push   ebx
  943299:	68 e6 b4 81 20       	push   0x2081b4e6
  94329e:	8b ce                	mov    ecx,esi
  9432a0:	ff d0                	call   eax
  9432a2:	8b 16                	mov    edx,DWORD PTR [esi]
  9432a4:	f3 0f 2a 44 24 1c    	cvtsi2ss xmm0,DWORD PTR [esp+0x1c]
  9432aa:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  9432ad:	51                   	push   ecx
  9432ae:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  9432b3:	68 67 d9 be 5d       	push   0x5dbed967
  9432b8:	8b ce                	mov    ecx,esi
  9432ba:	ff d0                	call   eax
  9432bc:	8b 16                	mov    edx,DWORD PTR [esi]
  9432be:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  9432c1:	51                   	push   ecx
  9432c2:	f3 0f 2a c7          	cvtsi2ss xmm0,edi
  9432c6:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  9432cb:	68 d1 78 ff 39       	push   0x39ff78d1
  9432d0:	8b ce                	mov    ecx,esi
  9432d2:	ff d0                	call   eax
  9432d4:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  9432d8:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  9432dc:	8b 16                	mov    edx,DWORD PTR [esi]
  9432de:	8b 42 68             	mov    eax,DWORD PTR [edx+0x68]
  9432e1:	8b ce                	mov    ecx,esi
  9432e3:	ff d0                	call   eax
  9432e5:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  9432e9:	83 f8 01             	cmp    eax,0x1
  9432ec:	74 05                	je     0x9432f3
  9432ee:	83 f8 02             	cmp    eax,0x2
  9432f1:	75 22                	jne    0x943315
  9432f3:	80 7c 24 10 00       	cmp    BYTE PTR [esp+0x10],0x0
  9432f8:	74 1b                	je     0x943315
  9432fa:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  9432fe:	8b 0e                	mov    ecx,DWORD PTR [esi]
  943300:	3b 4e 04             	cmp    ecx,DWORD PTR [esi+0x4]
  943303:	74 14                	je     0x943319
  943305:	68 00 00 00 80       	push   0x80000000
  94330a:	6a 00                	push   0x0
  94330c:	8b cb                	mov    ecx,ebx
  94330e:	e8 2d f9 ff ff       	call   0x942c40
  943313:	eb 04                	jmp    0x943319
  943315:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  943319:	80 7c 24 11 00       	cmp    BYTE PTR [esp+0x11],0x0
  94331e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  943321:	75 05                	jne    0x943328
  943323:	b8 7a 8f f9 00       	mov    eax,0xf98f7a
  943328:	50                   	push   eax
  943329:	57                   	push   edi
  94332a:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  94332e:	e8 0d f3 ff ff       	call   0x942640
  943333:	80 7c 24 10 00       	cmp    BYTE PTR [esp+0x10],0x0
  943338:	74 08                	je     0x943342
  94333a:	81 4c 24 40 00 00 00 	or     DWORD PTR [esp+0x40],0x80000000
  943341:	80 
  943342:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  943347:	75 07                	jne    0x943350
  943349:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  94334e:	74 08                	je     0x943358
  943350:	81 4c 24 40 00 00 00 	or     DWORD PTR [esp+0x40],0x40000000
  943357:	40 
  943358:	8d 54 24 40          	lea    edx,[esp+0x40]
  94335c:	52                   	push   edx
  94335d:	8b ce                	mov    ecx,esi
  94335f:	e8 4c f7 ff ff       	call   0x942ab0
  943364:	8b 4c 24 4c          	mov    ecx,DWORD PTR [esp+0x4c]
  943368:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  94336c:	2b c8                	sub    ecx,eax
  94336e:	83 f9 01             	cmp    ecx,0x1
  943371:	7e 0d                	jle    0x943380
  943373:	85 c0                	test   eax,eax
  943375:	74 09                	je     0x943380
  943377:	50                   	push   eax
  943378:	e8 63 11 ba ff       	call   0x4e44e0
  94337d:	83 c4 04             	add    esp,0x4
  943380:	8b c7                	mov    eax,edi
  943382:	5f                   	pop    edi
  943383:	5e                   	pop    esi
  943384:	5b                   	pop    ebx
  943385:	8b e5                	mov    esp,ebp
  943387:	5d                   	pop    ebp
  943388:	c2 10 00             	ret    0x10
  94338b:	5f                   	pop    edi
  94338c:	5e                   	pop    esi
  94338d:	33 c0                	xor    eax,eax
  94338f:	5b                   	pop    ebx
  943390:	8b e5                	mov    esp,ebp
  943392:	5d                   	pop    ebp
  943393:	c2 10 00             	ret    0x10
