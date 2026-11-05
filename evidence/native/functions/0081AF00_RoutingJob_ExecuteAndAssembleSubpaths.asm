# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0081af00, 0x0081c451); analyst name RoutingJob_ExecuteAndAssembleSubpaths.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0081af00 <.text+0x419f00>:
  81af00:	55                   	push   ebp
  81af01:	8b ec                	mov    ebp,esp
  81af03:	83 e4 f0             	and    esp,0xfffffff0
  81af06:	81 ec c4 02 00 00    	sub    esp,0x2c4
  81af0c:	53                   	push   ebx
  81af0d:	56                   	push   esi
  81af0e:	57                   	push   edi
  81af0f:	6a 00                	push   0x0
  81af11:	6a 00                	push   0x0
  81af13:	6a 00                	push   0x0
  81af15:	6a 00                	push   0x0
  81af17:	68 6c 59 00 01       	push   0x100596c
  81af1c:	68 90 01 00 00       	push   0x190
  81af21:	8b f1                	mov    esi,ecx
  81af23:	e8 d8 95 cc ff       	call   0x4e4500
  81af28:	83 c4 18             	add    esp,0x18
  81af2b:	85 c0                	test   eax,eax
  81af2d:	74 0b                	je     0x81af3a
  81af2f:	8b c8                	mov    ecx,eax
  81af31:	e8 ea 50 00 00       	call   0x820020
  81af36:	8b f8                	mov    edi,eax
  81af38:	eb 02                	jmp    0x81af3c
  81af3a:	33 ff                	xor    edi,edi
  81af3c:	85 ff                	test   edi,edi
  81af3e:	89 7c 24 44          	mov    DWORD PTR [esp+0x44],edi
  81af42:	74 0c                	je     0x81af50
  81af44:	8d 47 04             	lea    eax,[edi+0x4]
  81af47:	b9 01 00 00 00       	mov    ecx,0x1
  81af4c:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  81af50:	85 ff                	test   edi,edi
  81af52:	c6 44 24 0e 00       	mov    BYTE PTR [esp+0xe],0x0
  81af57:	c6 44 24 2f 00       	mov    BYTE PTR [esp+0x2f],0x0
  81af5c:	c6 44 24 37 00       	mov    BYTE PTR [esp+0x37],0x0
  81af61:	0f 84 a6 14 00 00    	je     0x81c40d
  81af67:	8d 5f 04             	lea    ebx,[edi+0x4]
  81af6a:	8b d3                	mov    edx,ebx
  81af6c:	b8 01 00 00 00       	mov    eax,0x1
  81af71:	f0 0f c1 02          	lock xadd DWORD PTR [edx],eax
  81af75:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  81af78:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  81af7b:	68 e7 00 00 00       	push   0xe7
  81af80:	68 88 99 f9 00       	push   0xf99988
  81af85:	6a 00                	push   0x0
  81af87:	6a 00                	push   0x0
  81af89:	51                   	push   ecx
  81af8a:	6a 0c                	push   0xc
  81af8c:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  81af90:	e8 6b 95 cc ff       	call   0x4e4500
  81af95:	8d 48 08             	lea    ecx,[eax+0x8]
  81af98:	83 c4 18             	add    esp,0x18
  81af9b:	85 c9                	test   ecx,ecx
  81af9d:	74 0d                	je     0x81afac
  81af9f:	89 39                	mov    DWORD PTR [ecx],edi
  81afa1:	8b d3                	mov    edx,ebx
  81afa3:	b9 01 00 00 00       	mov    ecx,0x1
  81afa8:	f0 0f c1 0a          	lock xadd DWORD PTR [edx],ecx
  81afac:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  81afb0:	89 08                	mov    DWORD PTR [eax],ecx
  81afb2:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  81afb5:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  81afb8:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  81afbb:	89 02                	mov    DWORD PTR [edx],eax
  81afbd:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  81afc0:	8b c3                	mov    eax,ebx
  81afc2:	83 c9 ff             	or     ecx,0xffffffff
  81afc5:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  81afc9:	49                   	dec    ecx
  81afca:	75 11                	jne    0x81afdd
  81afcc:	ba 01 00 00 00       	mov    edx,0x1
  81afd1:	87 10                	xchg   DWORD PTR [eax],edx
  81afd3:	8b 17                	mov    edx,DWORD PTR [edi]
  81afd5:	8b 02                	mov    eax,DWORD PTR [edx]
  81afd7:	6a 01                	push   0x1
  81afd9:	8b cf                	mov    ecx,edi
  81afdb:	ff d0                	call   eax
  81afdd:	8d 87 94 00 00 00    	lea    eax,[edi+0x94]
  81afe3:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  81afe7:	b9 01 00 00 00       	mov    ecx,0x1
  81afec:	87 08                	xchg   DWORD PTR [eax],ecx
  81afee:	8b 17                	mov    edx,DWORD PTR [edi]
  81aff0:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  81aff3:	8b cf                	mov    ecx,edi
  81aff5:	ff d0                	call   eax
  81aff7:	e8 f4 dc 00 00       	call   0x828cf0
  81affc:	85 c0                	test   eax,eax
  81affe:	89 84 24 0c 01 00 00 	mov    DWORD PTR [esp+0x10c],eax
  81b005:	75 33                	jne    0x81b03a
  81b007:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  81b00b:	b9 03 00 00 00       	mov    ecx,0x3
  81b010:	87 0a                	xchg   DWORD PTR [edx],ecx
  81b012:	8b c3                	mov    eax,ebx
  81b014:	83 c9 ff             	or     ecx,0xffffffff
  81b017:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  81b01b:	49                   	dec    ecx
  81b01c:	0f 85 eb 13 00 00    	jne    0x81c40d
  81b022:	ba 01 00 00 00       	mov    edx,0x1
  81b027:	87 13                	xchg   DWORD PTR [ebx],edx
  81b029:	8b 07                	mov    eax,DWORD PTR [edi]
  81b02b:	8b 10                	mov    edx,DWORD PTR [eax]
  81b02d:	6a 01                	push   0x1
  81b02f:	8b cf                	mov    ecx,edi
  81b031:	ff d2                	call   edx
  81b033:	5f                   	pop    edi
  81b034:	5e                   	pop    esi
  81b035:	5b                   	pop    ebx
  81b036:	8b e5                	mov    esp,ebp
  81b038:	5d                   	pop    ebp
  81b039:	c3                   	ret
  81b03a:	33 db                	xor    ebx,ebx
  81b03c:	39 5e 14             	cmp    DWORD PTR [esi+0x14],ebx
  81b03f:	0f 84 fc 13 00 00    	je     0x81c441
  81b045:	8b c8                	mov    ecx,eax
  81b047:	e8 b4 e5 00 00       	call   0x829600
  81b04c:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  81b04f:	8b f8                	mov    edi,eax
  81b051:	89 7c 24 68          	mov    DWORD PTR [esp+0x68],edi
  81b055:	e8 f6 59 44 00       	call   0xc60a50
  81b05a:	3b fb                	cmp    edi,ebx
  81b05c:	0f 84 df 13 00 00    	je     0x81c441
  81b062:	39 58 64             	cmp    DWORD PTR [eax+0x64],ebx
  81b065:	0f 84 d6 13 00 00    	je     0x81c441
  81b06b:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  81b06e:	3b 46 1c             	cmp    eax,DWORD PTR [esi+0x1c]
  81b071:	0f 84 9d 13 00 00    	je     0x81c414
  81b077:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  81b07a:	3b 4e 2c             	cmp    ecx,DWORD PTR [esi+0x2c]
  81b07d:	0f 84 91 13 00 00    	je     0x81c414
  81b083:	53                   	push   ebx
  81b084:	8d 7e 40             	lea    edi,[esi+0x40]
  81b087:	68 00 00 02 00       	push   0x20000
  81b08c:	53                   	push   ebx
  81b08d:	8b cf                	mov    ecx,edi
  81b08f:	89 5c 24 54          	mov    DWORD PTR [esp+0x54],ebx
  81b093:	89 7c 24 78          	mov    DWORD PTR [esp+0x78],edi
  81b097:	e8 44 14 00 00       	call   0x81c4e0
  81b09c:	84 c0                	test   al,al
  81b09e:	74 0c                	je     0x81b0ac
  81b0a0:	c7 86 c0 00 00 00 00 08 00 00 	mov    DWORD PTR [esi+0xc0],0x800
  81b0aa:	eb 74                	jmp    0x81b120
  81b0ac:	53                   	push   ebx
  81b0ad:	68 00 00 04 00       	push   0x40000
  81b0b2:	53                   	push   ebx
  81b0b3:	8b cf                	mov    ecx,edi
  81b0b5:	e8 26 14 00 00       	call   0x81c4e0
  81b0ba:	84 c0                	test   al,al
  81b0bc:	74 0c                	je     0x81b0ca
  81b0be:	c7 86 c0 00 00 00 00 09 00 00 	mov    DWORD PTR [esi+0xc0],0x900
  81b0c8:	eb 56                	jmp    0x81b120
  81b0ca:	53                   	push   ebx
  81b0cb:	68 00 00 08 00       	push   0x80000
  81b0d0:	53                   	push   ebx
  81b0d1:	8b cf                	mov    ecx,edi
  81b0d3:	e8 08 14 00 00       	call   0x81c4e0
  81b0d8:	84 c0                	test   al,al
  81b0da:	74 0c                	je     0x81b0e8
  81b0dc:	c7 86 c0 00 00 00 00 0a 00 00 	mov    DWORD PTR [esi+0xc0],0xa00
  81b0e6:	eb 38                	jmp    0x81b120
  81b0e8:	53                   	push   ebx
  81b0e9:	68 00 00 10 00       	push   0x100000
  81b0ee:	53                   	push   ebx
  81b0ef:	8b cf                	mov    ecx,edi
  81b0f1:	e8 ea 13 00 00       	call   0x81c4e0
  81b0f6:	84 c0                	test   al,al
  81b0f8:	74 0c                	je     0x81b106
  81b0fa:	c7 86 c0 00 00 00 00 0b 00 00 	mov    DWORD PTR [esi+0xc0],0xb00
  81b104:	eb 1a                	jmp    0x81b120
  81b106:	6a 01                	push   0x1
  81b108:	53                   	push   ebx
  81b109:	6a 20                	push   0x20
  81b10b:	8b cf                	mov    ecx,edi
  81b10d:	e8 ce 13 00 00       	call   0x81c4e0
  81b112:	84 c0                	test   al,al
  81b114:	74 0a                	je     0x81b120
  81b116:	c7 86 c0 00 00 00 00 44 00 00 	mov    DWORD PTR [esi+0xc0],0x4400
  81b120:	8d 54 24 44          	lea    edx,[esp+0x44]
  81b124:	52                   	push   edx
  81b125:	8d 8c 24 dc 00 00 00 	lea    ecx,[esp+0xdc]
  81b12c:	89 9c 24 dc 00 00 00 	mov    DWORD PTR [esp+0xdc],ebx
  81b133:	e8 88 a2 05 00       	call   0x8753c0
  81b138:	8b 8e c8 00 00 00    	mov    ecx,DWORD PTR [esi+0xc8]
  81b13e:	0f 57 c0             	xorps  xmm0,xmm0
  81b141:	8b 86 c0 00 00 00    	mov    eax,DWORD PTR [esi+0xc0]
  81b147:	8b 96 cc 00 00 00    	mov    edx,DWORD PTR [esi+0xcc]
  81b14d:	53                   	push   ebx
  81b14e:	68 00 00 00 10       	push   0x10000000
  81b153:	89 8c 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],ecx
  81b15a:	53                   	push   ebx
  81b15b:	8b cf                	mov    ecx,edi
  81b15d:	c6 84 24 e8 00 00 00 01 	mov    BYTE PTR [esp+0xe8],0x1
  81b165:	89 bc 24 ec 00 00 00 	mov    DWORD PTR [esp+0xec],edi
  81b16c:	c6 84 24 e9 00 00 00 00 	mov    BYTE PTR [esp+0xe9],0x0
  81b174:	89 84 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],eax
  81b17b:	89 94 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],edx
  81b182:	f3 0f 11 84 24 d4 00 00 00 	movss  DWORD PTR [esp+0xd4],xmm0
  81b18b:	f3 0f 11 84 24 d8 00 00 00 	movss  DWORD PTR [esp+0xd8],xmm0
  81b194:	f3 0f 11 84 24 dc 00 00 00 	movss  DWORD PTR [esp+0xdc],xmm0
  81b19d:	e8 3e 13 00 00       	call   0x81c4e0
  81b1a2:	84 c0                	test   al,al
  81b1a4:	0f 84 f1 00 00 00    	je     0x81b29b
  81b1aa:	8b 9e c0 00 00 00    	mov    ebx,DWORD PTR [esi+0xc0]
  81b1b0:	6a 01                	push   0x1
  81b1b2:	6a 00                	push   0x0
  81b1b4:	c1 eb 02             	shr    ebx,0x2
  81b1b7:	6a 40                	push   0x40
  81b1b9:	8b cf                	mov    ecx,edi
  81b1bb:	80 e3 01             	and    bl,0x1
  81b1be:	e8 1d 13 00 00       	call   0x81c4e0
  81b1c3:	84 c0                	test   al,al
  81b1c5:	74 2f                	je     0x81b1f6
  81b1c7:	f3 0f 10 05 30 23 02 01 	movss  xmm0,DWORD PTR ds:0x1022330
  81b1cf:	f3 0f 11 84 24 c8 00 00 00 	movss  DWORD PTR [esp+0xc8],xmm0
  81b1d8:	f3 0f 10 05 2c 23 02 01 	movss  xmm0,DWORD PTR ds:0x102232c
  81b1e0:	f3 0f 11 84 24 cc 00 00 00 	movss  DWORD PTR [esp+0xcc],xmm0
  81b1e9:	f3 0f 10 05 28 23 02 01 	movss  xmm0,DWORD PTR ds:0x1022328
  81b1f1:	e9 9a 00 00 00       	jmp    0x81b290
  81b1f6:	6a 01                	push   0x1
  81b1f8:	6a 00                	push   0x0
  81b1fa:	68 80 00 00 00       	push   0x80
  81b1ff:	8b cf                	mov    ecx,edi
  81b201:	e8 da 12 00 00       	call   0x81c4e0
  81b206:	84 c0                	test   al,al
  81b208:	74 2c                	je     0x81b236
  81b20a:	f3 0f 10 05 8c ab fa 00 	movss  xmm0,DWORD PTR ds:0xfaab8c
  81b212:	f3 0f 11 84 24 c8 00 00 00 	movss  DWORD PTR [esp+0xc8],xmm0
  81b21b:	f3 0f 10 05 24 23 02 01 	movss  xmm0,DWORD PTR ds:0x1022324
  81b223:	f3 0f 11 84 24 cc 00 00 00 	movss  DWORD PTR [esp+0xcc],xmm0
  81b22c:	f3 0f 10 05 20 23 02 01 	movss  xmm0,DWORD PTR ds:0x1022320
  81b234:	eb 5a                	jmp    0x81b290
  81b236:	84 db                	test   bl,bl
  81b238:	74 2c                	je     0x81b266
  81b23a:	f3 0f 10 05 1c 23 02 01 	movss  xmm0,DWORD PTR ds:0x102231c
  81b242:	f3 0f 11 84 24 c8 00 00 00 	movss  DWORD PTR [esp+0xc8],xmm0
  81b24b:	f3 0f 10 05 18 23 02 01 	movss  xmm0,DWORD PTR ds:0x1022318
  81b253:	f3 0f 11 84 24 cc 00 00 00 	movss  DWORD PTR [esp+0xcc],xmm0
  81b25c:	f3 0f 10 05 14 23 02 01 	movss  xmm0,DWORD PTR ds:0x1022314
  81b264:	eb 2a                	jmp    0x81b290
  81b266:	f3 0f 10 05 10 23 02 01 	movss  xmm0,DWORD PTR ds:0x1022310
  81b26e:	f3 0f 11 84 24 c8 00 00 00 	movss  DWORD PTR [esp+0xc8],xmm0
  81b277:	f3 0f 10 05 cc de fe 00 	movss  xmm0,DWORD PTR ds:0xfedecc
  81b27f:	f3 0f 11 84 24 cc 00 00 00 	movss  DWORD PTR [esp+0xcc],xmm0
  81b288:	f3 0f 10 05 c8 de fe 00 	movss  xmm0,DWORD PTR ds:0xfedec8
  81b290:	33 db                	xor    ebx,ebx
  81b292:	f3 0f 11 84 24 d0 00 00 00 	movss  DWORD PTR [esp+0xd0],xmm0
  81b29b:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  81b29e:	2b 46 18             	sub    eax,DWORD PTR [esi+0x18]
  81b2a1:	0f 57 c9             	xorps  xmm1,xmm1
  81b2a4:	c1 f8 06             	sar    eax,0x6
  81b2a7:	89 9c 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],ebx
  81b2ae:	89 9c 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],ebx
  81b2b5:	89 9c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ebx
  81b2bc:	c7 84 24 b4 00 00 00 3c e5 fe 00 	mov    DWORD PTR [esp+0xb4],0xfee53c
  81b2c7:	89 9c 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],ebx
  81b2ce:	89 9c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ebx
  81b2d5:	89 9c 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ebx
  81b2dc:	c7 84 24 a4 00 00 00 f4 22 02 01 	mov    DWORD PTR [esp+0xa4],0x10222f4
  81b2e7:	f3 0f 11 4c 24 5c    	movss  DWORD PTR [esp+0x5c],xmm1
  81b2ed:	f3 0f 11 4c 24 60    	movss  DWORD PTR [esp+0x60],xmm1
  81b2f3:	89 5c 24 64          	mov    DWORD PTR [esp+0x64],ebx
  81b2f7:	89 5c 24 50          	mov    DWORD PTR [esp+0x50],ebx
  81b2fb:	0f 84 2b 02 00 00    	je     0x81b52c
  81b301:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  81b305:	eb 0c                	jmp    0x81b313
  81b307:	eb 07                	jmp    0x81b310
  81b309:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  81b310:	0f 57 c9             	xorps  xmm1,xmm1
  81b313:	8b 7e 18             	mov    edi,DWORD PTR [esi+0x18]
  81b316:	03 7c 24 10          	add    edi,DWORD PTR [esp+0x10]
  81b31a:	8b 54 24 50          	mov    edx,DWORD PTR [esp+0x50]
  81b31e:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  81b321:	8b 4f 24             	mov    ecx,DWORD PTR [edi+0x24]
  81b324:	0f 29 84 24 50 02 00 00 	movaps XMMWORD PTR [esp+0x250],xmm0
  81b32c:	0f 29 84 24 c0 02 00 00 	movaps XMMWORD PTR [esp+0x2c0],xmm0
  81b334:	f3 0f 10 84 24 50 02 00 00 	movss  xmm0,DWORD PTR [esp+0x250]
  81b33d:	f3 0f 11 84 24 40 01 00 00 	movss  DWORD PTR [esp+0x140],xmm0
  81b346:	f3 0f 10 84 24 c8 02 00 00 	movss  xmm0,DWORD PTR [esp+0x2c8]
  81b34f:	f3 0f 11 84 24 44 01 00 00 	movss  DWORD PTR [esp+0x144],xmm0
  81b358:	f3 0f 10 05 d4 21 02 01 	movss  xmm0,DWORD PTR ds:0x10221d4
  81b360:	f3 0f 11 84 24 54 01 00 00 	movss  DWORD PTR [esp+0x154],xmm0
  81b369:	0f 28 47 10          	movaps xmm0,XMMWORD PTR [edi+0x10]
  81b36d:	0f 29 84 24 90 02 00 00 	movaps XMMWORD PTR [esp+0x290],xmm0
  81b375:	0f 29 84 24 60 02 00 00 	movaps XMMWORD PTR [esp+0x260],xmm0
  81b37d:	f3 0f 10 84 24 68 02 00 00 	movss  xmm0,DWORD PTR [esp+0x268]
  81b386:	8d 84 24 40 01 00 00 	lea    eax,[esp+0x140]
  81b38d:	89 8c 24 48 01 00 00 	mov    DWORD PTR [esp+0x148],ecx
  81b394:	f3 0f 11 8c 24 58 01 00 00 	movss  DWORD PTR [esp+0x158],xmm1
  81b39d:	f3 0f 10 8c 24 90 02 00 00 	movss  xmm1,DWORD PTR [esp+0x290]
  81b3a6:	50                   	push   eax
  81b3a7:	8d 8c 24 ac 00 00 00 	lea    ecx,[esp+0xac]
  81b3ae:	89 94 24 60 01 00 00 	mov    DWORD PTR [esp+0x160],edx
  81b3b5:	f3 0f 11 8c 24 50 01 00 00 	movss  DWORD PTR [esp+0x150],xmm1
  81b3be:	f3 0f 11 84 24 54 01 00 00 	movss  DWORD PTR [esp+0x154],xmm0
  81b3c7:	e8 44 b6 e3 ff       	call   0x656a10
  81b3cc:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  81b3cf:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  81b3d2:	0f 29 84 24 80 02 00 00 	movaps XMMWORD PTR [esp+0x280],xmm0
  81b3da:	d9 84 24 88 02 00 00 	fld    DWORD PTR [esp+0x288]
  81b3e1:	83 ec 08             	sub    esp,0x8
  81b3e4:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  81b3e8:	0f 29 84 24 a8 02 00 00 	movaps XMMWORD PTR [esp+0x2a8],xmm0
  81b3f0:	d9 84 24 a8 02 00 00 	fld    DWORD PTR [esp+0x2a8]
  81b3f7:	d9 1c 24             	fstp   DWORD PTR [esp]
  81b3fa:	e8 d1 d3 44 00       	call   0xc687d0
  81b3ff:	8b d8                	mov    ebx,eax
  81b401:	85 db                	test   ebx,ebx
  81b403:	74 17                	je     0x81b41c
  81b405:	6a 01                	push   0x1
  81b407:	6a 00                	push   0x0
  81b409:	57                   	push   edi
  81b40a:	53                   	push   ebx
  81b40b:	e8 c0 45 2e 00       	call   0xaff9d0
  81b410:	83 c4 10             	add    esp,0x10
  81b413:	84 c0                	test   al,al
  81b415:	74 05                	je     0x81b41c
  81b417:	c6 44 24 0e 01       	mov    BYTE PTR [esp+0xe],0x1
  81b41c:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  81b420:	8b 49 14             	mov    ecx,DWORD PTR [ecx+0x14]
  81b423:	85 c9                	test   ecx,ecx
  81b425:	0f 84 e0 00 00 00    	je     0x81b50b
  81b42b:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  81b42e:	8b 56 14             	mov    edx,DWORD PTR [esi+0x14]
  81b431:	0f 29 84 24 70 01 00 00 	movaps XMMWORD PTR [esp+0x170],xmm0
  81b439:	d9 84 24 78 01 00 00 	fld    DWORD PTR [esp+0x178]
  81b440:	83 ec 08             	sub    esp,0x8
  81b443:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  81b447:	0f 29 84 24 68 01 00 00 	movaps XMMWORD PTR [esp+0x168],xmm0
  81b44f:	d9 84 24 68 01 00 00 	fld    DWORD PTR [esp+0x168]
  81b456:	d9 1c 24             	fstp   DWORD PTR [esp]
  81b459:	52                   	push   edx
  81b45a:	e8 b1 29 e5 ff       	call   0x66de10
  81b45f:	84 c0                	test   al,al
  81b461:	0f 84 a4 00 00 00    	je     0x81b50b
  81b467:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  81b46a:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  81b46d:	6a 01                	push   0x1
  81b46f:	6a 00                	push   0x0
  81b471:	6a 00                	push   0x0
  81b473:	6a 00                	push   0x0
  81b475:	6a 00                	push   0x0
  81b477:	6a 00                	push   0x0
  81b479:	6a 01                	push   0x1
  81b47b:	6a 00                	push   0x0
  81b47d:	0f 29 84 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  81b485:	d9 84 24 18 01 00 00 	fld    DWORD PTR [esp+0x118]
  81b48c:	6a 00                	push   0x0
  81b48e:	83 ec 08             	sub    esp,0x8
  81b491:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  81b495:	0f 29 84 24 3c 01 00 00 	movaps XMMWORD PTR [esp+0x13c],xmm0
  81b49d:	d9 84 24 3c 01 00 00 	fld    DWORD PTR [esp+0x13c]
  81b4a4:	c6 44 24 5b 01       	mov    BYTE PTR [esp+0x5b],0x1
  81b4a9:	d9 1c 24             	fstp   DWORD PTR [esp]
  81b4ac:	e8 cf ee 44 00       	call   0xc6a380
  81b4b1:	d8 05 f8 98 f9 00    	fadd   DWORD PTR ds:0xf998f8
  81b4b7:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  81b4ba:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  81b4be:	f3 0f 11 84 24 10 02 00 00 	movss  DWORD PTR [esp+0x210],xmm0
  81b4c7:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  81b4cb:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  81b4d1:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  81b4d5:	f3 0f 11 84 24 70 02 00 00 	movss  DWORD PTR [esp+0x270],xmm0
  81b4de:	f3 0f 10 84 24 10 02 00 00 	movss  xmm0,DWORD PTR [esp+0x210]
  81b4e7:	0f 2f 84 24 70 02 00 00 	comiss xmm0,DWORD PTR [esp+0x270]
  81b4ef:	77 15                	ja     0x81b506
  81b4f1:	85 db                	test   ebx,ebx
  81b4f3:	74 16                	je     0x81b50b
  81b4f5:	8b cb                	mov    ecx,ebx
  81b4f7:	e8 c4 96 e0 ff       	call   0x624bc0
  81b4fc:	84 c0                	test   al,al
  81b4fe:	74 0b                	je     0x81b50b
  81b500:	83 7f 24 00          	cmp    DWORD PTR [edi+0x24],0x0
  81b504:	75 05                	jne    0x81b50b
  81b506:	c6 44 24 2f 00       	mov    BYTE PTR [esp+0x2f],0x0
  81b50b:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  81b50e:	2b 4e 18             	sub    ecx,DWORD PTR [esi+0x18]
  81b511:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  81b515:	83 44 24 10 40       	add    DWORD PTR [esp+0x10],0x40
  81b51a:	83 c0 01             	add    eax,0x1
  81b51d:	c1 f9 06             	sar    ecx,0x6
  81b520:	3b c1                	cmp    eax,ecx
  81b522:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  81b526:	0f 82 e4 fd ff ff    	jb     0x81b310
  81b52c:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  81b52f:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  81b532:	f3 0f 10 05 78 22 02 01 	movss  xmm0,DWORD PTR ds:0x1022278
  81b53a:	2b c2                	sub    eax,edx
  81b53c:	c1 f8 06             	sar    eax,0x6
  81b53f:	33 db                	xor    ebx,ebx
  81b541:	83 f8 01             	cmp    eax,0x1
  81b544:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  81b547:	0f 97 44 24 0f       	seta   BYTE PTR [esp+0xf]
  81b54c:	2b c2                	sub    eax,edx
  81b54e:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  81b554:	f3 0f 10 42 20       	movss  xmm0,DWORD PTR [edx+0x20]
  81b559:	c1 f8 06             	sar    eax,0x6
  81b55c:	89 5c 24 54          	mov    DWORD PTR [esp+0x54],ebx
  81b560:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  81b566:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  81b56a:	0f 84 b3 01 00 00    	je     0x81b723
  81b570:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  81b574:	eb 0a                	jmp    0x81b580
  81b576:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  81b57d:	8d 49 00             	lea    ecx,[ecx+0x0]
  81b580:	8b 7e 28             	mov    edi,DWORD PTR [esi+0x28]
  81b583:	03 7c 24 10          	add    edi,DWORD PTR [esp+0x10]
  81b587:	8d 94 24 24 01 00 00 	lea    edx,[esp+0x124]
  81b58e:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  81b591:	8b 4f 24             	mov    ecx,DWORD PTR [edi+0x24]
  81b594:	0f 29 84 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  81b59c:	0f 29 84 24 f0 00 00 00 	movaps XMMWORD PTR [esp+0xf0],xmm0
  81b5a4:	f3 0f 10 84 24 10 01 00 00 	movss  xmm0,DWORD PTR [esp+0x110]
  81b5ad:	f3 0f 11 84 24 24 01 00 00 	movss  DWORD PTR [esp+0x124],xmm0
  81b5b6:	f3 0f 10 84 24 f8 00 00 00 	movss  xmm0,DWORD PTR [esp+0xf8]
  81b5bf:	f3 0f 11 84 24 28 01 00 00 	movss  DWORD PTR [esp+0x128],xmm0
  81b5c8:	f3 0f 10 47 20       	movss  xmm0,DWORD PTR [edi+0x20]
  81b5cd:	f3 0f 11 84 24 3c 01 00 00 	movss  DWORD PTR [esp+0x13c],xmm0
  81b5d6:	0f 28 47 10          	movaps xmm0,XMMWORD PTR [edi+0x10]
  81b5da:	0f 29 84 24 60 01 00 00 	movaps XMMWORD PTR [esp+0x160],xmm0
  81b5e2:	f3 0f 10 8c 24 60 01 00 00 	movss  xmm1,DWORD PTR [esp+0x160]
  81b5eb:	0f 29 84 24 70 01 00 00 	movaps XMMWORD PTR [esp+0x170],xmm0
  81b5f3:	f3 0f 10 84 24 78 01 00 00 	movss  xmm0,DWORD PTR [esp+0x178]
  81b5fc:	89 8c 24 2c 01 00 00 	mov    DWORD PTR [esp+0x12c],ecx
  81b603:	52                   	push   edx
  81b604:	8d 8c 24 9c 00 00 00 	lea    ecx,[esp+0x9c]
  81b60b:	89 9c 24 3c 01 00 00 	mov    DWORD PTR [esp+0x13c],ebx
  81b612:	f3 0f 11 8c 24 34 01 00 00 	movss  DWORD PTR [esp+0x134],xmm1
  81b61b:	f3 0f 11 84 24 38 01 00 00 	movss  DWORD PTR [esp+0x138],xmm0
  81b624:	e8 e7 f9 e0 ff       	call   0x62b010
  81b629:	80 7c 24 0f 00       	cmp    BYTE PTR [esp+0xf],0x0
  81b62e:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
  81b635:	f3 0f 10 94 24 28 01 00 00 	movss  xmm2,DWORD PTR [esp+0x128]
  81b63e:	f3 0f 10 9c 24 24 01 00 00 	movss  xmm3,DWORD PTR [esp+0x124]
  81b647:	0f 28 c2             	movaps xmm0,xmm2
  81b64a:	f3 0f 5c 40 04       	subss  xmm0,DWORD PTR [eax+0x4]
  81b64f:	0f 28 cb             	movaps xmm1,xmm3
  81b652:	f3 0f 5c 08          	subss  xmm1,DWORD PTR [eax]
  81b656:	0f 28 e0             	movaps xmm4,xmm0
  81b659:	f3 0f 59 c9          	mulss  xmm1,xmm1
  81b65d:	f3 0f 59 e0          	mulss  xmm4,xmm0
  81b661:	f3 0f 58 cc          	addss  xmm1,xmm4
  81b665:	f3 0f 11 4c 24 40    	movss  DWORD PTR [esp+0x40],xmm1
  81b66b:	74 21                	je     0x81b68e
  81b66d:	85 db                	test   ebx,ebx
  81b66f:	76 1d                	jbe    0x81b68e
  81b671:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  81b675:	d8 64 24 3c          	fsub   DWORD PTR [esp+0x3c]
  81b679:	d9 e1                	fabs
  81b67b:	d9 05 88 d7 06 01    	fld    DWORD PTR ds:0x106d788
  81b681:	d9 c9                	fxch   st(1)
  81b683:	df f1                	fcomip st,st(1)
  81b685:	dd d8                	fstp   st(0)
  81b687:	76 05                	jbe    0x81b68e
  81b689:	c6 44 24 0f 00       	mov    BYTE PTR [esp+0xf],0x0
  81b68e:	f3 0f 10 47 20       	movss  xmm0,DWORD PTR [edi+0x20]
  81b693:	f3 0f 10 64 24 50    	movss  xmm4,DWORD PTR [esp+0x50]
  81b699:	0f 2e c4             	ucomiss xmm0,xmm4
  81b69c:	9f                   	lahf
  81b69d:	f6 c4 44             	test   ah,0x44
  81b6a0:	7b 05                	jnp    0x81b6a7
  81b6a2:	c6 44 24 0f 00       	mov    BYTE PTR [esp+0xf],0x0
  81b6a7:	85 db                	test   ebx,ebx
  81b6a9:	74 3a                	je     0x81b6e5
  81b6ab:	0f 2f c4             	comiss xmm0,xmm4
  81b6ae:	77 35                	ja     0x81b6e5
  81b6b0:	0f 2e c4             	ucomiss xmm0,xmm4
  81b6b3:	9f                   	lahf
  81b6b4:	f6 c4 44             	test   ah,0x44
  81b6b7:	7a 58                	jp     0x81b711
  81b6b9:	f3 0f 10 44 24 3c    	movss  xmm0,DWORD PTR [esp+0x3c]
  81b6bf:	0f 2f c1             	comiss xmm0,xmm1
  81b6c2:	76 4d                	jbe    0x81b711
  81b6c4:	8d 84 24 24 01 00 00 	lea    eax,[esp+0x124]
  81b6cb:	50                   	push   eax
  81b6cc:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  81b6d3:	51                   	push   ecx
  81b6d4:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  81b6d8:	f3 0f 11 4c 24 44    	movss  DWORD PTR [esp+0x44],xmm1
  81b6de:	e8 ed 09 e0 ff       	call   0x61c0d0
  81b6e3:	eb 28                	jmp    0x81b70d
  81b6e5:	8b 94 24 2c 01 00 00 	mov    edx,DWORD PTR [esp+0x12c]
  81b6ec:	f3 0f 11 5c 24 5c    	movss  DWORD PTR [esp+0x5c],xmm3
  81b6f2:	f3 0f 11 54 24 60    	movss  DWORD PTR [esp+0x60],xmm2
  81b6f8:	89 54 24 64          	mov    DWORD PTR [esp+0x64],edx
  81b6fc:	f3 0f 10 47 20       	movss  xmm0,DWORD PTR [edi+0x20]
  81b701:	f3 0f 11 4c 24 3c    	movss  DWORD PTR [esp+0x3c],xmm1
  81b707:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  81b70d:	89 5c 24 54          	mov    DWORD PTR [esp+0x54],ebx
  81b711:	83 44 24 10 40       	add    DWORD PTR [esp+0x10],0x40
  81b716:	83 c3 01             	add    ebx,0x1
  81b719:	3b 5c 24 30          	cmp    ebx,DWORD PTR [esp+0x30]
  81b71d:	0f 82 5d fe ff ff    	jb     0x81b580
  81b723:	80 7c 24 0e 00       	cmp    BYTE PTR [esp+0xe],0x0
  81b728:	75 43                	jne    0x81b76d
  81b72a:	d9 44 24 60          	fld    DWORD PTR [esp+0x60]
  81b72e:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  81b731:	83 ec 08             	sub    esp,0x8
  81b734:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  81b738:	d9 44 24 64          	fld    DWORD PTR [esp+0x64]
  81b73c:	d9 1c 24             	fstp   DWORD PTR [esp]
  81b73f:	e8 8c d0 44 00       	call   0xc687d0
  81b744:	85 c0                	test   eax,eax
  81b746:	8b 5c 24 54          	mov    ebx,DWORD PTR [esp+0x54]
  81b74a:	74 25                	je     0x81b771
  81b74c:	8b cb                	mov    ecx,ebx
  81b74e:	c1 e1 06             	shl    ecx,0x6
  81b751:	03 4e 28             	add    ecx,DWORD PTR [esi+0x28]
  81b754:	6a 01                	push   0x1
  81b756:	6a 00                	push   0x0
  81b758:	51                   	push   ecx
  81b759:	50                   	push   eax
  81b75a:	e8 71 42 2e 00       	call   0xaff9d0
  81b75f:	83 c4 10             	add    esp,0x10
  81b762:	84 c0                	test   al,al
  81b764:	74 0b                	je     0x81b771
  81b766:	c6 44 24 0e 01       	mov    BYTE PTR [esp+0xe],0x1
  81b76b:	eb 04                	jmp    0x81b771
  81b76d:	8b 5c 24 54          	mov    ebx,DWORD PTR [esp+0x54]
  81b771:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
  81b775:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
  81b778:	85 c9                	test   ecx,ecx
  81b77a:	0f 84 1a 01 00 00    	je     0x81b89a
  81b780:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  81b783:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  81b786:	8b fb                	mov    edi,ebx
  81b788:	c1 e7 06             	shl    edi,0x6
  81b78b:	0f 28 04 3a          	movaps xmm0,XMMWORD PTR [edx+edi*1]
  81b78f:	0f 29 84 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  81b797:	d9 84 24 18 01 00 00 	fld    DWORD PTR [esp+0x118]
  81b79e:	83 ec 08             	sub    esp,0x8
  81b7a1:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  81b7a5:	0f 29 84 24 f8 00 00 00 	movaps XMMWORD PTR [esp+0xf8],xmm0
  81b7ad:	d9 84 24 f8 00 00 00 	fld    DWORD PTR [esp+0xf8]
  81b7b4:	d9 1c 24             	fstp   DWORD PTR [esp]
  81b7b7:	50                   	push   eax
  81b7b8:	e8 53 26 e5 ff       	call   0x66de10
  81b7bd:	84 c0                	test   al,al
  81b7bf:	0f 84 d5 00 00 00    	je     0x81b89a
  81b7c5:	d9 44 24 60          	fld    DWORD PTR [esp+0x60]
  81b7c9:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  81b7cc:	83 ec 08             	sub    esp,0x8
  81b7cf:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  81b7d3:	d9 44 24 64          	fld    DWORD PTR [esp+0x64]
  81b7d7:	d9 1c 24             	fstp   DWORD PTR [esp]
  81b7da:	e8 f1 cf 44 00       	call   0xc687d0
  81b7df:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  81b7e2:	0f 28 04 39          	movaps xmm0,XMMWORD PTR [ecx+edi*1]
  81b7e6:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  81b7e9:	6a 01                	push   0x1
  81b7eb:	6a 00                	push   0x0
  81b7ed:	6a 00                	push   0x0
  81b7ef:	6a 00                	push   0x0
  81b7f1:	6a 00                	push   0x0
  81b7f3:	6a 00                	push   0x0
  81b7f5:	6a 01                	push   0x1
  81b7f7:	6a 00                	push   0x0
  81b7f9:	0f 29 84 24 30 01 00 00 	movaps XMMWORD PTR [esp+0x130],xmm0
  81b801:	d9 84 24 38 01 00 00 	fld    DWORD PTR [esp+0x138]
  81b808:	6a 00                	push   0x0
  81b80a:	83 ec 08             	sub    esp,0x8
  81b80d:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  81b811:	0f 29 84 24 1c 01 00 00 	movaps XMMWORD PTR [esp+0x11c],xmm0
  81b819:	d9 84 24 1c 01 00 00 	fld    DWORD PTR [esp+0x11c]
  81b820:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  81b824:	d9 1c 24             	fstp   DWORD PTR [esp]
  81b827:	c6 44 24 63 01       	mov    BYTE PTR [esp+0x63],0x1
  81b82c:	e8 4f eb 44 00       	call   0xc6a380
  81b831:	d8 05 f8 98 f9 00    	fadd   DWORD PTR ds:0xf998f8
  81b837:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  81b83a:	0f 28 04 17          	movaps xmm0,XMMWORD PTR [edi+edx*1]
  81b83e:	03 fa                	add    edi,edx
  81b840:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  81b844:	f3 0f 11 84 24 30 02 00 00 	movss  DWORD PTR [esp+0x230],xmm0
  81b84d:	89 7c 24 3c          	mov    DWORD PTR [esp+0x3c],edi
  81b851:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  81b855:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  81b85b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  81b85f:	f3 0f 11 84 24 b0 02 00 00 	movss  DWORD PTR [esp+0x2b0],xmm0
  81b868:	f3 0f 10 84 24 30 02 00 00 	movss  xmm0,DWORD PTR [esp+0x230]
  81b871:	0f 2f 84 24 b0 02 00 00 	comiss xmm0,DWORD PTR [esp+0x2b0]
  81b879:	77 1a                	ja     0x81b895
  81b87b:	83 7c 24 40 00       	cmp    DWORD PTR [esp+0x40],0x0
  81b880:	74 18                	je     0x81b89a
  81b882:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  81b886:	e8 35 93 e0 ff       	call   0x624bc0
  81b88b:	84 c0                	test   al,al
  81b88d:	74 0b                	je     0x81b89a
  81b88f:	83 7f 24 00          	cmp    DWORD PTR [edi+0x24],0x0
  81b893:	75 05                	jne    0x81b89a
  81b895:	c6 44 24 37 00       	mov    BYTE PTR [esp+0x37],0x0
  81b89a:	80 7c 24 0f 00       	cmp    BYTE PTR [esp+0xf],0x0
  81b89f:	74 5f                	je     0x81b900
  81b8a1:	e8 3a d3 d6 ff       	call   0x588be0
  81b8a6:	84 c0                	test   al,al
  81b8a8:	74 10                	je     0x81b8ba
  81b8aa:	68 39 05 00 00       	push   0x539
  81b8af:	8d 8e d0 00 00 00    	lea    ecx,[esi+0xd0]
  81b8b5:	e8 36 f1 cd ff       	call   0x4fa9f0
  81b8ba:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  81b8be:	50                   	push   eax
  81b8bf:	8d 8e d0 00 00 00    	lea    ecx,[esi+0xd0]
  81b8c5:	e8 66 f1 cd ff       	call   0x4faa30
  81b8ca:	8b 94 24 98 00 00 00 	mov    edx,DWORD PTR [esp+0x98]
  81b8d1:	8b d8                	mov    ebx,eax
  81b8d3:	8d 0c dd 00 00 00 00 	lea    ecx,[ebx*8+0x0]
  81b8da:	2b cb                	sub    ecx,ebx
  81b8dc:	f3 0f 10 04 8a       	movss  xmm0,DWORD PTR [edx+ecx*4]
  81b8e1:	8d 04 8a             	lea    eax,[edx+ecx*4]
  81b8e4:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  81b8ea:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  81b8ef:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  81b8f5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  81b8f8:	89 5c 24 54          	mov    DWORD PTR [esp+0x54],ebx
  81b8fc:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  81b900:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  81b903:	8b 7c 24 6c          	mov    edi,DWORD PTR [esp+0x6c]
  81b907:	89 19                	mov    DWORD PTR [ecx],ebx
  81b909:	33 db                	xor    ebx,ebx
  81b90b:	53                   	push   ebx
  81b90c:	53                   	push   ebx
  81b90d:	6a 02                	push   0x2
  81b90f:	8b cf                	mov    ecx,edi
  81b911:	e8 ca 0b 00 00       	call   0x81c4e0
  81b916:	84 c0                	test   al,al
  81b918:	74 05                	je     0x81b91f
  81b91a:	bb 04 00 00 00       	mov    ebx,0x4
  81b91f:	6a 00                	push   0x0
  81b921:	6a 00                	push   0x0
  81b923:	6a 01                	push   0x1
  81b925:	8b cf                	mov    ecx,edi
  81b927:	e8 b4 0b 00 00       	call   0x81c4e0
  81b92c:	84 c0                	test   al,al
  81b92e:	74 03                	je     0x81b933
  81b930:	83 cb 08             	or     ebx,0x8
  81b933:	6a 00                	push   0x0
  81b935:	6a 00                	push   0x0
  81b937:	6a 08                	push   0x8
  81b939:	8b cf                	mov    ecx,edi
  81b93b:	e8 a0 0b 00 00       	call   0x81c4e0
  81b940:	84 c0                	test   al,al
  81b942:	74 03                	je     0x81b947
  81b944:	83 cb 10             	or     ebx,0x10
  81b947:	6a 00                	push   0x0
  81b949:	6a 00                	push   0x0
  81b94b:	68 00 10 00 00       	push   0x1000
  81b950:	8b cf                	mov    ecx,edi
  81b952:	e8 89 0b 00 00       	call   0x81c4e0
  81b957:	84 c0                	test   al,al
  81b959:	74 08                	je     0x81b963
  81b95b:	c6 84 24 dd 00 00 00 01 	mov    BYTE PTR [esp+0xdd],0x1
  81b963:	6a 00                	push   0x0
  81b965:	6a 00                	push   0x0
  81b967:	68 00 00 00 80       	push   0x80000000
  81b96c:	8b cf                	mov    ecx,edi
  81b96e:	e8 6d 0b 00 00       	call   0x81c4e0
  81b973:	84 c0                	test   al,al
  81b975:	74 0d                	je     0x81b984
  81b977:	80 7c 24 0e 00       	cmp    BYTE PTR [esp+0xe],0x0
  81b97c:	75 06                	jne    0x81b984
  81b97e:	81 cb 00 04 00 00    	or     ebx,0x400
  81b984:	6a 00                	push   0x0
  81b986:	6a 00                	push   0x0
  81b988:	6a 10                	push   0x10
  81b98a:	8b cf                	mov    ecx,edi
  81b98c:	c7 44 24 48 01 00 00 00 	mov    DWORD PTR [esp+0x48],0x1
  81b994:	e8 47 0b 00 00       	call   0x81c4e0
  81b999:	84 c0                	test   al,al
  81b99b:	74 08                	je     0x81b9a5
  81b99d:	c7 44 24 3c 03 00 00 00 	mov    DWORD PTR [esp+0x3c],0x3
  81b9a5:	6a 00                	push   0x0
  81b9a7:	6a 00                	push   0x0
  81b9a9:	6a 20                	push   0x20
  81b9ab:	8b cf                	mov    ecx,edi
  81b9ad:	e8 2e 0b 00 00       	call   0x81c4e0
  81b9b2:	84 c0                	test   al,al
  81b9b4:	74 0d                	je     0x81b9c3
  81b9b6:	83 64 24 3c fe       	and    DWORD PTR [esp+0x3c],0xfffffffe
  81b9bb:	c6 84 24 dc 00 00 00 00 	mov    BYTE PTR [esp+0xdc],0x0
  81b9c3:	6a 00                	push   0x0
  81b9c5:	68 00 80 00 00       	push   0x8000
  81b9ca:	6a 00                	push   0x0
  81b9cc:	8b cf                	mov    ecx,edi
  81b9ce:	e8 0d 0b 00 00       	call   0x81c4e0
  81b9d3:	84 c0                	test   al,al
  81b9d5:	74 08                	je     0x81b9df
  81b9d7:	c7 44 24 3c 04 00 00 00 	mov    DWORD PTR [esp+0x3c],0x4
  81b9df:	6a 00                	push   0x0
  81b9e1:	6a 00                	push   0x0
  81b9e3:	6a 40                	push   0x40
  81b9e5:	8b cf                	mov    ecx,edi
  81b9e7:	e8 f4 0a 00 00       	call   0x81c4e0
  81b9ec:	84 c0                	test   al,al
  81b9ee:	74 06                	je     0x81b9f6
  81b9f0:	81 cb 80 00 00 00    	or     ebx,0x80
  81b9f6:	6a 00                	push   0x0
  81b9f8:	6a 00                	push   0x0
  81b9fa:	68 80 00 00 00       	push   0x80
  81b9ff:	8b cf                	mov    ecx,edi
  81ba01:	e8 da 0a 00 00       	call   0x81c4e0
  81ba06:	84 c0                	test   al,al
  81ba08:	74 06                	je     0x81ba10
  81ba0a:	81 cb 00 02 00 00    	or     ebx,0x200
  81ba10:	6a 00                	push   0x0
  81ba12:	68 00 10 00 00       	push   0x1000
  81ba17:	6a 00                	push   0x0
  81ba19:	8b cf                	mov    ecx,edi
  81ba1b:	e8 c0 0a 00 00       	call   0x81c4e0
  81ba20:	84 c0                	test   al,al
  81ba22:	74 06                	je     0x81ba2a
  81ba24:	81 cb 00 00 20 00    	or     ebx,0x200000
  81ba2a:	6a 00                	push   0x0
  81ba2c:	68 00 40 00 00       	push   0x4000
  81ba31:	6a 00                	push   0x0
  81ba33:	8b cf                	mov    ecx,edi
  81ba35:	e8 a6 0a 00 00       	call   0x81c4e0
  81ba3a:	84 c0                	test   al,al
  81ba3c:	74 06                	je     0x81ba44
  81ba3e:	81 cb 00 00 40 00    	or     ebx,0x400000
  81ba44:	6a 00                	push   0x0
  81ba46:	68 80 00 00 00       	push   0x80
  81ba4b:	6a 00                	push   0x0
  81ba4d:	8b cf                	mov    ecx,edi
  81ba4f:	e8 8c 0a 00 00       	call   0x81c4e0
  81ba54:	84 c0                	test   al,al
  81ba56:	74 09                	je     0x81ba61
  81ba58:	83 e3 fd             	and    ebx,0xfffffffd
  81ba5b:	81 cb 00 08 00 00    	or     ebx,0x800
  81ba61:	6a 00                	push   0x0
  81ba63:	68 00 01 00 00       	push   0x100
  81ba68:	6a 00                	push   0x0
  81ba6a:	8b cf                	mov    ecx,edi
  81ba6c:	e8 6f 0a 00 00       	call   0x81c4e0
  81ba71:	84 c0                	test   al,al
  81ba73:	74 06                	je     0x81ba7b
  81ba75:	81 cb 00 10 00 00    	or     ebx,0x1000
  81ba7b:	6a 00                	push   0x0
  81ba7d:	68 00 02 00 00       	push   0x200
  81ba82:	6a 00                	push   0x0
  81ba84:	8b cf                	mov    ecx,edi
  81ba86:	e8 55 0a 00 00       	call   0x81c4e0
  81ba8b:	84 c0                	test   al,al
  81ba8d:	74 06                	je     0x81ba95
  81ba8f:	81 cb 00 20 00 00    	or     ebx,0x2000
  81ba95:	6a 00                	push   0x0
  81ba97:	68 00 04 00 00       	push   0x400
  81ba9c:	6a 00                	push   0x0
  81ba9e:	8b cf                	mov    ecx,edi
  81baa0:	e8 3b 0a 00 00       	call   0x81c4e0
  81baa5:	84 c0                	test   al,al
  81baa7:	74 06                	je     0x81baaf
  81baa9:	81 cb 00 40 00 00    	or     ebx,0x4000
  81baaf:	6a 00                	push   0x0
  81bab1:	68 00 00 00 10       	push   0x10000000
  81bab6:	6a 00                	push   0x0
  81bab8:	8b cf                	mov    ecx,edi
  81baba:	e8 21 0a 00 00       	call   0x81c4e0
  81babf:	84 c0                	test   al,al
  81bac1:	74 06                	je     0x81bac9
  81bac3:	81 cb 00 00 00 01    	or     ebx,0x1000000
  81bac9:	6a 00                	push   0x0
  81bacb:	68 00 00 00 20       	push   0x20000000
  81bad0:	6a 00                	push   0x0
  81bad2:	8b cf                	mov    ecx,edi
  81bad4:	e8 07 0a 00 00       	call   0x81c4e0
  81bad9:	84 c0                	test   al,al
  81badb:	74 06                	je     0x81bae3
  81badd:	81 cb 00 00 00 08    	or     ebx,0x8000000
  81bae3:	80 7c 24 2f 00       	cmp    BYTE PTR [esp+0x2f],0x0
  81bae8:	74 06                	je     0x81baf0
  81baea:	81 cb 00 00 00 10    	or     ebx,0x10000000
  81baf0:	80 7c 24 37 00       	cmp    BYTE PTR [esp+0x37],0x0
  81baf5:	74 06                	je     0x81bafd
  81baf7:	81 cb 00 00 00 20    	or     ebx,0x20000000
  81bafd:	6a 01                	push   0x1
  81baff:	6a 00                	push   0x0
  81bb01:	6a 08                	push   0x8
  81bb03:	8b cf                	mov    ecx,edi
  81bb05:	e8 d6 09 00 00       	call   0x81c4e0
  81bb0a:	84 c0                	test   al,al
  81bb0c:	74 06                	je     0x81bb14
  81bb0e:	81 cb 00 00 00 40    	or     ebx,0x40000000
  81bb14:	6a 01                	push   0x1
  81bb16:	6a 00                	push   0x0
  81bb18:	6a 10                	push   0x10
  81bb1a:	8b cf                	mov    ecx,edi
  81bb1c:	e8 bf 09 00 00       	call   0x81c4e0
  81bb21:	84 c0                	test   al,al
  81bb23:	74 06                	je     0x81bb2b
  81bb25:	81 cb 00 00 00 80    	or     ebx,0x80000000
  81bb2b:	6a 01                	push   0x1
  81bb2d:	6a 00                	push   0x0
  81bb2f:	6a 04                	push   0x4
  81bb31:	8b cf                	mov    ecx,edi
  81bb33:	e8 a8 09 00 00       	call   0x81c4e0
  81bb38:	84 c0                	test   al,al
  81bb3a:	74 03                	je     0x81bb3f
  81bb3c:	83 cb 40             	or     ebx,0x40
  81bb3f:	6a 01                	push   0x1
  81bb41:	6a 00                	push   0x0
  81bb43:	6a 02                	push   0x2
  81bb45:	8b cf                	mov    ecx,edi
  81bb47:	e8 94 09 00 00       	call   0x81c4e0
  81bb4c:	84 c0                	test   al,al
  81bb4e:	74 06                	je     0x81bb56
  81bb50:	81 cb 00 80 00 00    	or     ebx,0x8000
  81bb56:	8b 86 c0 00 00 00    	mov    eax,DWORD PTR [esi+0xc0]
  81bb5c:	25 00 cf 00 00       	and    eax,0xcf00
  81bb61:	3d 00 41 00 00       	cmp    eax,0x4100
  81bb66:	74 0e                	je     0x81bb76
  81bb68:	3d 00 42 00 00       	cmp    eax,0x4200
  81bb6d:	74 07                	je     0x81bb76
  81bb6f:	3d 00 43 00 00       	cmp    eax,0x4300
  81bb74:	75 06                	jne    0x81bb7c
  81bb76:	81 cb 00 00 00 04    	or     ebx,0x4000000
  81bb7c:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  81bb80:	85 c9                	test   ecx,ecx
  81bb82:	74 0f                	je     0x81bb93
  81bb84:	c7 44 24 48 00 00 00 00 	mov    DWORD PTR [esp+0x48],0x0
  81bb8c:	8b 11                	mov    edx,DWORD PTR [ecx]
  81bb8e:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  81bb91:	ff d0                	call   eax
  81bb93:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  81bb97:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  81bb9b:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
  81bb9e:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  81bba1:	6a 00                	push   0x0
  81bba3:	51                   	push   ecx
  81bba4:	6a 00                	push   0x0
  81bba6:	53                   	push   ebx
  81bba7:	52                   	push   edx
  81bba8:	50                   	push   eax
  81bba9:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  81bbad:	51                   	push   ecx
  81bbae:	8d 94 24 b4 00 00 00 	lea    edx,[esp+0xb4]
  81bbb5:	52                   	push   edx
  81bbb6:	51                   	push   ecx
  81bbb7:	d9 1c 24             	fstp   DWORD PTR [esp]
  81bbba:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  81bbc1:	50                   	push   eax
  81bbc2:	8d 8c 24 d0 00 00 00 	lea    ecx,[esp+0xd0]
  81bbc9:	51                   	push   ecx
  81bbca:	8b 8c 24 94 00 00 00 	mov    ecx,DWORD PTR [esp+0x94]
  81bbd1:	8d 94 24 e4 00 00 00 	lea    edx,[esp+0xe4]
  81bbd8:	52                   	push   edx
  81bbd9:	e8 c2 63 e4 ff       	call   0x661fa0
  81bbde:	85 c0                	test   eax,eax
  81bbe0:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  81bbe4:	0f 85 2e 06 00 00    	jne    0x81c218
  81bbea:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  81bbee:	8d 44 24 70          	lea    eax,[esp+0x70]
  81bbf2:	50                   	push   eax
  81bbf3:	33 db                	xor    ebx,ebx
  81bbf5:	51                   	push   ecx
  81bbf6:	8b ce                	mov    ecx,esi
  81bbf8:	89 5c 24 78          	mov    DWORD PTR [esp+0x78],ebx
  81bbfc:	89 5c 24 7c          	mov    DWORD PTR [esp+0x7c],ebx
  81bc00:	89 9c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ebx
  81bc07:	c7 84 24 84 00 00 00 e0 22 02 01 	mov    DWORD PTR [esp+0x84],0x10222e0
  81bc12:	e8 89 e3 ff ff       	call   0x819fa0
  81bc17:	53                   	push   ebx
  81bc18:	53                   	push   ebx
  81bc19:	68 00 00 20 00       	push   0x200000
  81bc1e:	8b cf                	mov    ecx,edi
  81bc20:	e8 bb 08 00 00       	call   0x81c4e0
  81bc25:	84 c0                	test   al,al
  81bc27:	0f 85 d3 00 00 00    	jne    0x81bd00
  81bc2d:	8b 54 24 74          	mov    edx,DWORD PTR [esp+0x74]
  81bc31:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  81bc35:	2b d0                	sub    edx,eax
  81bc37:	c1 fa 06             	sar    edx,0x6
  81bc3a:	83 fa 01             	cmp    edx,0x1
  81bc3d:	76 08                	jbe    0x81bc47
  81bc3f:	c7 44 24 38 05 00 00 00 	mov    DWORD PTR [esp+0x38],0x5
  81bc47:	8d 8c 24 a0 01 00 00 	lea    ecx,[esp+0x1a0]
  81bc4e:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
  81bc52:	e8 29 db ff ff       	call   0x819780
  81bc57:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  81bc5b:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  81bc5e:	53                   	push   ebx
  81bc5f:	53                   	push   ebx
  81bc60:	89 8c 24 a8 01 00 00 	mov    DWORD PTR [esp+0x1a8],ecx
  81bc67:	6a 40                	push   0x40
  81bc69:	8b cf                	mov    ecx,edi
  81bc6b:	e8 70 08 00 00       	call   0x81c4e0
  81bc70:	84 c0                	test   al,al
  81bc72:	74 0d                	je     0x81bc81
  81bc74:	c7 84 24 b0 01 00 00 92 21 0e f0 	mov    DWORD PTR [esp+0x1b0],0xf00e2192
  81bc7f:	eb 21                	jmp    0x81bca2
  81bc81:	6a 01                	push   0x1
  81bc83:	53                   	push   ebx
  81bc84:	6a 08                	push   0x8
  81bc86:	8b cf                	mov    ecx,edi
  81bc88:	e8 53 08 00 00       	call   0x81c4e0
  81bc8d:	f6 d8                	neg    al
  81bc8f:	1b c0                	sbb    eax,eax
  81bc91:	25 a3 89 e3 c6       	and    eax,0xc6e389a3
  81bc96:	05 67 0b 60 c6       	add    eax,0xc6600b67
  81bc9b:	89 84 24 b0 01 00 00 	mov    DWORD PTR [esp+0x1b0],eax
  81bca2:	0f 57 c0             	xorps  xmm0,xmm0
  81bca5:	8d 94 24 a0 01 00 00 	lea    edx,[esp+0x1a0]
  81bcac:	f3 0f 11 84 24 8c 00 00 00 	movss  DWORD PTR [esp+0x8c],xmm0
  81bcb5:	f3 0f 11 84 24 88 00 00 00 	movss  DWORD PTR [esp+0x88],xmm0
  81bcbe:	f3 0f 11 84 24 84 00 00 00 	movss  DWORD PTR [esp+0x84],xmm0
  81bcc7:	f3 0f 11 84 24 80 00 00 00 	movss  DWORD PTR [esp+0x80],xmm0
  81bcd0:	0f 28 84 24 80 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x80]
  81bcd8:	52                   	push   edx
  81bcd9:	8d 4c 24 74          	lea    ecx,[esp+0x74]
  81bcdd:	89 9c 24 bc 01 00 00 	mov    DWORD PTR [esp+0x1bc],ebx
  81bce4:	89 9c 24 c0 01 00 00 	mov    DWORD PTR [esp+0x1c0],ebx
  81bceb:	0f 29 84 24 c4 01 00 00 	movaps XMMWORD PTR [esp+0x1c4],xmm0
  81bcf3:	c6 84 24 d4 01 00 00 00 	mov    BYTE PTR [esp+0x1d4],0x0
  81bcfb:	e8 e0 e0 ff ff       	call   0x819de0
  81bd00:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  81bd04:	8b 4c 24 70          	mov    ecx,DWORD PTR [esp+0x70]
  81bd08:	83 c0 08             	add    eax,0x8
  81bd0b:	3b 4c 24 74          	cmp    ecx,DWORD PTR [esp+0x74]
  81bd0f:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  81bd13:	8b 00                	mov    eax,DWORD PTR [eax]
  81bd15:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  81bd19:	0f 84 16 03 00 00    	je     0x81c035
  81bd1f:	8b d9                	mov    ebx,ecx
  81bd21:	83 c3 20             	add    ebx,0x20
  81bd24:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  81bd28:	eb 06                	jmp    0x81bd30
  81bd2a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  81bd30:	83 7c 24 38 00       	cmp    DWORD PTR [esp+0x38],0x0
  81bd35:	0f 85 18 04 00 00    	jne    0x81c153
  81bd3b:	8d 53 e0             	lea    edx,[ebx-0x20]
  81bd3e:	3b 54 24 70          	cmp    edx,DWORD PTR [esp+0x70]
  81bd42:	0f 84 a8 00 00 00    	je     0x81bdf0
  81bd48:	6a 00                	push   0x0
  81bd4a:	6a 00                	push   0x0
  81bd4c:	6a 00                	push   0x0
  81bd4e:	6a 00                	push   0x0
  81bd50:	68 6c 59 00 01       	push   0x100596c
  81bd55:	68 90 01 00 00       	push   0x190
  81bd5a:	e8 a1 87 cc ff       	call   0x4e4500
  81bd5f:	83 c4 18             	add    esp,0x18
  81bd62:	85 c0                	test   eax,eax
  81bd64:	74 09                	je     0x81bd6f
  81bd66:	8b c8                	mov    ecx,eax
  81bd68:	e8 b3 42 00 00       	call   0x820020
  81bd6d:	eb 02                	jmp    0x81bd71
  81bd6f:	33 c0                	xor    eax,eax
  81bd71:	50                   	push   eax
  81bd72:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  81bd76:	e8 35 92 05 00       	call   0x874fb0
  81bd7b:	8b 7c 24 44          	mov    edi,DWORD PTR [esp+0x44]
  81bd7f:	85 ff                	test   edi,edi
  81bd81:	89 bc 24 ec 00 00 00 	mov    DWORD PTR [esp+0xec],edi
  81bd88:	74 0c                	je     0x81bd96
  81bd8a:	8d 47 04             	lea    eax,[edi+0x4]
  81bd8d:	b9 01 00 00 00       	mov    ecx,0x1
  81bd92:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  81bd96:	8b 5e 0c             	mov    ebx,DWORD PTR [esi+0xc]
  81bd99:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
  81bd9c:	68 e7 00 00 00       	push   0xe7
  81bda1:	68 88 99 f9 00       	push   0xf99988
  81bda6:	6a 00                	push   0x0
  81bda8:	6a 00                	push   0x0
  81bdaa:	52                   	push   edx
  81bdab:	6a 0c                	push   0xc
  81bdad:	e8 4e 87 cc ff       	call   0x4e4500
  81bdb2:	8d 48 08             	lea    ecx,[eax+0x8]
  81bdb5:	83 c4 18             	add    esp,0x18
  81bdb8:	85 c9                	test   ecx,ecx
  81bdba:	74 12                	je     0x81bdce
  81bdbc:	85 ff                	test   edi,edi
  81bdbe:	89 39                	mov    DWORD PTR [ecx],edi
  81bdc0:	74 0c                	je     0x81bdce
  81bdc2:	8d 4f 04             	lea    ecx,[edi+0x4]
  81bdc5:	ba 01 00 00 00       	mov    edx,0x1
  81bdca:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  81bdce:	89 18                	mov    DWORD PTR [eax],ebx
  81bdd0:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  81bdd3:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  81bdd6:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
  81bdd9:	89 02                	mov    DWORD PTR [edx],eax
  81bddb:	8d 8c 24 ec 00 00 00 	lea    ecx,[esp+0xec]
  81bde2:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  81bde5:	e8 f6 a4 f2 ff       	call   0x7462e0
  81bdea:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  81bdee:	eb 04                	jmp    0x81bdf4
  81bdf0:	8b 7c 24 44          	mov    edi,DWORD PTR [esp+0x44]
  81bdf4:	8b 43 f0             	mov    eax,DWORD PTR [ebx-0x10]
  81bdf7:	89 87 b0 00 00 00    	mov    DWORD PTR [edi+0xb0],eax
  81bdfd:	8b 4b f8             	mov    ecx,DWORD PTR [ebx-0x8]
  81be00:	89 8f b8 00 00 00    	mov    DWORD PTR [edi+0xb8],ecx
  81be06:	8b 53 fc             	mov    edx,DWORD PTR [ebx-0x4]
  81be09:	89 97 bc 00 00 00    	mov    DWORD PTR [edi+0xbc],edx
  81be0f:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  81be12:	0f 29 87 c0 00 00 00 	movaps XMMWORD PTR [edi+0xc0],xmm0
  81be19:	8b 43 e0             	mov    eax,DWORD PTR [ebx-0x20]
  81be1c:	39 44 24 40          	cmp    DWORD PTR [esp+0x40],eax
  81be20:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  81be24:	76 0d                	jbe    0x81be33
  81be26:	c7 44 24 38 02 00 00 00 	mov    DWORD PTR [esp+0x38],0x2
  81be2e:	e9 ee 01 00 00       	jmp    0x81c021
  81be33:	8b 8c 24 0c 01 00 00 	mov    ecx,DWORD PTR [esp+0x10c]
  81be3a:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  81be3e:	51                   	push   ecx
  81be3f:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  81be43:	8d 94 24 84 01 00 00 	lea    edx,[esp+0x184]
  81be4a:	52                   	push   edx
  81be4b:	51                   	push   ecx
  81be4c:	83 c0 c0             	add    eax,0xffffffc0
  81be4f:	50                   	push   eax
  81be50:	8b ce                	mov    ecx,esi
  81be52:	e8 89 d4 ff ff       	call   0x8192e0
  81be57:	80 7b 10 00          	cmp    BYTE PTR [ebx+0x10],0x0
  81be5b:	75 0f                	jne    0x81be6c
  81be5d:	0f 57 c0             	xorps  xmm0,xmm0
  81be60:	dd d8                	fstp   st(0)
  81be62:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  81be68:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  81be6c:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
  81be6f:	8b 02                	mov    eax,DWORD PTR [edx]
  81be71:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  81be75:	50                   	push   eax
  81be76:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  81be7a:	57                   	push   edi
  81be7b:	51                   	push   ecx
  81be7c:	d9 1c 24             	fstp   DWORD PTR [esp]
  81be7f:	8d 8c 24 8c 01 00 00 	lea    ecx,[esp+0x18c]
  81be86:	51                   	push   ecx
  81be87:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  81be8b:	52                   	push   edx
  81be8c:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  81be90:	50                   	push   eax
  81be91:	51                   	push   ecx
  81be92:	52                   	push   edx
  81be93:	8b ce                	mov    ecx,esi
  81be95:	e8 d6 db ff ff       	call   0x819a70
  81be9a:	84 c0                	test   al,al
  81be9c:	75 0d                	jne    0x81beab
  81be9e:	c7 44 24 38 02 00 00 00 	mov    DWORD PTR [esp+0x38],0x2
  81bea6:	e9 76 01 00 00       	jmp    0x81c021
  81beab:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  81beaf:	f3 0f 10 48 c8       	movss  xmm1,DWORD PTR [eax-0x38]
  81beb4:	f3 0f 10 40 c0       	movss  xmm0,DWORD PTR [eax-0x40]
  81beb9:	83 c0 c0             	add    eax,0xffffffc0
  81bebc:	f3 0f 11 8c 24 88 00 00 00 	movss  DWORD PTR [esp+0x88],xmm1
  81bec5:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  81beca:	f3 0f 11 84 24 8c 00 00 00 	movss  DWORD PTR [esp+0x8c],xmm0
  81bed3:	f3 0f 11 8c 24 84 00 00 00 	movss  DWORD PTR [esp+0x84],xmm1
  81bedc:	f3 0f 11 84 24 80 00 00 00 	movss  DWORD PTR [esp+0x80],xmm0
  81bee5:	0f 28 84 24 80 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x80]
  81beed:	0f 29 84 24 e0 01 00 00 	movaps XMMWORD PTR [esp+0x1e0],xmm0
  81bef5:	8b 07                	mov    eax,DWORD PTR [edi]
  81bef7:	8b 90 48 01 00 00    	mov    edx,DWORD PTR [eax+0x148]
  81befd:	8d 8c 24 e0 01 00 00 	lea    ecx,[esp+0x1e0]
  81bf04:	51                   	push   ecx
  81bf05:	8b cf                	mov    ecx,edi
  81bf07:	ff d2                	call   edx
  81bf09:	0f 28 84 24 80 01 00 00 	movaps xmm0,XMMWORD PTR [esp+0x180]
  81bf11:	0f 57 d2             	xorps  xmm2,xmm2
  81bf14:	0f 29 84 24 90 01 00 00 	movaps XMMWORD PTR [esp+0x190],xmm0
  81bf1c:	f3 0f 11 94 24 94 01 00 00 	movss  DWORD PTR [esp+0x194],xmm2
  81bf25:	0f 28 ac 24 90 01 00 00 	movaps xmm5,XMMWORD PTR [esp+0x190]
  81bf2d:	0f 28 c5             	movaps xmm0,xmm5
  81bf30:	0f 59 c5             	mulps  xmm0,xmm5
  81bf33:	0f 28 c8             	movaps xmm1,xmm0
  81bf36:	0f c6 c8 02          	shufps xmm1,xmm0,0x2
  81bf3a:	0f 28 d8             	movaps xmm3,xmm0
  81bf3d:	0f c6 d8 01          	shufps xmm3,xmm0,0x1
  81bf41:	0f 58 cb             	addps  xmm1,xmm3
  81bf44:	0f 58 c8             	addps  xmm1,xmm0
  81bf47:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  81bf4b:	f3 0f 11 8c 24 f0 01 00 00 	movss  DWORD PTR [esp+0x1f0],xmm1
  81bf54:	f3 0f 10 ca          	movss  xmm1,xmm2
  81bf58:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  81bf5c:	f3 0f 11 8c 24 00 02 00 00 	movss  DWORD PTR [esp+0x200],xmm1
  81bf65:	f3 0f 10 8c 24 f0 01 00 00 	movss  xmm1,DWORD PTR [esp+0x1f0]
  81bf6e:	0f 2f 8c 24 00 02 00 00 	comiss xmm1,DWORD PTR [esp+0x200]
  81bf76:	0f 86 9d 00 00 00    	jbe    0x81c019
  81bf7c:	f3 0f 10 25 b4 b5 f9 00 	movss  xmm4,DWORD PTR ds:0xf9b5b4
  81bf84:	0f 28 c8             	movaps xmm1,xmm0
  81bf87:	0f c6 c8 02          	shufps xmm1,xmm0,0x2
  81bf8b:	0f 28 d0             	movaps xmm2,xmm0
  81bf8e:	0f c6 d0 01          	shufps xmm2,xmm0,0x1
  81bf92:	0f 58 ca             	addps  xmm1,xmm2
  81bf95:	0f 58 c8             	addps  xmm1,xmm0
  81bf98:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  81bfa0:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  81bfa4:	0f 52 d9             	rsqrtps xmm3,xmm1
  81bfa7:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  81bfab:	0f 28 f3             	movaps xmm6,xmm3
  81bfae:	0f 59 f3             	mulps  xmm6,xmm3
  81bfb1:	0f 59 f1             	mulps  xmm6,xmm1
  81bfb4:	0f 28 d0             	movaps xmm2,xmm0
  81bfb7:	0f 5c d6             	subps  xmm2,xmm6
  81bfba:	0f 28 f3             	movaps xmm6,xmm3
  81bfbd:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  81bfc1:	0f 59 f4             	mulps  xmm6,xmm4
  81bfc4:	0f 59 d6             	mulps  xmm2,xmm6
  81bfc7:	0f 58 d3             	addps  xmm2,xmm3
  81bfca:	0f 28 da             	movaps xmm3,xmm2
  81bfcd:	0f 59 da             	mulps  xmm3,xmm2
  81bfd0:	0f 59 d9             	mulps  xmm3,xmm1
  81bfd3:	0f 5c c3             	subps  xmm0,xmm3
  81bfd6:	0f 28 ca             	movaps xmm1,xmm2
  81bfd9:	8d 84 24 40 02 00 00 	lea    eax,[esp+0x240]
  81bfe0:	0f 59 cc             	mulps  xmm1,xmm4
  81bfe3:	0f 59 c1             	mulps  xmm0,xmm1
  81bfe6:	50                   	push   eax
  81bfe7:	8d 8c 24 24 02 00 00 	lea    ecx,[esp+0x224]
  81bfee:	0f 58 c2             	addps  xmm0,xmm2
  81bff1:	0f 59 c5             	mulps  xmm0,xmm5
  81bff4:	51                   	push   ecx
  81bff5:	0f 29 84 24 28 02 00 00 	movaps XMMWORD PTR [esp+0x228],xmm0
  81bffd:	e8 0e 3b 04 00       	call   0x85fb10
  81c002:	8b 17                	mov    edx,DWORD PTR [edi]
  81c004:	8b 92 44 01 00 00    	mov    edx,DWORD PTR [edx+0x144]
  81c00a:	83 c4 08             	add    esp,0x8
  81c00d:	8d 84 24 40 02 00 00 	lea    eax,[esp+0x240]
  81c014:	50                   	push   eax
  81c015:	8b cf                	mov    ecx,edi
  81c017:	ff d2                	call   edx
  81c019:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  81c01d:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  81c021:	83 c3 40             	add    ebx,0x40
  81c024:	8d 4b e0             	lea    ecx,[ebx-0x20]
  81c027:	3b 4c 24 74          	cmp    ecx,DWORD PTR [esp+0x74]
  81c02b:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  81c02f:	0f 85 fb fc ff ff    	jne    0x81bd30
  81c035:	83 7c 24 38 00       	cmp    DWORD PTR [esp+0x38],0x0
  81c03a:	0f 85 13 01 00 00    	jne    0x81c153
  81c040:	8b 76 0c             	mov    esi,DWORD PTR [esi+0xc]
  81c043:	39 36                	cmp    DWORD PTR [esi],esi
  81c045:	89 74 24 58          	mov    DWORD PTR [esp+0x58],esi
  81c049:	0f 84 a9 00 00 00    	je     0x81c0f8
  81c04f:	8b 06                	mov    eax,DWORD PTR [esi]
  81c051:	8b 18                	mov    ebx,DWORD PTR [eax]
  81c053:	3b de                	cmp    ebx,esi
  81c055:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  81c059:	0f 84 99 00 00 00    	je     0x81c0f8
  81c05f:	eb 04                	jmp    0x81c065
  81c061:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  81c065:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
  81c068:	85 f6                	test   esi,esi
  81c06a:	74 0c                	je     0x81c078
  81c06c:	8d 56 04             	lea    edx,[esi+0x4]
  81c06f:	b8 01 00 00 00       	mov    eax,0x1
  81c074:	f0 0f c1 02          	lock xadd DWORD PTR [edx],eax
  81c078:	8b 7b 08             	mov    edi,DWORD PTR [ebx+0x8]
  81c07b:	85 ff                	test   edi,edi
  81c07d:	74 0c                	je     0x81c08b
  81c07f:	8d 4f 04             	lea    ecx,[edi+0x4]
  81c082:	ba 01 00 00 00       	mov    edx,0x1
  81c087:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  81c08b:	8b 06                	mov    eax,DWORD PTR [esi]
  81c08d:	8b 50 78             	mov    edx,DWORD PTR [eax+0x78]
  81c090:	57                   	push   edi
  81c091:	8b ce                	mov    ecx,esi
  81c093:	ff d2                	call   edx
  81c095:	8b 07                	mov    eax,DWORD PTR [edi]
  81c097:	8b 90 80 00 00 00    	mov    edx,DWORD PTR [eax+0x80]
  81c09d:	56                   	push   esi
  81c09e:	8b cf                	mov    ecx,edi
  81c0a0:	ff d2                	call   edx
  81c0a2:	8d 47 04             	lea    eax,[edi+0x4]
  81c0a5:	8b c8                	mov    ecx,eax
  81c0a7:	83 ca ff             	or     edx,0xffffffff
  81c0aa:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  81c0ae:	4a                   	dec    edx
  81c0af:	75 11                	jne    0x81c0c2
  81c0b1:	b9 01 00 00 00       	mov    ecx,0x1
  81c0b6:	87 08                	xchg   DWORD PTR [eax],ecx
  81c0b8:	8b 17                	mov    edx,DWORD PTR [edi]
  81c0ba:	8b 02                	mov    eax,DWORD PTR [edx]
  81c0bc:	6a 01                	push   0x1
  81c0be:	8b cf                	mov    ecx,edi
  81c0c0:	ff d0                	call   eax
  81c0c2:	8d 46 04             	lea    eax,[esi+0x4]
  81c0c5:	8b c8                	mov    ecx,eax
  81c0c7:	83 ca ff             	or     edx,0xffffffff
  81c0ca:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  81c0ce:	4a                   	dec    edx
  81c0cf:	75 11                	jne    0x81c0e2
  81c0d1:	b9 01 00 00 00       	mov    ecx,0x1
  81c0d6:	87 08                	xchg   DWORD PTR [eax],ecx
  81c0d8:	8b 16                	mov    edx,DWORD PTR [esi]
  81c0da:	8b 02                	mov    eax,DWORD PTR [edx]
  81c0dc:	6a 01                	push   0x1
  81c0de:	8b ce                	mov    ecx,esi
  81c0e0:	ff d0                	call   eax
  81c0e2:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  81c0e6:	8b 1b                	mov    ebx,DWORD PTR [ebx]
  81c0e8:	3b 5c 24 58          	cmp    ebx,DWORD PTR [esp+0x58]
  81c0ec:	8b 11                	mov    edx,DWORD PTR [ecx]
  81c0ee:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
  81c0f2:	0f 85 69 ff ff ff    	jne    0x81c061
  81c0f8:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
  81c0fc:	d9 05 9c 2b fa 00    	fld    DWORD PTR ds:0xfa2b9c
  81c102:	8b 3e                	mov    edi,DWORD PTR [esi]
  81c104:	8b 47 48             	mov    eax,DWORD PTR [edi+0x48]
  81c107:	6a 01                	push   0x1
  81c109:	51                   	push   ecx
  81c10a:	8b ce                	mov    ecx,esi
  81c10c:	d9 1c 24             	fstp   DWORD PTR [esp]
  81c10f:	ff d0                	call   eax
  81c111:	8b 97 ec 00 00 00    	mov    edx,DWORD PTR [edi+0xec]
  81c117:	83 e8 01             	sub    eax,0x1
  81c11a:	50                   	push   eax
  81c11b:	8b ce                	mov    ecx,esi
  81c11d:	ff d2                	call   edx
  81c11f:	8b 06                	mov    eax,DWORD PTR [esi]
  81c121:	8b 50 4c             	mov    edx,DWORD PTR [eax+0x4c]
  81c124:	8b ce                	mov    ecx,esi
  81c126:	ff d2                	call   edx
  81c128:	8b f8                	mov    edi,eax
  81c12a:	8b 06                	mov    eax,DWORD PTR [esi]
  81c12c:	8b 90 c4 00 00 00    	mov    edx,DWORD PTR [eax+0xc4]
  81c132:	6a 08                	push   0x8
  81c134:	8d 4f ff             	lea    ecx,[edi-0x1]
  81c137:	51                   	push   ecx
  81c138:	8b ce                	mov    ecx,esi
  81c13a:	ff d2                	call   edx
  81c13c:	83 ff 01             	cmp    edi,0x1
  81c13f:	76 12                	jbe    0x81c153
  81c141:	8b 06                	mov    eax,DWORD PTR [esi]
  81c143:	8b 90 c4 00 00 00    	mov    edx,DWORD PTR [eax+0xc4]
  81c149:	6a 04                	push   0x4
  81c14b:	83 c7 fe             	add    edi,0xfffffffe
  81c14e:	57                   	push   edi
  81c14f:	8b ce                	mov    ecx,esi
  81c151:	ff d2                	call   edx
  81c153:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  81c157:	85 c0                	test   eax,eax
  81c159:	74 09                	je     0x81c164
  81c15b:	50                   	push   eax
  81c15c:	e8 7f 83 cc ff       	call   0x4e44e0
  81c161:	83 c4 04             	add    esp,0x4
  81c164:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  81c168:	85 c0                	test   eax,eax
  81c16a:	0f 85 a8 00 00 00    	jne    0x81c218
  81c170:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
  81c174:	b8 02 00 00 00       	mov    eax,0x2
  81c179:	8d 8e 94 00 00 00    	lea    ecx,[esi+0x94]
  81c17f:	87 01                	xchg   DWORD PTR [ecx],eax
  81c181:	8b 84 24 98 00 00 00 	mov    eax,DWORD PTR [esp+0x98]
  81c188:	85 c0                	test   eax,eax
  81c18a:	74 09                	je     0x81c195
  81c18c:	50                   	push   eax
  81c18d:	e8 4e 83 cc ff       	call   0x4e44e0
  81c192:	83 c4 04             	add    esp,0x4
  81c195:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
  81c19c:	85 c0                	test   eax,eax
  81c19e:	74 09                	je     0x81c1a9
  81c1a0:	50                   	push   eax
  81c1a1:	e8 3a 83 cc ff       	call   0x4e44e0
  81c1a6:	83 c4 04             	add    esp,0x4
  81c1a9:	8b 8c 24 d8 00 00 00 	mov    ecx,DWORD PTR [esp+0xd8]
  81c1b0:	85 c9                	test   ecx,ecx
  81c1b2:	74 22                	je     0x81c1d6
  81c1b4:	8d 41 04             	lea    eax,[ecx+0x4]
  81c1b7:	8b d0                	mov    edx,eax
  81c1b9:	83 cf ff             	or     edi,0xffffffff
  81c1bc:	f0 0f c1 3a          	lock xadd DWORD PTR [edx],edi
  81c1c0:	4f                   	dec    edi
  81c1c1:	75 13                	jne    0x81c1d6
  81c1c3:	ba 01 00 00 00       	mov    edx,0x1
  81c1c8:	87 10                	xchg   DWORD PTR [eax],edx
  81c1ca:	85 c9                	test   ecx,ecx
  81c1cc:	74 08                	je     0x81c1d6
  81c1ce:	8b 01                	mov    eax,DWORD PTR [ecx]
  81c1d0:	8b 10                	mov    edx,DWORD PTR [eax]
  81c1d2:	6a 01                	push   0x1
  81c1d4:	ff d2                	call   edx
  81c1d6:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  81c1da:	85 c9                	test   ecx,ecx
  81c1dc:	74 07                	je     0x81c1e5
  81c1de:	8b 01                	mov    eax,DWORD PTR [ecx]
  81c1e0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  81c1e3:	ff d2                	call   edx
  81c1e5:	85 f6                	test   esi,esi
  81c1e7:	0f 84 20 02 00 00    	je     0x81c40d
  81c1ed:	8d 46 04             	lea    eax,[esi+0x4]
  81c1f0:	8b c8                	mov    ecx,eax
  81c1f2:	83 ca ff             	or     edx,0xffffffff
  81c1f5:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  81c1f9:	4a                   	dec    edx
  81c1fa:	0f 85 0d 02 00 00    	jne    0x81c40d
  81c200:	b9 01 00 00 00       	mov    ecx,0x1
  81c205:	87 08                	xchg   DWORD PTR [eax],ecx
  81c207:	8b 16                	mov    edx,DWORD PTR [esi]
  81c209:	8b 02                	mov    eax,DWORD PTR [edx]
  81c20b:	6a 01                	push   0x1
  81c20d:	8b ce                	mov    ecx,esi
  81c20f:	ff d0                	call   eax
  81c211:	5f                   	pop    edi
  81c212:	5e                   	pop    esi
  81c213:	5b                   	pop    ebx
  81c214:	8b e5                	mov    esp,ebp
  81c216:	5d                   	pop    ebp
  81c217:	c3                   	ret
  81c218:	8b 7c 24 44          	mov    edi,DWORD PTR [esp+0x44]
  81c21c:	8d 8f 94 00 00 00    	lea    ecx,[edi+0x94]
  81c222:	ba 03 00 00 00       	mov    edx,0x3
  81c227:	8b f1                	mov    esi,ecx
  81c229:	87 16                	xchg   DWORD PTR [esi],edx
  81c22b:	8d 50 fe             	lea    edx,[eax-0x2]
  81c22e:	83 fa 06             	cmp    edx,0x6
  81c231:	77 23                	ja     0x81c256
  81c233:	ff 24 95 54 c4 81 00 	jmp    DWORD PTR [edx*4+0x81c454]
  81c23a:	ba 05 00 00 00       	mov    edx,0x5
  81c23f:	eb 13                	jmp    0x81c254
  81c241:	ba 06 00 00 00       	mov    edx,0x6
  81c246:	eb 0c                	jmp    0x81c254
  81c248:	ba 07 00 00 00       	mov    edx,0x7
  81c24d:	eb 05                	jmp    0x81c254
  81c24f:	ba 08 00 00 00       	mov    edx,0x8
  81c254:	87 11                	xchg   DWORD PTR [ecx],edx
  81c256:	83 f8 05             	cmp    eax,0x5
  81c259:	74 0e                	je     0x81c269
  81c25b:	83 f8 08             	cmp    eax,0x8
  81c25e:	74 09                	je     0x81c269
  81c260:	83 f8 04             	cmp    eax,0x4
  81c263:	0f 85 1c 01 00 00    	jne    0x81c385
  81c269:	8b 4c 24 6c          	mov    ecx,DWORD PTR [esp+0x6c]
  81c26d:	33 f6                	xor    esi,esi
  81c26f:	56                   	push   esi
  81c270:	56                   	push   esi
  81c271:	68 00 01 00 00       	push   0x100
  81c276:	e8 65 02 00 00       	call   0x81c4e0
  81c27b:	84 c0                	test   al,al
  81c27d:	0f 84 02 01 00 00    	je     0x81c385
  81c283:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  81c287:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  81c28b:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  81c28f:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  81c293:	51                   	push   ecx
  81c294:	52                   	push   edx
  81c295:	56                   	push   esi
  81c296:	6a 1f                	push   0x1f
  81c298:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  81c29c:	8d 44 24 68          	lea    eax,[esp+0x68]
  81c2a0:	50                   	push   eax
  81c2a1:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  81c2a5:	51                   	push   ecx
  81c2a6:	56                   	push   esi
  81c2a7:	8d 94 24 b4 00 00 00 	lea    edx,[esp+0xb4]
  81c2ae:	52                   	push   edx
  81c2af:	51                   	push   ecx
  81c2b0:	d9 1c 24             	fstp   DWORD PTR [esp]
  81c2b3:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  81c2ba:	50                   	push   eax
  81c2bb:	8d 8c 24 d0 00 00 00 	lea    ecx,[esp+0xd0]
  81c2c2:	51                   	push   ecx
  81c2c3:	8b 8c 24 94 00 00 00 	mov    ecx,DWORD PTR [esp+0x94]
  81c2ca:	8d 94 24 e4 00 00 00 	lea    edx,[esp+0xe4]
  81c2d1:	52                   	push   edx
  81c2d2:	89 74 24 68          	mov    DWORD PTR [esp+0x68],esi
  81c2d6:	89 74 24 7c          	mov    DWORD PTR [esp+0x7c],esi
  81c2da:	e8 c1 5c e4 ff       	call   0x661fa0
  81c2df:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  81c2e3:	3b ce                	cmp    ecx,esi
  81c2e5:	0f 84 9a 00 00 00    	je     0x81c385
  81c2eb:	e8 00 2b e3 ff       	call   0x64edf0
  81c2f0:	85 c0                	test   eax,eax
  81c2f2:	74 6c                	je     0x81c360
  81c2f4:	8b 87 d0 00 00 00    	mov    eax,DWORD PTR [edi+0xd0]
  81c2fa:	8d 9f d0 00 00 00    	lea    ebx,[edi+0xd0]
  81c300:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  81c303:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  81c307:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
  81c30b:	e8 e0 2a e3 ff       	call   0x64edf0
  81c310:	85 c0                	test   eax,eax
  81c312:	76 4c                	jbe    0x81c360
  81c314:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  81c318:	56                   	push   esi
  81c319:	e8 f2 2a e3 ff       	call   0x64ee10
  81c31e:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  81c321:	3b 7b 08             	cmp    edi,DWORD PTR [ebx+0x8]
  81c324:	73 19                	jae    0x81c33f
  81c326:	85 ff                	test   edi,edi
  81c328:	8d 4f 28             	lea    ecx,[edi+0x28]
  81c32b:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  81c32e:	74 18                	je     0x81c348
  81c330:	b9 0a 00 00 00       	mov    ecx,0xa
  81c335:	8b f0                	mov    esi,eax
  81c337:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  81c339:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  81c33d:	eb 09                	jmp    0x81c348
  81c33f:	50                   	push   eax
  81c340:	57                   	push   edi
  81c341:	8b cb                	mov    ecx,ebx
  81c343:	e8 58 2b e3 ff       	call   0x64eea0
  81c348:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  81c34c:	83 c6 01             	add    esi,0x1
  81c34f:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
  81c353:	e8 98 2a e3 ff       	call   0x64edf0
  81c358:	3b f0                	cmp    esi,eax
  81c35a:	72 b8                	jb     0x81c314
  81c35c:	8b 7c 24 44          	mov    edi,DWORD PTR [esp+0x44]
  81c360:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  81c364:	85 c0                	test   eax,eax
  81c366:	74 1d                	je     0x81c385
  81c368:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  81c36b:	8b c8                	mov    ecx,eax
  81c36d:	83 c0 04             	add    eax,0x4
  81c370:	83 c2 ff             	add    edx,0xffffffff
  81c373:	89 10                	mov    DWORD PTR [eax],edx
  81c375:	75 0e                	jne    0x81c385
  81c377:	c7 00 01 00 00 00    	mov    DWORD PTR [eax],0x1
  81c37d:	8b 11                	mov    edx,DWORD PTR [ecx]
  81c37f:	8b 02                	mov    eax,DWORD PTR [edx]
  81c381:	6a 01                	push   0x1
  81c383:	ff d0                	call   eax
  81c385:	8b 84 24 98 00 00 00 	mov    eax,DWORD PTR [esp+0x98]
  81c38c:	85 c0                	test   eax,eax
  81c38e:	74 09                	je     0x81c399
  81c390:	50                   	push   eax
  81c391:	e8 4a 81 cc ff       	call   0x4e44e0
  81c396:	83 c4 04             	add    esp,0x4
  81c399:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
  81c3a0:	85 c0                	test   eax,eax
  81c3a2:	74 09                	je     0x81c3ad
  81c3a4:	50                   	push   eax
  81c3a5:	e8 36 81 cc ff       	call   0x4e44e0
  81c3aa:	83 c4 04             	add    esp,0x4
  81c3ad:	8b 8c 24 d8 00 00 00 	mov    ecx,DWORD PTR [esp+0xd8]
  81c3b4:	85 c9                	test   ecx,ecx
  81c3b6:	74 22                	je     0x81c3da
  81c3b8:	8d 41 04             	lea    eax,[ecx+0x4]
  81c3bb:	8b d0                	mov    edx,eax
  81c3bd:	83 ce ff             	or     esi,0xffffffff
  81c3c0:	f0 0f c1 32          	lock xadd DWORD PTR [edx],esi
  81c3c4:	4e                   	dec    esi
  81c3c5:	75 13                	jne    0x81c3da
  81c3c7:	ba 01 00 00 00       	mov    edx,0x1
  81c3cc:	87 10                	xchg   DWORD PTR [eax],edx
  81c3ce:	85 c9                	test   ecx,ecx
  81c3d0:	74 08                	je     0x81c3da
  81c3d2:	8b 01                	mov    eax,DWORD PTR [ecx]
  81c3d4:	8b 10                	mov    edx,DWORD PTR [eax]
  81c3d6:	6a 01                	push   0x1
  81c3d8:	ff d2                	call   edx
  81c3da:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  81c3de:	85 c9                	test   ecx,ecx
  81c3e0:	74 07                	je     0x81c3e9
  81c3e2:	8b 01                	mov    eax,DWORD PTR [ecx]
  81c3e4:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  81c3e7:	ff d2                	call   edx
  81c3e9:	85 ff                	test   edi,edi
  81c3eb:	74 20                	je     0x81c40d
  81c3ed:	8d 47 04             	lea    eax,[edi+0x4]
  81c3f0:	8b d0                	mov    edx,eax
  81c3f2:	83 c9 ff             	or     ecx,0xffffffff
  81c3f5:	f0 0f c1 0a          	lock xadd DWORD PTR [edx],ecx
  81c3f9:	49                   	dec    ecx
  81c3fa:	75 11                	jne    0x81c40d
  81c3fc:	ba 01 00 00 00       	mov    edx,0x1
  81c401:	87 10                	xchg   DWORD PTR [eax],edx
  81c403:	8b 07                	mov    eax,DWORD PTR [edi]
  81c405:	8b 10                	mov    edx,DWORD PTR [eax]
  81c407:	6a 01                	push   0x1
  81c409:	8b cf                	mov    ecx,edi
  81c40b:	ff d2                	call   edx
  81c40d:	5f                   	pop    edi
  81c40e:	5e                   	pop    esi
  81c40f:	5b                   	pop    ebx
  81c410:	8b e5                	mov    esp,ebp
  81c412:	5d                   	pop    ebp
  81c413:	c3                   	ret
  81c414:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  81c418:	b9 03 00 00 00       	mov    ecx,0x3
  81c41d:	8b d0                	mov    edx,eax
  81c41f:	87 0a                	xchg   DWORD PTR [edx],ecx
  81c421:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  81c424:	3b 4e 1c             	cmp    ecx,DWORD PTR [esi+0x1c]
  81c427:	75 09                	jne    0x81c432
  81c429:	ba 05 00 00 00       	mov    edx,0x5
  81c42e:	8b c8                	mov    ecx,eax
  81c430:	87 11                	xchg   DWORD PTR [ecx],edx
  81c432:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  81c435:	3b 56 2c             	cmp    edx,DWORD PTR [esi+0x2c]
  81c438:	75 07                	jne    0x81c441
  81c43a:	b9 06 00 00 00       	mov    ecx,0x6
  81c43f:	87 08                	xchg   DWORD PTR [eax],ecx
  81c441:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  81c445:	e8 96 9e f2 ff       	call   0x7462e0
  81c44a:	5f                   	pop    edi
  81c44b:	5e                   	pop    esi
  81c44c:	5b                   	pop    ebx
  81c44d:	8b e5                	mov    esp,ebp
  81c44f:	5d                   	pop    ebp
  81c450:	c3                   	ret
