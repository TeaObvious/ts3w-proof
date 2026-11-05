# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c23e90 (Terrain_AppendMappingDetailParameters)
Paired actual Ghidra pseudocode: 00C23E90_Terrain_AppendMappingDetailParameters.c
Envelope [0x00c23e90,0x00c24091); 513 bytes; exact owned ranges: [0x00c23e90,0x00c24091)
Owned: 513 original bytes / 141 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c23e90 <original>:
  c23e90:	55                                              	push   ebp
  c23e91:	8b ec                                           	mov    ebp,esp
  c23e93:	83 e4 f0                                        	and    esp,0xfffffff0
  c23e96:	83 ec 58                                        	sub    esp,0x58
  c23e99:	56                                              	push   esi
  c23e9a:	b8 01 00 00 00                                  	mov    eax,0x1
  c23e9f:	84 05 74 d9 1e 01                               	test   BYTE PTR ds:0x11ed974,al
  c23ea5:	57                                              	push   edi
  c23ea6:	8b f1                                           	mov    esi,ecx
  c23ea8:	75 18                                           	jne    0xc23ec2
  c23eaa:	09 05 74 d9 1e 01                               	or     DWORD PTR ds:0x11ed974,eax
  c23eb0:	68 cc 74 07 01                                  	push   0x10774cc
  c23eb5:	e8 36 c2 ba ff                                  	call   0x7d00f0
  c23eba:	83 c4 04                                        	add    esp,0x4
  c23ebd:	a3 70 d9 1e 01                                  	mov    ds:0x11ed970,eax
  c23ec2:	b8 02 00 00 00                                  	mov    eax,0x2
  c23ec7:	84 05 74 d9 1e 01                               	test   BYTE PTR ds:0x11ed974,al
  c23ecd:	75 18                                           	jne    0xc23ee7
  c23ecf:	09 05 74 d9 1e 01                               	or     DWORD PTR ds:0x11ed974,eax
  c23ed5:	68 64 74 07 01                                  	push   0x1077464
  c23eda:	e8 11 c2 ba ff                                  	call   0x7d00f0
  c23edf:	83 c4 04                                        	add    esp,0x4
  c23ee2:	a3 6c d9 1e 01                                  	mov    ds:0x11ed96c,eax
  c23ee7:	f6 05 74 d9 1e 01 04                            	test   BYTE PTR ds:0x11ed974,0x4
  c23eee:	75 19                                           	jne    0xc23f09
  c23ef0:	83 0d 74 d9 1e 01 04                            	or     DWORD PTR ds:0x11ed974,0x4
  c23ef7:	68 f0 7d ff 00                                  	push   0xff7df0
  c23efc:	e8 ef c1 ba ff                                  	call   0x7d00f0
  c23f01:	83 c4 04                                        	add    esp,0x4
  c23f04:	a3 68 d9 1e 01                                  	mov    ds:0x11ed968,eax
  c23f09:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  c23f0c:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  c23f0f:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  c23f12:	50                                              	push   eax
  c23f13:	52                                              	push   edx
  c23f14:	e8 67 50 00 00                                  	call   0xc28f80
  c23f19:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  c23f1c:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  c23f1f:	85 c0                                           	test   eax,eax
  c23f21:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  c23f25:	db 44 24 0c                                     	fild   DWORD PTR [esp+0xc]
  c23f29:	7d 06                                           	jge    0xc23f31
  c23f2b:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  c23f31:	85 c9                                           	test   ecx,ecx
  c23f33:	d9 e8                                           	fld1
  c23f35:	d9 c0                                           	fld    st(0)
  c23f37:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  c23f3b:	de f2                                           	fdivrp st(2),st
  c23f3d:	d9 c9                                           	fxch   st(1)
  c23f3f:	d9 5c 24 20                                     	fstp   DWORD PTR [esp+0x20]
  c23f43:	db 44 24 0c                                     	fild   DWORD PTR [esp+0xc]
  c23f47:	7d 06                                           	jge    0xc23f4f
  c23f49:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  c23f4f:	de f9                                           	fdivp  st(1),st
  c23f51:	8b 15 70 d9 1e 01                               	mov    edx,DWORD PTR ds:0x11ed970
  c23f57:	f3 0f 10 05 b4 b5 f9 00                         	movss  xmm0,DWORD PTR ds:0xf9b5b4
  c23f5f:	8b 7d 08                                        	mov    edi,DWORD PTR [ebp+0x8]
  c23f62:	6a 04                                           	push   0x4
  c23f64:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  c23f68:	51                                              	push   ecx
  c23f69:	52                                              	push   edx
  c23f6a:	8b cf                                           	mov    ecx,edi
  c23f6c:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  c23f72:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  c23f78:	d9 5c 24 30                                     	fstp   DWORD PTR [esp+0x30]
  c23f7c:	e8 4f 5a b7 ff                                  	call   0x7999d0
  c23f81:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  c23f84:	e8 47 47 00 00                                  	call   0xc286d0
  c23f89:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  c23f8d:	8b 0d 6c d9 1e 01                               	mov    ecx,DWORD PTR ds:0x11ed96c
  c23f93:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  c23f9b:	f3 0f 5e 44 24 0c                               	divss  xmm0,DWORD PTR [esp+0xc]
  c23fa1:	6a 04                                           	push   0x4
  c23fa3:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  c23fa7:	50                                              	push   eax
  c23fa8:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  c23fae:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  c23fb4:	0f 57 c0                                        	xorps  xmm0,xmm0
  c23fb7:	51                                              	push   ecx
  c23fb8:	8b cf                                           	mov    ecx,edi
  c23fba:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
  c23fc0:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  c23fc6:	e8 05 5a b7 ff                                  	call   0x7999d0
  c23fcb:	0f 28 46 10                                     	movaps xmm0,XMMWORD PTR [esi+0x10]
  c23fcf:	a1 68 d9 1e 01                                  	mov    eax,ds:0x11ed968
  c23fd4:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  c23fd9:	f3 0f 10 4c 24 50                               	movss  xmm1,DWORD PTR [esp+0x50]
  c23fdf:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  c23fe4:	f3 0f 10 44 24 54                               	movss  xmm0,DWORD PTR [esp+0x54]
  c23fea:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
  c23ff0:	0f 57 c0                                        	xorps  xmm0,xmm0
  c23ff3:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  c23ff9:	0f 28 46 30                                     	movaps xmm0,XMMWORD PTR [esi+0x30]
  c23ffd:	6a 04                                           	push   0x4
  c23fff:	8d 54 24 44                                     	lea    edx,[esp+0x44]
  c24003:	0f 29 44 24 54                                  	movaps XMMWORD PTR [esp+0x54],xmm0
  c24008:	f3 0f 10 44 24 58                               	movss  xmm0,DWORD PTR [esp+0x58]
  c2400e:	52                                              	push   edx
  c2400f:	50                                              	push   eax
  c24010:	8b cf                                           	mov    ecx,edi
  c24012:	f3 0f 11 4c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm1
  c24018:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
  c2401e:	e8 ad 59 b7 ff                                  	call   0x7999d0
  c24023:	33 f6                                           	xor    esi,esi
  c24025:	56                                              	push   esi
  c24026:	56                                              	push   esi
  c24027:	56                                              	push   esi
  c24028:	68 82 d8 b2 00                                  	push   0xb2d882
  c2402d:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  c24031:	68 ac 74 07 01                                  	push   0x10774ac
  c24036:	51                                              	push   ecx
  c24037:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  c2403b:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  c2403f:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  c24043:	89 74 24 34                                     	mov    DWORD PTR [esp+0x34],esi
  c24047:	e8 f4 ad 88 ff                                  	call   0x4aee40
  c2404c:	83 c4 18                                        	add    esp,0x18
  c2404f:	84 c0                                           	test   al,al
  c24051:	74 36                                           	je     0xc24089
  c24053:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  c24057:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  c2405b:	56                                              	push   esi
  c2405c:	83 ec 10                                        	sub    esp,0x10
  c2405f:	8b c4                                           	mov    eax,esp
  c24061:	89 10                                           	mov    DWORD PTR [eax],edx
  c24063:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  c24067:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  c2406a:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  c2406e:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  c24071:	68 9c 74 07 01                                  	push   0x107749c
  c24076:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  c24079:	e8 72 c0 ba ff                                  	call   0x7d00f0
  c2407e:	83 c4 04                                        	add    esp,0x4
  c24081:	50                                              	push   eax
  c24082:	8b cf                                           	mov    ecx,edi
  c24084:	e8 a7 59 b7 ff                                  	call   0x799a30
  c24089:	5f                                              	pop    edi
  c2408a:	5e                                              	pop    esi
  c2408b:	8b e5                                           	mov    esp,ebp
  c2408d:	5d                                              	pop    ebp
  c2408e:	c2 0c 00                                        	ret    0xc
