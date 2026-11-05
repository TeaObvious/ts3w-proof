# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074a050, 0x0074a239); analyst name ScriptCore.Queries::Query_GetObjectsOverlappingObject.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074a050 <.text+0x349050>:
  74a050:	83 ec 4c             	sub    esp,0x4c
  74a053:	55                   	push   ebp
  74a054:	e8 17 d5 1e 00       	call   0x937570
  74a059:	33 ed                	xor    ebp,ebp
  74a05b:	3b c5                	cmp    eax,ebp
  74a05d:	75 07                	jne    0x74a066
  74a05f:	33 c0                	xor    eax,eax
  74a061:	5d                   	pop    ebp
  74a062:	83 c4 4c             	add    esp,0x4c
  74a065:	c3                   	ret
  74a066:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  74a06a:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
  74a06e:	57                   	push   edi
  74a06f:	51                   	push   ecx
  74a070:	52                   	push   edx
  74a071:	8b c8                	mov    ecx,eax
  74a073:	e8 08 df 1e 00       	call   0x937f80
  74a078:	8b f8                	mov    edi,eax
  74a07a:	3b fd                	cmp    edi,ebp
  74a07c:	75 08                	jne    0x74a086
  74a07e:	5f                   	pop    edi
  74a07f:	33 c0                	xor    eax,eax
  74a081:	5d                   	pop    ebp
  74a082:	83 c4 4c             	add    esp,0x4c
  74a085:	c3                   	ret
  74a086:	53                   	push   ebx
  74a087:	8b cf                	mov    ecx,edi
  74a089:	e8 a2 50 f4 ff       	call   0x68f130
  74a08e:	3b c5                	cmp    eax,ebp
  74a090:	74 18                	je     0x74a0aa
  74a092:	8b 10                	mov    edx,DWORD PTR [eax]
  74a094:	8b c8                	mov    ecx,eax
  74a096:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  74a099:	68 0e 6b 56 90       	push   0x90566b0e
  74a09e:	ff d0                	call   eax
  74a0a0:	8b d8                	mov    ebx,eax
  74a0a2:	3b dd                	cmp    ebx,ebp
  74a0a4:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  74a0a8:	75 09                	jne    0x74a0b3
  74a0aa:	5b                   	pop    ebx
  74a0ab:	5f                   	pop    edi
  74a0ac:	33 c0                	xor    eax,eax
  74a0ae:	5d                   	pop    ebp
  74a0af:	83 c4 4c             	add    esp,0x4c
  74a0b2:	c3                   	ret
  74a0b3:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  74a0b9:	56                   	push   esi
  74a0ba:	51                   	push   ecx
  74a0bb:	8b cf                	mov    ecx,edi
  74a0bd:	e8 9e a1 1e 00       	call   0x934260
  74a0c2:	8b f0                	mov    esi,eax
  74a0c4:	3b f5                	cmp    esi,ebp
  74a0c6:	75 0a                	jne    0x74a0d2
  74a0c8:	5e                   	pop    esi
  74a0c9:	5b                   	pop    ebx
  74a0ca:	5f                   	pop    edi
  74a0cb:	33 c0                	xor    eax,eax
  74a0cd:	5d                   	pop    ebp
  74a0ce:	83 c4 4c             	add    esp,0x4c
  74a0d1:	c3                   	ret
  74a0d2:	8b ce                	mov    ecx,esi
  74a0d4:	e8 67 f8 53 00       	call   0xc89940
  74a0d9:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  74a0dd:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  74a0e5:	8d 54 24 38          	lea    edx,[esp+0x38]
  74a0e9:	52                   	push   edx
  74a0ea:	8d 44 24 38          	lea    eax,[esp+0x38]
  74a0ee:	50                   	push   eax
  74a0ef:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  74a0f3:	51                   	push   ecx
  74a0f4:	8b ce                	mov    ecx,esi
  74a0f6:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  74a0fc:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  74a102:	89 6c 24 44          	mov    DWORD PTR [esp+0x44],ebp
  74a106:	e8 d5 f3 53 00       	call   0xc894e0
  74a10b:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  74a10f:	52                   	push   edx
  74a110:	57                   	push   edi
  74a111:	8b cb                	mov    ecx,ebx
  74a113:	89 6c 24 44          	mov    DWORD PTR [esp+0x44],ebp
  74a117:	89 6c 24 48          	mov    DWORD PTR [esp+0x48],ebp
  74a11b:	89 6c 24 4c          	mov    DWORD PTR [esp+0x4c],ebp
  74a11f:	c7 44 24 50 50 4e 00 01 	mov    DWORD PTR [esp+0x50],0x1004e50
  74a127:	e8 94 18 38 00       	call   0xacb9c0
  74a12c:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  74a130:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  74a134:	33 db                	xor    ebx,ebx
  74a136:	33 f6                	xor    esi,esi
  74a138:	3b c1                	cmp    eax,ecx
  74a13a:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  74a13e:	89 74 24 50          	mov    DWORD PTR [esp+0x50],esi
  74a142:	89 6c 24 54          	mov    DWORD PTR [esp+0x54],ebp
  74a146:	c7 44 24 58 18 4e 00 01 	mov    DWORD PTR [esp+0x58],0x1004e18
  74a14e:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  74a152:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  74a156:	0f 84 86 00 00 00    	je     0x74a1e2
  74a15c:	8d 64 24 00          	lea    esp,[esp+0x0]
  74a160:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  74a164:	8b 30                	mov    esi,DWORD PTR [eax]
  74a166:	3b f5                	cmp    esi,ebp
  74a168:	74 5f                	je     0x74a1c9
  74a16a:	3b f7                	cmp    esi,edi
  74a16c:	74 5b                	je     0x74a1c9
  74a16e:	a1 f8 a0 1e 01       	mov    eax,ds:0x11ea0f8
  74a173:	85 47 2c             	test   DWORD PTR [edi+0x2c],eax
  74a176:	74 35                	je     0x74a1ad
  74a178:	85 46 2c             	test   DWORD PTR [esi+0x2c],eax
  74a17b:	74 30                	je     0x74a1ad
  74a17d:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  74a180:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  74a184:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  74a187:	8b 5f 0c             	mov    ebx,DWORD PTR [edi+0xc]
  74a18a:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  74a18d:	51                   	push   ecx
  74a18e:	d9 1c 24             	fstp   DWORD PTR [esp]
  74a191:	8d 6c 24 34          	lea    ebp,[esp+0x34]
  74a195:	55                   	push   ebp
  74a196:	51                   	push   ecx
  74a197:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  74a19b:	50                   	push   eax
  74a19c:	53                   	push   ebx
  74a19d:	52                   	push   edx
  74a19e:	51                   	push   ecx
  74a19f:	e8 dc 55 04 00       	call   0x78f780
  74a1a4:	83 c4 1c             	add    esp,0x1c
  74a1a7:	33 ed                	xor    ebp,ebp
  74a1a9:	84 c0                	test   al,al
  74a1ab:	75 1c                	jne    0x74a1c9
  74a1ad:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  74a1b0:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  74a1b3:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  74a1b7:	51                   	push   ecx
  74a1b8:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  74a1bc:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  74a1c0:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  74a1c4:	e8 37 83 e2 ff       	call   0x572500
  74a1c9:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  74a1cd:	83 c0 04             	add    eax,0x4
  74a1d0:	3b 44 24 1c          	cmp    eax,DWORD PTR [esp+0x1c]
  74a1d4:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  74a1d8:	75 86                	jne    0x74a160
  74a1da:	8b 74 24 50          	mov    esi,DWORD PTR [esp+0x50]
  74a1de:	8b 5c 24 4c          	mov    ebx,DWORD PTR [esp+0x4c]
  74a1e2:	e8 a9 f1 01 00       	call   0x769390
  74a1e7:	2b f3                	sub    esi,ebx
  74a1e9:	c1 fe 03             	sar    esi,0x3
  74a1ec:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
  74a1f0:	89 6c 24 2c          	mov    DWORD PTR [esp+0x2c],ebp
  74a1f4:	8b cb                	mov    ecx,ebx
  74a1f6:	75 04                	jne    0x74a1fc
  74a1f8:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  74a1fc:	8b 10                	mov    edx,DWORD PTR [eax]
  74a1fe:	8b 92 c0 00 00 00    	mov    edx,DWORD PTR [edx+0xc0]
  74a204:	56                   	push   esi
  74a205:	51                   	push   ecx
  74a206:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  74a20a:	51                   	push   ecx
  74a20b:	8b c8                	mov    ecx,eax
  74a20d:	ff d2                	call   edx
  74a20f:	3b dd                	cmp    ebx,ebp
  74a211:	8b f0                	mov    esi,eax
  74a213:	74 09                	je     0x74a21e
  74a215:	53                   	push   ebx
  74a216:	e8 c5 a2 d9 ff       	call   0x4e44e0
  74a21b:	83 c4 04             	add    esp,0x4
  74a21e:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  74a222:	3b c5                	cmp    eax,ebp
  74a224:	74 09                	je     0x74a22f
  74a226:	50                   	push   eax
  74a227:	e8 b4 a2 d9 ff       	call   0x4e44e0
  74a22c:	83 c4 04             	add    esp,0x4
  74a22f:	8b c6                	mov    eax,esi
  74a231:	5e                   	pop    esi
  74a232:	5b                   	pop    ebx
  74a233:	5f                   	pop    edi
  74a234:	5d                   	pop    ebp
  74a235:	83 c4 4c             	add    esp,0x4c
  74a238:	c3                   	ret
