# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00794b20, 0x00794e76); analyst name World_TestIfObjectsIntersect.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00794b20 <.text+0x393b20>:
  794b20:	55                   	push   ebp
  794b21:	8b ec                	mov    ebp,esp
  794b23:	83 e4 f0             	and    esp,0xfffffff0
  794b26:	81 ec 24 02 00 00    	sub    esp,0x224
  794b2c:	53                   	push   ebx
  794b2d:	56                   	push   esi
  794b2e:	57                   	push   edi
  794b2f:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  794b32:	85 ff                	test   edi,edi
  794b34:	0f 84 33 03 00 00    	je     0x794e6d
  794b3a:	e8 31 2a 1a 00       	call   0x937570
  794b3f:	8b f0                	mov    esi,eax
  794b41:	85 f6                	test   esi,esi
  794b43:	0f 84 24 03 00 00    	je     0x794e6d
  794b49:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  794b4c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  794b4f:	50                   	push   eax
  794b50:	51                   	push   ecx
  794b51:	8b ce                	mov    ecx,esi
  794b53:	e8 28 34 1a 00       	call   0x937f80
  794b58:	8b d8                	mov    ebx,eax
  794b5a:	85 db                	test   ebx,ebx
  794b5c:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  794b60:	0f 84 fe 02 00 00    	je     0x794e64
  794b66:	8d 53 04             	lea    edx,[ebx+0x4]
  794b69:	b8 01 00 00 00       	mov    eax,0x1
  794b6e:	f0 0f c1 02          	lock xadd DWORD PTR [edx],eax
  794b72:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  794b75:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  794b78:	51                   	push   ecx
  794b79:	52                   	push   edx
  794b7a:	8b ce                	mov    ecx,esi
  794b7c:	e8 ff 33 1a 00       	call   0x937f80
  794b81:	85 c0                	test   eax,eax
  794b83:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  794b87:	0f 84 ce 02 00 00    	je     0x794e5b
  794b8d:	83 c0 04             	add    eax,0x4
  794b90:	b9 01 00 00 00       	mov    ecx,0x1
  794b95:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  794b99:	8b cb                	mov    ecx,ebx
  794b9b:	e8 90 a5 ef ff       	call   0x68f130
  794ba0:	85 c0                	test   eax,eax
  794ba2:	0f 84 b3 02 00 00    	je     0x794e5b
  794ba8:	8b 10                	mov    edx,DWORD PTR [eax]
  794baa:	8b c8                	mov    ecx,eax
  794bac:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  794baf:	68 0e 6b 56 90       	push   0x90566b0e
  794bb4:	ff d0                	call   eax
  794bb6:	8b f0                	mov    esi,eax
  794bb8:	85 f6                	test   esi,esi
  794bba:	0f 84 9b 02 00 00    	je     0x794e5b
  794bc0:	53                   	push   ebx
  794bc1:	e8 ea b1 36 00       	call   0xaffdb0
  794bc6:	83 c4 04             	add    esp,0x4
  794bc9:	85 c0                	test   eax,eax
  794bcb:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  794bcf:	0f 84 86 02 00 00    	je     0x794e5b
  794bd5:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  794bdc:	51                   	push   ecx
  794bdd:	57                   	push   edi
  794bde:	e8 4d 78 fd ff       	call   0x76c430
  794be3:	83 c4 08             	add    esp,0x8
  794be6:	8d 94 24 f0 01 00 00 	lea    edx,[esp+0x1f0]
  794bed:	52                   	push   edx
  794bee:	8b ce                	mov    ecx,esi
  794bf0:	e8 1b ca 31 00       	call   0xab1610
  794bf5:	0f 28 84 24 c0 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xc0]
  794bfd:	0f 28 70 10          	movaps xmm6,XMMWORD PTR [eax+0x10]
  794c01:	0f 28 38             	movaps xmm7,XMMWORD PTR [eax]
  794c04:	0f 28 60 20          	movaps xmm4,XMMWORD PTR [eax+0x20]
  794c08:	0f 28 58 30          	movaps xmm3,XMMWORD PTR [eax+0x30]
  794c0c:	0f 28 c8             	movaps xmm1,xmm0
  794c0f:	0f c6 c8 00          	shufps xmm1,xmm0,0x0
  794c13:	0f 28 d0             	movaps xmm2,xmm0
  794c16:	0f c6 d0 55          	shufps xmm2,xmm0,0x55
  794c1a:	0f 59 d6             	mulps  xmm2,xmm6
  794c1d:	0f 59 cf             	mulps  xmm1,xmm7
  794c20:	0f 58 ca             	addps  xmm1,xmm2
  794c23:	0f 28 d0             	movaps xmm2,xmm0
  794c26:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  794c2a:	0f 59 d4             	mulps  xmm2,xmm4
  794c2d:	0f 29 5c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm3
  794c32:	0f 58 ca             	addps  xmm1,xmm2
  794c35:	0f 28 d0             	movaps xmm2,xmm0
  794c38:	0f c6 d0 ff          	shufps xmm2,xmm0,0xff
  794c3c:	0f 28 84 24 b0 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xb0]
  794c44:	0f 59 d3             	mulps  xmm2,xmm3
  794c47:	0f 28 d8             	movaps xmm3,xmm0
  794c4a:	0f c6 d8 00          	shufps xmm3,xmm0,0x0
  794c4e:	0f 59 df             	mulps  xmm3,xmm7
  794c51:	0f 28 e8             	movaps xmm5,xmm0
  794c54:	0f c6 e8 55          	shufps xmm5,xmm0,0x55
  794c58:	0f 59 ee             	mulps  xmm5,xmm6
  794c5b:	0f 58 dd             	addps  xmm3,xmm5
  794c5e:	0f 29 64 24 40       	movaps XMMWORD PTR [esp+0x40],xmm4
  794c63:	0f 28 e8             	movaps xmm5,xmm0
  794c66:	0f c6 e8 aa          	shufps xmm5,xmm0,0xaa
  794c6a:	0f 59 ec             	mulps  xmm5,xmm4
  794c6d:	0f 58 dd             	addps  xmm3,xmm5
  794c70:	0f 29 b4 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm6
  794c78:	0f 28 e0             	movaps xmm4,xmm0
  794c7b:	0f c6 e0 ff          	shufps xmm4,xmm0,0xff
  794c7f:	0f 28 84 24 a0 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xa0]
  794c87:	0f 59 64 24 20       	mulps  xmm4,XMMWORD PTR [esp+0x20]
  794c8c:	0f 29 7c 24 60       	movaps XMMWORD PTR [esp+0x60],xmm7
  794c91:	0f 28 e8             	movaps xmm5,xmm0
  794c94:	0f c6 e8 00          	shufps xmm5,xmm0,0x0
  794c98:	0f 59 ef             	mulps  xmm5,xmm7
  794c9b:	0f 28 f8             	movaps xmm7,xmm0
  794c9e:	0f c6 f8 55          	shufps xmm7,xmm0,0x55
  794ca2:	0f 59 fe             	mulps  xmm7,xmm6
  794ca5:	0f 58 ef             	addps  xmm5,xmm7
  794ca8:	0f 28 f0             	movaps xmm6,xmm0
  794cab:	0f c6 f0 aa          	shufps xmm6,xmm0,0xaa
  794caf:	0f 59 74 24 40       	mulps  xmm6,XMMWORD PTR [esp+0x40]
  794cb4:	0f 58 ee             	addps  xmm5,xmm6
  794cb7:	0f 29 6c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm5
  794cbc:	0f 28 e8             	movaps xmm5,xmm0
  794cbf:	0f c6 e8 ff          	shufps xmm5,xmm0,0xff
  794cc3:	0f 59 6c 24 20       	mulps  xmm5,XMMWORD PTR [esp+0x20]
  794cc8:	0f 28 84 24 90 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x90]
  794cd0:	0f 29 6c 24 70       	movaps XMMWORD PTR [esp+0x70],xmm5
  794cd5:	0f 28 e8             	movaps xmm5,xmm0
  794cd8:	0f c6 e8 00          	shufps xmm5,xmm0,0x0
  794cdc:	0f 59 6c 24 60       	mulps  xmm5,XMMWORD PTR [esp+0x60]
  794ce1:	0f 28 f0             	movaps xmm6,xmm0
  794ce4:	0f c6 f0 55          	shufps xmm6,xmm0,0x55
  794ce8:	0f 59 b4 24 80 00 00 00 	mulps  xmm6,XMMWORD PTR [esp+0x80]
  794cf0:	0f 58 ee             	addps  xmm5,xmm6
  794cf3:	0f 28 f0             	movaps xmm6,xmm0
  794cf6:	0f c6 f0 aa          	shufps xmm6,xmm0,0xaa
  794cfa:	0f 59 74 24 40       	mulps  xmm6,XMMWORD PTR [esp+0x40]
  794cff:	0f 58 ee             	addps  xmm5,xmm6
  794d02:	0f 28 f0             	movaps xmm6,xmm0
  794d05:	0f c6 f0 ff          	shufps xmm6,xmm0,0xff
  794d09:	0f 59 74 24 20       	mulps  xmm6,XMMWORD PTR [esp+0x20]
  794d0e:	0f 58 ee             	addps  xmm5,xmm6
  794d11:	0f 29 ac 24 d0 00 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm5
  794d19:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  794d1e:	0f 58 44 24 30       	addps  xmm0,XMMWORD PTR [esp+0x30]
  794d23:	8d 44 24 18          	lea    eax,[esp+0x18]
  794d27:	50                   	push   eax
  794d28:	8d 4c 24 54          	lea    ecx,[esp+0x54]
  794d2c:	51                   	push   ecx
  794d2d:	8d 94 24 d8 00 00 00 	lea    edx,[esp+0xd8]
  794d34:	52                   	push   edx
  794d35:	0f 29 84 24 ec 00 00 00 	movaps XMMWORD PTR [esp+0xec],xmm0
  794d3d:	0f 57 c0             	xorps  xmm0,xmm0
  794d40:	0f 58 e3             	addps  xmm4,xmm3
  794d43:	0f 58 d1             	addps  xmm2,xmm1
  794d46:	6a 00                	push   0x0
  794d48:	0f 29 a4 24 00 01 00 00 	movaps XMMWORD PTR [esp+0x100],xmm4
  794d50:	0f 29 94 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm2
  794d58:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  794d5e:	e8 1d 1c 37 00       	call   0xb06980
  794d63:	83 c4 10             	add    esp,0x10
  794d66:	6a 01                	push   0x1
  794d68:	8d 44 24 54          	lea    eax,[esp+0x54]
  794d6c:	50                   	push   eax
  794d6d:	8b ce                	mov    ecx,esi
  794d6f:	e8 4c 10 32 00       	call   0xab5dc0
  794d74:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  794d79:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  794d7e:	f3 0f 10 4c 24 30    	movss  xmm1,DWORD PTR [esp+0x30]
  794d84:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  794d89:	f3 0f 10 44 24 38    	movss  xmm0,DWORD PTR [esp+0x38]
  794d8f:	8d 8c 24 10 01 00 00 	lea    ecx,[esp+0x110]
  794d96:	8b f8                	mov    edi,eax
  794d98:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  794d9e:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  794da4:	e8 d7 ed ff ff       	call   0x793b80
  794da9:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  794dad:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  794db1:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  794db7:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  794dbb:	89 94 24 18 01 00 00 	mov    DWORD PTR [esp+0x118],edx
  794dc2:	89 8c 24 2c 01 00 00 	mov    DWORD PTR [esp+0x12c],ecx
  794dc9:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  794dcd:	8d 94 24 10 01 00 00 	lea    edx,[esp+0x110]
  794dd4:	f3 0f 11 84 24 24 01 00 00 	movss  DWORD PTR [esp+0x124],xmm0
  794ddd:	0f 57 c0             	xorps  xmm0,xmm0
  794de0:	6a 00                	push   0x0
  794de2:	52                   	push   edx
  794de3:	89 9c 24 18 01 00 00 	mov    DWORD PTR [esp+0x118],ebx
  794dea:	89 b4 24 1c 01 00 00 	mov    DWORD PTR [esp+0x11c],esi
  794df1:	89 84 24 24 01 00 00 	mov    DWORD PTR [esp+0x124],eax
  794df8:	89 bc 24 28 01 00 00 	mov    DWORD PTR [esp+0x128],edi
  794dff:	f3 0f 11 84 24 30 01 00 00 	movss  DWORD PTR [esp+0x130],xmm0
  794e08:	c6 84 24 41 01 00 00 00 	mov    BYTE PTR [esp+0x141],0x0
  794e10:	c6 84 24 99 01 00 00 00 	mov    BYTE PTR [esp+0x199],0x0
  794e18:	c6 84 24 9a 01 00 00 01 	mov    BYTE PTR [esp+0x19a],0x1
  794e20:	89 8c 24 b0 01 00 00 	mov    DWORD PTR [esp+0x1b0],ecx
  794e27:	e8 e4 05 3b 00       	call   0xb45410
  794e2c:	83 c4 08             	add    esp,0x8
  794e2f:	84 c0                	test   al,al
  794e31:	8d 8c 24 10 01 00 00 	lea    ecx,[esp+0x110]
  794e38:	0f 94 c3             	sete   bl
  794e3b:	e8 60 ec ff ff       	call   0x793aa0
  794e40:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  794e44:	e8 97 14 fb ff       	call   0x7462e0
  794e49:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  794e4d:	e8 8e 14 fb ff       	call   0x7462e0
  794e52:	8a c3                	mov    al,bl
  794e54:	5f                   	pop    edi
  794e55:	5e                   	pop    esi
  794e56:	5b                   	pop    ebx
  794e57:	8b e5                	mov    esp,ebp
  794e59:	5d                   	pop    ebp
  794e5a:	c3                   	ret
  794e5b:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  794e5f:	e8 7c 14 fb ff       	call   0x7462e0
  794e64:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  794e68:	e8 73 14 fb ff       	call   0x7462e0
  794e6d:	5f                   	pop    edi
  794e6e:	5e                   	pop    esi
  794e6f:	32 c0                	xor    al,al
  794e71:	5b                   	pop    ebx
  794e72:	8b e5                	mov    esp,ebp
  794e74:	5d                   	pop    ebp
  794e75:	c3                   	ret
