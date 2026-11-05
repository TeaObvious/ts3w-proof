# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00567e60, 0x005682f3); analyst name Animation_ProcessLifetimeHold.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00567e60 <.text+0x166e60>:
  567e60:	83 ec 1c             	sub    esp,0x1c
  567e63:	56                   	push   esi
  567e64:	8b f1                	mov    esi,ecx
  567e66:	85 f6                	test   esi,esi
  567e68:	74 04                	je     0x567e6e
  567e6a:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  567e6e:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  567e71:	c6 44 24 07 00       	mov    BYTE PTR [esp+0x7],0x0
  567e76:	e8 85 41 00 00       	call   0x56c000
  567e7b:	84 c0                	test   al,al
  567e7d:	0f 85 f1 03 00 00    	jne    0x568274
  567e83:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  567e86:	85 c9                	test   ecx,ecx
  567e88:	55                   	push   ebp
  567e89:	8d 6e 3c             	lea    ebp,[esi+0x3c]
  567e8c:	74 1f                	je     0x567ead
  567e8e:	8b 01                	mov    eax,DWORD PTR [ecx]
  567e90:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  567e93:	ff d2                	call   edx
  567e95:	d9 ee                	fldz
  567e97:	df f1                	fcomip st,st(1)
  567e99:	dd d8                	fstp   st(0)
  567e9b:	72 10                	jb     0x567ead
  567e9d:	f6 46 44 08          	test   BYTE PTR [esi+0x44],0x8
  567ea1:	75 0a                	jne    0x567ead
  567ea3:	6a 01                	push   0x1
  567ea5:	56                   	push   esi
  567ea6:	8b cd                	mov    ecx,ebp
  567ea8:	e8 63 eb ff ff       	call   0x566a10
  567ead:	8b 4e 50             	mov    ecx,DWORD PTR [esi+0x50]
  567eb0:	85 c9                	test   ecx,ecx
  567eb2:	53                   	push   ebx
  567eb3:	57                   	push   edi
  567eb4:	8d 7e 50             	lea    edi,[esi+0x50]
  567eb7:	0f 84 ac 00 00 00    	je     0x567f69
  567ebd:	8b 01                	mov    eax,DWORD PTR [ecx]
  567ebf:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  567ec2:	ff d2                	call   edx
  567ec4:	d9 ee                	fldz
  567ec6:	df f1                	fcomip st,st(1)
  567ec8:	dd d8                	fstp   st(0)
  567eca:	0f 82 99 00 00 00    	jb     0x567f69
  567ed0:	f6 46 58 08          	test   BYTE PTR [esi+0x58],0x8
  567ed4:	6a 01                	push   0x1
  567ed6:	56                   	push   esi
  567ed7:	75 0c                	jne    0x567ee5
  567ed9:	8b cf                	mov    ecx,edi
  567edb:	e8 30 eb ff ff       	call   0x566a10
  567ee0:	e9 84 00 00 00       	jmp    0x567f69
  567ee5:	8b cd                	mov    ecx,ebp
  567ee7:	e8 24 eb ff ff       	call   0x566a10
  567eec:	57                   	push   edi
  567eed:	8b cd                	mov    ecx,ebp
  567eef:	e8 0c ed ff ff       	call   0x566c00
  567ef4:	8b cf                	mov    ecx,edi
  567ef6:	e8 d5 e6 ff ff       	call   0x5665d0
  567efb:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  567efe:	85 c0                	test   eax,eax
  567f00:	74 67                	je     0x567f69
  567f02:	6a 00                	push   0x0
  567f04:	6a 00                	push   0x0
  567f06:	6a 00                	push   0x0
  567f08:	6a 00                	push   0x0
  567f0a:	8b d8                	mov    ebx,eax
  567f0c:	83 43 04 01          	add    DWORD PTR [ebx+0x4],0x1
  567f10:	68 64 2b fc 00       	push   0xfc2b64
  567f15:	6a 2c                	push   0x2c
  567f17:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  567f1b:	e8 e0 c5 f7 ff       	call   0x4e4500
  567f20:	83 c4 18             	add    esp,0x18
  567f23:	85 c0                	test   eax,eax
  567f25:	74 11                	je     0x567f38
  567f27:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  567f2a:	8b 4a 1c             	mov    ecx,DWORD PTR [edx+0x1c]
  567f2d:	52                   	push   edx
  567f2e:	51                   	push   ecx
  567f2f:	8b c8                	mov    ecx,eax
  567f31:	e8 fa 80 00 00       	call   0x570030
  567f36:	eb 02                	jmp    0x567f3a
  567f38:	33 c0                	xor    eax,eax
  567f3a:	85 c0                	test   eax,eax
  567f3c:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  567f40:	74 04                	je     0x567f46
  567f42:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  567f46:	50                   	push   eax
  567f47:	8b cd                	mov    ecx,ebp
  567f49:	e8 42 e6 ff ff       	call   0x566590
  567f4e:	8b 03                	mov    eax,DWORD PTR [ebx]
  567f50:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  567f53:	8b cb                	mov    ecx,ebx
  567f55:	ff d2                	call   edx
  567f57:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  567f5b:	e8 c0 dd ff ff       	call   0x565d20
  567f60:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  567f64:	e8 b7 dd ff ff       	call   0x565d20
  567f69:	8b 0f                	mov    ecx,DWORD PTR [edi]
  567f6b:	85 c9                	test   ecx,ecx
  567f6d:	0f 84 44 02 00 00    	je     0x5681b7
  567f73:	8b 01                	mov    eax,DWORD PTR [ecx]
  567f75:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  567f78:	ff d2                	call   edx
  567f7a:	d9 5c 24 28          	fstp   DWORD PTR [esp+0x28]
  567f7e:	8b 0f                	mov    ecx,DWORD PTR [edi]
  567f80:	8b 01                	mov    eax,DWORD PTR [ecx]
  567f82:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  567f85:	ff d2                	call   edx
  567f87:	d9 5c 24 24          	fstp   DWORD PTR [esp+0x24]
  567f8b:	f3 0f 10 15 58 2a fc 00 	movss  xmm2,DWORD PTR ds:0xfc2a58
  567f93:	f3 0f 10 46 60       	movss  xmm0,DWORD PTR [esi+0x60]
  567f98:	0f 57 db             	xorps  xmm3,xmm3
  567f9b:	33 c9                	xor    ecx,ecx
  567f9d:	8d 5e 30             	lea    ebx,[esi+0x30]
  567fa0:	39 1b                	cmp    DWORD PTR [ebx],ebx
  567fa2:	0f 28 ca             	movaps xmm1,xmm2
  567fa5:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  567fab:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  567fb1:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  567fb5:	0f 84 e5 00 00 00    	je     0x5680a0
  567fbb:	8b 03                	mov    eax,DWORD PTR [ebx]
  567fbd:	f6 40 10 04          	test   BYTE PTR [eax+0x10],0x4
  567fc1:	0f 85 d9 00 00 00    	jne    0x5680a0
  567fc7:	f3 0f 10 44 24 28    	movss  xmm0,DWORD PTR [esp+0x28]
  567fcd:	0f 2e 05 94 05 15 01 	ucomiss xmm0,DWORD PTR ds:0x1150594
  567fd4:	9f                   	lahf
  567fd5:	f6 c4 44             	test   ah,0x44
  567fd8:	7a 3b                	jp     0x568015
  567fda:	8b 0f                	mov    ecx,DWORD PTR [edi]
  567fdc:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  567fdf:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  567fe2:	83 c1 08             	add    ecx,0x8
  567fe5:	68 2c fc 89 b4       	push   0xb489fc2c
  567fea:	ff d0                	call   eax
  567fec:	85 c0                	test   eax,eax
  567fee:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  567ff2:	74 18                	je     0x56800c
  567ff4:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  567ff8:	8b c8                	mov    ecx,eax
  567ffa:	e8 31 06 00 00       	call   0x568630
  567fff:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  568003:	83 c0 01             	add    eax,0x1
  568006:	50                   	push   eax
  568007:	e8 14 06 00 00       	call   0x568620
  56800c:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  568010:	e8 0b dd ff ff       	call   0x565d20
  568015:	8b 03                	mov    eax,DWORD PTR [ebx]
  568017:	f3 0f 10 40 14       	movss  xmm0,DWORD PTR [eax+0x14]
  56801c:	83 c0 08             	add    eax,0x8
  56801f:	50                   	push   eax
  568020:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  568024:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  56802a:	e8 21 cd 2e 00       	call   0x854d50
  56802f:	f3 0f 10 15 58 2a fc 00 	movss  xmm2,DWORD PTR ds:0xfc2a58
  568037:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  56803d:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  568043:	0f 57 db             	xorps  xmm3,xmm3
  568046:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  56804a:	0f 2e c2             	ucomiss xmm0,xmm2
  56804d:	9f                   	lahf
  56804e:	f6 c4 44             	test   ah,0x44
  568051:	7b 12                	jnp    0x568065
  568053:	0f 2e ca             	ucomiss xmm1,xmm2
  568056:	9f                   	lahf
  568057:	f6 c4 44             	test   ah,0x44
  56805a:	7a 12                	jp     0x56806e
  56805c:	0f 28 c8             	movaps xmm1,xmm0
  56805f:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  568065:	0f 2e ca             	ucomiss xmm1,xmm2
  568068:	9f                   	lahf
  568069:	f6 c4 44             	test   ah,0x44
  56806c:	7b 1b                	jnp    0x568089
  56806e:	0f 2e c2             	ucomiss xmm0,xmm2
  568071:	9f                   	lahf
  568072:	f6 c4 44             	test   ah,0x44
  568075:	7a 09                	jp     0x568080
  568077:	0f 28 c1             	movaps xmm0,xmm1
  56807a:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  568080:	0f 2e ca             	ucomiss xmm1,xmm2
  568083:	9f                   	lahf
  568084:	f6 c4 44             	test   ah,0x44
  568087:	7a 28                	jp     0x5680b1
  568089:	0f 2e c2             	ucomiss xmm0,xmm2
  56808c:	9f                   	lahf
  56808d:	f6 c4 44             	test   ah,0x44
  568090:	7a 1f                	jp     0x5680b1
  568092:	f3 0f 11 5c 24 14    	movss  DWORD PTR [esp+0x14],xmm3
  568098:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  56809e:	eb 1a                	jmp    0x5680ba
  5680a0:	f6 46 58 10          	test   BYTE PTR [esi+0x58],0x10
  5680a4:	75 a4                	jne    0x56804a
  5680a6:	0f 28 c3             	movaps xmm0,xmm3
  5680a9:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  5680af:	eb ab                	jmp    0x56805c
  5680b1:	0f 2f c1             	comiss xmm0,xmm1
  5680b4:	8d 44 24 14          	lea    eax,[esp+0x14]
  5680b8:	77 04                	ja     0x5680be
  5680ba:	8d 44 24 18          	lea    eax,[esp+0x18]
  5680be:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  5680c4:	0f 2f 00             	comiss xmm0,DWORD PTR [eax]
  5680c7:	77 04                	ja     0x5680cd
  5680c9:	8d 44 24 24          	lea    eax,[esp+0x24]
  5680cd:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  5680d1:	0f 2f c8             	comiss xmm1,xmm0
  5680d4:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  5680da:	0f 82 ac 00 00 00    	jb     0x56818c
  5680e0:	39 1b                	cmp    DWORD PTR [ebx],ebx
  5680e2:	74 4e                	je     0x568132
  5680e4:	8b 13                	mov    edx,DWORD PTR [ebx]
  5680e6:	f6 42 10 04          	test   BYTE PTR [edx+0x10],0x4
  5680ea:	75 46                	jne    0x568132
  5680ec:	6a 01                	push   0x1
  5680ee:	56                   	push   esi
  5680ef:	8b cd                	mov    ecx,ebp
  5680f1:	e8 1a e9 ff ff       	call   0x566a10
  5680f6:	57                   	push   edi
  5680f7:	8b cd                	mov    ecx,ebp
  5680f9:	e8 02 eb ff ff       	call   0x566c00
  5680fe:	8b cf                	mov    ecx,edi
  568100:	e8 cb e4 ff ff       	call   0x5665d0
  568105:	8d 44 24 13          	lea    eax,[esp+0x13]
  568109:	50                   	push   eax
  56810a:	8b ce                	mov    ecx,esi
  56810c:	e8 af f2 ff ff       	call   0x5673c0
  568111:	d9 ee                	fldz
  568113:	8b 0f                	mov    ecx,DWORD PTR [edi]
  568115:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  568118:	83 ec 08             	sub    esp,0x8
  56811b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  56811f:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  568123:	d9 1c 24             	fstp   DWORD PTR [esp]
  568126:	51                   	push   ecx
  568127:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  56812a:	52                   	push   edx
  56812b:	e8 80 41 00 00       	call   0x56c2b0
  568130:	eb 56                	jmp    0x568188
  568132:	f3 0f 10 4c 24 28    	movss  xmm1,DWORD PTR [esp+0x28]
  568138:	0f 2e 0d 94 05 15 01 	ucomiss xmm1,DWORD PTR ds:0x1150594
  56813f:	9f                   	lahf
  568140:	f6 c4 44             	test   ah,0x44
  568143:	7b 47                	jnp    0x56818c
  568145:	0f 2f c3             	comiss xmm0,xmm3
  568148:	6a 01                	push   0x1
  56814a:	8b cd                	mov    ecx,ebp
  56814c:	56                   	push   esi
  56814d:	76 2a                	jbe    0x568179
  56814f:	e8 bc e8 ff ff       	call   0x566a10
  568154:	57                   	push   edi
  568155:	8b cd                	mov    ecx,ebp
  568157:	e8 a4 ea ff ff       	call   0x566c00
  56815c:	8b cf                	mov    ecx,edi
  56815e:	e8 6d e4 ff ff       	call   0x5665d0
  568163:	8d 44 24 13          	lea    eax,[esp+0x13]
  568167:	50                   	push   eax
  568168:	8b ce                	mov    ecx,esi
  56816a:	e8 51 f2 ff ff       	call   0x5673c0
  56816f:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  568172:	e8 c9 40 00 00       	call   0x56c240
  568177:	eb 98                	jmp    0x568111
  568179:	e8 92 e8 ff ff       	call   0x566a10
  56817e:	6a 01                	push   0x1
  568180:	56                   	push   esi
  568181:	8b cf                	mov    ecx,edi
  568183:	e8 88 e8 ff ff       	call   0x566a10
  568188:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  56818c:	85 c9                	test   ecx,ecx
  56818e:	0f 84 dd 00 00 00    	je     0x568271
  568194:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  568197:	83 c0 ff             	add    eax,0xffffffff
  56819a:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  56819d:	0f 85 ce 00 00 00    	jne    0x568271
  5681a3:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  5681aa:	8b 01                	mov    eax,DWORD PTR [ecx]
  5681ac:	8b 10                	mov    edx,DWORD PTR [eax]
  5681ae:	6a 01                	push   0x1
  5681b0:	ff d2                	call   edx
  5681b2:	e9 ba 00 00 00       	jmp    0x568271
  5681b7:	8d 46 30             	lea    eax,[esi+0x30]
  5681ba:	39 00                	cmp    DWORD PTR [eax],eax
  5681bc:	0f 84 af 00 00 00    	je     0x568271
  5681c2:	8b 00                	mov    eax,DWORD PTR [eax]
  5681c4:	f6 40 10 04          	test   BYTE PTR [eax+0x10],0x4
  5681c8:	0f 85 a3 00 00 00    	jne    0x568271
  5681ce:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  5681d1:	32 db                	xor    bl,bl
  5681d3:	85 c0                	test   eax,eax
  5681d5:	74 29                	je     0x568200
  5681d7:	f6 46 44 08          	test   BYTE PTR [esi+0x44],0x8
  5681db:	75 0c                	jne    0x5681e9
  5681dd:	6a 01                	push   0x1
  5681df:	56                   	push   esi
  5681e0:	8b cd                	mov    ecx,ebp
  5681e2:	e8 29 e8 ff ff       	call   0x566a10
  5681e7:	eb 17                	jmp    0x568200
  5681e9:	85 c0                	test   eax,eax
  5681eb:	74 13                	je     0x568200
  5681ed:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  5681f0:	8d 48 08             	lea    ecx,[eax+0x8]
  5681f3:	8b 02                	mov    eax,DWORD PTR [edx]
  5681f5:	ff d0                	call   eax
  5681f7:	3d a8 1b a1 07       	cmp    eax,0x7a11ba8
  5681fc:	75 02                	jne    0x568200
  5681fe:	b3 01                	mov    bl,0x1
  568200:	6a 01                	push   0x1
  568202:	56                   	push   esi
  568203:	8b cf                	mov    ecx,edi
  568205:	e8 06 e8 ff ff       	call   0x566a10
  56820a:	8d 4c 24 13          	lea    ecx,[esp+0x13]
  56820e:	51                   	push   ecx
  56820f:	8b ce                	mov    ecx,esi
  568211:	e8 aa f1 ff ff       	call   0x5673c0
  568216:	84 db                	test   bl,bl
  568218:	f3 0f 10 46 5c       	movss  xmm0,DWORD PTR [esi+0x5c]
  56821d:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  568223:	75 0d                	jne    0x568232
  568225:	0f 2e 05 58 2a fc 00 	ucomiss xmm0,DWORD PTR ds:0xfc2a58
  56822c:	9f                   	lahf
  56822d:	f6 c4 44             	test   ah,0x44
  568230:	7a 09                	jp     0x56823b
  568232:	0f 57 c0             	xorps  xmm0,xmm0
  568235:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  56823b:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  56823e:	e8 fd 3f 00 00       	call   0x56c240
  568243:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  568249:	0f 2f 05 cc 4c 0f 01 	comiss xmm0,DWORD PTR ds:0x10f4ccc
  568250:	76 1f                	jbe    0x568271
  568252:	d9 ee                	fldz
  568254:	8b 17                	mov    edx,DWORD PTR [edi]
  568256:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  568259:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  56825c:	83 ec 08             	sub    esp,0x8
  56825f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  568263:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  568267:	d9 1c 24             	fstp   DWORD PTR [esp]
  56826a:	52                   	push   edx
  56826b:	50                   	push   eax
  56826c:	e8 3f 40 00 00       	call   0x56c2b0
  568271:	5f                   	pop    edi
  568272:	5b                   	pop    ebx
  568273:	5d                   	pop    ebp
  568274:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  568277:	e8 84 3d 00 00       	call   0x56c000
  56827c:	84 c0                	test   al,al
  56827e:	74 33                	je     0x5682b3
  568280:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  568283:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  568287:	8b 11                	mov    edx,DWORD PTR [ecx]
  568289:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  56828c:	51                   	push   ecx
  56828d:	d9 1c 24             	fstp   DWORD PTR [esp]
  568290:	ff d0                	call   eax
  568292:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  568295:	e8 86 3d 00 00       	call   0x56c020
  56829a:	84 c0                	test   al,al
  56829c:	74 32                	je     0x5682d0
  56829e:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  5682a1:	e8 9a 3f 00 00       	call   0x56c240
  5682a6:	6a 01                	push   0x1
  5682a8:	56                   	push   esi
  5682a9:	8d 4e 3c             	lea    ecx,[esi+0x3c]
  5682ac:	e8 5f e7 ff ff       	call   0x566a10
  5682b1:	eb 1d                	jmp    0x5682d0
  5682b3:	8b 4e 50             	mov    ecx,DWORD PTR [esi+0x50]
  5682b6:	85 c9                	test   ecx,ecx
  5682b8:	74 16                	je     0x5682d0
  5682ba:	80 7c 24 07 00       	cmp    BYTE PTR [esp+0x7],0x0
  5682bf:	75 0f                	jne    0x5682d0
  5682c1:	8b 11                	mov    edx,DWORD PTR [ecx]
  5682c3:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  5682c7:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  5682ca:	51                   	push   ecx
  5682cb:	d9 1c 24             	fstp   DWORD PTR [esp]
  5682ce:	ff d0                	call   eax
  5682d0:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  5682d3:	83 c0 ff             	add    eax,0xffffffff
  5682d6:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  5682d9:	75 11                	jne    0x5682ec
  5682db:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  5682e2:	8b 16                	mov    edx,DWORD PTR [esi]
  5682e4:	8b 02                	mov    eax,DWORD PTR [edx]
  5682e6:	6a 01                	push   0x1
  5682e8:	8b ce                	mov    ecx,esi
  5682ea:	ff d0                	call   eax
  5682ec:	5e                   	pop    esi
  5682ed:	83 c4 1c             	add    esp,0x1c
  5682f0:	c2 04 00             	ret    0x4
