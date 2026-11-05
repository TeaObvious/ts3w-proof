# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0063eb60,0x0063f452); analyst name PortalGraphSearch_FindRoomCrossings.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0063eb60 <.text+0x23db60>:
  63eb60:	81 ec 14 01 00 00    	sub    esp,0x114
  63eb66:	66 8b 94 24 3c 01 00 00 	mov    dx,WORD PTR [esp+0x13c]
  63eb6e:	33 c0                	xor    eax,eax
  63eb70:	89 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],eax
  63eb77:	89 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],eax
  63eb7e:	89 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],eax
  63eb85:	89 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],eax
  63eb8c:	53                   	push   ebx
  63eb8d:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  63eb95:	8b 9c 24 30 01 00 00 	mov    ebx,DWORD PTR [esp+0x130]
  63eb9c:	55                   	push   ebp
  63eb9d:	8b e9                	mov    ebp,ecx
  63eb9f:	66 89 55 04          	mov    WORD PTR [ebp+0x4],dx
  63eba3:	8d 84 24 98 00 00 00 	lea    eax,[esp+0x98]
  63ebaa:	8b c8                	mov    ecx,eax
  63ebac:	89 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],eax
  63ebb3:	83 c8 ff             	or     eax,0xffffffff
  63ebb6:	89 84 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],eax
  63ebbd:	89 84 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],eax
  63ebc4:	66 8b 84 24 48 01 00 00 	mov    ax,WORD PTR [esp+0x148]
  63ebcc:	66 89 45 06          	mov    WORD PTR [ebp+0x6],ax
  63ebd0:	8b 84 24 28 01 00 00 	mov    eax,DWORD PTR [esp+0x128]
  63ebd7:	d9 00                	fld    DWORD PTR [eax]
  63ebd9:	89 8c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ecx
  63ebe0:	d9 5d 08             	fstp   DWORD PTR [ebp+0x8]
  63ebe3:	56                   	push   esi
  63ebe4:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  63ebe7:	57                   	push   edi
  63ebe8:	8b bc 24 38 01 00 00 	mov    edi,DWORD PTR [esp+0x138]
  63ebef:	d9 5d 0c             	fstp   DWORD PTR [ebp+0xc]
  63ebf2:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  63ebf5:	8b 84 24 34 01 00 00 	mov    eax,DWORD PTR [esp+0x134]
  63ebfc:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  63ebff:	d9 00                	fld    DWORD PTR [eax]
  63ec01:	d9 5d 14             	fstp   DWORD PTR [ebp+0x14]
  63ec04:	33 f6                	xor    esi,esi
  63ec06:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  63ec09:	f3 0f 11 84 24 8c 00 00 00 	movss  DWORD PTR [esp+0x8c],xmm0
  63ec12:	f3 0f 10 05 88 fd 03 01 	movss  xmm0,DWORD PTR ds:0x103fd88
  63ec1a:	d9 5d 18             	fstp   DWORD PTR [ebp+0x18]
  63ec1d:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  63ec20:	89 55 1c             	mov    DWORD PTR [ebp+0x1c],edx
  63ec23:	8b cf                	mov    ecx,edi
  63ec25:	c1 e9 10             	shr    ecx,0x10
  63ec28:	8b c3                	mov    eax,ebx
  63ec2a:	8d 94 24 38 01 00 00 	lea    edx,[esp+0x138]
  63ec31:	f3 0f 11 84 24 90 00 00 00 	movss  DWORD PTR [esp+0x90],xmm0
  63ec3a:	0f 57 c0             	xorps  xmm0,xmm0
  63ec3d:	c1 e8 10             	shr    eax,0x10
  63ec40:	66 89 4c 24 54       	mov    WORD PTR [esp+0x54],cx
  63ec45:	52                   	push   edx
  63ec46:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  63ec4d:	c7 84 24 b8 00 00 00 f8 dc fe 00 	mov    DWORD PTR [esp+0xb8],0xfedcf8
  63ec58:	89 b4 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],esi
  63ec5f:	c6 84 24 b0 00 00 00 00 	mov    BYTE PTR [esp+0xb0],0x0
  63ec67:	89 b4 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],esi
  63ec6e:	89 b4 24 c0 00 00 00 	mov    DWORD PTR [esp+0xc0],esi
  63ec75:	89 b4 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],esi
  63ec7c:	89 b4 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],esi
  63ec83:	c7 84 24 cc 00 00 00 f0 b5 fe 00 	mov    DWORD PTR [esp+0xcc],0xfeb5f0
  63ec8e:	89 b4 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],esi
  63ec95:	c7 84 24 9c 00 00 00 e4 dc fe 00 	mov    DWORD PTR [esp+0x9c],0xfedce4
  63eca0:	c7 84 24 88 00 00 00 01 00 00 00 	mov    DWORD PTR [esp+0x88],0x1
  63ecab:	c7 84 24 84 00 00 00 00 d9 14 01 	mov    DWORD PTR [esp+0x84],0x114d900
  63ecb6:	89 b4 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],esi
  63ecbd:	89 b4 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],esi
  63ecc4:	66 89 45 20          	mov    WORD PTR [ebp+0x20],ax
  63ecc8:	66 89 7c 24 5a       	mov    WORD PTR [esp+0x5a],di
  63eccd:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  63ecd3:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  63ecd9:	e8 c2 b4 fe ff       	call   0x62a1a0
  63ecde:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  63ece2:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
  63ece6:	89 08                	mov    DWORD PTR [eax],ecx
  63ece8:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  63ecec:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  63ecef:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  63ecf3:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  63ecf6:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  63ecfa:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  63ecfd:	8b 54 24 68          	mov    edx,DWORD PTR [esp+0x68]
  63ed01:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  63ed04:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
  63ed07:	8d 84 24 38 01 00 00 	lea    eax,[esp+0x138]
  63ed0e:	50                   	push   eax
  63ed0f:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  63ed16:	e8 85 b4 fe ff       	call   0x62a1a0
  63ed1b:	50                   	push   eax
  63ed1c:	8d 8c 24 bc 00 00 00 	lea    ecx,[esp+0xbc]
  63ed23:	e8 b8 d9 fe ff       	call   0x62c6e0
  63ed28:	8b 8c 24 44 01 00 00 	mov    ecx,DWORD PTR [esp+0x144]
  63ed2f:	8b 94 24 2c 01 00 00 	mov    edx,DWORD PTR [esp+0x12c]
  63ed36:	53                   	push   ebx
  63ed37:	57                   	push   edi
  63ed38:	89 39                	mov    DWORD PTR [ecx],edi
  63ed3a:	8b bc 24 30 01 00 00 	mov    edi,DWORD PTR [esp+0x130]
  63ed41:	52                   	push   edx
  63ed42:	57                   	push   edi
  63ed43:	8b cd                	mov    ecx,ebp
  63ed45:	e8 46 90 fe ff       	call   0x627d90
  63ed4a:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  63ed4e:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  63ed56:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  63ed5c:	f3 0f 10 05 88 fd 03 01 	movss  xmm0,DWORD PTR ds:0x103fd88
  63ed64:	bb 01 00 00 00       	mov    ebx,0x1
  63ed69:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  63ed6f:	c7 44 24 50 d0 dc fe 00 	mov    DWORD PTR [esp+0x50],0xfedcd0
  63ed77:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  63ed7b:	c7 44 24 38 00 d9 14 01 	mov    DWORD PTR [esp+0x38],0x114d900
  63ed83:	89 74 24 40          	mov    DWORD PTR [esp+0x40],esi
  63ed87:	89 74 24 4c          	mov    DWORD PTR [esp+0x4c],esi
  63ed8b:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
  63ed8f:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  63ed93:	e8 58 9f 1e 00       	call   0x828cf0
  63ed98:	3b c6                	cmp    eax,esi
  63ed9a:	74 1e                	je     0x63edba
  63ed9c:	8b 4f 40             	mov    ecx,DWORD PTR [edi+0x40]
  63ed9f:	51                   	push   ecx
  63eda0:	8b c8                	mov    ecx,eax
  63eda2:	e8 59 a1 1e 00       	call   0x828f00
  63eda7:	3b c6                	cmp    eax,esi
  63eda9:	74 0f                	je     0x63edba
  63edab:	8b c8                	mov    ecx,eax
  63edad:	e8 be d7 1d 00       	call   0x81c570
  63edb2:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  63edb6:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  63edba:	39 b4 24 d0 00 00 00 	cmp    DWORD PTR [esp+0xd0],esi
  63edc1:	0f 8c dc 03 00 00    	jl     0x63f1a3
  63edc7:	eb 07                	jmp    0x63edd0
  63edc9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  63edd0:	8b 8c 24 cc 00 00 00 	mov    ecx,DWORD PTR [esp+0xcc]
  63edd7:	8b 84 24 bc 00 00 00 	mov    eax,DWORD PTR [esp+0xbc]
  63edde:	8d 14 49             	lea    edx,[ecx+ecx*2]
  63ede1:	8b 3c 90             	mov    edi,DWORD PTR [eax+edx*4]
  63ede4:	0f b7 37             	movzx  esi,WORD PTR [edi]
  63ede7:	8d 04 90             	lea    eax,[eax+edx*4]
  63edea:	0f b7 57 02          	movzx  edx,WORD PTR [edi+0x2]
  63edee:	c1 e6 10             	shl    esi,0x10
  63edf1:	03 f2                	add    esi,edx
  63edf3:	3b b4 24 3c 01 00 00 	cmp    esi,DWORD PTR [esp+0x13c]
  63edfa:	89 bc 24 d8 00 00 00 	mov    DWORD PTR [esp+0xd8],edi
  63ee01:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  63ee05:	0f 84 55 04 00 00    	je     0x63f260
  63ee0b:	33 db                	xor    ebx,ebx
  63ee0d:	3b cb                	cmp    ecx,ebx
  63ee0f:	7c 2d                	jl     0x63ee3e
  63ee11:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  63ee14:	8b cf                	mov    ecx,edi
  63ee16:	3b ca                	cmp    ecx,edx
  63ee18:	74 11                	je     0x63ee2b
  63ee1a:	8b 49 10             	mov    ecx,DWORD PTR [ecx+0x10]
  63ee1d:	3b ca                	cmp    ecx,edx
  63ee1f:	89 08                	mov    DWORD PTR [eax],ecx
  63ee21:	74 05                	je     0x63ee28
  63ee23:	89 51 0c             	mov    DWORD PTR [ecx+0xc],edx
  63ee26:	eb 03                	jmp    0x63ee2b
  63ee28:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  63ee2b:	8b 08                	mov    ecx,DWORD PTR [eax]
  63ee2d:	3b 48 08             	cmp    ecx,DWORD PTR [eax+0x8]
  63ee30:	75 0c                	jne    0x63ee3e
  63ee32:	8d 8c 24 b8 00 00 00 	lea    ecx,[esp+0xb8]
  63ee39:	e8 82 d3 fd ff       	call   0x61c1c0
  63ee3e:	c6 84 24 d4 00 00 00 00 	mov    BYTE PTR [esp+0xd4],0x0
  63ee46:	8b 94 24 d4 00 00 00 	mov    edx,DWORD PTR [esp+0xd4]
  63ee4d:	52                   	push   edx
  63ee4e:	8d 44 24 20          	lea    eax,[esp+0x20]
  63ee52:	50                   	push   eax
  63ee53:	8d 8c 24 24 01 00 00 	lea    ecx,[esp+0x124]
  63ee5a:	51                   	push   ecx
  63ee5b:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  63ee62:	c7 47 14 ff ff ff ff 	mov    DWORD PTR [edi+0x14],0xffffffff
  63ee69:	e8 e2 56 e6 ff       	call   0x4a4550
  63ee6e:	8b 94 24 48 01 00 00 	mov    edx,DWORD PTR [esp+0x148]
  63ee75:	8b 8c 24 2c 01 00 00 	mov    ecx,DWORD PTR [esp+0x12c]
  63ee7c:	52                   	push   edx
  63ee7d:	8b 94 24 2c 01 00 00 	mov    edx,DWORD PTR [esp+0x12c]
  63ee84:	8d 44 24 58          	lea    eax,[esp+0x58]
  63ee88:	50                   	push   eax
  63ee89:	56                   	push   esi
  63ee8a:	51                   	push   ecx
  63ee8b:	52                   	push   edx
  63ee8c:	8b cd                	mov    ecx,ebp
  63ee8e:	89 5c 24 68          	mov    DWORD PTR [esp+0x68],ebx
  63ee92:	89 5c 24 6c          	mov    DWORD PTR [esp+0x6c],ebx
  63ee96:	89 5c 24 70          	mov    DWORD PTR [esp+0x70],ebx
  63ee9a:	c7 44 24 74 b8 dc fe 00 	mov    DWORD PTR [esp+0x74],0xfedcb8
  63eea2:	e8 d9 f8 ff ff       	call   0x63e780
  63eea7:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  63eeab:	3b 44 24 58          	cmp    eax,DWORD PTR [esp+0x58]
  63eeaf:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  63eeb3:	0f 84 c6 02 00 00    	je     0x63f17f
  63eeb9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  63eec0:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  63eec4:	8b 30                	mov    esi,DWORD PTR [eax]
  63eec6:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
  63eecd:	85 c0                	test   eax,eax
  63eecf:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
  63eed3:	8d 8c 24 a0 00 00 00 	lea    ecx,[esp+0xa0]
  63eeda:	74 2a                	je     0x63ef06
  63eedc:	8d 64 24 00          	lea    esp,[esp+0x0]
  63eee0:	39 70 10             	cmp    DWORD PTR [eax+0x10],esi
  63eee3:	72 07                	jb     0x63eeec
  63eee5:	8b c8                	mov    ecx,eax
  63eee7:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  63eeea:	eb 02                	jmp    0x63eeee
  63eeec:	8b 00                	mov    eax,DWORD PTR [eax]
  63eeee:	85 c0                	test   eax,eax
  63eef0:	75 ee                	jne    0x63eee0
  63eef2:	8d 94 24 a0 00 00 00 	lea    edx,[esp+0xa0]
  63eef9:	3b ca                	cmp    ecx,edx
  63eefb:	74 09                	je     0x63ef06
  63eefd:	3b 71 10             	cmp    esi,DWORD PTR [ecx+0x10]
  63ef00:	0f 83 64 02 00 00    	jae    0x63f16a
  63ef06:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  63ef0a:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  63ef0e:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  63ef12:	50                   	push   eax
  63ef13:	8b 84 24 30 01 00 00 	mov    eax,DWORD PTR [esp+0x130]
  63ef1a:	51                   	push   ecx
  63ef1b:	8b 8c 24 30 01 00 00 	mov    ecx,DWORD PTR [esp+0x130]
  63ef22:	56                   	push   esi
  63ef23:	52                   	push   edx
  63ef24:	50                   	push   eax
  63ef25:	51                   	push   ecx
  63ef26:	8b cd                	mov    ecx,ebp
  63ef28:	e8 f3 5d ff ff       	call   0x634d20
  63ef2d:	d9 54 24 28          	fst    DWORD PTR [esp+0x28]
  63ef31:	d9 05 38 c6 fe 00    	fld    DWORD PTR ds:0xfec638
  63ef37:	d9 c9                	fxch   st(1)
  63ef39:	df f1                	fcomip st,st(1)
  63ef3b:	dd d8                	fstp   st(0)
  63ef3d:	0f 83 27 02 00 00    	jae    0x63f16a
  63ef43:	8b 94 24 d8 00 00 00 	mov    edx,DWORD PTR [esp+0xd8]
  63ef4a:	f3 0f 10 42 04       	movss  xmm0,DWORD PTR [edx+0x4]
  63ef4f:	8b bc 24 84 00 00 00 	mov    edi,DWORD PTR [esp+0x84]
  63ef56:	33 d2                	xor    edx,edx
  63ef58:	8b c6                	mov    eax,esi
  63ef5a:	f7 f7                	div    edi
  63ef5c:	8b 9c 24 80 00 00 00 	mov    ebx,DWORD PTR [esp+0x80]
  63ef63:	8b 04 93             	mov    eax,DWORD PTR [ebx+edx*4]
  63ef66:	85 c0                	test   eax,eax
  63ef68:	f3 0f 58 44 24 28    	addss  xmm0,DWORD PTR [esp+0x28]
  63ef6e:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  63ef74:	8d 0c 93             	lea    ecx,[ebx+edx*4]
  63ef77:	74 16                	je     0x63ef8f
  63ef79:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  63ef80:	3b 30                	cmp    esi,DWORD PTR [eax]
  63ef82:	0f 84 40 01 00 00    	je     0x63f0c8
  63ef88:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
  63ef8b:	85 c0                	test   eax,eax
  63ef8d:	75 f1                	jne    0x63ef80
  63ef8f:	8b 0c bb             	mov    ecx,DWORD PTR [ebx+edi*4]
  63ef92:	8d 04 bb             	lea    eax,[ebx+edi*4]
  63ef95:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
  63ef99:	89 4c 24 74          	mov    DWORD PTR [esp+0x74],ecx
  63ef9d:	8d 44 24 74          	lea    eax,[esp+0x74]
  63efa1:	8b 00                	mov    eax,DWORD PTR [eax]
  63efa3:	3b 04 bb             	cmp    eax,DWORD PTR [ebx+edi*4]
  63efa6:	0f 85 2d 01 00 00    	jne    0x63f0d9
  63efac:	0f 57 c0             	xorps  xmm0,xmm0
  63efaf:	8b d6                	mov    edx,esi
  63efb1:	c1 ea 10             	shr    edx,0x10
  63efb4:	66 89 94 24 dc 00 00 00 	mov    WORD PTR [esp+0xdc],dx
  63efbc:	66 89 b4 24 de 00 00 00 	mov    WORD PTR [esp+0xde],si
  63efc4:	8b 84 24 dc 00 00 00 	mov    eax,DWORD PTR [esp+0xdc]
  63efcb:	f3 0f 11 84 24 e0 00 00 00 	movss  DWORD PTR [esp+0xe0],xmm0
  63efd4:	8b 8c 24 e0 00 00 00 	mov    ecx,DWORD PTR [esp+0xe0]
  63efdb:	89 84 24 04 01 00 00 	mov    DWORD PTR [esp+0x104],eax
  63efe2:	8b 84 24 e8 00 00 00 	mov    eax,DWORD PTR [esp+0xe8]
  63efe9:	89 8c 24 08 01 00 00 	mov    DWORD PTR [esp+0x108],ecx
  63eff0:	8b 8c 24 ec 00 00 00 	mov    ecx,DWORD PTR [esp+0xec]
  63eff7:	f3 0f 11 84 24 e4 00 00 00 	movss  DWORD PTR [esp+0xe4],xmm0
  63f000:	8b 94 24 e4 00 00 00 	mov    edx,DWORD PTR [esp+0xe4]
  63f007:	89 94 24 0c 01 00 00 	mov    DWORD PTR [esp+0x10c],edx
  63f00e:	8b 94 24 f0 00 00 00 	mov    edx,DWORD PTR [esp+0xf0]
  63f015:	89 84 24 10 01 00 00 	mov    DWORD PTR [esp+0x110],eax
  63f01c:	89 8c 24 14 01 00 00 	mov    DWORD PTR [esp+0x114],ecx
  63f023:	c6 44 24 30 00       	mov    BYTE PTR [esp+0x30],0x0
  63f028:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  63f02c:	50                   	push   eax
  63f02d:	8d 8c 24 04 01 00 00 	lea    ecx,[esp+0x104]
  63f034:	89 94 24 1c 01 00 00 	mov    DWORD PTR [esp+0x11c],edx
  63f03b:	51                   	push   ecx
  63f03c:	8d 94 24 fc 00 00 00 	lea    edx,[esp+0xfc]
  63f043:	52                   	push   edx
  63f044:	8d 8c 24 88 00 00 00 	lea    ecx,[esp+0x88]
  63f04b:	89 b4 24 0c 01 00 00 	mov    DWORD PTR [esp+0x10c],esi
  63f052:	e8 39 9e fe ff       	call   0x628e90
  63f057:	80 bc 24 fc 00 00 00 00 	cmp    BYTE PTR [esp+0xfc],0x0
  63f05f:	0f 84 05 01 00 00    	je     0x63f16a
  63f065:	8b bc 24 f4 00 00 00 	mov    edi,DWORD PTR [esp+0xf4]
  63f06c:	8d 44 24 10          	lea    eax,[esp+0x10]
  63f070:	50                   	push   eax
  63f071:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  63f075:	83 c7 04             	add    edi,0x4
  63f078:	e8 93 57 01 00       	call   0x654810
  63f07d:	8b 94 24 3c 01 00 00 	mov    edx,DWORD PTR [esp+0x13c]
  63f084:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  63f088:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  63f08e:	89 08                	mov    DWORD PTR [eax],ecx
  63f090:	8b 84 24 2c 01 00 00 	mov    eax,DWORD PTR [esp+0x12c]
  63f097:	8b 8c 24 28 01 00 00 	mov    ecx,DWORD PTR [esp+0x128]
  63f09e:	52                   	push   edx
  63f09f:	56                   	push   esi
  63f0a0:	50                   	push   eax
  63f0a1:	51                   	push   ecx
  63f0a2:	8b cd                	mov    ecx,ebp
  63f0a4:	f3 0f 11 47 04       	movss  DWORD PTR [edi+0x4],xmm0
  63f0a9:	e8 e2 8c fe ff       	call   0x627d90
  63f0ae:	d9 54 24 10          	fst    DWORD PTR [esp+0x10]
  63f0b2:	d8 44 24 18          	fadd   DWORD PTR [esp+0x18]
  63f0b6:	57                   	push   edi
  63f0b7:	8d 8c 24 bc 00 00 00 	lea    ecx,[esp+0xbc]
  63f0be:	d9 5f 08             	fstp   DWORD PTR [edi+0x8]
  63f0c1:	e8 1a d6 fe ff       	call   0x62c6e0
  63f0c6:	eb 7f                	jmp    0x63f147
  63f0c8:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  63f0cc:	89 4c 24 70          	mov    DWORD PTR [esp+0x70],ecx
  63f0d0:	8d 44 24 6c          	lea    eax,[esp+0x6c]
  63f0d4:	e9 c8 fe ff ff       	jmp    0x63efa1
  63f0d9:	83 78 18 00          	cmp    DWORD PTR [eax+0x18],0x0
  63f0dd:	8d 78 04             	lea    edi,[eax+0x4]
  63f0e0:	0f 8c 84 00 00 00    	jl     0x63f16a
  63f0e6:	f3 0f 10 4f 04       	movss  xmm1,DWORD PTR [edi+0x4]
  63f0eb:	0f 2f c8             	comiss xmm1,xmm0
  63f0ee:	76 7a                	jbe    0x63f16a
  63f0f0:	8d 44 24 10          	lea    eax,[esp+0x10]
  63f0f4:	50                   	push   eax
  63f0f5:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  63f0f9:	e8 12 57 01 00       	call   0x654810
  63f0fe:	8b 94 24 3c 01 00 00 	mov    edx,DWORD PTR [esp+0x13c]
  63f105:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  63f109:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  63f10f:	89 08                	mov    DWORD PTR [eax],ecx
  63f111:	8b 84 24 2c 01 00 00 	mov    eax,DWORD PTR [esp+0x12c]
  63f118:	8b 8c 24 28 01 00 00 	mov    ecx,DWORD PTR [esp+0x128]
  63f11f:	52                   	push   edx
  63f120:	56                   	push   esi
  63f121:	50                   	push   eax
  63f122:	51                   	push   ecx
  63f123:	8b cd                	mov    ecx,ebp
  63f125:	f3 0f 11 47 04       	movss  DWORD PTR [edi+0x4],xmm0
  63f12a:	e8 61 8c fe ff       	call   0x627d90
  63f12f:	d9 54 24 10          	fst    DWORD PTR [esp+0x10]
  63f133:	d8 44 24 18          	fadd   DWORD PTR [esp+0x18]
  63f137:	57                   	push   edi
  63f138:	8d 8c 24 bc 00 00 00 	lea    ecx,[esp+0xbc]
  63f13f:	d9 5f 08             	fstp   DWORD PTR [edi+0x8]
  63f142:	e8 f9 d5 fe ff       	call   0x62c740
  63f147:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  63f14b:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  63f14f:	df f1                	fcomip st,st(1)
  63f151:	dd d8                	fstp   st(0)
  63f153:	76 15                	jbe    0x63f16a
  63f155:	8b 94 24 44 01 00 00 	mov    edx,DWORD PTR [esp+0x144]
  63f15c:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  63f162:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  63f168:	89 32                	mov    DWORD PTR [edx],esi
  63f16a:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  63f16e:	83 c0 04             	add    eax,0x4
  63f171:	3b 44 24 58          	cmp    eax,DWORD PTR [esp+0x58]
  63f175:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  63f179:	0f 85 41 fd ff ff    	jne    0x63eec0
  63f17f:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  63f183:	85 c0                	test   eax,eax
  63f185:	74 09                	je     0x63f190
  63f187:	50                   	push   eax
  63f188:	e8 53 53 ea ff       	call   0x4e44e0
  63f18d:	83 c4 04             	add    esp,0x4
  63f190:	83 bc 24 d0 00 00 00 00 	cmp    DWORD PTR [esp+0xd0],0x0
  63f198:	0f 8d 32 fc ff ff    	jge    0x63edd0
  63f19e:	33 f6                	xor    esi,esi
  63f1a0:	8d 5e 01             	lea    ebx,[esi+0x1]
  63f1a3:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  63f1a7:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  63f1ab:	51                   	push   ecx
  63f1ac:	52                   	push   edx
  63f1ad:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  63f1b1:	e8 2a fa 0f 00       	call   0x73ebe0
  63f1b6:	39 5c 24 3c          	cmp    DWORD PTR [esp+0x3c],ebx
  63f1ba:	89 74 24 40          	mov    DWORD PTR [esp+0x40],esi
  63f1be:	76 0d                	jbe    0x63f1cd
  63f1c0:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  63f1c4:	50                   	push   eax
  63f1c5:	e8 16 53 ea ff       	call   0x4e44e0
  63f1ca:	83 c4 04             	add    esp,0x4
  63f1cd:	8b 8c 24 84 00 00 00 	mov    ecx,DWORD PTR [esp+0x84]
  63f1d4:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [esp+0x80]
  63f1db:	51                   	push   ecx
  63f1dc:	52                   	push   edx
  63f1dd:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  63f1e4:	e8 a7 72 fe ff       	call   0x626490
  63f1e9:	39 9c 24 84 00 00 00 	cmp    DWORD PTR [esp+0x84],ebx
  63f1f0:	89 b4 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],esi
  63f1f7:	76 10                	jbe    0x63f209
  63f1f9:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
  63f200:	50                   	push   eax
  63f201:	e8 da 52 ea ff       	call   0x4e44e0
  63f206:	83 c4 04             	add    esp,0x4
  63f209:	8b 84 24 bc 00 00 00 	mov    eax,DWORD PTR [esp+0xbc]
  63f210:	3b c6                	cmp    eax,esi
  63f212:	74 09                	je     0x63f21d
  63f214:	50                   	push   eax
  63f215:	e8 c6 52 ea ff       	call   0x4e44e0
  63f21a:	83 c4 04             	add    esp,0x4
  63f21d:	8b bc 24 a8 00 00 00 	mov    edi,DWORD PTR [esp+0xa8]
  63f224:	3b fe                	cmp    edi,esi
  63f226:	74 29                	je     0x63f251
  63f228:	eb 06                	jmp    0x63f230
  63f22a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  63f230:	8b 0f                	mov    ecx,DWORD PTR [edi]
  63f232:	51                   	push   ecx
  63f233:	8d 8c 24 a0 00 00 00 	lea    ecx,[esp+0xa0]
  63f23a:	e8 71 27 27 00       	call   0x8b19b0
  63f23f:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
  63f242:	57                   	push   edi
  63f243:	e8 98 52 ea ff       	call   0x4e44e0
  63f248:	83 c4 04             	add    esp,0x4
  63f24b:	3b de                	cmp    ebx,esi
  63f24d:	8b fb                	mov    edi,ebx
  63f24f:	75 df                	jne    0x63f230
  63f251:	5f                   	pop    edi
  63f252:	5e                   	pop    esi
  63f253:	5d                   	pop    ebp
  63f254:	32 c0                	xor    al,al
  63f256:	5b                   	pop    ebx
  63f257:	81 c4 14 01 00 00    	add    esp,0x114
  63f25d:	c2 2c 00             	ret    0x2c
  63f260:	3b b4 24 38 01 00 00 	cmp    esi,DWORD PTR [esp+0x138]
  63f267:	8b bc 24 40 01 00 00 	mov    edi,DWORD PTR [esp+0x140]
  63f26e:	0f 84 00 01 00 00    	je     0x63f374
  63f274:	33 db                	xor    ebx,ebx
  63f276:	33 d2                	xor    edx,edx
  63f278:	8b c6                	mov    eax,esi
  63f27a:	f7 74 24 3c          	div    DWORD PTR [esp+0x3c]
  63f27e:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  63f282:	8b ee                	mov    ebp,esi
  63f284:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
  63f288:	8d 0c 90             	lea    ecx,[eax+edx*4]
  63f28b:	8b 01                	mov    eax,DWORD PTR [ecx]
  63f28d:	3b c3                	cmp    eax,ebx
  63f28f:	74 0f                	je     0x63f2a0
  63f291:	3b 30                	cmp    esi,DWORD PTR [eax]
  63f293:	0f 84 8a 00 00 00    	je     0x63f323
  63f299:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  63f29c:	3b c3                	cmp    eax,ebx
  63f29e:	75 f1                	jne    0x63f291
  63f2a0:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  63f2a4:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  63f2a8:	8d 04 8a             	lea    eax,[edx+ecx*4]
  63f2ab:	8b 08                	mov    ecx,DWORD PTR [eax]
  63f2ad:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
  63f2b1:	89 4c 24 6c          	mov    DWORD PTR [esp+0x6c],ecx
  63f2b5:	8d 44 24 6c          	lea    eax,[esp+0x6c]
  63f2b9:	8b 00                	mov    eax,DWORD PTR [eax]
  63f2bb:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  63f2bf:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  63f2c3:	3b 04 8a             	cmp    eax,DWORD PTR [edx+ecx*4]
  63f2c6:	75 2f                	jne    0x63f2f7
  63f2c8:	c6 44 24 30 00       	mov    BYTE PTR [esp+0x30],0x0
  63f2cd:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  63f2d1:	52                   	push   edx
  63f2d2:	8d 44 24 24          	lea    eax,[esp+0x24]
  63f2d6:	50                   	push   eax
  63f2d7:	8d 8c 24 fc 00 00 00 	lea    ecx,[esp+0xfc]
  63f2de:	51                   	push   ecx
  63f2df:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  63f2e3:	89 74 24 2c          	mov    DWORD PTR [esp+0x2c],esi
  63f2e7:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  63f2eb:	e8 80 4f 1b 00       	call   0x7f4270
  63f2f0:	8b 84 24 f4 00 00 00 	mov    eax,DWORD PTR [esp+0xf4]
  63f2f7:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  63f2fa:	83 c0 04             	add    eax,0x4
  63f2fd:	8b d5                	mov    edx,ebp
  63f2ff:	33 d6                	xor    edx,esi
  63f301:	f7 c2 00 00 ff ff    	test   edx,0xffff0000
  63f307:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
  63f30b:	74 58                	je     0x63f365
  63f30d:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  63f310:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  63f313:	73 1c                	jae    0x63f331
  63f315:	3b c3                	cmp    eax,ebx
  63f317:	8d 48 04             	lea    ecx,[eax+0x4]
  63f31a:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  63f31d:	74 1f                	je     0x63f33e
  63f31f:	89 28                	mov    DWORD PTR [eax],ebp
  63f321:	eb 1b                	jmp    0x63f33e
  63f323:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
  63f327:	89 4c 24 78          	mov    DWORD PTR [esp+0x78],ecx
  63f32b:	8d 44 24 74          	lea    eax,[esp+0x74]
  63f32f:	eb 88                	jmp    0x63f2b9
  63f331:	8d 54 24 28          	lea    edx,[esp+0x28]
  63f335:	52                   	push   edx
  63f336:	50                   	push   eax
  63f337:	8b cf                	mov    ecx,edi
  63f339:	e8 e2 30 34 00       	call   0x982420
  63f33e:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  63f341:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  63f344:	73 0e                	jae    0x63f354
  63f346:	3b c3                	cmp    eax,ebx
  63f348:	8d 48 04             	lea    ecx,[eax+0x4]
  63f34b:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  63f34e:	74 15                	je     0x63f365
  63f350:	89 30                	mov    DWORD PTR [eax],esi
  63f352:	eb 11                	jmp    0x63f365
  63f354:	8d 54 24 10          	lea    edx,[esp+0x10]
  63f358:	52                   	push   edx
  63f359:	50                   	push   eax
  63f35a:	8b cf                	mov    ecx,edi
  63f35c:	e8 bf 30 34 00       	call   0x982420
  63f361:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  63f365:	3b b4 24 38 01 00 00 	cmp    esi,DWORD PTR [esp+0x138]
  63f36c:	0f 85 04 ff ff ff    	jne    0x63f276
  63f372:	eb 02                	jmp    0x63f376
  63f374:	33 db                	xor    ebx,ebx
  63f376:	8b 07                	mov    eax,DWORD PTR [edi]
  63f378:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  63f37b:	3b c1                	cmp    eax,ecx
  63f37d:	74 19                	je     0x63f398
  63f37f:	83 c1 fc             	add    ecx,0xfffffffc
  63f382:	3b c1                	cmp    eax,ecx
  63f384:	73 12                	jae    0x63f398
  63f386:	8b 31                	mov    esi,DWORD PTR [ecx]
  63f388:	8b 10                	mov    edx,DWORD PTR [eax]
  63f38a:	89 30                	mov    DWORD PTR [eax],esi
  63f38c:	89 11                	mov    DWORD PTR [ecx],edx
  63f38e:	83 c0 04             	add    eax,0x4
  63f391:	83 e9 04             	sub    ecx,0x4
  63f394:	3b c1                	cmp    eax,ecx
  63f396:	72 ee                	jb     0x63f386
  63f398:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  63f39c:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  63f3a0:	50                   	push   eax
  63f3a1:	51                   	push   ecx
  63f3a2:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  63f3a6:	e8 35 f8 0f 00       	call   0x73ebe0
  63f3ab:	be 01 00 00 00       	mov    esi,0x1
  63f3b0:	39 74 24 3c          	cmp    DWORD PTR [esp+0x3c],esi
  63f3b4:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
  63f3b8:	76 0d                	jbe    0x63f3c7
  63f3ba:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  63f3be:	52                   	push   edx
  63f3bf:	e8 1c 51 ea ff       	call   0x4e44e0
  63f3c4:	83 c4 04             	add    esp,0x4
  63f3c7:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [esp+0x84]
  63f3ce:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  63f3d5:	50                   	push   eax
  63f3d6:	51                   	push   ecx
  63f3d7:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  63f3de:	e8 ad 70 fe ff       	call   0x626490
  63f3e3:	39 b4 24 84 00 00 00 	cmp    DWORD PTR [esp+0x84],esi
  63f3ea:	89 9c 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],ebx
  63f3f1:	76 10                	jbe    0x63f403
  63f3f3:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [esp+0x80]
  63f3fa:	52                   	push   edx
  63f3fb:	e8 e0 50 ea ff       	call   0x4e44e0
  63f400:	83 c4 04             	add    esp,0x4
  63f403:	8b 84 24 bc 00 00 00 	mov    eax,DWORD PTR [esp+0xbc]
  63f40a:	3b c3                	cmp    eax,ebx
  63f40c:	74 09                	je     0x63f417
  63f40e:	50                   	push   eax
  63f40f:	e8 cc 50 ea ff       	call   0x4e44e0
  63f414:	83 c4 04             	add    esp,0x4
  63f417:	8b b4 24 a8 00 00 00 	mov    esi,DWORD PTR [esp+0xa8]
  63f41e:	3b f3                	cmp    esi,ebx
  63f420:	74 21                	je     0x63f443
  63f422:	8b 06                	mov    eax,DWORD PTR [esi]
  63f424:	50                   	push   eax
  63f425:	8d 8c 24 a0 00 00 00 	lea    ecx,[esp+0xa0]
  63f42c:	e8 7f 25 27 00       	call   0x8b19b0
  63f431:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  63f434:	56                   	push   esi
  63f435:	e8 a6 50 ea ff       	call   0x4e44e0
  63f43a:	83 c4 04             	add    esp,0x4
  63f43d:	3b fb                	cmp    edi,ebx
  63f43f:	8b f7                	mov    esi,edi
  63f441:	75 df                	jne    0x63f422
  63f443:	5f                   	pop    edi
  63f444:	5e                   	pop    esi
  63f445:	5d                   	pop    ebp
  63f446:	b0 01                	mov    al,0x1
  63f448:	5b                   	pop    ebx
  63f449:	81 c4 14 01 00 00    	add    esp,0x114
  63f44f:	c2 2c 00             	ret    0x2c
