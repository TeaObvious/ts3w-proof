# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007bf130 <.text+0x3be130>:
  7bf130:	83 ec 60             	sub    esp,0x60
  7bf133:	55                   	push   ebp
  7bf134:	8b e9                	mov    ebp,ecx
  7bf136:	80 bd d4 00 00 00 00 	cmp    BYTE PTR [ebp+0xd4],0x0
  7bf13d:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7bf143:	0f 94 c0             	sete   al
  7bf146:	57                   	push   edi
  7bf147:	33 ff                	xor    edi,edi
  7bf149:	3b cf                	cmp    ecx,edi
  7bf14b:	a2 14 3e 16 01       	mov    ds:0x1163e14,al
  7bf150:	74 10                	je     0x7bf162
  7bf152:	8b 11                	mov    edx,DWORD PTR [ecx]
  7bf154:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  7bf157:	6a 10                	push   0x10
  7bf159:	68 90 03 00 00       	push   0x390
  7bf15e:	ff d0                	call   eax
  7bf160:	eb 11                	jmp    0x7bf173
  7bf162:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7bf168:	57                   	push   edi
  7bf169:	68 90 03 00 00       	push   0x390
  7bf16e:	e8 ad 7d d2 ff       	call   0x4e6f20
  7bf173:	3b c7                	cmp    eax,edi
  7bf175:	74 16                	je     0x7bf18d
  7bf177:	81 05 28 96 1d 01 90 	add    DWORD PTR ds:0x11d9628,0x390
  7bf17e:	03 00 00 
  7bf181:	6a 01                	push   0x1
  7bf183:	57                   	push   edi
  7bf184:	8b c8                	mov    ecx,eax
  7bf186:	e8 c5 48 fe ff       	call   0x7a3a50
  7bf18b:	eb 02                	jmp    0x7bf18f
  7bf18d:	33 c0                	xor    eax,eax
  7bf18f:	80 bd d4 00 00 00 00 	cmp    BYTE PTR [ebp+0xd4],0x0
  7bf196:	89 45 50             	mov    DWORD PTR [ebp+0x50],eax
  7bf199:	75 1a                	jne    0x7bf1b5
  7bf19b:	8b 8d ac 00 00 00    	mov    ecx,DWORD PTR [ebp+0xac]
  7bf1a1:	68 ec 79 01 01       	push   0x10179ec
  7bf1a6:	51                   	push   ecx
  7bf1a7:	e8 74 ec ff ff       	call   0x7bde20
  7bf1ac:	83 c4 08             	add    esp,0x8
  7bf1af:	89 85 d0 00 00 00    	mov    DWORD PTR [ebp+0xd0],eax
  7bf1b5:	8b 95 ec 00 00 00    	mov    edx,DWORD PTR [ebp+0xec]
  7bf1bb:	a1 78 3e 16 01       	mov    eax,ds:0x1163e78
  7bf1c0:	53                   	push   ebx
  7bf1c1:	56                   	push   esi
  7bf1c2:	8d 75 7c             	lea    esi,[ebp+0x7c]
  7bf1c5:	89 15 18 3e 16 01    	mov    DWORD PTR ds:0x1163e18,edx
  7bf1cb:	a3 7c 3e 16 01       	mov    ds:0x1163e7c,eax
  7bf1d0:	89 35 e4 94 1d 01    	mov    DWORD PTR ds:0x11d94e4,esi
  7bf1d6:	8b 4d 5c             	mov    ecx,DWORD PTR [ebp+0x5c]
  7bf1d9:	2b 4d 58             	sub    ecx,DWORD PTR [ebp+0x58]
  7bf1dc:	33 db                	xor    ebx,ebx
  7bf1de:	c1 f9 02             	sar    ecx,0x2
  7bf1e1:	74 49                	je     0x7bf22c
  7bf1e3:	3b 05 80 3e 16 01    	cmp    eax,DWORD PTR ds:0x1163e80
  7bf1e9:	8b 55 58             	mov    edx,DWORD PTR [ebp+0x58]
  7bf1ec:	8b 14 9a             	mov    edx,DWORD PTR [edx+ebx*4]
  7bf1ef:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  7bf1f3:	73 12                	jae    0x7bf207
  7bf1f5:	8b c8                	mov    ecx,eax
  7bf1f7:	83 c0 04             	add    eax,0x4
  7bf1fa:	3b cf                	cmp    ecx,edi
  7bf1fc:	a3 7c 3e 16 01       	mov    ds:0x1163e7c,eax
  7bf201:	74 19                	je     0x7bf21c
  7bf203:	89 11                	mov    DWORD PTR [ecx],edx
  7bf205:	eb 10                	jmp    0x7bf217
  7bf207:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  7bf20b:	51                   	push   ecx
  7bf20c:	50                   	push   eax
  7bf20d:	b9 78 3e 16 01       	mov    ecx,0x1163e78
  7bf212:	e8 09 32 1c 00       	call   0x982420
  7bf217:	a1 7c 3e 16 01       	mov    eax,ds:0x1163e7c
  7bf21c:	8b 55 5c             	mov    edx,DWORD PTR [ebp+0x5c]
  7bf21f:	2b 55 58             	sub    edx,DWORD PTR [ebp+0x58]
  7bf222:	83 c3 01             	add    ebx,0x1
  7bf225:	c1 fa 02             	sar    edx,0x2
  7bf228:	3b da                	cmp    ebx,edx
  7bf22a:	72 b7                	jb     0x7bf1e3
  7bf22c:	8a 85 0c 01 00 00    	mov    al,BYTE PTR [ebp+0x10c]
  7bf232:	a2 f4 94 1d 01       	mov    ds:0x11d94f4,al
  7bf237:	8a 8d 0d 01 00 00    	mov    cl,BYTE PTR [ebp+0x10d]
  7bf23d:	88 0d f5 94 1d 01    	mov    BYTE PTR ds:0x11d94f5,cl
  7bf243:	f3 0f 10 85 10 01 00 	movss  xmm0,DWORD PTR [ebp+0x110]
  7bf24a:	00 
  7bf24b:	f3 0f 11 05 f8 94 1d 	movss  DWORD PTR ds:0x11d94f8,xmm0
  7bf252:	01 
  7bf253:	8b 95 14 01 00 00    	mov    edx,DWORD PTR [ebp+0x114]
  7bf259:	89 15 1c 3e 16 01    	mov    DWORD PTR ds:0x1163e1c,edx
  7bf25f:	f3 0f 10 85 18 01 00 	movss  xmm0,DWORD PTR [ebp+0x118]
  7bf266:	00 
  7bf267:	f3 0f 11 05 20 3e 16 	movss  DWORD PTR ds:0x1163e20,xmm0
  7bf26e:	01 
  7bf26f:	f3 0f 10 85 1c 01 00 	movss  xmm0,DWORD PTR [ebp+0x11c]
  7bf276:	00 
  7bf277:	f3 0f 11 05 24 3e 16 	movss  DWORD PTR ds:0x1163e24,xmm0
  7bf27e:	01 
  7bf27f:	8b 85 20 01 00 00    	mov    eax,DWORD PTR [ebp+0x120]
  7bf285:	a3 fc 94 1d 01       	mov    ds:0x11d94fc,eax
  7bf28a:	8b 8d 24 01 00 00    	mov    ecx,DWORD PTR [ebp+0x124]
  7bf290:	89 0d 08 95 1d 01    	mov    DWORD PTR ds:0x11d9508,ecx
  7bf296:	89 3d 00 95 1d 01    	mov    DWORD PTR ds:0x11d9500,edi
  7bf29c:	89 3d 04 95 1d 01    	mov    DWORD PTR ds:0x11d9504,edi
  7bf2a2:	8b 55 3c             	mov    edx,DWORD PTR [ebp+0x3c]
  7bf2a5:	8d 5d 20             	lea    ebx,[ebp+0x20]
  7bf2a8:	52                   	push   edx
  7bf2a9:	8b cb                	mov    ecx,ebx
  7bf2ab:	e8 80 18 00 00       	call   0x7c0b30
  7bf2b0:	d9 e8                	fld1
  7bf2b2:	83 ec 08             	sub    esp,0x8
  7bf2b5:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7bf2b9:	8b cb                	mov    ecx,ebx
  7bf2bb:	d9 ee                	fldz
  7bf2bd:	d9 1c 24             	fstp   DWORD PTR [esp]
  7bf2c0:	e8 4b 18 00 00       	call   0x7c0b10
  7bf2c5:	d9 9f 40 85 1d 01    	fstp   DWORD PTR [edi+0x11d8540]
  7bf2cb:	83 c7 04             	add    edi,0x4
  7bf2ce:	81 ff a0 0f 00 00    	cmp    edi,0xfa0
  7bf2d4:	72 da                	jb     0x7bf2b0
  7bf2d6:	8b 45 3c             	mov    eax,DWORD PTR [ebp+0x3c]
  7bf2d9:	50                   	push   eax
  7bf2da:	8b cb                	mov    ecx,ebx
  7bf2dc:	e8 4f 18 00 00       	call   0x7c0b30
  7bf2e1:	f3 0f 10 45 40       	movss  xmm0,DWORD PTR [ebp+0x40]
  7bf2e6:	f3 0f 10 4d 44       	movss  xmm1,DWORD PTR [ebp+0x44]
  7bf2eb:	0f 28 d0             	movaps xmm2,xmm0
  7bf2ee:	83 ec 08             	sub    esp,0x8
  7bf2f1:	f3 0f 58 d1          	addss  xmm2,xmm1
  7bf2f5:	f3 0f 11 54 24 04    	movss  DWORD PTR [esp+0x4],xmm2
  7bf2fb:	f3 0f 5c c1          	subss  xmm0,xmm1
  7bf2ff:	8b cb                	mov    ecx,ebx
  7bf301:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  7bf306:	e8 05 18 00 00       	call   0x7c0b10
  7bf30b:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  7bf30f:	8b 4d 48             	mov    ecx,DWORD PTR [ebp+0x48]
  7bf312:	51                   	push   ecx
  7bf313:	ff 15 88 64 f9 00    	call   DWORD PTR ds:0xf96488
  7bf319:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  7bf31d:	f3 0f 10 45 40       	movss  xmm0,DWORD PTR [ebp+0x40]
  7bf322:	d9 5d 4c             	fstp   DWORD PTR [ebp+0x4c]
  7bf325:	83 c4 04             	add    esp,0x4
  7bf328:	0f 2f 05 cc 4c 0f 01 	comiss xmm0,DWORD PTR ds:0x10f4ccc
  7bf32f:	76 62                	jbe    0x7bf393
  7bf331:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7bf334:	2b 0e                	sub    ecx,DWORD PTR [esi]
  7bf336:	b8 e9 a2 8b 2e       	mov    eax,0x2e8ba2e9
  7bf33b:	f7 e9                	imul   ecx
  7bf33d:	c1 fa 04             	sar    edx,0x4
  7bf340:	8b c2                	mov    eax,edx
  7bf342:	c1 e8 1f             	shr    eax,0x1f
  7bf345:	33 ff                	xor    edi,edi
  7bf347:	03 c2                	add    eax,edx
  7bf349:	74 48                	je     0x7bf393
  7bf34b:	33 db                	xor    ebx,ebx
  7bf34d:	8d 49 00             	lea    ecx,[ecx+0x0]
  7bf350:	8b 06                	mov    eax,DWORD PTR [esi]
  7bf352:	f3 0f 10 44 18 30    	movss  xmm0,DWORD PTR [eax+ebx*1+0x30]
  7bf358:	f3 0f 59 45 40       	mulss  xmm0,DWORD PTR [ebp+0x40]
  7bf35d:	03 c3                	add    eax,ebx
  7bf35f:	f3 0f 11 40 3c       	movss  DWORD PTR [eax+0x3c],xmm0
  7bf364:	f3 0f 10 40 34       	movss  xmm0,DWORD PTR [eax+0x34]
  7bf369:	f3 0f 59 45 40       	mulss  xmm0,DWORD PTR [ebp+0x40]
  7bf36e:	f3 0f 11 40 40       	movss  DWORD PTR [eax+0x40],xmm0
  7bf373:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7bf376:	2b 0e                	sub    ecx,DWORD PTR [esi]
  7bf378:	b8 e9 a2 8b 2e       	mov    eax,0x2e8ba2e9
  7bf37d:	f7 e9                	imul   ecx
  7bf37f:	c1 fa 04             	sar    edx,0x4
  7bf382:	8b ca                	mov    ecx,edx
  7bf384:	c1 e9 1f             	shr    ecx,0x1f
  7bf387:	83 c7 01             	add    edi,0x1
  7bf38a:	03 ca                	add    ecx,edx
  7bf38c:	83 c3 58             	add    ebx,0x58
  7bf38f:	3b f9                	cmp    edi,ecx
  7bf391:	72 bd                	jb     0x7bf350
  7bf393:	8b 55 3c             	mov    edx,DWORD PTR [ebp+0x3c]
  7bf396:	52                   	push   edx
  7bf397:	8d 4d 20             	lea    ecx,[ebp+0x20]
  7bf39a:	e8 91 17 00 00       	call   0x7c0b30
  7bf39f:	0f b7 45 68          	movzx  eax,WORD PTR [ebp+0x68]
  7bf3a3:	8b 4d 54             	mov    ecx,DWORD PTR [ebp+0x54]
  7bf3a6:	50                   	push   eax
  7bf3a7:	e8 c4 17 ff ff       	call   0x7b0b70
  7bf3ac:	8b 4d 54             	mov    ecx,DWORD PTR [ebp+0x54]
  7bf3af:	c7 41 28 00 00 00 00 	mov    DWORD PTR [ecx+0x28],0x0
  7bf3b6:	8b 55 3c             	mov    edx,DWORD PTR [ebp+0x3c]
  7bf3b9:	89 15 ec 94 1d 01    	mov    DWORD PTR ds:0x11d94ec,edx
  7bf3bf:	f3 0f 10 85 38 01 00 	movss  xmm0,DWORD PTR [ebp+0x138]
  7bf3c6:	00 
  7bf3c7:	f3 0f 59 05 0c 6f 01 	mulss  xmm0,DWORD PTR ds:0x1016f0c
  7bf3ce:	01 
  7bf3cf:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  7bf3d5:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  7bf3d9:	0f 57 c9             	xorps  xmm1,xmm1
  7bf3dc:	d9 c0                	fld    st(0)
  7bf3de:	f3 0f 10 05 f0 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f0
  7bf3e5:	00 
  7bf3e6:	d9 ff                	fcos
  7bf3e8:	8b 45 3c             	mov    eax,DWORD PTR [ebp+0x3c]
  7bf3eb:	b9 09 00 00 00       	mov    ecx,0x9
  7bf3f0:	8d 74 24 28          	lea    esi,[esp+0x28]
  7bf3f4:	8d 7c 24 4c          	lea    edi,[esp+0x4c]
  7bf3f8:	f3 0f 11 4c 24 40    	movss  DWORD PTR [esp+0x40],xmm1
  7bf3fe:	f3 0f 11 4c 24 44    	movss  DWORD PTR [esp+0x44],xmm1
  7bf404:	6a 00                	push   0x0
  7bf406:	8d 55 6c             	lea    edx,[ebp+0x6c]
  7bf409:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  7bf40f:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  7bf415:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  7bf419:	f3 0f 10 5c 24 1c    	movss  xmm3,DWORD PTR [esp+0x1c]
  7bf41f:	d9 fe                	fsin
  7bf421:	0f 28 eb             	movaps xmm5,xmm3
  7bf424:	f3 0f 59 d9          	mulss  xmm3,xmm1
  7bf428:	0f 28 f5             	movaps xmm6,xmm5
  7bf42b:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  7bf42f:	d9 05 18 b2 fa 00    	fld    DWORD PTR ds:0xfab218
  7bf435:	f3 0f 10 64 24 18    	movss  xmm4,DWORD PTR [esp+0x18]
  7bf43b:	0f 28 d4             	movaps xmm2,xmm4
  7bf43e:	f3 0f 59 d1          	mulss  xmm2,xmm1
  7bf442:	f3 0f 58 f2          	addss  xmm6,xmm2
  7bf446:	f3 0f 5c c4          	subss  xmm0,xmm4
  7bf44a:	f3 0f 11 74 24 2c    	movss  DWORD PTR [esp+0x2c],xmm6
  7bf450:	0f 28 f3             	movaps xmm6,xmm3
  7bf453:	f3 0f 58 f4          	addss  xmm6,xmm4
  7bf457:	0f 28 e3             	movaps xmm4,xmm3
  7bf45a:	f3 0f 58 e2          	addss  xmm4,xmm2
  7bf45e:	0f 28 d3             	movaps xmm2,xmm3
  7bf461:	f3 0f 58 d0          	addss  xmm2,xmm0
  7bf465:	f3 0f 11 54 24 38    	movss  DWORD PTR [esp+0x38],xmm2
  7bf46b:	f3 0f 59 c1          	mulss  xmm0,xmm1
  7bf46f:	0f 28 d0             	movaps xmm2,xmm0
  7bf472:	f3 0f 58 c3          	addss  xmm0,xmm3
  7bf476:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  7bf47c:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  7bf483:	00 
  7bf484:	f3 0f 58 d5          	addss  xmm2,xmm5
  7bf488:	f3 0f 11 74 24 30    	movss  DWORD PTR [esp+0x30],xmm6
  7bf48e:	f3 0f 11 64 24 34    	movss  DWORD PTR [esp+0x34],xmm4
  7bf494:	f3 0f 11 54 24 3c    	movss  DWORD PTR [esp+0x3c],xmm2
  7bf49a:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  7bf4a0:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7bf4a2:	51                   	push   ecx
  7bf4a3:	8b 4d 48             	mov    ecx,DWORD PTR [ebp+0x48]
  7bf4a6:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  7bf4ac:	d9 1c 24             	fstp   DWORD PTR [esp]
  7bf4af:	51                   	push   ecx
  7bf4b0:	d9 e8                	fld1
  7bf4b2:	8b 4d 54             	mov    ecx,DWORD PTR [ebp+0x54]
  7bf4b5:	50                   	push   eax
  7bf4b6:	83 ec 08             	sub    esp,0x8
  7bf4b9:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  7bf4bd:	d9 1c 24             	fstp   DWORD PTR [esp]
  7bf4c0:	52                   	push   edx
  7bf4c1:	d9 ee                	fldz
  7bf4c3:	51                   	push   ecx
  7bf4c4:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  7bf4c8:	52                   	push   edx
  7bf4c9:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  7bf4cd:	51                   	push   ecx
  7bf4ce:	51                   	push   ecx
  7bf4cf:	d9 1c 24             	fstp   DWORD PTR [esp]
  7bf4d2:	8d 55 04             	lea    edx,[ebp+0x4]
  7bf4d5:	d9 44 24 3c          	fld    DWORD PTR [esp+0x3c]
  7bf4d9:	52                   	push   edx
  7bf4da:	6a 00                	push   0x0
  7bf4dc:	51                   	push   ecx
  7bf4dd:	8b 4d 50             	mov    ecx,DWORD PTR [ebp+0x50]
  7bf4e0:	d9 1c 24             	fstp   DWORD PTR [esp]
  7bf4e3:	50                   	push   eax
  7bf4e4:	e8 47 70 fe ff       	call   0x7a6530
  7bf4e9:	8b cd                	mov    ecx,ebp
  7bf4eb:	e8 b0 f8 ff ff       	call   0x7beda0
  7bf4f0:	80 bd d4 00 00 00 00 	cmp    BYTE PTR [ebp+0xd4],0x0
  7bf4f7:	5e                   	pop    esi
  7bf4f8:	5b                   	pop    ebx
  7bf4f9:	75 0f                	jne    0x7bf50a
  7bf4fb:	d9 44 24 6c          	fld    DWORD PTR [esp+0x6c]
  7bf4ff:	51                   	push   ecx
  7bf500:	8b cd                	mov    ecx,ebp
  7bf502:	d9 1c 24             	fstp   DWORD PTR [esp]
  7bf505:	e8 d6 f4 ff ff       	call   0x7be9e0
  7bf50a:	5f                   	pop    edi
  7bf50b:	5d                   	pop    ebp
  7bf50c:	83 c4 60             	add    esp,0x60
  7bf50f:	c2 04 00             	ret    0x4
