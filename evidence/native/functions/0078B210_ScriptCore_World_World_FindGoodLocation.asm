# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0078b210 <.text+0x38a210>:
  78b210:	83 ec 14             	sub    esp,0x14
  78b213:	f3 0f 10 44 24 5c    	movss  xmm0,DWORD PTR [esp+0x5c]
  78b219:	53                   	push   ebx
  78b21a:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  78b220:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  78b226:	56                   	push   esi
  78b227:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  78b22d:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  78b233:	57                   	push   edi
  78b234:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  78b23a:	e8 31 c3 1a 00       	call   0x937570
  78b23f:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  78b243:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  78b247:	51                   	push   ecx
  78b248:	52                   	push   edx
  78b249:	8b c8                	mov    ecx,eax
  78b24b:	e8 30 cd 1a 00       	call   0x937f80
  78b250:	8b f0                	mov    esi,eax
  78b252:	33 db                	xor    ebx,ebx
  78b254:	3b f3                	cmp    esi,ebx
  78b256:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
  78b25a:	74 0c                	je     0x78b268
  78b25c:	8d 46 04             	lea    eax,[esi+0x4]
  78b25f:	b9 01 00 00 00       	mov    ecx,0x1
  78b264:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  78b268:	3b f3                	cmp    esi,ebx
  78b26a:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  78b270:	0f 84 bd 01 00 00    	je     0x78b433
  78b276:	38 5c 24 60          	cmp    BYTE PTR [esp+0x60],bl
  78b27a:	0f 85 2d 01 00 00    	jne    0x78b3ad
  78b280:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  78b284:	83 ec 08             	sub    esp,0x8
  78b287:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  78b28b:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  78b28f:	d9 1c 24             	fstp   DWORD PTR [esp]
  78b292:	e8 39 d5 4d 00       	call   0xc687d0
  78b297:	85 c0                	test   eax,eax
  78b299:	0f 84 a0 00 00 00    	je     0x78b33f
  78b29f:	8b 7c 24 54          	mov    edi,DWORD PTR [esp+0x54]
  78b2a3:	3b fb                	cmp    edi,ebx
  78b2a5:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  78b2a9:	89 5c 24 68          	mov    DWORD PTR [esp+0x68],ebx
  78b2ad:	74 19                	je     0x78b2c8
  78b2af:	e8 dc e0 fd ff       	call   0x769390
  78b2b4:	8b 10                	mov    edx,DWORD PTR [eax]
  78b2b6:	8b 52 68             	mov    edx,DWORD PTR [edx+0x68]
  78b2b9:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  78b2bd:	51                   	push   ecx
  78b2be:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  78b2c2:	51                   	push   ecx
  78b2c3:	57                   	push   edi
  78b2c4:	8b c8                	mov    ecx,eax
  78b2c6:	ff d2                	call   edx
  78b2c8:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
  78b2cc:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  78b2d0:	50                   	push   eax
  78b2d1:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
  78b2d5:	51                   	push   ecx
  78b2d6:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  78b2da:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  78b2de:	52                   	push   edx
  78b2df:	8b 54 24 64          	mov    edx,DWORD PTR [esp+0x64]
  78b2e3:	50                   	push   eax
  78b2e4:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  78b2e8:	51                   	push   ecx
  78b2e9:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  78b2ed:	52                   	push   edx
  78b2ee:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  78b2f2:	50                   	push   eax
  78b2f3:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  78b2f7:	51                   	push   ecx
  78b2f8:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
  78b2fc:	52                   	push   edx
  78b2fd:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  78b301:	50                   	push   eax
  78b302:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  78b306:	51                   	push   ecx
  78b307:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  78b30b:	52                   	push   edx
  78b30c:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  78b310:	50                   	push   eax
  78b311:	83 ec 0c             	sub    esp,0xc
  78b314:	8b c4                	mov    eax,esp
  78b316:	89 08                	mov    DWORD PTR [eax],ecx
  78b318:	8b 4c 24 74          	mov    ecx,DWORD PTR [esp+0x74]
  78b31c:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  78b31f:	56                   	push   esi
  78b320:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  78b323:	e8 08 3f 38 00       	call   0xb0f230
  78b328:	83 c4 44             	add    esp,0x44
  78b32b:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  78b32f:	8a d8                	mov    bl,al
  78b331:	e8 aa af fb ff       	call   0x7462e0
  78b336:	8a c3                	mov    al,bl
  78b338:	5f                   	pop    edi
  78b339:	5e                   	pop    esi
  78b33a:	5b                   	pop    ebx
  78b33b:	83 c4 14             	add    esp,0x14
  78b33e:	c3                   	ret
  78b33f:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  78b343:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  78b347:	8d 54 24 14          	lea    edx,[esp+0x14]
  78b34b:	52                   	push   edx
  78b34c:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  78b350:	50                   	push   eax
  78b351:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  78b355:	53                   	push   ebx
  78b356:	51                   	push   ecx
  78b357:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  78b35b:	52                   	push   edx
  78b35c:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  78b360:	50                   	push   eax
  78b361:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  78b365:	51                   	push   ecx
  78b366:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  78b36a:	52                   	push   edx
  78b36b:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  78b36f:	50                   	push   eax
  78b370:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  78b374:	51                   	push   ecx
  78b375:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  78b379:	52                   	push   edx
  78b37a:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  78b37e:	50                   	push   eax
  78b37f:	83 ec 0c             	sub    esp,0xc
  78b382:	8b c4                	mov    eax,esp
  78b384:	89 08                	mov    DWORD PTR [eax],ecx
  78b386:	8b 4c 24 70          	mov    ecx,DWORD PTR [esp+0x70]
  78b38a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  78b38d:	56                   	push   esi
  78b38e:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  78b391:	e8 9a 7d 38 00       	call   0xb13130
  78b396:	83 c4 40             	add    esp,0x40
  78b399:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  78b39d:	8a d8                	mov    bl,al
  78b39f:	e8 3c af fb ff       	call   0x7462e0
  78b3a4:	8a c3                	mov    al,bl
  78b3a6:	5f                   	pop    edi
  78b3a7:	5e                   	pop    esi
  78b3a8:	5b                   	pop    ebx
  78b3a9:	83 c4 14             	add    esp,0x14
  78b3ac:	c3                   	ret
  78b3ad:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  78b3b1:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  78b3b5:	8d 54 24 14          	lea    edx,[esp+0x14]
  78b3b9:	52                   	push   edx
  78b3ba:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  78b3be:	50                   	push   eax
  78b3bf:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  78b3c3:	6a 01                	push   0x1
  78b3c5:	51                   	push   ecx
  78b3c6:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  78b3ca:	52                   	push   edx
  78b3cb:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  78b3cf:	50                   	push   eax
  78b3d0:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  78b3d4:	51                   	push   ecx
  78b3d5:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  78b3d9:	52                   	push   edx
  78b3da:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  78b3de:	50                   	push   eax
  78b3df:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  78b3e3:	51                   	push   ecx
  78b3e4:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  78b3e8:	52                   	push   edx
  78b3e9:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  78b3ed:	50                   	push   eax
  78b3ee:	83 ec 0c             	sub    esp,0xc
  78b3f1:	8b c4                	mov    eax,esp
  78b3f3:	89 08                	mov    DWORD PTR [eax],ecx
  78b3f5:	8b 4c 24 70          	mov    ecx,DWORD PTR [esp+0x70]
  78b3f9:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  78b3fc:	56                   	push   esi
  78b3fd:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  78b400:	e8 2b 7d 38 00       	call   0xb13130
  78b405:	8a d8                	mov    bl,al
  78b407:	8d 46 04             	lea    eax,[esi+0x4]
  78b40a:	83 c4 40             	add    esp,0x40
  78b40d:	8b d0                	mov    edx,eax
  78b40f:	83 c9 ff             	or     ecx,0xffffffff
  78b412:	f0 0f c1 0a          	lock xadd DWORD PTR [edx],ecx
  78b416:	49                   	dec    ecx
  78b417:	75 11                	jne    0x78b42a
  78b419:	ba 01 00 00 00       	mov    edx,0x1
  78b41e:	87 10                	xchg   DWORD PTR [eax],edx
  78b420:	8b 06                	mov    eax,DWORD PTR [esi]
  78b422:	8b 10                	mov    edx,DWORD PTR [eax]
  78b424:	6a 01                	push   0x1
  78b426:	8b ce                	mov    ecx,esi
  78b428:	ff d2                	call   edx
  78b42a:	8a c3                	mov    al,bl
  78b42c:	5f                   	pop    edi
  78b42d:	5e                   	pop    esi
  78b42e:	5b                   	pop    ebx
  78b42f:	83 c4 14             	add    esp,0x14
  78b432:	c3                   	ret
  78b433:	5f                   	pop    edi
  78b434:	5e                   	pop    esi
  78b435:	32 c0                	xor    al,al
  78b437:	5b                   	pop    ebx
  78b438:	83 c4 14             	add    esp,0x14
  78b43b:	c3                   	ret
