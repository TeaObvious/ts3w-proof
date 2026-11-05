# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00abfe40, 0x00ac01d2).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_CollectExteriorSnowCoverParts (analyst-assigned)
Entry: 0x00abfe40
Ghidra body envelope: 0x00abfe40..0x00ac01d1 inclusive
Envelope contains alignment gaps between Ghidra body ranges: 0x00abfe40..0x00ac0008, 0x00ac0010..0x00ac0019, 0x00ac0020..0x00ac01d1


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00abfe40 <.text+0x6bee40>:
  abfe40:	55                   	push   ebp
  abfe41:	8b ec                	mov    ebp,esp
  abfe43:	83 e4 f0             	and    esp,0xfffffff0
  abfe46:	83 ec 44             	sub    esp,0x44
  abfe49:	53                   	push   ebx
  abfe4a:	56                   	push   esi
  abfe4b:	8b f1                	mov    esi,ecx
  abfe4d:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  abfe53:	85 c9                	test   ecx,ecx
  abfe55:	57                   	push   edi
  abfe56:	0f 84 6d 03 00 00    	je     0xac01c9
  abfe5c:	e8 2f 12 1a 00       	call   0xc61090
  abfe61:	8b 9e 74 01 00 00    	mov    ebx,DWORD PTR [esi+0x174]
  abfe67:	0f af 9e 78 01 00 00 	imul   ebx,DWORD PTR [esi+0x178]
  abfe6e:	85 db                	test   ebx,ebx
  abfe70:	0f 28 86 90 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x190]
  abfe77:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  abfe7c:	d8 64 24 44          	fsub   DWORD PTR [esp+0x44]
  abfe80:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  abfe84:	74 24                	je     0xabfeaa
  abfe86:	68 e7 00 00 00       	push   0xe7
  abfe8b:	68 88 99 f9 00       	push   0xf99988
  abfe90:	6a 00                	push   0x0
  abfe92:	6a 00                	push   0x0
  abfe94:	68 f0 61 06 01       	push   0x10661f0
  abfe99:	53                   	push   ebx
  abfe9a:	e8 61 46 a2 ff       	call   0x4e4500
  abfe9f:	8b f8                	mov    edi,eax
  abfea1:	83 c4 18             	add    esp,0x18
  abfea4:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  abfea8:	eb 0c                	jmp    0xabfeb6
  abfeaa:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  abfeb1:	00
  abfeb2:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  abfeb6:	85 db                	test   ebx,ebx
  abfeb8:	76 0c                	jbe    0xabfec6
  abfeba:	53                   	push   ebx
  abfebb:	6a 00                	push   0x0
  abfebd:	57                   	push   edi
  abfebe:	e8 d5 f3 4b 00       	call   0xf7f298
  abfec3:	83 c4 0c             	add    esp,0xc
  abfec6:	83 be ac 02 00 00 00 	cmp    DWORD PTR [esi+0x2ac],0x0
  abfecd:	0f 84 e9 02 00 00    	je     0xac01bc
  abfed3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  abfed6:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  abfed9:	2b 08                	sub    ecx,DWORD PTR [eax]
  abfedb:	c1 f9 05             	sar    ecx,0x5
  abfede:	3b 4d 0c             	cmp    ecx,DWORD PTR [ebp+0xc]
  abfee1:	0f 85 d5 02 00 00    	jne    0xac01bc
  abfee7:	83 be 78 01 00 00 00 	cmp    DWORD PTR [esi+0x178],0x0
  abfeee:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  abfef5:	00
  abfef6:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  abfefd:	00
  abfefe:	0f 8e c0 00 00 00    	jle    0xabffc4
  abff04:	33 db                	xor    ebx,ebx
  abff06:	39 9e 74 01 00 00    	cmp    DWORD PTR [esi+0x174],ebx
  abff0c:	0f 8e 9b 00 00 00    	jle    0xabffad
  abff12:	33 ff                	xor    edi,edi
  abff14:	8a 54 24 1c          	mov    dl,BYTE PTR [esp+0x1c]
  abff18:	b0 01                	mov    al,0x1
  abff1a:	8b cf                	mov    ecx,edi
  abff1c:	d2 e0                	shl    al,cl
  abff1e:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  abff22:	88 54 24 15          	mov    BYTE PTR [esp+0x15],dl
  abff26:	51                   	push   ecx
  abff27:	8d 54 24 18          	lea    edx,[esp+0x18]
  abff2b:	52                   	push   edx
  abff2c:	88 5c 24 1c          	mov    BYTE PTR [esp+0x1c],bl
  abff30:	c6 44 24 1e 00       	mov    BYTE PTR [esp+0x1e],0x0
  abff35:	88 44 24 1f          	mov    BYTE PTR [esp+0x1f],al
  abff39:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  abff3f:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  abff45:	c7 44 24 44 00 00 00 	mov    DWORD PTR [esp+0x44],0x0
  abff4c:	00
  abff4d:	e8 4e 82 03 00       	call   0xaf81a0
  abff52:	8b 8e ac 02 00 00    	mov    ecx,DWORD PTR [esi+0x2ac]
  abff58:	83 c4 08             	add    esp,0x8
  abff5b:	6a 00                	push   0x0
  abff5d:	6a 01                	push   0x1
  abff5f:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  abff63:	50                   	push   eax
  abff64:	e8 97 4e 0d 00       	call   0xb94e00
  abff69:	84 c0                	test   al,al
  abff6b:	74 19                	je     0xabff86
  abff6d:	8b 8e 74 01 00 00    	mov    ecx,DWORD PTR [esi+0x174]
  abff73:	0f af 4c 24 1c       	imul   ecx,DWORD PTR [esp+0x1c]
  abff78:	03 4c 24 18          	add    ecx,DWORD PTR [esp+0x18]
  abff7c:	8a 54 24 17          	mov    dl,BYTE PTR [esp+0x17]
  abff80:	08 14 19             	or     BYTE PTR [ecx+ebx*1],dl
  abff83:	8d 04 19             	lea    eax,[ecx+ebx*1]
  abff86:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  abff8d:	00
  abff8e:	83 c7 01             	add    edi,0x1
  abff91:	83 ff 04             	cmp    edi,0x4
  abff94:	0f 8c 7a ff ff ff    	jl     0xabff14
  abff9a:	83 c3 01             	add    ebx,0x1
  abff9d:	3b 9e 74 01 00 00    	cmp    ebx,DWORD PTR [esi+0x174]
  abffa3:	0f 8c 69 ff ff ff    	jl     0xabff12
  abffa9:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  abffad:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  abffb1:	83 c0 01             	add    eax,0x1
  abffb4:	3b 86 78 01 00 00    	cmp    eax,DWORD PTR [esi+0x178]
  abffba:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  abffbe:	0f 8c 40 ff ff ff    	jl     0xabff04
  abffc4:	8b 8e 80 01 00 00    	mov    ecx,DWORD PTR [esi+0x180]
  abffca:	85 c9                	test   ecx,ecx
  abffcc:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  abffd0:	0f 8c e6 01 00 00    	jl     0xac01bc
  abffd6:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  abffd9:	8b c1                	mov    eax,ecx
  abffdb:	c1 e0 05             	shl    eax,0x5
  abffde:	03 02                	add    eax,DWORD PTR [edx]
  abffe0:	83 be 78 01 00 00 00 	cmp    DWORD PTR [esi+0x178],0x0
  abffe7:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  abffeb:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
  abfff2:	00
  abfff3:	0f 8e b6 01 00 00    	jle    0xac01af
  abfff9:	33 db                	xor    ebx,ebx
  abfffb:	39 9e 74 01 00 00    	cmp    DWORD PTR [esi+0x174],ebx
  ac0001:	0f 8e 8d 01 00 00    	jle    0xac0194
  ac0007:	eb 07                	jmp    0xac0010
  ac0009:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  ac0010:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  ac0017:	00
  ac0018:	eb 06                	jmp    0xac0020
  ac001a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  ac0020:	8a 4c 24 1c          	mov    cl,BYTE PTR [esp+0x1c]
  ac0024:	8a 44 24 14          	mov    al,BYTE PTR [esp+0x14]
  ac0028:	88 4c 24 2e          	mov    BYTE PTR [esp+0x2e],cl
  ac002c:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  ac0030:	b2 01                	mov    dl,0x1
  ac0032:	88 44 24 2d          	mov    BYTE PTR [esp+0x2d],al
  ac0036:	d2 e2                	shl    dl,cl
  ac0038:	8d 44 24 34          	lea    eax,[esp+0x34]
  ac003c:	50                   	push   eax
  ac003d:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  ac0041:	51                   	push   ecx
  ac0042:	88 5c 24 34          	mov    BYTE PTR [esp+0x34],bl
  ac0046:	88 54 24 37          	mov    BYTE PTR [esp+0x37],dl
  ac004a:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  ac0050:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  ac0056:	c7 44 24 44 00 00 00 	mov    DWORD PTR [esp+0x44],0x0
  ac005d:	00
  ac005e:	e8 3d 81 03 00       	call   0xaf81a0
  ac0063:	8b 8e ac 02 00 00    	mov    ecx,DWORD PTR [esi+0x2ac]
  ac0069:	83 c4 08             	add    esp,0x8
  ac006c:	6a 01                	push   0x1
  ac006e:	6a 01                	push   0x1
  ac0070:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  ac0074:	52                   	push   edx
  ac0075:	e8 86 4d 0d 00       	call   0xb94e00
  ac007a:	84 c0                	test   al,al
  ac007c:	74 15                	je     0xac0093
  ac007e:	8b 86 74 01 00 00    	mov    eax,DWORD PTR [esi+0x174]
  ac0084:	0f af 44 24 14       	imul   eax,DWORD PTR [esp+0x14]
  ac0089:	8a 4c 24 2f          	mov    cl,BYTE PTR [esp+0x2f]
  ac008d:	03 c7                	add    eax,edi
  ac008f:	03 c3                	add    eax,ebx
  ac0091:	08 08                	or     BYTE PTR [eax],cl
  ac0093:	8b 54 24 2f          	mov    edx,DWORD PTR [esp+0x2f]
  ac0097:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  ac009d:	6a 01                	push   0x1
  ac009f:	52                   	push   edx
  ac00a0:	8d 44 24 34          	lea    eax,[esp+0x34]
  ac00a4:	50                   	push   eax
  ac00a5:	e8 c6 e0 fc ff       	call   0xa8e170
  ac00aa:	84 c0                	test   al,al
  ac00ac:	0f 84 b7 00 00 00    	je     0xac0169
  ac00b2:	8b 8e 74 01 00 00    	mov    ecx,DWORD PTR [esi+0x174]
  ac00b8:	0f af 4c 24 14       	imul   ecx,DWORD PTR [esp+0x14]
  ac00bd:	8a 54 24 2f          	mov    dl,BYTE PTR [esp+0x2f]
  ac00c1:	03 cf                	add    ecx,edi
  ac00c3:	84 14 19             	test   BYTE PTR [ecx+ebx*1],dl
  ac00c6:	0f 84 88 00 00 00    	je     0xac0154
  ac00cc:	8b 8e 98 02 00 00    	mov    ecx,DWORD PTR [esi+0x298]
  ac00d2:	6a 01                	push   0x1
  ac00d4:	6a 00                	push   0x0
  ac00d6:	8d 44 24 34          	lea    eax,[esp+0x34]
  ac00da:	50                   	push   eax
  ac00db:	e8 00 70 08 00       	call   0xb470e0
  ac00e0:	0f b7 c0             	movzx  eax,ax
  ac00e3:	66 85 c0             	test   ax,ax
  ac00e6:	74 12                	je     0xac00fa
  ac00e8:	8b 8e 98 02 00 00    	mov    ecx,DWORD PTR [esi+0x298]
  ac00ee:	6a 01                	push   0x1
  ac00f0:	50                   	push   eax
  ac00f1:	e8 ea c2 08 00       	call   0xb4c3e0
  ac00f6:	84 c0                	test   al,al
  ac00f8:	74 5a                	je     0xac0154
  ac00fa:	6a 00                	push   0x0
  ac00fc:	6a 01                	push   0x1
  ac00fe:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  ac0102:	51                   	push   ecx
  ac0103:	56                   	push   esi
  ac0104:	e8 17 f7 00 00       	call   0xacf820
  ac0109:	83 c4 10             	add    esp,0x10
  ac010c:	84 c0                	test   al,al
  ac010e:	75 44                	jne    0xac0154
  ac0110:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  ac0115:	75 20                	jne    0xac0137
  ac0117:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  ac011d:	8d 54 24 34          	lea    edx,[esp+0x34]
  ac0121:	52                   	push   edx
  ac0122:	e8 69 c5 fc ff       	call   0xa8c690
  ac0127:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  ac012b:	d8 05 f8 98 f9 00    	fadd   DWORD PTR ds:0xf998f8
  ac0131:	df f1                	fcomip st,st(1)
  ac0133:	dd d8                	fstp   st(0)
  ac0135:	77 1d                	ja     0xac0154
  ac0137:	c6 44 24 24 00       	mov    BYTE PTR [esp+0x24],0x0
  ac013c:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  ac0140:	50                   	push   eax
  ac0141:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  ac0145:	51                   	push   ecx
  ac0146:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  ac014a:	8d 54 24 48          	lea    edx,[esp+0x48]
  ac014e:	52                   	push   edx
  ac014f:	e8 0c 60 f9 ff       	call   0xa56160
  ac0154:	8b 86 74 01 00 00    	mov    eax,DWORD PTR [esi+0x174]
  ac015a:	0f af 44 24 14       	imul   eax,DWORD PTR [esp+0x14]
  ac015f:	8a 4c 24 2f          	mov    cl,BYTE PTR [esp+0x2f]
  ac0163:	03 c7                	add    eax,edi
  ac0165:	03 c3                	add    eax,ebx
  ac0167:	08 08                	or     BYTE PTR [eax],cl
  ac0169:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  ac016d:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  ac0174:	00
  ac0175:	83 c0 01             	add    eax,0x1
  ac0178:	83 f8 04             	cmp    eax,0x4
  ac017b:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  ac017f:	0f 8c 9b fe ff ff    	jl     0xac0020
  ac0185:	83 c3 01             	add    ebx,0x1
  ac0188:	3b 9e 74 01 00 00    	cmp    ebx,DWORD PTR [esi+0x174]
  ac018e:	0f 8c 7c fe ff ff    	jl     0xac0010
  ac0194:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ac0198:	83 c0 01             	add    eax,0x1
  ac019b:	3b 86 78 01 00 00    	cmp    eax,DWORD PTR [esi+0x178]
  ac01a1:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  ac01a5:	0f 8c 4e fe ff ff    	jl     0xabfff9
  ac01ab:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  ac01af:	83 e9 01             	sub    ecx,0x1
  ac01b2:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  ac01b6:	0f 89 1a fe ff ff    	jns    0xabffd6
  ac01bc:	85 ff                	test   edi,edi
  ac01be:	74 09                	je     0xac01c9
  ac01c0:	57                   	push   edi
  ac01c1:	e8 1a 43 a2 ff       	call   0x4e44e0
  ac01c6:	83 c4 04             	add    esp,0x4
  ac01c9:	5f                   	pop    edi
  ac01ca:	5e                   	pop    esi
  ac01cb:	5b                   	pop    ebx
  ac01cc:	8b e5                	mov    esp,ebp
  ac01ce:	5d                   	pop    ebp
  ac01cf:	c2 08 00             	ret    0x8
