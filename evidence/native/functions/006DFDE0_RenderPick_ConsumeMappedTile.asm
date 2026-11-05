# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006dfde0 <.text+0x2dede0>:
  6dfde0:	55                   	push   ebp
  6dfde1:	8b ec                	mov    ebp,esp
  6dfde3:	83 e4 f0             	and    esp,0xfffffff0
  6dfde6:	81 ec 94 00 00 00    	sub    esp,0x94
  6dfdec:	53                   	push   ebx
  6dfded:	56                   	push   esi
  6dfdee:	8b f1                	mov    esi,ecx
  6dfdf0:	83 7e 40 00          	cmp    DWORD PTR [esi+0x40],0x0
  6dfdf4:	57                   	push   edi
  6dfdf5:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  6dfdf9:	0f 8c 63 03 00 00    	jl     0x6e0162
  6dfdff:	80 7e 15 00          	cmp    BYTE PTR [esi+0x15],0x0
  6dfe03:	0f 84 59 03 00 00    	je     0x6e0162
  6dfe09:	c6 46 15 00          	mov    BYTE PTR [esi+0x15],0x0
  6dfe0d:	8b 0d dc fc 1c 01    	mov    ecx,DWORD PTR ds:0x11cfcdc
  6dfe13:	68 53 54 e4 6e       	push   0x6ee45453
  6dfe18:	e8 73 7e f3 ff       	call   0x617c90
  6dfe1d:	8b 56 40             	mov    edx,DWORD PTR [esi+0x40]
  6dfe20:	89 56 48             	mov    DWORD PTR [esi+0x48],edx
  6dfe23:	8b 56 44             	mov    edx,DWORD PTR [esi+0x44]
  6dfe26:	c7 46 60 00 00 00 00 	mov    DWORD PTR [esi+0x60],0x0
  6dfe2d:	89 56 4c             	mov    DWORD PTR [esi+0x4c],edx
  6dfe30:	83 c9 ff             	or     ecx,0xffffffff
  6dfe33:	85 c0                	test   eax,eax
  6dfe35:	89 4e 58             	mov    DWORD PTR [esi+0x58],ecx
  6dfe38:	89 4e 5c             	mov    DWORD PTR [esi+0x5c],ecx
  6dfe3b:	0f 28 86 80 00 00 00 	movaps xmm0,XMMWORD PTR [esi+0x80]
  6dfe42:	0f 29 86 c0 00 00 00 	movaps XMMWORD PTR [esi+0xc0],xmm0
  6dfe49:	0f 28 86 90 00 00 00 	movaps xmm0,XMMWORD PTR [esi+0x90]
  6dfe50:	0f 29 86 d0 00 00 00 	movaps XMMWORD PTR [esi+0xd0],xmm0
  6dfe57:	0f 28 86 a0 00 00 00 	movaps xmm0,XMMWORD PTR [esi+0xa0]
  6dfe5e:	0f 29 86 e0 00 00 00 	movaps XMMWORD PTR [esi+0xe0],xmm0
  6dfe65:	0f 28 86 b0 00 00 00 	movaps xmm0,XMMWORD PTR [esi+0xb0]
  6dfe6c:	0f 29 86 f0 00 00 00 	movaps XMMWORD PTR [esi+0xf0],xmm0
  6dfe73:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  6dfe77:	89 4e 40             	mov    DWORD PTR [esi+0x40],ecx
  6dfe7a:	89 4e 44             	mov    DWORD PTR [esi+0x44],ecx
  6dfe7d:	0f 84 df 02 00 00    	je     0x6e0162
  6dfe83:	6a 02                	push   0x2
  6dfe85:	6a 00                	push   0x0
  6dfe87:	8d 4c 24 74          	lea    ecx,[esp+0x74]
  6dfe8b:	51                   	push   ecx
  6dfe8c:	8b 08                	mov    ecx,DWORD PTR [eax]
  6dfe8e:	e8 9d 96 f3 ff       	call   0x619530
  6dfe93:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  6dfe97:	85 c0                	test   eax,eax
  6dfe99:	0f 84 c3 02 00 00    	je     0x6e0162
  6dfe9f:	8b 54 24 70          	mov    edx,DWORD PTR [esp+0x70]
  6dfea3:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  6dfea7:	8d 44 d0 20          	lea    eax,[eax+edx*8+0x20]
  6dfeab:	51                   	push   ecx
  6dfeac:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  6dfeb0:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6dfeb4:	c7 44 24 14 ac 86 ff 	mov    DWORD PTR [esp+0x14],0xff86ac
  6dfebb:	00 
  6dfebc:	e8 5f 99 e6 ff       	call   0x549820
  6dfec1:	33 c0                	xor    eax,eax
  6dfec3:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  6dfec7:	b9 08 00 00 00       	mov    ecx,0x8
  6dfecc:	33 db                	xor    ebx,ebx
  6dfece:	2b c8                	sub    ecx,eax
  6dfed0:	0f af c9             	imul   ecx,ecx
  6dfed3:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  6dfed7:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  6dfedb:	eb 03                	jmp    0x6dfee0
  6dfedd:	8d 49 00             	lea    ecx,[ecx+0x0]
  6dfee0:	0f af 44 24 70       	imul   eax,DWORD PTR [esp+0x70]
  6dfee5:	03 44 24 6c          	add    eax,DWORD PTR [esp+0x6c]
  6dfee9:	8d 54 24 28          	lea    edx,[esp+0x28]
  6dfeed:	8b 3c 98             	mov    edi,DWORD PTR [eax+ebx*4]
  6dfef0:	0f b7 f7             	movzx  esi,di
  6dfef3:	52                   	push   edx
  6dfef4:	8d 44 24 30          	lea    eax,[esp+0x30]
  6dfef8:	83 ee 01             	sub    esi,0x1
  6dfefb:	50                   	push   eax
  6dfefc:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  6dff00:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
  6dff04:	e8 07 63 13 00       	call   0x816210
  6dff09:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  6dff0d:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  6dff11:	b8 08 00 00 00       	mov    eax,0x8
  6dff16:	2b c3                	sub    eax,ebx
  6dff18:	8b 5c 24 44          	mov    ebx,DWORD PTR [esp+0x44]
  6dff1c:	0f af c0             	imul   eax,eax
  6dff1f:	03 44 24 34          	add    eax,DWORD PTR [esp+0x34]
  6dff23:	3b 0c 93             	cmp    ecx,DWORD PTR [ebx+edx*4]
  6dff26:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6dff2a:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  6dff2e:	75 30                	jne    0x6dff60
  6dff30:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  6dff34:	c6 44 24 38 00       	mov    BYTE PTR [esp+0x38],0x0
  6dff39:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  6dff3d:	51                   	push   ecx
  6dff3e:	8b c7                	mov    eax,edi
  6dff40:	8d 54 24 64          	lea    edx,[esp+0x64]
  6dff44:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  6dff48:	52                   	push   edx
  6dff49:	8d 84 24 9c 00 00 00 	lea    eax,[esp+0x9c]
  6dff50:	50                   	push   eax
  6dff51:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  6dff55:	89 74 24 6c          	mov    DWORD PTR [esp+0x6c],esi
  6dff59:	e8 02 e2 56 00       	call   0xc4e160
  6dff5e:	eb 23                	jmp    0x6dff83
  6dff60:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  6dff63:	83 c1 04             	add    ecx,0x4
  6dff66:	3b d0                	cmp    edx,eax
  6dff68:	77 07                	ja     0x6dff71
  6dff6a:	72 0b                	jb     0x6dff77
  6dff6c:	3b 79 04             	cmp    edi,DWORD PTR [ecx+0x4]
  6dff6f:	73 06                	jae    0x6dff77
  6dff71:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  6dff75:	eb 02                	jmp    0x6dff79
  6dff77:	8b c1                	mov    eax,ecx
  6dff79:	8b 10                	mov    edx,DWORD PTR [eax]
  6dff7b:	89 11                	mov    DWORD PTR [ecx],edx
  6dff7d:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  6dff80:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  6dff83:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  6dff87:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  6dff8b:	83 c3 01             	add    ebx,0x1
  6dff8e:	83 fb 10             	cmp    ebx,0x10
  6dff91:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  6dff95:	0f 82 45 ff ff ff    	jb     0x6dfee0
  6dff9b:	83 c0 01             	add    eax,0x1
  6dff9e:	83 f8 10             	cmp    eax,0x10
  6dffa1:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  6dffa5:	0f 82 1c ff ff ff    	jb     0x6dfec7
  6dffab:	83 7c 24 4c 01       	cmp    DWORD PTR [esp+0x4c],0x1
  6dffb0:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6dffb4:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6dffb6:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  6dffba:	0f 86 8f 00 00 00    	jbe    0x6e004f
  6dffc0:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  6dffc4:	52                   	push   edx
  6dffc5:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  6dffc9:	c7 44 24 14 ff ff ff 	mov    DWORD PTR [esp+0x14],0xffffffff
  6dffd0:	ff 
  6dffd1:	e8 9a ad 25 00       	call   0x93ad70
  6dffd6:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  6dffda:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  6dffde:	8b 04 81             	mov    eax,DWORD PTR [ecx+eax*4]
  6dffe1:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  6dffe5:	3b f0                	cmp    esi,eax
  6dffe7:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  6dffeb:	74 62                	je     0x6e004f
  6dffed:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
  6dfff1:	8b 06                	mov    eax,DWORD PTR [esi]
  6dfff3:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  6dfff6:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  6dfff9:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
  6dfffc:	50                   	push   eax
  6dfffd:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  6e0001:	e8 3a 3c 00 00       	call   0x6e3c40
  6e0006:	85 c0                	test   eax,eax
  6e0008:	74 20                	je     0x6e002a
  6e000a:	8b c8                	mov    ecx,eax
  6e000c:	e8 5f fc f2 ff       	call   0x60fc70
  6e0011:	a9 00 08 00 00       	test   eax,0x800
  6e0016:	74 12                	je     0x6e002a
  6e0018:	3b 5c 24 10          	cmp    ebx,DWORD PTR [esp+0x10]
  6e001c:	73 0c                	jae    0x6e002a
  6e001e:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  6e0022:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  6e0026:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  6e002a:	8b 76 0c             	mov    esi,DWORD PTR [esi+0xc]
  6e002d:	85 f6                	test   esi,esi
  6e002f:	75 12                	jne    0x6e0043
  6e0031:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  6e0035:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  6e0038:	83 c0 04             	add    eax,0x4
  6e003b:	85 f6                	test   esi,esi
  6e003d:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  6e0041:	74 ee                	je     0x6e0031
  6e0043:	3b 74 24 2c          	cmp    esi,DWORD PTR [esp+0x2c]
  6e0047:	75 a8                	jne    0x6dfff1
  6e0049:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  6e004d:	eb 04                	jmp    0x6e0053
  6e004f:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
  6e0053:	8b cb                	mov    ecx,ebx
  6e0055:	81 e1 ff ff 00 00    	and    ecx,0xffff
  6e005b:	8d 41 ff             	lea    eax,[ecx-0x1]
  6e005e:	85 c0                	test   eax,eax
  6e0060:	0f 57 c0             	xorps  xmm0,xmm0
  6e0063:	89 5f 60             	mov    DWORD PTR [edi+0x60],ebx
  6e0066:	89 47 58             	mov    DWORD PTR [edi+0x58],eax
  6e0069:	0f 29 47 70          	movaps XMMWORD PTR [edi+0x70],xmm0
  6e006d:	0f 8c b0 00 00 00    	jl     0x6e0123
  6e0073:	80 bf 01 01 00 00 00 	cmp    BYTE PTR [edi+0x101],0x0
  6e007a:	74 0b                	je     0x6e0087
  6e007c:	c1 eb 18             	shr    ebx,0x18
  6e007f:	89 5f 5c             	mov    DWORD PTR [edi+0x5c],ebx
  6e0082:	e9 9c 00 00 00       	jmp    0x6e0123
  6e0087:	f3 0f 10 15 ac 85 ff 	movss  xmm2,DWORD PTR ds:0xff85ac
  6e008e:	00 
  6e008f:	f3 0f 2a 4f 4c       	cvtsi2ss xmm1,DWORD PTR [edi+0x4c]
  6e0094:	8b 07                	mov    eax,DWORD PTR [edi]
  6e0096:	f3 0f 58 ca          	addss  xmm1,xmm2
  6e009a:	f3 0f 59 4f 34       	mulss  xmm1,DWORD PTR [edi+0x34]
  6e009f:	0f 28 c2             	movaps xmm0,xmm2
  6e00a2:	f3 0f 5c c1          	subss  xmm0,xmm1
  6e00a6:	f3 0f 59 40 10       	mulss  xmm0,DWORD PTR [eax+0x10]
  6e00ab:	0f 28 8f d0 00 00 00 	movaps xmm1,XMMWORD PTR [edi+0xd0]
  6e00b2:	c1 eb 10             	shr    ebx,0x10
  6e00b5:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6e00b9:	0f 59 c1             	mulps  xmm0,xmm1
  6e00bc:	f3 0f 2a 4f 48       	cvtsi2ss xmm1,DWORD PTR [edi+0x48]
  6e00c1:	f3 0f 58 ca          	addss  xmm1,xmm2
  6e00c5:	f3 0f 59 4f 30       	mulss  xmm1,DWORD PTR [edi+0x30]
  6e00ca:	f3 0f 5c ca          	subss  xmm1,xmm2
  6e00ce:	f3 0f 59 48 0c       	mulss  xmm1,DWORD PTR [eax+0xc]
  6e00d3:	0f 28 97 c0 00 00 00 	movaps xmm2,XMMWORD PTR [edi+0xc0]
  6e00da:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  6e00de:	0f 59 ca             	mulps  xmm1,xmm2
  6e00e1:	0f 58 c1             	addps  xmm0,xmm1
  6e00e4:	0f 28 8f e0 00 00 00 	movaps xmm1,XMMWORD PTR [edi+0xe0]
  6e00eb:	0f 5c c1             	subps  xmm0,xmm1
  6e00ee:	f3 0f 10 0d a4 86 ff 	movss  xmm1,DWORD PTR ds:0xff86a4
  6e00f5:	00 
  6e00f6:	f3 0f 2a d3          	cvtsi2ss xmm2,ebx
  6e00fa:	f3 0f 59 15 a8 86 ff 	mulss  xmm2,DWORD PTR ds:0xff86a8
  6e0101:	00 
  6e0102:	f3 0f 5c 15 a0 86 ff 	subss  xmm2,DWORD PTR ds:0xff86a0
  6e0109:	00 
  6e010a:	f3 0f 5e ca          	divss  xmm1,xmm2
  6e010e:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  6e0112:	0f 59 c1             	mulps  xmm0,xmm1
  6e0115:	0f 28 8f f0 00 00 00 	movaps xmm1,XMMWORD PTR [edi+0xf0]
  6e011c:	0f 58 c1             	addps  xmm0,xmm1
  6e011f:	0f 29 47 70          	movaps XMMWORD PTR [edi+0x70],xmm0
  6e0123:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  6e0127:	8b 08                	mov    ecx,DWORD PTR [eax]
  6e0129:	8d 54 24 6c          	lea    edx,[esp+0x6c]
  6e012d:	52                   	push   edx
  6e012e:	e8 6d 97 f3 ff       	call   0x6198a0
  6e0133:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  6e0137:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  6e013b:	51                   	push   ecx
  6e013c:	52                   	push   edx
  6e013d:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  6e0141:	e8 6a 8f df ff       	call   0x4d90b0
  6e0146:	83 7c 24 48 01       	cmp    DWORD PTR [esp+0x48],0x1
  6e014b:	c7 44 24 4c 00 00 00 	mov    DWORD PTR [esp+0x4c],0x0
  6e0152:	00 
  6e0153:	76 0d                	jbe    0x6e0162
  6e0155:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  6e0159:	50                   	push   eax
  6e015a:	e8 81 43 e0 ff       	call   0x4e44e0
  6e015f:	83 c4 04             	add    esp,0x4
  6e0162:	5f                   	pop    edi
  6e0163:	5e                   	pop    esi
  6e0164:	5b                   	pop    ebx
  6e0165:	8b e5                	mov    esp,ebp
  6e0167:	5d                   	pop    ebp
  6e0168:	c3                   	ret
