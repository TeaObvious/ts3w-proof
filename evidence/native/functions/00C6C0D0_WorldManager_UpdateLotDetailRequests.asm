# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c6c0d0..00c6c644; WorldManager_UpdateLotDetailRequests
  c6c0d0:	55                   	push   ebp
  c6c0d1:	8b ec                	mov    ebp,esp
  c6c0d3:	83 e4 f0             	and    esp,0xfffffff0
  c6c0d6:	81 ec 84 08 00 00    	sub    esp,0x884
  c6c0dc:	a1 58 de 1e 01       	mov    eax,ds:0x11ede58
  c6c0e1:	53                   	push   ebx
  c6c0e2:	8b d9                	mov    ebx,ecx
  c6c0e4:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  c6c0e7:	0f 28 8b a0 03 00 00 	movaps xmm1,XMMWORD PTR [ebx+0x3a0]
  c6c0ee:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  c6c0f1:	56                   	push   esi
  c6c0f2:	57                   	push   edi
  c6c0f3:	0f 29 83 a0 03 00 00 	movaps XMMWORD PTR [ebx+0x3a0],xmm0
  c6c0fa:	33 ff                	xor    edi,edi
  c6c0fc:	80 bb d9 00 00 00 00 	cmp    BYTE PTR [ebx+0xd9],0x0
  c6c103:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  c6c107:	0f 85 2f 05 00 00    	jne    0xc6c63c
  c6c10d:	80 bb d8 00 00 00 00 	cmp    BYTE PTR [ebx+0xd8],0x0
  c6c114:	74 10                	je     0xc6c126
  c6c116:	8b cb                	mov    ecx,ebx
  c6c118:	e8 a3 dd ff ff       	call   0xc69ec0
  c6c11d:	5f                   	pop    edi
  c6c11e:	5e                   	pop    esi
  c6c11f:	5b                   	pop    ebx
  c6c120:	8b e5                	mov    esp,ebp
  c6c122:	5d                   	pop    ebp
  c6c123:	c2 10 00             	ret    0x10
  c6c126:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  c6c12a:	8b 15 2c 53 18 01    	mov    edx,DWORD PTR ds:0x118532c
  c6c130:	f3 0f 10 83 dc 00 00 00 	movss  xmm0,DWORD PTR [ebx+0xdc]
  c6c138:	f3 0f 59 c0          	mulss  xmm0,xmm0
  c6c13c:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
  c6c140:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  c6c146:	0f 84 15 01 00 00    	je     0xc6c261
  c6c14c:	0f 28 83 a0 03 00 00 	movaps xmm0,XMMWORD PTR [ebx+0x3a0]
  c6c153:	0f 5c c8             	subps  xmm1,xmm0
  c6c156:	0f 59 c9             	mulps  xmm1,xmm1
  c6c159:	0f 28 c1             	movaps xmm0,xmm1
  c6c15c:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  c6c160:	0f 28 d1             	movaps xmm2,xmm1
  c6c163:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  c6c167:	0f 58 c2             	addps  xmm0,xmm2
  c6c16a:	f3 0f 10 55 08       	movss  xmm2,DWORD PTR [ebp+0x8]
  c6c16f:	0f 58 c1             	addps  xmm0,xmm1
  c6c172:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  c6c176:	0f 51 c0             	sqrtps xmm0,xmm0
  c6c179:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  c6c17e:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  c6c186:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  c6c18a:	f3 0f 10 ca          	movss  xmm1,xmm2
  c6c18e:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  c6c192:	0f 59 c1             	mulps  xmm0,xmm1
  c6c195:	0f 5f c1             	maxps  xmm0,xmm1
  c6c198:	f3 0f 10 0d 44 97 07 01 	movss  xmm1,DWORD PTR ds:0x1079744
  c6c1a0:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  c6c1a4:	0f c2 c1 02          	cmpleps xmm0,xmm1
  c6c1a8:	0f 50 c0             	movmskps eax,xmm0
  c6c1ab:	83 f8 0f             	cmp    eax,0xf
  c6c1ae:	74 0c                	je     0xc6c1bc
  c6c1b0:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [esp+0x40]
  c6c1b6:	f3 0f 5e c2          	divss  xmm0,xmm2
  c6c1ba:	eb 03                	jmp    0xc6c1bf
  c6c1bc:	0f 57 c0             	xorps  xmm0,xmm0
  c6c1bf:	8b 83 10 03 00 00    	mov    eax,DWORD PTR [ebx+0x310]
  c6c1c5:	8d b3 10 03 00 00    	lea    esi,[ebx+0x310]
  c6c1cb:	33 c9                	xor    ecx,ecx
  c6c1cd:	3b c6                	cmp    eax,esi
  c6c1cf:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  c6c1d5:	74 27                	je     0xc6c1fe
  c6c1d7:	8b 00                	mov    eax,DWORD PTR [eax]
  c6c1d9:	83 c1 01             	add    ecx,0x1
  c6c1dc:	3b c6                	cmp    eax,esi
  c6c1de:	75 f7                	jne    0xc6c1d7
  c6c1e0:	83 f9 0a             	cmp    ecx,0xa
  c6c1e3:	75 19                	jne    0xc6c1fe
  c6c1e5:	8b 06                	mov    eax,DWORD PTR [esi]
  c6c1e7:	8b 10                	mov    edx,DWORD PTR [eax]
  c6c1e9:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  c6c1ec:	89 11                	mov    DWORD PTR [ecx],edx
  c6c1ee:	8b 08                	mov    ecx,DWORD PTR [eax]
  c6c1f0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c6c1f3:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  c6c1f6:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c6c1f9:	89 08                	mov    DWORD PTR [eax],ecx
  c6c1fb:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  c6c1fe:	8d 54 24 24          	lea    edx,[esp+0x24]
  c6c202:	52                   	push   edx
  c6c203:	8b ce                	mov    ecx,esi
  c6c205:	e8 86 98 ff ff       	call   0xc65a90
  c6c20a:	8b 06                	mov    eax,DWORD PTR [esi]
  c6c20c:	0f 57 c0             	xorps  xmm0,xmm0
  c6c20f:	33 c9                	xor    ecx,ecx
  c6c211:	3b c6                	cmp    eax,esi
  c6c213:	74 3f                	je     0xc6c254
  c6c215:	f3 0f 10 48 08       	movss  xmm1,DWORD PTR [eax+0x8]
  c6c21a:	8b 00                	mov    eax,DWORD PTR [eax]
  c6c21c:	83 c1 01             	add    ecx,0x1
  c6c21f:	3b c6                	cmp    eax,esi
  c6c221:	f3 0f 58 c8          	addss  xmm1,xmm0
  c6c225:	0f 28 c1             	movaps xmm0,xmm1
  c6c228:	75 eb                	jne    0xc6c215
  c6c22a:	3b cf                	cmp    ecx,edi
  c6c22c:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  c6c232:	76 20                	jbe    0xc6c254
  c6c234:	85 c9                	test   ecx,ecx
  c6c236:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  c6c23a:	db 44 24 2c          	fild   DWORD PTR [esp+0x2c]
  c6c23e:	7d 06                	jge    0xc6c246
  c6c240:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  c6c246:	d8 7c 24 28          	fdivr  DWORD PTR [esp+0x28]
  c6c24a:	d9 5c 24 28          	fstp   DWORD PTR [esp+0x28]
  c6c24e:	f3 0f 10 44 24 28    	movss  xmm0,DWORD PTR [esp+0x28]
  c6c254:	0f 2f 83 ec 00 00 00 	comiss xmm0,DWORD PTR [ebx+0xec]
  c6c25b:	0f 87 db 03 00 00    	ja     0xc6c63c
  c6c261:	80 bb cc 01 00 00 00 	cmp    BYTE PTR [ebx+0x1cc],0x0
  c6c268:	74 07                	je     0xc6c271
  c6c26a:	8b cb                	mov    ecx,ebx
  c6c26c:	e8 4f c2 ff ff       	call   0xc684c0
  c6c271:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
  c6c278:	8b c8                	mov    ecx,eax
  c6c27a:	89 8c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ecx
  c6c281:	8b 8b 08 02 00 00    	mov    ecx,DWORD PTR [ebx+0x208]
  c6c287:	2b 8b 04 02 00 00    	sub    ecx,DWORD PTR [ebx+0x204]
  c6c28d:	8b d0                	mov    edx,eax
  c6c28f:	c1 f9 02             	sar    ecx,0x2
  c6c292:	89 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],eax
  c6c299:	8d 84 24 90 08 00 00 	lea    eax,[esp+0x890]
  c6c2a0:	51                   	push   ecx
  c6c2a1:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  c6c2a8:	89 94 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],edx
  c6c2af:	89 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],eax
  c6c2b6:	c7 84 24 8c 00 00 00 14 aa 07 01 	mov    DWORD PTR [esp+0x8c],0x107aa14
  c6c2c1:	e8 fa a2 ff ff       	call   0xc665c0
  c6c2c6:	8b 8b 74 01 00 00    	mov    ecx,DWORD PTR [ebx+0x174]
  c6c2cc:	8b 83 70 01 00 00    	mov    eax,DWORD PTR [ebx+0x170]
  c6c2d2:	57                   	push   edi
  c6c2d3:	51                   	push   ecx
  c6c2d4:	50                   	push   eax
  c6c2d5:	8b cb                	mov    ecx,ebx
  c6c2d7:	89 7c 24 48          	mov    DWORD PTR [esp+0x48],edi
  c6c2db:	e8 60 44 ff ff       	call   0xc60740
  c6c2e0:	8b f0                	mov    esi,eax
  c6c2e2:	3b f7                	cmp    esi,edi
  c6c2e4:	74 3f                	je     0xc6c325
  c6c2e6:	8b 16                	mov    edx,DWORD PTR [esi]
  c6c2e8:	8b 42 40             	mov    eax,DWORD PTR [edx+0x40]
  c6c2eb:	8b ce                	mov    ecx,esi
  c6c2ed:	ff d0                	call   eax
  c6c2ef:	83 f8 01             	cmp    eax,0x1
  c6c2f2:	75 31                	jne    0xc6c325
  c6c2f4:	8b 83 54 01 00 00    	mov    eax,DWORD PTR [ebx+0x154]
  c6c2fa:	3d c9 00 00 00       	cmp    eax,0xc9
  c6c2ff:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
  c6c303:	74 24                	je     0xc6c329
  c6c305:	3d ca 00 00 00       	cmp    eax,0xca
  c6c30a:	74 1d                	je     0xc6c329
  c6c30c:	3d cc 00 00 00       	cmp    eax,0xcc
  c6c311:	74 16                	je     0xc6c329
  c6c313:	80 bb da 00 00 00 00 	cmp    BYTE PTR [ebx+0xda],0x0
  c6c31a:	75 0d                	jne    0xc6c329
  c6c31c:	80 be bc 04 00 00 00 	cmp    BYTE PTR [esi+0x4bc],0x0
  c6c323:	75 04                	jne    0xc6c329
  c6c325:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  c6c329:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  c6c32d:	75 09                	jne    0xc6c338
  c6c32f:	80 bb da 00 00 00 00 	cmp    BYTE PTR [ebx+0xda],0x0
  c6c336:	74 40                	je     0xc6c378
  c6c338:	39 7c 24 1c          	cmp    DWORD PTR [esp+0x1c],edi
  c6c33c:	74 34                	je     0xc6c372
  c6c33e:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  c6c341:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  c6c344:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  c6c348:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  c6c34d:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  c6c351:	83 ec 08             	sub    esp,0x8
  c6c354:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c6c358:	0f 29 44 24 68       	movaps XMMWORD PTR [esp+0x68],xmm0
  c6c35d:	d9 44 24 68          	fld    DWORD PTR [esp+0x68]
  c6c361:	d9 1c 24             	fstp   DWORD PTR [esp]
  c6c364:	e8 57 1d 01 00       	call   0xc7e0c0
  c6c369:	3b c7                	cmp    eax,edi
  c6c36b:	74 05                	je     0xc6c372
  c6c36d:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
  c6c370:	eb 02                	jmp    0xc6c374
  c6c372:	33 c0                	xor    eax,eax
  c6c374:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  c6c378:	8b 83 04 02 00 00    	mov    eax,DWORD PTR [ebx+0x204]
  c6c37e:	8b 8b 08 02 00 00    	mov    ecx,DWORD PTR [ebx+0x208]
  c6c384:	3b c1                	cmp    eax,ecx
  c6c386:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  c6c38a:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  c6c38e:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  c6c392:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  c6c396:	0f 84 bb 00 00 00    	je     0xc6c457
  c6c39c:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  c6c3a0:	8b 38                	mov    edi,DWORD PTR [eax]
  c6c3a2:	85 ff                	test   edi,edi
  c6c3a4:	0f 84 9c 00 00 00    	je     0xc6c446
  c6c3aa:	80 bf c9 00 00 00 00 	cmp    BYTE PTR [edi+0xc9],0x0
  c6c3b1:	0f 85 8f 00 00 00    	jne    0xc6c446
  c6c3b7:	3b 7c 24 30          	cmp    edi,DWORD PTR [esp+0x30]
  c6c3bb:	75 07                	jne    0xc6c3c4
  c6c3bd:	be 04 00 00 00       	mov    esi,0x4
  c6c3c2:	eb 16                	jmp    0xc6c3da
  c6c3c4:	3b 7c 24 3c          	cmp    edi,DWORD PTR [esp+0x3c]
  c6c3c8:	75 07                	jne    0xc6c3d1
  c6c3ca:	be 03 00 00 00       	mov    esi,0x3
  c6c3cf:	eb 09                	jmp    0xc6c3da
  c6c3d1:	8b cf                	mov    ecx,edi
  c6c3d3:	e8 28 3b e4 ff       	call   0xaaff00
  c6c3d8:	8b f0                	mov    esi,eax
  c6c3da:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  c6c3de:	74 0a                	je     0xc6c3ea
  c6c3e0:	3b 74 24 38          	cmp    esi,DWORD PTR [esp+0x38]
  c6c3e4:	7d 1c                	jge    0xc6c402
  c6c3e6:	33 f6                	xor    esi,esi
  c6c3e8:	eb 18                	jmp    0xc6c402
  c6c3ea:	3b 74 24 38          	cmp    esi,DWORD PTR [esp+0x38]
  c6c3ee:	7c 12                	jl     0xc6c402
  c6c3f0:	b8 01 00 00 00       	mov    eax,0x1
  c6c3f5:	01 44 24 1c          	add    DWORD PTR [esp+0x1c],eax
  c6c3f9:	83 fe 04             	cmp    esi,0x4
  c6c3fc:	75 04                	jne    0xc6c402
  c6c3fe:	01 44 24 28          	add    DWORD PTR [esp+0x28],eax
  c6c402:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  c6c405:	0f 57 c0             	xorps  xmm0,xmm0
  c6c408:	8d 54 24 40          	lea    edx,[esp+0x40]
  c6c40c:	52                   	push   edx
  c6c40d:	57                   	push   edi
  c6c40e:	50                   	push   eax
  c6c40f:	8b cb                	mov    ecx,ebx
  c6c411:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  c6c417:	e8 34 64 ff ff       	call   0xc62850
  c6c41c:	8b 54 24 7c          	mov    edx,DWORD PTR [esp+0x7c]
  c6c420:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  c6c424:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [esp+0x40]
  c6c42a:	d9 5c 0a 0c          	fstp   DWORD PTR [edx+ecx*1+0xc]
  c6c42e:	8d 04 0a             	lea    eax,[edx+ecx*1]
  c6c431:	83 c1 10             	add    ecx,0x10
  c6c434:	89 38                	mov    DWORD PTR [eax],edi
  c6c436:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
  c6c439:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  c6c43e:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  c6c442:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  c6c446:	83 c0 04             	add    eax,0x4
  c6c449:	3b 44 24 2c          	cmp    eax,DWORD PTR [esp+0x2c]
  c6c44d:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  c6c451:	0f 85 49 ff ff ff    	jne    0xc6c3a0
  c6c457:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c6c45b:	39 83 e4 00 00 00    	cmp    DWORD PTR [ebx+0xe4],eax
  c6c461:	8d bb e4 00 00 00    	lea    edi,[ebx+0xe4]
  c6c467:	8b c7                	mov    eax,edi
  c6c469:	72 04                	jb     0xc6c46f
  c6c46b:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  c6c46f:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  c6c473:	3b 08                	cmp    ecx,DWORD PTR [eax]
  c6c475:	72 04                	jb     0xc6c47b
  c6c477:	8d 44 24 28          	lea    eax,[esp+0x28]
  c6c47b:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  c6c47f:	8b 10                	mov    edx,DWORD PTR [eax]
  c6c481:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  c6c485:	74 10                	je     0xc6c497
  c6c487:	39 17                	cmp    DWORD PTR [edi],edx
  c6c489:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  c6c48d:	72 02                	jb     0xc6c491
  c6c48f:	8b c7                	mov    eax,edi
  c6c491:	8b 10                	mov    edx,DWORD PTR [eax]
  c6c493:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  c6c497:	8b b4 24 80 00 00 00 	mov    esi,DWORD PTR [esp+0x80]
  c6c49e:	8b 4c 24 7c          	mov    ecx,DWORD PTR [esp+0x7c]
  c6c4a2:	8b c6                	mov    eax,esi
  c6c4a4:	2b c1                	sub    eax,ecx
  c6c4a6:	c1 f8 04             	sar    eax,0x4
  c6c4a9:	3b d0                	cmp    edx,eax
  c6c4ab:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  c6c4af:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  c6c4b3:	72 04                	jb     0xc6c4b9
  c6c4b5:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  c6c4b9:	8b 12                	mov    edx,DWORD PTR [edx]
  c6c4bb:	3b d0                	cmp    edx,eax
  c6c4bd:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  c6c4c1:	73 02                	jae    0xc6c4c5
  c6c4c3:	8b c2                	mov    eax,edx
  c6c4c5:	c1 e0 04             	shl    eax,0x4
  c6c4c8:	56                   	push   esi
  c6c4c9:	03 c1                	add    eax,ecx
  c6c4cb:	50                   	push   eax
  c6c4cc:	51                   	push   ecx
  c6c4cd:	e8 ae 76 ff ff       	call   0xc63b80
  c6c4d2:	83 c4 0c             	add    esp,0xc
  c6c4d5:	80 3d c0 db 1e 01 00 	cmp    BYTE PTR ds:0x11edbc0,0x0
  c6c4dc:	c7 44 24 24 00 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
  c6c4e4:	c6 44 24 1b 01       	mov    BYTE PTR [esp+0x1b],0x1
  c6c4e9:	c6 44 24 22 00       	mov    BYTE PTR [esp+0x22],0x0
  c6c4ee:	c6 44 24 23 00       	mov    BYTE PTR [esp+0x23],0x0
  c6c4f3:	74 0f                	je     0xc6c504
  c6c4f5:	8b 17                	mov    edx,DWORD PTR [edi]
  c6c4f7:	3b 15 28 53 18 01    	cmp    edx,DWORD PTR ds:0x1185328
  c6c4fd:	c6 44 24 1a 01       	mov    BYTE PTR [esp+0x1a],0x1
  c6c502:	76 05                	jbe    0xc6c509
  c6c504:	c6 44 24 1a 00       	mov    BYTE PTR [esp+0x1a],0x0
  c6c509:	8b 44 24 7c          	mov    eax,DWORD PTR [esp+0x7c]
  c6c50d:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  c6c514:	3b c1                	cmp    eax,ecx
  c6c516:	8b f8                	mov    edi,eax
  c6c518:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  c6c51c:	0f 84 b9 00 00 00    	je     0xc6c5db
  c6c522:	8b 37                	mov    esi,DWORD PTR [edi]
  c6c524:	85 f6                	test   esi,esi
  c6c526:	0f 84 9e 00 00 00    	je     0xc6c5ca
  c6c52c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c6c530:	39 44 24 24          	cmp    DWORD PTR [esp+0x24],eax
  c6c534:	0f 83 d0 00 00 00    	jae    0xc6c60a
  c6c53a:	83 7f 08 00          	cmp    DWORD PTR [edi+0x8],0x0
  c6c53e:	7f 10                	jg     0xc6c550
  c6c540:	f3 0f 10 44 24 5c    	movss  xmm0,DWORD PTR [esp+0x5c]
  c6c546:	0f 2f 47 04          	comiss xmm0,DWORD PTR [edi+0x4]
  c6c54a:	0f 86 ba 00 00 00    	jbe    0xc6c60a
  c6c550:	83 44 24 24 01       	add    DWORD PTR [esp+0x24],0x1
  c6c555:	8b ce                	mov    ecx,esi
  c6c557:	e8 94 39 e4 ff       	call   0xaafef0
  c6c55c:	84 c0                	test   al,al
  c6c55e:	75 2e                	jne    0xc6c58e
  c6c560:	38 44 24 22          	cmp    BYTE PTR [esp+0x22],al
  c6c564:	0f 85 84 00 00 00    	jne    0xc6c5ee
  c6c56a:	38 44 24 1a          	cmp    BYTE PTR [esp+0x1a],al
  c6c56e:	c6 44 24 22 01       	mov    BYTE PTR [esp+0x22],0x1
  c6c573:	0f 84 81 00 00 00    	je     0xc6c5fa
  c6c579:	8b cb                	mov    ecx,ebx
  c6c57b:	e8 b0 d8 ff ff       	call   0xc69e30
  c6c580:	84 c0                	test   al,al
  c6c582:	74 71                	je     0xc6c5f5
  c6c584:	c6 44 24 1b 00       	mov    BYTE PTR [esp+0x1b],0x0
  c6c589:	c6 44 24 23 01       	mov    BYTE PTR [esp+0x23],0x1
  c6c58e:	83 bb b4 01 00 00 02 	cmp    DWORD PTR [ebx+0x1b4],0x2
  c6c595:	75 33                	jne    0xc6c5ca
  c6c597:	8b cb                	mov    ecx,ebx
  c6c599:	e8 62 38 d0 ff       	call   0x96fe00
  c6c59e:	84 c0                	test   al,al
  c6c5a0:	74 28                	je     0xc6c5ca
  c6c5a2:	8b 4e 48             	mov    ecx,DWORD PTR [esi+0x48]
  c6c5a5:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  c6c5a8:	8d 44 24 40          	lea    eax,[esp+0x40]
  c6c5ac:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  c6c5b0:	50                   	push   eax
  c6c5b1:	8b cb                	mov    ecx,ebx
  c6c5b3:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
  c6c5b7:	e8 64 71 ff ff       	call   0xc63720
  c6c5bc:	84 c0                	test   al,al
  c6c5be:	74 0a                	je     0xc6c5ca
  c6c5c0:	6a 00                	push   0x0
  c6c5c2:	56                   	push   esi
  c6c5c3:	8b cb                	mov    ecx,ebx
  c6c5c5:	e8 e6 7a ff ff       	call   0xc640b0
  c6c5ca:	83 c7 10             	add    edi,0x10
  c6c5cd:	3b 7c 24 2c          	cmp    edi,DWORD PTR [esp+0x2c]
  c6c5d1:	0f 85 4b ff ff ff    	jne    0xc6c522
  c6c5d7:	8b 44 24 7c          	mov    eax,DWORD PTR [esp+0x7c]
  c6c5db:	80 7c 24 1a 00       	cmp    BYTE PTR [esp+0x1a],0x0
  c6c5e0:	74 33                	je     0xc6c615
  c6c5e2:	8a 4c 24 23          	mov    cl,BYTE PTR [esp+0x23]
  c6c5e6:	88 8b db 00 00 00    	mov    BYTE PTR [ebx+0xdb],cl
  c6c5ec:	eb 38                	jmp    0xc6c626
  c6c5ee:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  c6c5f3:	74 94                	je     0xc6c589
  c6c5f5:	80 7c 24 1a 00       	cmp    BYTE PTR [esp+0x1a],0x0
  c6c5fa:	6a 01                	push   0x1
  c6c5fc:	8b ce                	mov    ecx,esi
  c6c5fe:	0f 94 44 24 1f       	sete   BYTE PTR [esp+0x1f]
  c6c603:	e8 48 4c e5 ff       	call   0xac1250
  c6c608:	eb 84                	jmp    0xc6c58e
  c6c60a:	6a 00                	push   0x0
  c6c60c:	8b ce                	mov    ecx,esi
  c6c60e:	e8 3d 4c e5 ff       	call   0xac1250
  c6c613:	eb b5                	jmp    0xc6c5ca
  c6c615:	8b cb                	mov    ecx,ebx
  c6c617:	e8 14 d8 ff ff       	call   0xc69e30
  c6c61c:	88 83 db 00 00 00    	mov    BYTE PTR [ebx+0xdb],al
  c6c622:	8b 44 24 7c          	mov    eax,DWORD PTR [esp+0x7c]
  c6c626:	85 c0                	test   eax,eax
  c6c628:	74 12                	je     0xc6c63c
  c6c62a:	3b 84 24 8c 00 00 00 	cmp    eax,DWORD PTR [esp+0x8c]
  c6c631:	74 09                	je     0xc6c63c
  c6c633:	50                   	push   eax
  c6c634:	e8 a7 7e 87 ff       	call   0x4e44e0
  c6c639:	83 c4 04             	add    esp,0x4
  c6c63c:	5f                   	pop    edi
  c6c63d:	5e                   	pop    esi
  c6c63e:	5b                   	pop    ebx
  c6c63f:	8b e5                	mov    esp,ebp
  c6c641:	5d                   	pop    ebp
  c6c642:	c2 10 00             	ret    0x10
