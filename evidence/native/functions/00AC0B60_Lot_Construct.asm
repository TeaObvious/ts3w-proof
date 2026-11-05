# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00ac0b60..00ac0ffb; Lot_Construct
  ac0b60:	55                   	push   ebp
  ac0b61:	8b ec                	mov    ebp,esp
  ac0b63:	83 e4 f0             	and    esp,0xfffffff0
  ac0b66:	83 ec 24             	sub    esp,0x24
  ac0b69:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  ac0b6c:	53                   	push   ebx
  ac0b6d:	56                   	push   esi
  ac0b6e:	57                   	push   edi
  ac0b6f:	50                   	push   eax
  ac0b70:	8b f1                	mov    esi,ecx
  ac0b72:	e8 29 0c 1b 00       	call   0xc717a0
  ac0b77:	8b 3d 24 61 f9 00    	mov    edi,DWORD PTR ds:0xf96124
  ac0b7d:	c7 86 a0 00 00 00 cc 3c fb 00 	mov    DWORD PTR [esi+0xa0],0xfb3ccc
  ac0b87:	33 db                	xor    ebx,ebx
  ac0b89:	c7 06 a0 62 06 01    	mov    DWORD PTR [esi],0x10662a0
  ac0b8f:	c7 46 08 a4 ad 07 01 	mov    DWORD PTR [esi+0x8],0x107ada4
  ac0b96:	c7 86 a0 00 00 00 94 62 06 01 	mov    DWORD PTR [esi+0xa0],0x1066294
  ac0ba0:	89 9e a4 00 00 00    	mov    DWORD PTR [esi+0xa4],ebx
  ac0ba6:	89 9e a8 00 00 00    	mov    DWORD PTR [esi+0xa8],ebx
  ac0bac:	89 9e ac 00 00 00    	mov    DWORD PTR [esi+0xac],ebx
  ac0bb2:	89 9e b0 00 00 00    	mov    DWORD PTR [esi+0xb0],ebx
  ac0bb8:	89 9e b4 00 00 00    	mov    DWORD PTR [esi+0xb4],ebx
  ac0bbe:	88 9e b8 00 00 00    	mov    BYTE PTR [esi+0xb8],bl
  ac0bc4:	88 9e b9 00 00 00    	mov    BYTE PTR [esi+0xb9],bl
  ac0bca:	88 9e ba 00 00 00    	mov    BYTE PTR [esi+0xba],bl
  ac0bd0:	89 9e bc 00 00 00    	mov    DWORD PTR [esi+0xbc],ebx
  ac0bd6:	88 9e c0 00 00 00    	mov    BYTE PTR [esi+0xc0],bl
  ac0bdc:	8d 8e d0 00 00 00    	lea    ecx,[esi+0xd0]
  ac0be2:	88 9e c1 00 00 00    	mov    BYTE PTR [esi+0xc1],bl
  ac0be8:	51                   	push   ecx
  ac0be9:	88 9e c2 00 00 00    	mov    BYTE PTR [esi+0xc2],bl
  ac0bef:	89 9e c4 00 00 00    	mov    DWORD PTR [esi+0xc4],ebx
  ac0bf5:	88 9e c8 00 00 00    	mov    BYTE PTR [esi+0xc8],bl
  ac0bfb:	88 9e c9 00 00 00    	mov    BYTE PTR [esi+0xc9],bl
  ac0c01:	ff d7                	call   edi
  ac0c03:	8d 96 f0 00 00 00    	lea    edx,[esi+0xf0]
  ac0c09:	52                   	push   edx
  ac0c0a:	ff d7                	call   edi
  ac0c0c:	8d 86 10 01 00 00    	lea    eax,[esi+0x110]
  ac0c12:	50                   	push   eax
  ac0c13:	ff d7                	call   edi
  ac0c15:	0f 57 c0             	xorps  xmm0,xmm0
  ac0c18:	0f 57 c9             	xorps  xmm1,xmm1
  ac0c1b:	89 9e 30 01 00 00    	mov    DWORD PTR [esi+0x130],ebx
  ac0c21:	89 9e 74 01 00 00    	mov    DWORD PTR [esi+0x174],ebx
  ac0c27:	89 9e 78 01 00 00    	mov    DWORD PTR [esi+0x178],ebx
  ac0c2d:	89 9e 7c 01 00 00    	mov    DWORD PTR [esi+0x17c],ebx
  ac0c33:	89 9e 80 01 00 00    	mov    DWORD PTR [esi+0x180],ebx
  ac0c39:	c7 86 84 01 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x184],0x1
  ac0c43:	f3 0f 11 86 88 01 00 00 	movss  DWORD PTR [esi+0x188],xmm0
  ac0c4b:	f3 0f 11 86 8c 01 00 00 	movss  DWORD PTR [esi+0x18c],xmm0
  ac0c53:	0f 29 8e 90 01 00 00 	movaps XMMWORD PTR [esi+0x190],xmm1
  ac0c5a:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  ac0c5f:	f3 0f 10 0d 40 5d 06 01 	movss  xmm1,DWORD PTR ds:0x1065d40
  ac0c67:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  ac0c6d:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  ac0c73:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  ac0c79:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  ac0c7f:	0f 28 54 24 10       	movaps xmm2,XMMWORD PTR [esp+0x10]
  ac0c84:	f3 0f 11 86 a0 01 00 00 	movss  DWORD PTR [esi+0x1a0],xmm0
  ac0c8c:	c6 86 70 02 00 00 01 	mov    BYTE PTR [esi+0x270],0x1
  ac0c93:	c6 86 71 02 00 00 01 	mov    BYTE PTR [esi+0x271],0x1
  ac0c9a:	c6 86 72 02 00 00 01 	mov    BYTE PTR [esi+0x272],0x1
  ac0ca1:	0f 29 96 80 02 00 00 	movaps XMMWORD PTR [esi+0x280],xmm2
  ac0ca8:	89 9e 90 02 00 00    	mov    DWORD PTR [esi+0x290],ebx
  ac0cae:	89 9e 94 02 00 00    	mov    DWORD PTR [esi+0x294],ebx
  ac0cb4:	89 9e 98 02 00 00    	mov    DWORD PTR [esi+0x298],ebx
  ac0cba:	89 9e 9c 02 00 00    	mov    DWORD PTR [esi+0x29c],ebx
  ac0cc0:	89 9e a0 02 00 00    	mov    DWORD PTR [esi+0x2a0],ebx
  ac0cc6:	89 9e a4 02 00 00    	mov    DWORD PTR [esi+0x2a4],ebx
  ac0ccc:	89 9e a8 02 00 00    	mov    DWORD PTR [esi+0x2a8],ebx
  ac0cd2:	89 9e ac 02 00 00    	mov    DWORD PTR [esi+0x2ac],ebx
  ac0cd8:	89 9e b0 02 00 00    	mov    DWORD PTR [esi+0x2b0],ebx
  ac0cde:	89 9e b4 02 00 00    	mov    DWORD PTR [esi+0x2b4],ebx
  ac0ce4:	89 9e b8 02 00 00    	mov    DWORD PTR [esi+0x2b8],ebx
  ac0cea:	89 9e bc 02 00 00    	mov    DWORD PTR [esi+0x2bc],ebx
  ac0cf0:	89 9e c0 02 00 00    	mov    DWORD PTR [esi+0x2c0],ebx
  ac0cf6:	89 9e c4 02 00 00    	mov    DWORD PTR [esi+0x2c4],ebx
  ac0cfc:	89 9e c8 02 00 00    	mov    DWORD PTR [esi+0x2c8],ebx
  ac0d02:	89 9e cc 02 00 00    	mov    DWORD PTR [esi+0x2cc],ebx
  ac0d08:	89 9e d0 02 00 00    	mov    DWORD PTR [esi+0x2d0],ebx
  ac0d0e:	89 9e d4 02 00 00    	mov    DWORD PTR [esi+0x2d4],ebx
  ac0d14:	89 9e d8 02 00 00    	mov    DWORD PTR [esi+0x2d8],ebx
  ac0d1a:	89 9e dc 02 00 00    	mov    DWORD PTR [esi+0x2dc],ebx
  ac0d20:	89 9e e0 02 00 00    	mov    DWORD PTR [esi+0x2e0],ebx
  ac0d26:	f3 0f 10 15 18 b2 fa 00 	movss  xmm2,DWORD PTR ds:0xfab218
  ac0d2e:	89 9e e4 02 00 00    	mov    DWORD PTR [esi+0x2e4],ebx
  ac0d34:	89 9e e8 02 00 00    	mov    DWORD PTR [esi+0x2e8],ebx
  ac0d3a:	f3 0f 11 86 ec 02 00 00 	movss  DWORD PTR [esi+0x2ec],xmm0
  ac0d42:	f3 0f 11 86 f0 02 00 00 	movss  DWORD PTR [esi+0x2f0],xmm0
  ac0d4a:	f3 0f 11 86 f4 02 00 00 	movss  DWORD PTR [esi+0x2f4],xmm0
  ac0d52:	f3 0f 11 86 f8 02 00 00 	movss  DWORD PTR [esi+0x2f8],xmm0
  ac0d5a:	88 9e fc 02 00 00    	mov    BYTE PTR [esi+0x2fc],bl
  ac0d60:	f3 0f 11 96 00 03 00 00 	movss  DWORD PTR [esi+0x300],xmm2
  ac0d68:	f3 0f 11 96 04 03 00 00 	movss  DWORD PTR [esi+0x304],xmm2
  ac0d70:	89 9e 08 03 00 00    	mov    DWORD PTR [esi+0x308],ebx
  ac0d76:	89 9e 10 03 00 00    	mov    DWORD PTR [esi+0x310],ebx
  ac0d7c:	89 9e 14 03 00 00    	mov    DWORD PTR [esi+0x314],ebx
  ac0d82:	89 9e 18 03 00 00    	mov    DWORD PTR [esi+0x318],ebx
  ac0d88:	89 9e 1c 03 00 00    	mov    DWORD PTR [esi+0x31c],ebx
  ac0d8e:	88 9e 20 03 00 00    	mov    BYTE PTR [esi+0x320],bl
  ac0d94:	89 9e 24 03 00 00    	mov    DWORD PTR [esi+0x324],ebx
  ac0d9a:	c6 86 28 03 00 00 01 	mov    BYTE PTR [esi+0x328],0x1
  ac0da1:	89 9e 2c 03 00 00    	mov    DWORD PTR [esi+0x32c],ebx
  ac0da7:	89 9e 30 03 00 00    	mov    DWORD PTR [esi+0x330],ebx
  ac0dad:	c6 86 34 03 00 00 01 	mov    BYTE PTR [esi+0x334],0x1
  ac0db4:	f3 0f 11 86 38 03 00 00 	movss  DWORD PTR [esi+0x338],xmm0
  ac0dbc:	c6 86 3c 03 00 00 01 	mov    BYTE PTR [esi+0x33c],0x1
  ac0dc3:	c6 86 3d 03 00 00 01 	mov    BYTE PTR [esi+0x33d],0x1
  ac0dca:	89 9e 40 03 00 00    	mov    DWORD PTR [esi+0x340],ebx
  ac0dd0:	89 9e 44 03 00 00    	mov    DWORD PTR [esi+0x344],ebx
  ac0dd6:	89 9e 48 03 00 00    	mov    DWORD PTR [esi+0x348],ebx
  ac0ddc:	89 9e 4c 03 00 00    	mov    DWORD PTR [esi+0x34c],ebx
  ac0de2:	89 9e 50 03 00 00    	mov    DWORD PTR [esi+0x350],ebx
  ac0de8:	f3 0f 11 86 54 03 00 00 	movss  DWORD PTR [esi+0x354],xmm0
  ac0df0:	88 9e 58 03 00 00    	mov    BYTE PTR [esi+0x358],bl
  ac0df6:	f3 0f 11 8e 5c 03 00 00 	movss  DWORD PTR [esi+0x35c],xmm1
  ac0dfe:	f3 0f 11 8e 60 03 00 00 	movss  DWORD PTR [esi+0x360],xmm1
  ac0e06:	89 9e 64 03 00 00    	mov    DWORD PTR [esi+0x364],ebx
  ac0e0c:	88 9e 68 03 00 00    	mov    BYTE PTR [esi+0x368],bl
  ac0e12:	8d 8e 70 03 00 00    	lea    ecx,[esi+0x370]
  ac0e18:	89 9e 6c 03 00 00    	mov    DWORD PTR [esi+0x36c],ebx
  ac0e1e:	89 19                	mov    DWORD PTR [ecx],ebx
  ac0e20:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  ac0e23:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
  ac0e26:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  ac0e29:	89 59 10             	mov    DWORD PTR [ecx+0x10],ebx
  ac0e2c:	89 59 14             	mov    DWORD PTR [ecx+0x14],ebx
  ac0e2f:	89 59 18             	mov    DWORD PTR [ecx+0x18],ebx
  ac0e32:	89 59 1c             	mov    DWORD PTR [ecx+0x1c],ebx
  ac0e35:	89 59 20             	mov    DWORD PTR [ecx+0x20],ebx
  ac0e38:	89 59 24             	mov    DWORD PTR [ecx+0x24],ebx
  ac0e3b:	53                   	push   ebx
  ac0e3c:	c7 41 28 24 61 06 01 	mov    DWORD PTR [ecx+0x28],0x1066124
  ac0e43:	e8 48 fe b4 ff       	call   0x610c90
  ac0e48:	8d 8e a8 03 00 00    	lea    ecx,[esi+0x3a8]
  ac0e4e:	89 9e 9c 03 00 00    	mov    DWORD PTR [esi+0x39c],ebx
  ac0e54:	89 9e a0 03 00 00    	mov    DWORD PTR [esi+0x3a0],ebx
  ac0e5a:	88 9e a4 03 00 00    	mov    BYTE PTR [esi+0x3a4],bl
  ac0e60:	88 9e a5 03 00 00    	mov    BYTE PTR [esi+0x3a5],bl
  ac0e66:	e8 95 6a d1 ff       	call   0x7d7900
  ac0e6b:	0f 57 c0             	xorps  xmm0,xmm0
  ac0e6e:	c7 86 cc 03 00 00 7c 62 06 01 	mov    DWORD PTR [esi+0x3cc],0x106627c
  ac0e78:	b8 54 8e 1c 01       	mov    eax,0x11c8e54
  ac0e7d:	89 86 c0 03 00 00    	mov    DWORD PTR [esi+0x3c0],eax
  ac0e83:	89 86 c4 03 00 00    	mov    DWORD PTR [esi+0x3c4],eax
  ac0e89:	b9 56 8e 1c 01       	mov    ecx,0x11c8e56
  ac0e8e:	89 8e c8 03 00 00    	mov    DWORD PTR [esi+0x3c8],ecx
  ac0e94:	89 9e d0 03 00 00    	mov    DWORD PTR [esi+0x3d0],ebx
  ac0e9a:	89 9e d4 03 00 00    	mov    DWORD PTR [esi+0x3d4],ebx
  ac0ea0:	c7 86 e4 03 00 00 60 62 06 01 	mov    DWORD PTR [esi+0x3e4],0x1066260
  ac0eaa:	89 86 d8 03 00 00    	mov    DWORD PTR [esi+0x3d8],eax
  ac0eb0:	89 86 dc 03 00 00    	mov    DWORD PTR [esi+0x3dc],eax
  ac0eb6:	89 8e e0 03 00 00    	mov    DWORD PTR [esi+0x3e0],ecx
  ac0ebc:	89 9e e8 03 00 00    	mov    DWORD PTR [esi+0x3e8],ebx
  ac0ec2:	89 9e ec 03 00 00    	mov    DWORD PTR [esi+0x3ec],ebx
  ac0ec8:	c7 86 fc 03 00 00 48 62 06 01 	mov    DWORD PTR [esi+0x3fc],0x1066248
  ac0ed2:	89 86 f0 03 00 00    	mov    DWORD PTR [esi+0x3f0],eax
  ac0ed8:	89 86 f4 03 00 00    	mov    DWORD PTR [esi+0x3f4],eax
  ac0ede:	89 8e f8 03 00 00    	mov    DWORD PTR [esi+0x3f8],ecx
  ac0ee4:	89 9e 00 04 00 00    	mov    DWORD PTR [esi+0x400],ebx
  ac0eea:	89 9e 04 04 00 00    	mov    DWORD PTR [esi+0x404],ebx
  ac0ef0:	89 9e 08 04 00 00    	mov    DWORD PTR [esi+0x408],ebx
  ac0ef6:	89 9e 0c 04 00 00    	mov    DWORD PTR [esi+0x40c],ebx
  ac0efc:	c7 86 10 04 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x410],0x3
  ac0f06:	88 9e 14 04 00 00    	mov    BYTE PTR [esi+0x414],bl
  ac0f0c:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  ac0f14:	0f 28 54 24 20       	movaps xmm2,XMMWORD PTR [esp+0x20]
  ac0f19:	88 9e 24 04 00 00    	mov    BYTE PTR [esi+0x424],bl
  ac0f1f:	f3 0f 11 86 18 04 00 00 	movss  DWORD PTR [esi+0x418],xmm0
  ac0f27:	c6 86 1c 04 00 00 01 	mov    BYTE PTR [esi+0x41c],0x1
  ac0f2e:	f3 0f 11 86 20 04 00 00 	movss  DWORD PTR [esi+0x420],xmm0
  ac0f36:	c6 86 25 04 00 00 01 	mov    BYTE PTR [esi+0x425],0x1
  ac0f3d:	c6 86 26 04 00 00 01 	mov    BYTE PTR [esi+0x426],0x1
  ac0f44:	89 9e 28 04 00 00    	mov    DWORD PTR [esi+0x428],ebx
  ac0f4a:	89 9e 2c 04 00 00    	mov    DWORD PTR [esi+0x42c],ebx
  ac0f50:	88 9e 30 04 00 00    	mov    BYTE PTR [esi+0x430],bl
  ac0f56:	89 9e 34 04 00 00    	mov    DWORD PTR [esi+0x434],ebx
  ac0f5c:	89 9e 38 04 00 00    	mov    DWORD PTR [esi+0x438],ebx
  ac0f62:	89 9e 3c 04 00 00    	mov    DWORD PTR [esi+0x43c],ebx
  ac0f68:	c7 86 40 04 00 00 34 62 06 01 	mov    DWORD PTR [esi+0x440],0x1066234
  ac0f72:	88 9e 44 04 00 00    	mov    BYTE PTR [esi+0x444],bl
  ac0f78:	89 9e 60 04 00 00    	mov    DWORD PTR [esi+0x460],ebx
  ac0f7e:	89 9e 64 04 00 00    	mov    DWORD PTR [esi+0x464],ebx
  ac0f84:	c7 86 48 04 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x448],0xffffffff
  ac0f8e:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  ac0f94:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  ac0f9a:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  ac0fa0:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  ac0fa6:	0f 28 4c 24 10       	movaps xmm1,XMMWORD PTR [esp+0x10]
  ac0fab:	0f 29 8e 70 04 00 00 	movaps XMMWORD PTR [esi+0x470],xmm1
  ac0fb2:	0f 29 96 80 04 00 00 	movaps XMMWORD PTR [esi+0x480],xmm2
  ac0fb9:	0f 29 8e 90 04 00 00 	movaps XMMWORD PTR [esi+0x490],xmm1
  ac0fc0:	f3 0f 10 0d a4 cb fc 00 	movss  xmm1,DWORD PTR ds:0xfccba4
  ac0fc8:	0f 29 96 a0 04 00 00 	movaps XMMWORD PTR [esi+0x4a0],xmm2
  ac0fcf:	5f                   	pop    edi
  ac0fd0:	88 9e b0 04 00 00    	mov    BYTE PTR [esi+0x4b0],bl
  ac0fd6:	88 9e bc 04 00 00    	mov    BYTE PTR [esi+0x4bc],bl
  ac0fdc:	88 9e bd 04 00 00    	mov    BYTE PTR [esi+0x4bd],bl
  ac0fe2:	f3 0f 11 8e b4 04 00 00 	movss  DWORD PTR [esi+0x4b4],xmm1
  ac0fea:	f3 0f 11 86 b8 04 00 00 	movss  DWORD PTR [esi+0x4b8],xmm0
  ac0ff2:	8b c6                	mov    eax,esi
  ac0ff4:	5e                   	pop    esi
  ac0ff5:	5b                   	pop    ebx
  ac0ff6:	8b e5                	mov    esp,ebp
  ac0ff8:	5d                   	pop    ebp
  ac0ff9:	c2 04 00             	ret    0x4
