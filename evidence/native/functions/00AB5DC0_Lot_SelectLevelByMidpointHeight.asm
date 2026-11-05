# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00ab5dc0, 0x00ab61ae); analyst name Lot_SelectLevelByMidpointHeight.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ab5dc0 <.text+0x6b4dc0>:
  ab5dc0:	55                   	push   ebp
  ab5dc1:	8b ec                	mov    ebp,esp
  ab5dc3:	83 e4 f0             	and    esp,0xfffffff0
  ab5dc6:	83 ec 54             	sub    esp,0x54
  ab5dc9:	53                   	push   ebx
  ab5dca:	56                   	push   esi
  ab5dcb:	8b f1                	mov    esi,ecx
  ab5dcd:	83 be 90 02 00 00 00 	cmp    DWORD PTR [esi+0x290],0x0
  ab5dd4:	8b 86 7c 01 00 00    	mov    eax,DWORD PTR [esi+0x17c]
  ab5dda:	8b 9e 80 01 00 00    	mov    ebx,DWORD PTR [esi+0x180]
  ab5de0:	57                   	push   edi
  ab5de1:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  ab5de5:	0f 84 21 02 00 00    	je     0xab600c
  ab5deb:	83 be 08 04 00 00 01 	cmp    DWORD PTR [esi+0x408],0x1
  ab5df2:	f3 0f 10 05 20 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab220
  ab5dfa:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  ab5dfd:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  ab5e03:	f3 0f 10 05 d8 24 fc 00 	movss  xmm0,DWORD PTR ds:0xfc24d8
  ab5e0b:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  ab5e11:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  ab5e14:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  ab5e19:	f3 0f 10 4c 24 48    	movss  xmm1,DWORD PTR [esp+0x48]
  ab5e1f:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  ab5e24:	f3 0f 10 44 24 50    	movss  xmm0,DWORD PTR [esp+0x50]
  ab5e2a:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  ab5e30:	f3 0f 11 4c 24 38    	movss  DWORD PTR [esp+0x38],xmm1
  ab5e36:	c7 44 24 3c 00 00 00 00 	mov    DWORD PTR [esp+0x3c],0x0
  ab5e3e:	75 0d                	jne    0xab5e4d
  ab5e40:	83 be 0c 04 00 00 50 	cmp    DWORD PTR [esi+0x40c],0x50
  ab5e47:	0f 84 c8 01 00 00    	je     0xab6015
  ab5e4d:	80 be b0 04 00 00 00 	cmp    BYTE PTR [esi+0x4b0],0x0
  ab5e54:	74 24                	je     0xab5e7a
  ab5e56:	6a 01                	push   0x1
  ab5e58:	8d 44 24 38          	lea    eax,[esp+0x38]
  ab5e5c:	50                   	push   eax
  ab5e5d:	56                   	push   esi
  ab5e5e:	e8 3d 98 04 00       	call   0xaff6a0
  ab5e63:	83 c4 0c             	add    esp,0xc
  ab5e66:	84 c0                	test   al,al
  ab5e68:	0f 84 a7 01 00 00    	je     0xab6015
  ab5e6e:	f3 0f 10 4c 24 38    	movss  xmm1,DWORD PTR [esp+0x38]
  ab5e74:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  ab5e7a:	8b 8e 94 02 00 00    	mov    ecx,DWORD PTR [esi+0x294]
  ab5e80:	85 c9                	test   ecx,ecx
  ab5e82:	74 48                	je     0xab5ecc
  ab5e84:	0f 57 d2             	xorps  xmm2,xmm2
  ab5e87:	0f 2f c2             	comiss xmm0,xmm2
  ab5e8a:	72 40                	jb     0xab5ecc
  ab5e8c:	f3 0f 2a 9e 74 01 00 00 	cvtsi2ss xmm3,DWORD PTR [esi+0x174]
  ab5e94:	0f 2f d8             	comiss xmm3,xmm0
  ab5e97:	72 33                	jb     0xab5ecc
  ab5e99:	0f 2f ca             	comiss xmm1,xmm2
  ab5e9c:	72 2e                	jb     0xab5ecc
  ab5e9e:	f3 0f 2a 86 78 01 00 00 	cvtsi2ss xmm0,DWORD PTR [esi+0x178]
  ab5ea6:	0f 2f c1             	comiss xmm0,xmm1
  ab5ea9:	72 21                	jb     0xab5ecc
  ab5eab:	d9 44 24 38          	fld    DWORD PTR [esp+0x38]
  ab5eaf:	83 ec 08             	sub    esp,0x8
  ab5eb2:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  ab5eb6:	d9 44 24 3c          	fld    DWORD PTR [esp+0x3c]
  ab5eba:	d9 1c 24             	fstp   DWORD PTR [esp]
  ab5ebd:	e8 ae 45 03 00       	call   0xaea470
  ab5ec2:	d8 05 e4 3e 18 01    	fadd   DWORD PTR ds:0x1183ee4
  ab5ec8:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  ab5ecc:	3b 5c 24 18          	cmp    ebx,DWORD PTR [esp+0x18]
  ab5ed0:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  ab5ed3:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  ab5ed8:	0f 8c 2a 01 00 00    	jl     0xab6008
  ab5ede:	8b ff                	mov    edi,edi
  ab5ee0:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  ab5ee4:	51                   	push   ecx
  ab5ee5:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  ab5eeb:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
  ab5eef:	e8 9c 67 fd ff       	call   0xa8c690
  ab5ef4:	d9 54 24 24          	fst    DWORD PTR [esp+0x24]
  ab5ef8:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  ab5efc:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  ab5f02:	df f1                	fcomip st,st(1)
  ab5f04:	dd d8                	fstp   st(0)
  ab5f06:	0f 82 e3 00 00 00    	jb     0xab5fef
  ab5f0c:	85 db                	test   ebx,ebx
  ab5f0e:	f3 0f 10 4c 24 20    	movss  xmm1,DWORD PTR [esp+0x20]
  ab5f14:	7e 11                	jle    0xab5f27
  ab5f16:	f3 0f 10 54 24 54    	movss  xmm2,DWORD PTR [esp+0x54]
  ab5f1c:	0f 2f d1             	comiss xmm2,xmm1
  ab5f1f:	0f 86 ca 00 00 00    	jbe    0xab5fef
  ab5f25:	85 db                	test   ebx,ebx
  ab5f27:	75 08                	jne    0xab5f31
  ab5f29:	0f 2f c8             	comiss xmm1,xmm0
  ab5f2c:	76 03                	jbe    0xab5f31
  ab5f2e:	0f 28 c1             	movaps xmm0,xmm1
  ab5f31:	f3 0f 58 44 24 1c    	addss  xmm0,DWORD PTR [esp+0x1c]
  ab5f37:	f3 0f 10 4c 24 34    	movss  xmm1,DWORD PTR [esp+0x34]
  ab5f3d:	f3 0f 10 54 24 38    	movss  xmm2,DWORD PTR [esp+0x38]
  ab5f43:	f3 0f 59 05 b4 b5 f9 00 	mulss  xmm0,DWORD PTR ds:0xf9b5b4
  ab5f4b:	0f 2f 44 24 54       	comiss xmm0,DWORD PTR [esp+0x54]
  ab5f50:	f3 0f 11 4c 24 40    	movss  DWORD PTR [esp+0x40],xmm1
  ab5f56:	f3 0f 11 54 24 44    	movss  DWORD PTR [esp+0x44],xmm2
  ab5f5c:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
  ab5f60:	f3 0f 2c d1          	cvttss2si edx,xmm1
  ab5f64:	f3 0f 2c c2          	cvttss2si eax,xmm2
  ab5f68:	72 35                	jb     0xab5f9f
  ab5f6a:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  ab5f6e:	88 54 24 10          	mov    BYTE PTR [esp+0x10],dl
  ab5f72:	88 44 24 11          	mov    BYTE PTR [esp+0x11],al
  ab5f76:	88 5c 24 12          	mov    BYTE PTR [esp+0x12],bl
  ab5f7a:	74 18                	je     0xab5f94
  ab5f7c:	6a 01                	push   0x1
  ab5f7e:	6a 0f                	push   0xf
  ab5f80:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  ab5f84:	51                   	push   ecx
  ab5f85:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  ab5f8b:	e8 a0 82 fd ff       	call   0xa8e230
  ab5f90:	84 c0                	test   al,al
  ab5f92:	74 5b                	je     0xab5fef
  ab5f94:	8b c3                	mov    eax,ebx
  ab5f96:	5f                   	pop    edi
  ab5f97:	5e                   	pop    esi
  ab5f98:	5b                   	pop    ebx
  ab5f99:	8b e5                	mov    esp,ebp
  ab5f9b:	5d                   	pop    ebp
  ab5f9c:	c2 08 00             	ret    0x8
  ab5f9f:	8a cb                	mov    cl,bl
  ab5fa1:	88 54 24 14          	mov    BYTE PTR [esp+0x14],dl
  ab5fa5:	80 c1 01             	add    cl,0x1
  ab5fa8:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  ab5fac:	8d 53 01             	lea    edx,[ebx+0x1]
  ab5faf:	88 44 24 15          	mov    BYTE PTR [esp+0x15],al
  ab5fb3:	88 4c 24 16          	mov    BYTE PTR [esp+0x16],cl
  ab5fb7:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
  ab5fbb:	0f 84 e1 01 00 00    	je     0xab61a2
  ab5fc1:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  ab5fc7:	6a 01                	push   0x1
  ab5fc9:	6a 0f                	push   0xf
  ab5fcb:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  ab5fcf:	50                   	push   eax
  ab5fd0:	e8 5b 82 fd ff       	call   0xa8e230
  ab5fd5:	84 c0                	test   al,al
  ab5fd7:	74 16                	je     0xab5fef
  ab5fd9:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  ab5fdd:	51                   	push   ecx
  ab5fde:	56                   	push   esi
  ab5fdf:	e8 dc 9b 01 00       	call   0xacfbc0
  ab5fe4:	83 c4 08             	add    esp,0x8
  ab5fe7:	84 c0                	test   al,al
  ab5fe9:	0f 84 b3 01 00 00    	je     0xab61a2
  ab5fef:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  ab5ff5:	83 eb 01             	sub    ebx,0x1
  ab5ff8:	3b 5c 24 18          	cmp    ebx,DWORD PTR [esp+0x18]
  ab5ffc:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  ab6002:	0f 8d d8 fe ff ff    	jge    0xab5ee0
  ab6008:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  ab600c:	5f                   	pop    edi
  ab600d:	5e                   	pop    esi
  ab600e:	5b                   	pop    ebx
  ab600f:	8b e5                	mov    esp,ebp
  ab6011:	5d                   	pop    ebp
  ab6012:	c2 08 00             	ret    0x8
  ab6015:	3b 5c 24 18          	cmp    ebx,DWORD PTR [esp+0x18]
  ab6019:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  ab601c:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  ab6021:	7c e5                	jl     0xab6008
  ab6023:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  ab6029:	8d 54 24 34          	lea    edx,[esp+0x34]
  ab602d:	52                   	push   edx
  ab602e:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
  ab6032:	e8 59 66 fd ff       	call   0xa8c690
  ab6037:	d9 54 24 24          	fst    DWORD PTR [esp+0x24]
  ab603b:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  ab603f:	df f1                	fcomip st,st(1)
  ab6041:	dd d8                	fstp   st(0)
  ab6043:	0f 82 33 01 00 00    	jb     0xab617c
  ab6049:	85 db                	test   ebx,ebx
  ab604b:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  ab6051:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  ab6057:	f3 0f 58 c1          	addss  xmm0,xmm1
  ab605b:	f3 0f 59 05 b4 b5 f9 00 	mulss  xmm0,DWORD PTR ds:0xf9b5b4
  ab6063:	75 58                	jne    0xab60bd
  ab6065:	38 9e b0 04 00 00    	cmp    BYTE PTR [esi+0x4b0],bl
  ab606b:	74 0a                	je     0xab6077
  ab606d:	f3 0f 10 15 28 60 06 01 	movss  xmm2,DWORD PTR ds:0x1066028
  ab6075:	eb 08                	jmp    0xab607f
  ab6077:	f3 0f 10 15 68 fd 03 01 	movss  xmm2,DWORD PTR ds:0x103fd68
  ab607f:	f3 0f 5c ca          	subss  xmm1,xmm2
  ab6083:	0f 28 d0             	movaps xmm2,xmm0
  ab6086:	f3 0f 5c d1          	subss  xmm2,xmm1
  ab608a:	f3 0f 11 54 24 20    	movss  DWORD PTR [esp+0x20],xmm2
  ab6090:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  ab6094:	c1 f8 1f             	sar    eax,0x1f
  ab6097:	8b c8                	mov    ecx,eax
  ab6099:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  ab609f:	f3 0f 11 4c 24 2c    	movss  DWORD PTR [esp+0x2c],xmm1
  ab60a5:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  ab60a9:	f7 d1                	not    ecx
  ab60ab:	23 4c 24 28          	and    ecx,DWORD PTR [esp+0x28]
  ab60af:	23 d0                	and    edx,eax
  ab60b1:	0b ca                	or     ecx,edx
  ab60b3:	89 4c 24 30          	mov    DWORD PTR [esp+0x30],ecx
  ab60b7:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  ab60bd:	0f 2f 44 24 54       	comiss xmm0,DWORD PTR [esp+0x54]
  ab60c2:	f3 0f 10 4c 24 34    	movss  xmm1,DWORD PTR [esp+0x34]
  ab60c8:	f3 0f 10 54 24 38    	movss  xmm2,DWORD PTR [esp+0x38]
  ab60ce:	f3 0f 11 4c 24 40    	movss  DWORD PTR [esp+0x40],xmm1
  ab60d4:	f3 0f 11 54 24 44    	movss  DWORD PTR [esp+0x44],xmm2
  ab60da:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
  ab60de:	f3 0f 2c c1          	cvttss2si eax,xmm1
  ab60e2:	f3 0f 2c ca          	cvttss2si ecx,xmm2
  ab60e6:	72 48                	jb     0xab6130
  ab60e8:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  ab60ec:	88 44 24 14          	mov    BYTE PTR [esp+0x14],al
  ab60f0:	88 4c 24 15          	mov    BYTE PTR [esp+0x15],cl
  ab60f4:	88 5c 24 16          	mov    BYTE PTR [esp+0x16],bl
  ab60f8:	0f 84 96 fe ff ff    	je     0xab5f94
  ab60fe:	8b ce                	mov    ecx,esi
  ab6100:	e8 bb ea b6 ff       	call   0x624bc0
  ab6105:	84 c0                	test   al,al
  ab6107:	74 09                	je     0xab6112
  ab6109:	83 fb 01             	cmp    ebx,0x1
  ab610c:	0f 84 82 fe ff ff    	je     0xab5f94
  ab6112:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  ab6118:	6a 01                	push   0x1
  ab611a:	6a 0f                	push   0xf
  ab611c:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  ab6120:	52                   	push   edx
  ab6121:	e8 0a 81 fd ff       	call   0xa8e230
  ab6126:	84 c0                	test   al,al
  ab6128:	0f 85 66 fe ff ff    	jne    0xab5f94
  ab612e:	eb 4c                	jmp    0xab617c
  ab6130:	8a d3                	mov    dl,bl
  ab6132:	88 44 24 10          	mov    BYTE PTR [esp+0x10],al
  ab6136:	80 c2 01             	add    dl,0x1
  ab6139:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  ab613d:	8d 43 01             	lea    eax,[ebx+0x1]
  ab6140:	88 4c 24 11          	mov    BYTE PTR [esp+0x11],cl
  ab6144:	88 54 24 12          	mov    BYTE PTR [esp+0x12],dl
  ab6148:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  ab614c:	74 54                	je     0xab61a2
  ab614e:	85 db                	test   ebx,ebx
  ab6150:	74 50                	je     0xab61a2
  ab6152:	6a 01                	push   0x1
  ab6154:	6a 0f                	push   0xf
  ab6156:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  ab615a:	51                   	push   ecx
  ab615b:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  ab6161:	e8 ca 80 fd ff       	call   0xa8e230
  ab6166:	84 c0                	test   al,al
  ab6168:	74 12                	je     0xab617c
  ab616a:	8d 54 24 40          	lea    edx,[esp+0x40]
  ab616e:	52                   	push   edx
  ab616f:	56                   	push   esi
  ab6170:	e8 4b 9a 01 00       	call   0xacfbc0
  ab6175:	83 c4 08             	add    esp,0x8
  ab6178:	84 c0                	test   al,al
  ab617a:	74 26                	je     0xab61a2
  ab617c:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  ab6182:	83 eb 01             	sub    ebx,0x1
  ab6185:	3b 5c 24 18          	cmp    ebx,DWORD PTR [esp+0x18]
  ab6189:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  ab618f:	0f 8d 8e fe ff ff    	jge    0xab6023
  ab6195:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  ab6199:	5f                   	pop    edi
  ab619a:	5e                   	pop    esi
  ab619b:	5b                   	pop    ebx
  ab619c:	8b e5                	mov    esp,ebp
  ab619e:	5d                   	pop    ebp
  ab619f:	c2 08 00             	ret    0x8
  ab61a2:	5f                   	pop    edi
  ab61a3:	5e                   	pop    esi
  ab61a4:	8d 43 01             	lea    eax,[ebx+0x1]
  ab61a7:	5b                   	pop    ebx
  ab61a8:	8b e5                	mov    esp,ebp
  ab61aa:	5d                   	pop    ebp
  ab61ab:	c2 08 00             	ret    0x8
