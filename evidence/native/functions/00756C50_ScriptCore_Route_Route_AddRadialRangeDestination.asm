# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00756c50, 0x00756f96); analyst name Route_AddRadialRangeDestination.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00756c50 <.text+0x355c50>:
  756c50:	55                   	push   ebp
  756c51:	8b ec                	mov    ebp,esp
  756c53:	83 e4 f0             	and    esp,0xfffffff0
  756c56:	8b 0d c4 50 1d 01    	mov    ecx,DWORD PTR ds:0x11d50c4
  756c5c:	83 ec 44             	sub    esp,0x44
  756c5f:	85 c9                	test   ecx,ecx
  756c61:	53                   	push   ebx
  756c62:	56                   	push   esi
  756c63:	57                   	push   edi
  756c64:	0f 84 23 03 00 00    	je     0x756f8d
  756c6a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  756c6d:	50                   	push   eax
  756c6e:	e8 3d 48 ff ff       	call   0x74b4b0
  756c73:	8b d8                	mov    ebx,eax
  756c75:	85 db                	test   ebx,ebx
  756c77:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  756c7b:	0f 84 0c 03 00 00    	je     0x756f8d
  756c81:	8b 13                	mov    edx,DWORD PTR [ebx]
  756c83:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  756c86:	8b cb                	mov    ecx,ebx
  756c88:	ff d0                	call   eax
  756c8a:	8b cb                	mov    ecx,ebx
  756c8c:	e8 6f b6 ff ff       	call   0x752300
  756c91:	8b f8                	mov    edi,eax
  756c93:	85 ff                	test   edi,edi
  756c95:	0f 84 e9 02 00 00    	je     0x756f84
  756c9b:	8b 17                	mov    edx,DWORD PTR [edi]
  756c9d:	8b 02                	mov    eax,DWORD PTR [edx]
  756c9f:	8b cf                	mov    ecx,edi
  756ca1:	ff d0                	call   eax
  756ca3:	6a 00                	push   0x0
  756ca5:	6a 00                	push   0x0
  756ca7:	6a 00                	push   0x0
  756ca9:	6a 00                	push   0x0
  756cab:	68 c8 55 00 01       	push   0x10055c8
  756cb0:	68 80 00 00 00       	push   0x80
  756cb5:	e8 46 d8 d8 ff       	call   0x4e4500
  756cba:	83 c4 18             	add    esp,0x18
  756cbd:	85 c0                	test   eax,eax
  756cbf:	0f 84 b6 02 00 00    	je     0x756f7b
  756cc5:	8b c8                	mov    ecx,eax
  756cc7:	e8 14 87 ff ff       	call   0x74f3e0
  756ccc:	8b f0                	mov    esi,eax
  756cce:	85 f6                	test   esi,esi
  756cd0:	0f 84 a5 02 00 00    	je     0x756f7b
  756cd6:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  756cd9:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  756cdc:	8d 44 24 20          	lea    eax,[esp+0x20]
  756ce0:	89 4e 50             	mov    DWORD PTR [esi+0x50],ecx
  756ce3:	50                   	push   eax
  756ce4:	8d 4d 20             	lea    ecx,[ebp+0x20]
  756ce7:	89 56 54             	mov    DWORD PTR [esi+0x54],edx
  756cea:	e8 61 53 01 00       	call   0x76c050
  756cef:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  756cf2:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  756cf6:	51                   	push   ecx
  756cf7:	8d 4d 2c             	lea    ecx,[ebp+0x2c]
  756cfa:	0f 29 46 40          	movaps XMMWORD PTR [esi+0x40],xmm0
  756cfe:	e8 4d 53 01 00       	call   0x76c050
  756d03:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  756d06:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
  756d09:	85 db                	test   ebx,ebx
  756d0b:	8b 55 38             	mov    edx,DWORD PTR [ebp+0x38]
  756d0e:	0f 29 46 30          	movaps XMMWORD PTR [esi+0x30],xmm0
  756d12:	f3 0f 10 45 3c       	movss  xmm0,DWORD PTR [ebp+0x3c]
  756d17:	f3 0f 11 46 5c       	movss  DWORD PTR [esi+0x5c],xmm0
  756d1c:	f3 0f 10 45 40       	movss  xmm0,DWORD PTR [ebp+0x40]
  756d21:	f3 0f 11 46 6c       	movss  DWORD PTR [esi+0x6c],xmm0
  756d26:	f3 0f 10 45 44       	movss  xmm0,DWORD PTR [ebp+0x44]
  756d2b:	f3 0f 11 46 60       	movss  DWORD PTR [esi+0x60],xmm0
  756d30:	f3 0f 10 45 48       	movss  xmm0,DWORD PTR [ebp+0x48]
  756d35:	f3 0f 11 46 64       	movss  DWORD PTR [esi+0x64],xmm0
  756d3a:	f3 0f 10 45 4c       	movss  xmm0,DWORD PTR [ebp+0x4c]
  756d3f:	f3 0f 11 46 68       	movss  DWORD PTR [esi+0x68],xmm0
  756d44:	f3 0f 10 45 50       	movss  xmm0,DWORD PTR [ebp+0x50]
  756d49:	89 56 58             	mov    DWORD PTR [esi+0x58],edx
  756d4c:	f3 0f 11 46 70       	movss  DWORD PTR [esi+0x70],xmm0
  756d51:	74 34                	je     0x756d87
  756d53:	e8 38 26 01 00       	call   0x769390
  756d58:	33 c9                	xor    ecx,ecx
  756d5a:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  756d5e:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  756d62:	8b 10                	mov    edx,DWORD PTR [eax]
  756d64:	8b 52 78             	mov    edx,DWORD PTR [edx+0x78]
  756d67:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  756d6b:	51                   	push   ecx
  756d6c:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  756d70:	51                   	push   ecx
  756d71:	53                   	push   ebx
  756d72:	8b c8                	mov    ecx,eax
  756d74:	ff d2                	call   edx
  756d76:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  756d7a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  756d7e:	50                   	push   eax
  756d7f:	51                   	push   ecx
  756d80:	8b ce                	mov    ecx,esi
  756d82:	e8 b9 4f ff ff       	call   0x74bd40
  756d87:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  756d8a:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  756d8f:	56                   	push   esi
  756d90:	8b cf                	mov    ecx,edi
  756d92:	89 56 28             	mov    DWORD PTR [esi+0x28],edx
  756d95:	f3 0f 11 46 2c       	movss  DWORD PTR [esi+0x2c],xmm0
  756d9a:	e8 61 83 ff ff       	call   0x74f100
  756d9f:	8b 46 50             	mov    eax,DWORD PTR [esi+0x50]
  756da2:	0b 46 54             	or     eax,DWORD PTR [esi+0x54]
  756da5:	0f 84 b3 01 00 00    	je     0x756f5e
  756dab:	e8 c0 07 1e 00       	call   0x937570
  756db0:	85 c0                	test   eax,eax
  756db2:	0f 84 a6 01 00 00    	je     0x756f5e
  756db8:	8b 4e 54             	mov    ecx,DWORD PTR [esi+0x54]
  756dbb:	8b 56 50             	mov    edx,DWORD PTR [esi+0x50]
  756dbe:	51                   	push   ecx
  756dbf:	52                   	push   edx
  756dc0:	8b c8                	mov    ecx,eax
  756dc2:	e8 b9 11 1e 00       	call   0x937f80
  756dc7:	50                   	push   eax
  756dc8:	e8 83 72 e0 ff       	call   0x55e050
  756dcd:	83 c4 04             	add    esp,0x4
  756dd0:	85 c0                	test   eax,eax
  756dd2:	0f 84 86 01 00 00    	je     0x756f5e
  756dd8:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  756ddc:	51                   	push   ecx
  756ddd:	8b c8                	mov    ecx,eax
  756ddf:	e8 2c 0b 20 00       	call   0x957910
  756de4:	0f 28 54 24 30       	movaps xmm2,XMMWORD PTR [esp+0x30]
  756de9:	f3 0f 10 2d 88 fd 03 01 	movss  xmm5,DWORD PTR ds:0x103fd88
  756df1:	0f 28 c2             	movaps xmm0,xmm2
  756df4:	0f 59 c2             	mulps  xmm0,xmm2
  756df7:	0f 28 c8             	movaps xmm1,xmm0
  756dfa:	0f c6 c8 0e          	shufps xmm1,xmm0,0xe
  756dfe:	0f 58 c8             	addps  xmm1,xmm0
  756e01:	0f 28 c1             	movaps xmm0,xmm1
  756e04:	0f c6 c1 01          	shufps xmm0,xmm1,0x1
  756e08:	0f 58 c1             	addps  xmm0,xmm1
  756e0b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  756e0f:	0f 53 d8             	rcpps  xmm3,xmm0
  756e12:	0f 28 e3             	movaps xmm4,xmm3
  756e15:	0f 59 e0             	mulps  xmm4,xmm0
  756e18:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  756e1c:	0f 28 cd             	movaps xmm1,xmm5
  756e1f:	0f 5c cc             	subps  xmm1,xmm4
  756e22:	0f 59 cb             	mulps  xmm1,xmm3
  756e25:	0f 28 d9             	movaps xmm3,xmm1
  756e28:	0f 59 d8             	mulps  xmm3,xmm0
  756e2b:	0f 28 c5             	movaps xmm0,xmm5
  756e2e:	0f 5c c3             	subps  xmm0,xmm3
  756e31:	0f 59 c1             	mulps  xmm0,xmm1
  756e34:	0f 57 c9             	xorps  xmm1,xmm1
  756e37:	f3 0f 11 4c 24 2c    	movss  DWORD PTR [esp+0x2c],xmm1
  756e3d:	c7 44 24 18 00 00 00 80 	mov    DWORD PTR [esp+0x18],0x80000000
  756e45:	f3 0f 10 4c 24 18    	movss  xmm1,DWORD PTR [esp+0x18]
  756e4b:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  756e51:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  756e57:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  756e5d:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  756e62:	0f 57 ca             	xorps  xmm1,xmm2
  756e65:	0f 28 54 24 40       	movaps xmm2,XMMWORD PTR [esp+0x40]
  756e6a:	0f 59 c1             	mulps  xmm0,xmm1
  756e6d:	0f 28 ca             	movaps xmm1,xmm2
  756e70:	0f c6 ca 12          	shufps xmm1,xmm2,0x12
  756e74:	0f 28 f2             	movaps xmm6,xmm2
  756e77:	0f c6 f2 09          	shufps xmm6,xmm2,0x9
  756e7b:	0f 28 d8             	movaps xmm3,xmm0
  756e7e:	0f c6 d8 12          	shufps xmm3,xmm0,0x12
  756e82:	0f 59 f3             	mulps  xmm6,xmm3
  756e85:	0f 28 e0             	movaps xmm4,xmm0
  756e88:	0f c6 e0 09          	shufps xmm4,xmm0,0x9
  756e8c:	0f 59 cc             	mulps  xmm1,xmm4
  756e8f:	0f 5c ce             	subps  xmm1,xmm6
  756e92:	0f c6 c0 ff          	shufps xmm0,xmm0,0xff
  756e96:	0f 28 f0             	movaps xmm6,xmm0
  756e99:	0f 59 f2             	mulps  xmm6,xmm2
  756e9c:	0f 58 ce             	addps  xmm1,xmm6
  756e9f:	0f 28 f1             	movaps xmm6,xmm1
  756ea2:	0f c6 f1 12          	shufps xmm6,xmm1,0x12
  756ea6:	0f 28 f9             	movaps xmm7,xmm1
  756ea9:	0f c6 f9 09          	shufps xmm7,xmm1,0x9
  756ead:	0f 59 f4             	mulps  xmm6,xmm4
  756eb0:	0f 57 c9             	xorps  xmm1,xmm1
  756eb3:	0f 59 fb             	mulps  xmm7,xmm3
  756eb6:	0f 5c f7             	subps  xmm6,xmm7
  756eb9:	0f 59 f5             	mulps  xmm6,xmm5
  756ebc:	0f 58 f2             	addps  xmm6,xmm2
  756ebf:	0f 5c ce             	subps  xmm1,xmm6
  756ec2:	0f 28 76 40          	movaps xmm6,XMMWORD PTR [esi+0x40]
  756ec6:	0f 29 4c 24 40       	movaps XMMWORD PTR [esp+0x40],xmm1
  756ecb:	0f 28 ce             	movaps xmm1,xmm6
  756ece:	0f c6 ce 12          	shufps xmm1,xmm6,0x12
  756ed2:	0f 28 d6             	movaps xmm2,xmm6
  756ed5:	0f c6 d6 09          	shufps xmm2,xmm6,0x9
  756ed9:	0f 59 d3             	mulps  xmm2,xmm3
  756edc:	0f 59 cc             	mulps  xmm1,xmm4
  756edf:	0f 5c ca             	subps  xmm1,xmm2
  756ee2:	0f 28 d6             	movaps xmm2,xmm6
  756ee5:	0f 59 d0             	mulps  xmm2,xmm0
  756ee8:	0f 58 ca             	addps  xmm1,xmm2
  756eeb:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  756ef0:	0f 28 46 30          	movaps xmm0,XMMWORD PTR [esi+0x30]
  756ef4:	0f 28 d0             	movaps xmm2,xmm0
  756ef7:	0f c6 d0 12          	shufps xmm2,xmm0,0x12
  756efb:	0f 59 d4             	mulps  xmm2,xmm4
  756efe:	0f 28 f8             	movaps xmm7,xmm0
  756f01:	0f c6 f8 09          	shufps xmm7,xmm0,0x9
  756f05:	0f 59 44 24 20       	mulps  xmm0,XMMWORD PTR [esp+0x20]
  756f0a:	0f 59 fb             	mulps  xmm7,xmm3
  756f0d:	0f 5c d7             	subps  xmm2,xmm7
  756f10:	0f 58 d0             	addps  xmm2,xmm0
  756f13:	0f 28 c2             	movaps xmm0,xmm2
  756f16:	0f c6 c2 12          	shufps xmm0,xmm2,0x12
  756f1a:	0f 28 fa             	movaps xmm7,xmm2
  756f1d:	0f c6 fa 09          	shufps xmm7,xmm2,0x9
  756f21:	0f 28 56 30          	movaps xmm2,XMMWORD PTR [esi+0x30]
  756f25:	0f 59 c4             	mulps  xmm0,xmm4
  756f28:	0f 59 fb             	mulps  xmm7,xmm3
  756f2b:	0f 5c c7             	subps  xmm0,xmm7
  756f2e:	0f 59 c5             	mulps  xmm0,xmm5
  756f31:	0f 58 c2             	addps  xmm0,xmm2
  756f34:	0f 28 d1             	movaps xmm2,xmm1
  756f37:	0f c6 d1 12          	shufps xmm2,xmm1,0x12
  756f3b:	0f 59 d4             	mulps  xmm2,xmm4
  756f3e:	0f 28 e1             	movaps xmm4,xmm1
  756f41:	0f c6 e1 09          	shufps xmm4,xmm1,0x9
  756f45:	0f 59 e3             	mulps  xmm4,xmm3
  756f48:	0f 5c d4             	subps  xmm2,xmm4
  756f4b:	0f 59 d5             	mulps  xmm2,xmm5
  756f4e:	0f 58 d6             	addps  xmm2,xmm6
  756f51:	0f 58 54 24 40       	addps  xmm2,XMMWORD PTR [esp+0x40]
  756f56:	0f 29 56 40          	movaps XMMWORD PTR [esi+0x40],xmm2
  756f5a:	0f 29 46 30          	movaps XMMWORD PTR [esi+0x30],xmm0
  756f5e:	8b 17                	mov    edx,DWORD PTR [edi]
  756f60:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  756f63:	8b cf                	mov    ecx,edi
  756f65:	ff d0                	call   eax
  756f67:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  756f6b:	8b 11                	mov    edx,DWORD PTR [ecx]
  756f6d:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  756f70:	ff d0                	call   eax
  756f72:	b0 01                	mov    al,0x1
  756f74:	5f                   	pop    edi
  756f75:	5e                   	pop    esi
  756f76:	5b                   	pop    ebx
  756f77:	8b e5                	mov    esp,ebp
  756f79:	5d                   	pop    ebp
  756f7a:	c3                   	ret
  756f7b:	8b 17                	mov    edx,DWORD PTR [edi]
  756f7d:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  756f80:	8b cf                	mov    ecx,edi
  756f82:	ff d0                	call   eax
  756f84:	8b 13                	mov    edx,DWORD PTR [ebx]
  756f86:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  756f89:	8b cb                	mov    ecx,ebx
  756f8b:	ff d0                	call   eax
  756f8d:	5f                   	pop    edi
  756f8e:	5e                   	pop    esi
  756f8f:	32 c0                	xor    al,al
  756f91:	5b                   	pop    ebx
  756f92:	8b e5                	mov    esp,ebp
  756f94:	5d                   	pop    ebp
  756f95:	c3                   	ret
