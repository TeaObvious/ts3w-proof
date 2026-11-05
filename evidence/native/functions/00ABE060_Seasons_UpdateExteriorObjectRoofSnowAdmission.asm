# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00abe060, 0x00abe6c9).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

; Analyst-assigned name: Seasons_UpdateExteriorObjectRoofSnowAdmission
; Original machine bytes and instructions, verified Ghidra function envelope 0x00abe060..0x00abe6c8.
; Alignment gaps inside non-contiguous Ghidra bodies are included in this envelope.

PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00abe060 <.text+0x6bd060>:
  abe060:	55                   	push   ebp
  abe061:	8b ec                	mov    ebp,esp
  abe063:	83 e4 f8             	and    esp,0xfffffff8
  abe066:	81 ec 0c 01 00 00    	sub    esp,0x10c
  abe06c:	53                   	push   ebx
  abe06d:	56                   	push   esi
  abe06e:	8b d9                	mov    ebx,ecx
  abe070:	57                   	push   edi
  abe071:	89 9c 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],ebx
  abe078:	e8 f3 94 e7 ff       	call   0x937570
  abe07d:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
  abe084:	8b 83 80 01 00 00    	mov    eax,DWORD PTR [ebx+0x180]
  abe08a:	3b 83 7c 01 00 00    	cmp    eax,DWORD PTR [ebx+0x17c]
  abe090:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  abe094:	0f 8c eb 05 00 00    	jl     0xabe685
  abe09a:	33 f6                	xor    esi,esi
  abe09c:	89 b4 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],esi
  abe0a3:	eb 0f                	jmp    0xabe0b4
  abe0a5:	eb 09                	jmp    0xabe0b0
  abe0a7:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  abe0ae:	8b ff                	mov    edi,edi
  abe0b0:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  abe0b4:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  abe0bb:	00
  abe0bc:	f3 0f 10 0d 88 fd 03 	movss  xmm1,DWORD PTR ds:0x103fd88
  abe0c3:	01
  abe0c4:	3b c6                	cmp    eax,esi
  abe0c6:	8d 84 24 c8 00 00 00 	lea    eax,[esp+0xc8]
  abe0cd:	7c 04                	jl     0xabe0d3
  abe0cf:	8d 44 24 10          	lea    eax,[esp+0x10]
  abe0d3:	8b 00                	mov    eax,DWORD PTR [eax]
  abe0d5:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  abe0d8:	c1 e0 05             	shl    eax,0x5
  abe0db:	03 01                	add    eax,DWORD PTR [ecx]
  abe0dd:	b9 01 00 00 00       	mov    ecx,0x1
  abe0e2:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
  abe0e9:	b8 a8 61 06 01       	mov    eax,0x10661a8
  abe0ee:	89 44 24 7c          	mov    DWORD PTR [esp+0x7c],eax
  abe0f2:	89 84 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],eax
  abe0f9:	33 d2                	xor    edx,edx
  abe0fb:	39 b3 78 01 00 00    	cmp    DWORD PTR [ebx+0x178],esi
  abe101:	b8 00 d9 14 01       	mov    eax,0x114d900
  abe106:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  abe10c:	f3 0f 11 4c 24 74    	movss  DWORD PTR [esp+0x74],xmm1
  abe112:	89 4c 24 68          	mov    DWORD PTR [esp+0x68],ecx
  abe116:	c7 44 24 64 00 d9 14 	mov    DWORD PTR [esp+0x64],0x114d900
  abe11d:	01
  abe11e:	89 74 24 6c          	mov    DWORD PTR [esp+0x6c],esi
  abe122:	89 74 24 78          	mov    DWORD PTR [esp+0x78],esi
  abe126:	f3 0f 11 84 24 94 00 	movss  DWORD PTR [esp+0x94],xmm0
  abe12d:	00 00
  abe12f:	f3 0f 11 8c 24 98 00 	movss  DWORD PTR [esp+0x98],xmm1
  abe136:	00 00
  abe138:	89 8c 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],ecx
  abe13f:	89 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],eax
  abe146:	89 b4 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],esi
  abe14d:	89 b4 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],esi
  abe154:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
  abe158:	0f 8e bb 01 00 00    	jle    0xabe319
  abe15e:	8b ff                	mov    edi,edi
  abe160:	33 ff                	xor    edi,edi
  abe162:	39 b3 74 01 00 00    	cmp    DWORD PTR [ebx+0x174],esi
  abe168:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  abe16c:	0f 8e 8d 01 00 00    	jle    0xabe2ff
  abe172:	c1 fa 02             	sar    edx,0x2
  abe175:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
  abe179:	eb 09                	jmp    0xabe184
  abe17b:	eb 03                	jmp    0xabe180
  abe17d:	8d 49 00             	lea    ecx,[ecx+0x0]
  abe180:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  abe184:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  abe188:	2b 83 7c 01 00 00    	sub    eax,DWORD PTR [ebx+0x17c]
  abe18e:	8b 8b d0 02 00 00    	mov    ecx,DWORD PTR [ebx+0x2d0]
  abe194:	0f af 41 20          	imul   eax,DWORD PTR [ecx+0x20]
  abe198:	8b f7                	mov    esi,edi
  abe19a:	c1 fe 02             	sar    esi,0x2
  abe19d:	03 c6                	add    eax,esi
  abe19f:	0f af 41 24          	imul   eax,DWORD PTR [ecx+0x24]
  abe1a3:	03 c2                	add    eax,edx
  abe1a5:	8b 51 48             	mov    edx,DWORD PTR [ecx+0x48]
  abe1a8:	0f b7 14 42          	movzx  edx,WORD PTR [edx+eax*2]
  abe1ac:	f7 c2 00 80 00 00    	test   edx,0x8000
  abe1b2:	74 0a                	je     0xabe1be
  abe1b4:	c1 e0 04             	shl    eax,0x4
  abe1b7:	03 41 38             	add    eax,DWORD PTR [ecx+0x38]
  abe1ba:	8b f0                	mov    esi,eax
  abe1bc:	eb 1b                	jmp    0xabe1d9
  abe1be:	0f b7 c2             	movzx  eax,dx
  abe1c1:	8b d7                	mov    edx,edi
  abe1c3:	83 e2 03             	and    edx,0x3
  abe1c6:	8d 04 82             	lea    eax,[edx+eax*4]
  abe1c9:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  abe1cd:	83 e2 03             	and    edx,0x3
  abe1d0:	8d 34 82             	lea    esi,[edx+eax*4]
  abe1d3:	c1 e6 04             	shl    esi,0x4
  abe1d6:	03 71 28             	add    esi,DWORD PTR [ecx+0x28]
  abe1d9:	8b 06                	mov    eax,DWORD PTR [esi]
  abe1db:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  abe1de:	3b c1                	cmp    eax,ecx
  abe1e0:	0f 84 00 01 00 00    	je     0xabe2e6
  abe1e6:	2b c8                	sub    ecx,eax
  abe1e8:	c1 f9 03             	sar    ecx,0x3
  abe1eb:	c7 44 24 34 00 00 00 	mov    DWORD PTR [esp+0x34],0x0
  abe1f2:	00
  abe1f3:	0f 84 ed 00 00 00    	je     0xabe2e6
  abe1f9:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  abe1fd:	8b 54 24 68          	mov    edx,DWORD PTR [esp+0x68]
  abe201:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  abe205:	8b 0c 91             	mov    ecx,DWORD PTR [ecx+edx*4]
  abe208:	03 ff                	add    edi,edi
  abe20a:	03 ff                	add    edi,edi
  abe20c:	03 ff                	add    edi,edi
  abe20e:	8d 1c 07             	lea    ebx,[edi+eax*1]
  abe211:	53                   	push   ebx
  abe212:	8d 94 24 fc 00 00 00 	lea    edx,[esp+0xfc]
  abe219:	89 8c 24 ec 00 00 00 	mov    DWORD PTR [esp+0xec],ecx
  abe220:	52                   	push   edx
  abe221:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  abe225:	e8 96 a4 b6 ff       	call   0x6286c0
  abe22a:	8b 8c 24 e8 00 00 00 	mov    ecx,DWORD PTR [esp+0xe8]
  abe231:	39 08                	cmp    DWORD PTR [eax],ecx
  abe233:	0f 85 85 00 00 00    	jne    0xabe2be
  abe239:	c6 84 24 b4 00 00 00 	mov    BYTE PTR [esp+0xb4],0x0
  abe240:	00
  abe241:	8b 94 24 b4 00 00 00 	mov    edx,DWORD PTR [esp+0xb4]
  abe248:	52                   	push   edx
  abe249:	53                   	push   ebx
  abe24a:	8d 84 24 08 01 00 00 	lea    eax,[esp+0x108]
  abe251:	50                   	push   eax
  abe252:	8d 4c 24 6c          	lea    ecx,[esp+0x6c]
  abe256:	e8 95 a6 b6 ff       	call   0x6288f0
  abe25b:	8b 06                	mov    eax,DWORD PTR [esi]
  abe25d:	8b 4c 38 04          	mov    ecx,DWORD PTR [eax+edi*1+0x4]
  abe261:	8b 14 38             	mov    edx,DWORD PTR [eax+edi*1]
  abe264:	03 c7                	add    eax,edi
  abe266:	51                   	push   ecx
  abe267:	8b 8c 24 a8 00 00 00 	mov    ecx,DWORD PTR [esp+0xa8]
  abe26e:	52                   	push   edx
  abe26f:	e8 0c 9d e7 ff       	call   0x937f80
  abe274:	85 c0                	test   eax,eax
  abe276:	74 46                	je     0xabe2be
  abe278:	8b 0d a8 9f 1e 01    	mov    ecx,DWORD PTR ds:0x11e9fa8
  abe27e:	51                   	push   ecx
  abe27f:	8b c8                	mov    ecx,eax
  abe281:	e8 da 5f e7 ff       	call   0x934260
  abe286:	85 c0                	test   eax,eax
  abe288:	74 34                	je     0xabe2be
  abe28a:	8b c8                	mov    ecx,eax
  abe28c:	e8 ef 66 e8 ff       	call   0x944980
  abe291:	84 c0                	test   al,al
  abe293:	74 29                	je     0xabe2be
  abe295:	8b 06                	mov    eax,DWORD PTR [esi]
  abe297:	c6 84 24 c4 00 00 00 	mov    BYTE PTR [esp+0xc4],0x0
  abe29e:	00
  abe29f:	8b 94 24 c4 00 00 00 	mov    edx,DWORD PTR [esp+0xc4]
  abe2a6:	52                   	push   edx
  abe2a7:	03 c7                	add    eax,edi
  abe2a9:	50                   	push   eax
  abe2aa:	8d 8c 24 14 01 00 00 	lea    ecx,[esp+0x114]
  abe2b1:	51                   	push   ecx
  abe2b2:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  abe2b9:	e8 32 a6 b6 ff       	call   0x6288f0
  abe2be:	8b 06                	mov    eax,DWORD PTR [esi]
  abe2c0:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  abe2c3:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  abe2c7:	2b d0                	sub    edx,eax
  abe2c9:	83 c1 01             	add    ecx,0x1
  abe2cc:	c1 fa 03             	sar    edx,0x3
  abe2cf:	3b ca                	cmp    ecx,edx
  abe2d1:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  abe2d5:	0f 82 1e ff ff ff    	jb     0xabe1f9
  abe2db:	8b 9c 24 cc 00 00 00 	mov    ebx,DWORD PTR [esp+0xcc]
  abe2e2:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  abe2e6:	83 c7 01             	add    edi,0x1
  abe2e9:	3b bb 74 01 00 00    	cmp    edi,DWORD PTR [ebx+0x174]
  abe2ef:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  abe2f3:	0f 8c 87 fe ff ff    	jl     0xabe180
  abe2f9:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  abe2fd:	33 f6                	xor    esi,esi
  abe2ff:	83 c2 01             	add    edx,0x1
  abe302:	3b 93 78 01 00 00    	cmp    edx,DWORD PTR [ebx+0x178]
  abe308:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
  abe30c:	0f 8c 4e fe ff ff    	jl     0xabe160
  abe312:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
  abe319:	8b 38                	mov    edi,DWORD PTR [eax]
  abe31b:	3b fe                	cmp    edi,esi
  abe31d:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  abe321:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  abe325:	75 1f                	jne    0xabe346
  abe327:	39 70 04             	cmp    DWORD PTR [eax+0x4],esi
  abe32a:	8d 48 04             	lea    ecx,[eax+0x4]
  abe32d:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  abe331:	75 0b                	jne    0xabe33e
  abe333:	83 c1 04             	add    ecx,0x4
  abe336:	39 31                	cmp    DWORD PTR [ecx],esi
  abe338:	74 f9                	je     0xabe333
  abe33a:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  abe33e:	8b 09                	mov    ecx,DWORD PTR [ecx]
  abe340:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  abe344:	8b f9                	mov    edi,ecx
  abe346:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
  abe34d:	8b 0c 90             	mov    ecx,DWORD PTR [eax+edx*4]
  abe350:	3b f9                	cmp    edi,ecx
  abe352:	89 8c 24 e0 00 00 00 	mov    DWORD PTR [esp+0xe0],ecx
  abe359:	0f 84 ac 02 00 00    	je     0xabe60b
  abe35f:	eb 04                	jmp    0xabe365
  abe361:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  abe365:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  abe368:	8b 0f                	mov    ecx,DWORD PTR [edi]
  abe36a:	50                   	push   eax
  abe36b:	51                   	push   ecx
  abe36c:	8b 8c 24 ac 00 00 00 	mov    ecx,DWORD PTR [esp+0xac]
  abe373:	e8 08 9c e7 ff       	call   0x937f80
  abe378:	3b c6                	cmp    eax,esi
  abe37a:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  abe37e:	0f 84 51 02 00 00    	je     0xabe5d5
  abe384:	8d 54 24 50          	lea    edx,[esp+0x50]
  abe388:	52                   	push   edx
  abe389:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  abe38d:	51                   	push   ecx
  abe38e:	50                   	push   eax
  abe38f:	53                   	push   ebx
  abe390:	89 74 24 50          	mov    DWORD PTR [esp+0x50],esi
  abe394:	89 74 24 54          	mov    DWORD PTR [esp+0x54],esi
  abe398:	89 74 24 58          	mov    DWORD PTR [esp+0x58],esi
  abe39c:	c7 44 24 5c 78 61 06 	mov    DWORD PTR [esp+0x5c],0x1066178
  abe3a3:	01
  abe3a4:	e8 77 08 05 00       	call   0xb0ec20
  abe3a9:	83 c4 10             	add    esp,0x10
  abe3ac:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  abe3b0:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
  abe3b4:	89 74 24 2c          	mov    DWORD PTR [esp+0x2c],esi
  abe3b8:	c7 44 24 30 40 61 06 	mov    DWORD PTR [esp+0x30],0x1066140
  abe3bf:	01
  abe3c0:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  abe3c4:	db 94 24 dc 00 00 00 	fist   DWORD PTR [esp+0xdc]
  abe3cb:	db 84 24 dc 00 00 00 	fild   DWORD PTR [esp+0xdc]
  abe3d2:	de e9                	fsubp  st(1),st
  abe3d4:	d9 9c 24 d4 00 00 00 	fstp   DWORD PTR [esp+0xd4]
  abe3db:	81 bc 24 d4 00 00 00 	cmp    DWORD PTR [esp+0xd4],0x80000001
  abe3e2:	01 00 00 80
  abe3e6:	8b 84 24 dc 00 00 00 	mov    eax,DWORD PTR [esp+0xdc]
  abe3ed:	83 d0 ff             	adc    eax,0xffffffff
  abe3f0:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  abe3f4:	db 94 24 bc 00 00 00 	fist   DWORD PTR [esp+0xbc]
  abe3fb:	db 84 24 bc 00 00 00 	fild   DWORD PTR [esp+0xbc]
  abe402:	de e9                	fsubp  st(1),st
  abe404:	d9 9c 24 b0 00 00 00 	fstp   DWORD PTR [esp+0xb0]
  abe40b:	81 bc 24 b0 00 00 00 	cmp    DWORD PTR [esp+0xb0],0x80000001
  abe412:	01 00 00 80
  abe416:	8b 84 24 bc 00 00 00 	mov    eax,DWORD PTR [esp+0xbc]
  abe41d:	83 d0 ff             	adc    eax,0xffffffff
  abe420:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  abe424:	db 94 24 b8 00 00 00 	fist   DWORD PTR [esp+0xb8]
  abe42b:	db 84 24 b8 00 00 00 	fild   DWORD PTR [esp+0xb8]
  abe432:	de e1                	fsubrp st(1),st
  abe434:	d9 9c 24 a8 00 00 00 	fstp   DWORD PTR [esp+0xa8]
  abe43b:	81 bc 24 a8 00 00 00 	cmp    DWORD PTR [esp+0xa8],0x80000001
  abe442:	01 00 00 80
  abe446:	8b 84 24 b8 00 00 00 	mov    eax,DWORD PTR [esp+0xb8]
  abe44d:	83 d8 ff             	sbb    eax,0xffffffff
  abe450:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  abe454:	db 94 24 c0 00 00 00 	fist   DWORD PTR [esp+0xc0]
  abe45b:	db 84 24 c0 00 00 00 	fild   DWORD PTR [esp+0xc0]
  abe462:	de e1                	fsubrp st(1),st
  abe464:	d9 9c 24 d8 00 00 00 	fstp   DWORD PTR [esp+0xd8]
  abe46b:	81 bc 24 d8 00 00 00 	cmp    DWORD PTR [esp+0xd8],0x80000001
  abe472:	01 00 00 80
  abe476:	8b 84 24 c0 00 00 00 	mov    eax,DWORD PTR [esp+0xc0]
  abe47d:	83 d8 ff             	sbb    eax,0xffffffff
  abe480:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  abe484:	6a 01                	push   0x1
  abe486:	56                   	push   esi
  abe487:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  abe48b:	52                   	push   edx
  abe48c:	57                   	push   edi
  abe48d:	53                   	push   ebx
  abe48e:	8d 44 24 64          	lea    eax,[esp+0x64]
  abe492:	50                   	push   eax
  abe493:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  abe497:	51                   	push   ecx
  abe498:	e8 f3 34 01 00       	call   0xad1990
  abe49d:	83 c4 1c             	add    esp,0x1c
  abe4a0:	3b fe                	cmp    edi,esi
  abe4a2:	c6 44 24 20 01       	mov    BYTE PTR [esp+0x20],0x1
  abe4a7:	0f 8c eb 01 00 00    	jl     0xabe698
  abe4ad:	f3 0f 10 4c 24 58    	movss  xmm1,DWORD PTR [esp+0x58]
  abe4b3:	f3 0f 58 4c 24 50    	addss  xmm1,DWORD PTR [esp+0x50]
  abe4b9:	f3 0f 10 05 b4 b5 f9 	movss  xmm0,DWORD PTR ds:0xf9b5b4
  abe4c0:	00
  abe4c1:	f3 0f 59 c8          	mulss  xmm1,xmm0
  abe4c5:	f3 0f 11 8c 24 ac 00 	movss  DWORD PTR [esp+0xac],xmm1
  abe4cc:	00 00
  abe4ce:	f3 0f 10 4c 24 5c    	movss  xmm1,DWORD PTR [esp+0x5c]
  abe4d4:	f3 0f 58 4c 24 54    	addss  xmm1,DWORD PTR [esp+0x54]
  abe4da:	8d bb f0 00 00 00    	lea    edi,[ebx+0xf0]
  abe4e0:	f3 0f 59 c8          	mulss  xmm1,xmm0
  abe4e4:	57                   	push   edi
  abe4e5:	f3 0f 11 8c 24 d4 00 	movss  DWORD PTR [esp+0xd4],xmm1
  abe4ec:	00 00
  abe4ee:	ff 15 2c 61 f9 00    	call   DWORD PTR ds:0xf9612c
  abe4f4:	8b 8b 1c 03 00 00    	mov    ecx,DWORD PTR [ebx+0x31c]
  abe4fa:	3b ce                	cmp    ecx,esi
  abe4fc:	74 36                	je     0xabe534
  abe4fe:	d9 84 24 d0 00 00 00 	fld    DWORD PTR [esp+0xd0]
  abe505:	83 ec 08             	sub    esp,0x8
  abe508:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  abe50c:	d9 84 24 b4 00 00 00 	fld    DWORD PTR [esp+0xb4]
  abe513:	d9 1c 24             	fstp   DWORD PTR [esp]
  abe516:	e8 d5 f0 03 00       	call   0xafd5f0
  abe51b:	57                   	push   edi
  abe51c:	88 44 24 13          	mov    BYTE PTR [esp+0x13],al
  abe520:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  abe526:	80 7c 24 0f 00       	cmp    BYTE PTR [esp+0xf],0x0
  abe52b:	74 0e                	je     0xabe53b
  abe52d:	c6 44 24 20 00       	mov    BYTE PTR [esp+0x20],0x0
  abe532:	eb 5a                	jmp    0xabe58e
  abe534:	57                   	push   edi
  abe535:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  abe53b:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  abe53f:	3b 74 24 28          	cmp    esi,DWORD PTR [esp+0x28]
  abe543:	74 47                	je     0xabe58c
  abe545:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  abe54c:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  abe54f:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  abe552:	8d 14 90             	lea    edx,[eax+edx*4]
  abe555:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
  abe559:	eb 0c                	jmp    0xabe567
  abe55b:	eb 03                	jmp    0xabe560
  abe55d:	8d 49 00             	lea    ecx,[ecx+0x0]
  abe560:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  abe567:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  abe56b:	8b 38                	mov    edi,DWORD PTR [eax]
  abe56d:	56                   	push   esi
  abe56e:	8d 94 24 f4 00 00 00 	lea    edx,[esp+0xf4]
  abe575:	52                   	push   edx
  abe576:	e8 05 be fa ff       	call   0xa6a380
  abe57b:	39 38                	cmp    DWORD PTR [eax],edi
  abe57d:	0f 85 0b 01 00 00    	jne    0xabe68e
  abe583:	83 c6 04             	add    esi,0x4
  abe586:	3b 74 24 28          	cmp    esi,DWORD PTR [esp+0x28]
  abe58a:	75 d4                	jne    0xabe560
  abe58c:	33 f6                	xor    esi,esi
  abe58e:	8b 15 a8 a2 1e 01    	mov    edx,DWORD PTR ds:0x11ea2a8
  abe594:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  abe598:	52                   	push   edx
  abe599:	e8 c2 5c e7 ff       	call   0x934260
  abe59e:	3b c6                	cmp    eax,esi
  abe5a0:	74 0d                	je     0xabe5af
  abe5a2:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  abe5a6:	56                   	push   esi
  abe5a7:	51                   	push   ecx
  abe5a8:	8b c8                	mov    ecx,eax
  abe5aa:	e8 61 12 ea ff       	call   0x95f810
  abe5af:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  abe5b3:	3b c6                	cmp    eax,esi
  abe5b5:	74 09                	je     0xabe5c0
  abe5b7:	50                   	push   eax
  abe5b8:	e8 23 5f a2 ff       	call   0x4e44e0
  abe5bd:	83 c4 04             	add    esp,0x4
  abe5c0:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  abe5c4:	3b c6                	cmp    eax,esi
  abe5c6:	74 09                	je     0xabe5d1
  abe5c8:	50                   	push   eax
  abe5c9:	e8 12 5f a2 ff       	call   0x4e44e0
  abe5ce:	83 c4 04             	add    esp,0x4
  abe5d1:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  abe5d5:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
  abe5d8:	3b fe                	cmp    edi,esi
  abe5da:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  abe5de:	75 17                	jne    0xabe5f7
  abe5e0:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  abe5e4:	83 c0 04             	add    eax,0x4
  abe5e7:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  abe5eb:	8b 00                	mov    eax,DWORD PTR [eax]
  abe5ed:	3b c6                	cmp    eax,esi
  abe5ef:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  abe5f3:	74 eb                	je     0xabe5e0
  abe5f5:	8b f8                	mov    edi,eax
  abe5f7:	3b bc 24 e0 00 00 00 	cmp    edi,DWORD PTR [esp+0xe0]
  abe5fe:	0f 85 5d fd ff ff    	jne    0xabe361
  abe604:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
  abe60b:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
  abe612:	52                   	push   edx
  abe613:	50                   	push   eax
  abe614:	8d 8c 24 8c 00 00 00 	lea    ecx,[esp+0x8c]
  abe61b:	e8 c0 05 c8 ff       	call   0x73ebe0
  abe620:	bf 01 00 00 00       	mov    edi,0x1
  abe625:	39 bc 24 8c 00 00 00 	cmp    DWORD PTR [esp+0x8c],edi
  abe62c:	89 b4 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],esi
  abe633:	76 10                	jbe    0xabe645
  abe635:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
  abe63c:	50                   	push   eax
  abe63d:	e8 9e 5e a2 ff       	call   0x4e44e0
  abe642:	83 c4 04             	add    esp,0x4
  abe645:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  abe649:	8b 54 24 64          	mov    edx,DWORD PTR [esp+0x64]
  abe64d:	51                   	push   ecx
  abe64e:	52                   	push   edx
  abe64f:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  abe653:	e8 88 05 c8 ff       	call   0x73ebe0
  abe658:	39 7c 24 68          	cmp    DWORD PTR [esp+0x68],edi
  abe65c:	89 74 24 6c          	mov    DWORD PTR [esp+0x6c],esi
  abe660:	76 0d                	jbe    0xabe66f
  abe662:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  abe666:	50                   	push   eax
  abe667:	e8 74 5e a2 ff       	call   0x4e44e0
  abe66c:	83 c4 04             	add    esp,0x4
  abe66f:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  abe673:	2b c7                	sub    eax,edi
  abe675:	3b 83 7c 01 00 00    	cmp    eax,DWORD PTR [ebx+0x17c]
  abe67b:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  abe67f:	0f 8d 2b fa ff ff    	jge    0xabe0b0
  abe685:	5f                   	pop    edi
  abe686:	5e                   	pop    esi
  abe687:	5b                   	pop    ebx
  abe688:	8b e5                	mov    esp,ebp
  abe68a:	5d                   	pop    ebp
  abe68b:	c2 04 00             	ret    0x4
  abe68e:	c6 44 24 20 00       	mov    BYTE PTR [esp+0x20],0x0
  abe693:	e9 f4 fe ff ff       	jmp    0xabe58c
  abe698:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  abe69c:	50                   	push   eax
  abe69d:	e8 0e 17 04 00       	call   0xaffdb0
  abe6a2:	83 c4 04             	add    esp,0x4
  abe6a5:	3b c6                	cmp    eax,esi
  abe6a7:	0f 84 e1 fe ff ff    	je     0xabe58e
  abe6ad:	8b 88 d0 00 00 00    	mov    ecx,DWORD PTR [eax+0xd0]
  abe6b3:	c1 e9 02             	shr    ecx,0x2
  abe6b6:	f6 c1 01             	test   cl,0x1
  abe6b9:	0f 84 cf fe ff ff    	je     0xabe58e
  abe6bf:	c6 44 24 20 00       	mov    BYTE PTR [esp+0x20],0x0
  abe6c4:	e9 c5 fe ff ff       	jmp    0xabe58e
