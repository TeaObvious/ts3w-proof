# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00758240,0x00758347); analyst name RouteManager_SetPortalCost.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00758240 <.text+0x357240>:
  758240:	83 ec 10             	sub    esp,0x10
  758243:	53                   	push   ebx
  758244:	56                   	push   esi
  758245:	57                   	push   edi
  758246:	e8 a5 0a 0d 00       	call   0x828cf0
  75824b:	85 c0                	test   eax,eax
  75824d:	74 0b                	je     0x75825a
  75824f:	8b c8                	mov    ecx,eax
  758251:	e8 6a 13 0d 00       	call   0x8295c0
  758256:	8b d8                	mov    ebx,eax
  758258:	eb 02                	jmp    0x75825c
  75825a:	33 db                	xor    ebx,ebx
  75825c:	e8 0f f3 1d 00       	call   0x937570
  758261:	85 c0                	test   eax,eax
  758263:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  758267:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
  75826b:	74 28                	je     0x758295
  75826d:	56                   	push   esi
  75826e:	57                   	push   edi
  75826f:	8b c8                	mov    ecx,eax
  758271:	e8 0a fd 1d 00       	call   0x937f80
  758276:	85 c0                	test   eax,eax
  758278:	74 1b                	je     0x758295
  75827a:	8b c8                	mov    ecx,eax
  75827c:	e8 af 6e f3 ff       	call   0x68f130
  758281:	85 c0                	test   eax,eax
  758283:	74 10                	je     0x758295
  758285:	8b 10                	mov    edx,DWORD PTR [eax]
  758287:	8b c8                	mov    ecx,eax
  758289:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  75828c:	68 0e 6b 56 90       	push   0x90566b0e
  758291:	ff d0                	call   eax
  758293:	eb 02                	jmp    0x758297
  758295:	33 c0                	xor    eax,eax
  758297:	85 db                	test   ebx,ebx
  758299:	0f 84 9f 00 00 00    	je     0x75833e
  75829f:	85 c0                	test   eax,eax
  7582a1:	0f 84 97 00 00 00    	je     0x75833e
  7582a7:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  7582ab:	51                   	push   ecx
  7582ac:	56                   	push   esi
  7582ad:	57                   	push   edi
  7582ae:	50                   	push   eax
  7582af:	8b cb                	mov    ecx,ebx
  7582b1:	c7 44 24 1c 00 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  7582b9:	c7 44 24 20 00 00 00 00 	mov    DWORD PTR [esp+0x20],0x0
  7582c1:	c7 44 24 24 00 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
  7582c9:	c7 44 24 28 00 56 00 01 	mov    DWORD PTR [esp+0x28],0x1005600
  7582d1:	e8 aa 7c ed ff       	call   0x62ff80
  7582d6:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  7582da:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7582de:	3b c1                	cmp    eax,ecx
  7582e0:	0f 95 c3             	setne  bl
  7582e3:	3b c1                	cmp    eax,ecx
  7582e5:	8b f0                	mov    esi,eax
  7582e7:	8b f9                	mov    edi,ecx
  7582e9:	74 1c                	je     0x758307
  7582eb:	f3 0f 10 44 24 28    	movss  xmm0,DWORD PTR [esp+0x28]
  7582f1:	8b 16                	mov    edx,DWORD PTR [esi]
  7582f3:	83 c6 04             	add    esi,0x4
  7582f6:	3b f7                	cmp    esi,edi
  7582f8:	f3 0f 11 42 2c       	movss  DWORD PTR [edx+0x2c],xmm0
  7582fd:	75 f2                	jne    0x7582f1
  7582ff:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  758303:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  758307:	3b c1                	cmp    eax,ecx
  758309:	8b f9                	mov    edi,ecx
  75830b:	8b f0                	mov    esi,eax
  75830d:	73 19                	jae    0x758328
  75830f:	90                   	nop
  758310:	8b 0e                	mov    ecx,DWORD PTR [esi]
  758312:	85 c9                	test   ecx,ecx
  758314:	74 07                	je     0x75831d
  758316:	8b 01                	mov    eax,DWORD PTR [ecx]
  758318:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  75831b:	ff d2                	call   edx
  75831d:	83 c6 04             	add    esi,0x4
  758320:	3b f7                	cmp    esi,edi
  758322:	72 ec                	jb     0x758310
  758324:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  758328:	85 c0                	test   eax,eax
  75832a:	74 09                	je     0x758335
  75832c:	50                   	push   eax
  75832d:	e8 ae c1 d8 ff       	call   0x4e44e0
  758332:	83 c4 04             	add    esp,0x4
  758335:	5f                   	pop    edi
  758336:	5e                   	pop    esi
  758337:	8a c3                	mov    al,bl
  758339:	5b                   	pop    ebx
  75833a:	83 c4 10             	add    esp,0x10
  75833d:	c3                   	ret
  75833e:	5f                   	pop    edi
  75833f:	5e                   	pop    esi
  758340:	32 c0                	xor    al,al
  758342:	5b                   	pop    ebx
  758343:	83 c4 10             	add    esp,0x10
  758346:	c3                   	ret
