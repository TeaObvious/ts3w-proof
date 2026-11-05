# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007652d0, 0x00765512); analyst name Route_PlanFromPoint.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007652d0 <.text+0x3642d0>:
  7652d0:	55                   	push   ebp
  7652d1:	8b ec                	mov    ebp,esp
  7652d3:	83 e4 f0             	and    esp,0xfffffff0
  7652d6:	0f 57 c0             	xorps  xmm0,xmm0
  7652d9:	8b 0d c4 50 1d 01    	mov    ecx,DWORD PTR ds:0x11d50c4
  7652df:	81 ec 84 00 00 00    	sub    esp,0x84
  7652e5:	53                   	push   ebx
  7652e6:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  7652e9:	56                   	push   esi
  7652ea:	33 f6                	xor    esi,esi
  7652ec:	3b ce                	cmp    ecx,esi
  7652ee:	57                   	push   edi
  7652ef:	c7 03 02 00 00 00    	mov    DWORD PTR [ebx],0x2
  7652f5:	89 73 04             	mov    DWORD PTR [ebx+0x4],esi
  7652f8:	89 73 0c             	mov    DWORD PTR [ebx+0xc],esi
  7652fb:	f3 0f 11 43 10       	movss  DWORD PTR [ebx+0x10],xmm0
  765300:	f3 0f 11 43 14       	movss  DWORD PTR [ebx+0x14],xmm0
  765305:	f3 0f 11 43 18       	movss  DWORD PTR [ebx+0x18],xmm0
  76530a:	f3 0f 11 43 1c       	movss  DWORD PTR [ebx+0x1c],xmm0
  76530f:	89 73 20             	mov    DWORD PTR [ebx+0x20],esi
  765312:	89 73 24             	mov    DWORD PTR [ebx+0x24],esi
  765315:	89 73 28             	mov    DWORD PTR [ebx+0x28],esi
  765318:	f3 0f 11 43 2c       	movss  DWORD PTR [ebx+0x2c],xmm0
  76531d:	f3 0f 11 43 30       	movss  DWORD PTR [ebx+0x30],xmm0
  765322:	f3 0f 11 43 34       	movss  DWORD PTR [ebx+0x34],xmm0
  765327:	89 73 38             	mov    DWORD PTR [ebx+0x38],esi
  76532a:	89 73 3c             	mov    DWORD PTR [ebx+0x3c],esi
  76532d:	89 73 40             	mov    DWORD PTR [ebx+0x40],esi
  765330:	0f 84 a1 01 00 00    	je     0x7654d7
  765336:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  765339:	50                   	push   eax
  76533a:	e8 71 61 fe ff       	call   0x74b4b0
  76533f:	3b c6                	cmp    eax,esi
  765341:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  765345:	0f 84 95 01 00 00    	je     0x7654e0
  76534b:	8b 10                	mov    edx,DWORD PTR [eax]
  76534d:	8b c8                	mov    ecx,eax
  76534f:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  765352:	ff d0                	call   eax
  765354:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  76535a:	3b ce                	cmp    ecx,esi
  76535c:	74 19                	je     0x765377
  76535e:	d9 45 18             	fld    DWORD PTR [ebp+0x18]
  765361:	83 ec 08             	sub    esp,0x8
  765364:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  765368:	d9 45 10             	fld    DWORD PTR [ebp+0x10]
  76536b:	d9 1c 24             	fstp   DWORD PTR [esp]
  76536e:	e8 5d 34 50 00       	call   0xc687d0
  765373:	8b f8                	mov    edi,eax
  765375:	eb 02                	jmp    0x765379
  765377:	33 ff                	xor    edi,edi
  765379:	3b fe                	cmp    edi,esi
  76537b:	f3 0f 10 4d 18       	movss  xmm1,DWORD PTR [ebp+0x18]
  765380:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  765385:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  76538b:	f3 0f 10 4d 14       	movss  xmm1,DWORD PTR [ebp+0x14]
  765390:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  765396:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  76539c:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  7653a2:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  7653a7:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  7653ac:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
  7653b0:	0f 84 97 00 00 00    	je     0x76544d
  7653b6:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  7653be:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  7653c2:	51                   	push   ecx
  7653c3:	8d 54 24 34          	lea    edx,[esp+0x34]
  7653c7:	52                   	push   edx
  7653c8:	57                   	push   edi
  7653c9:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  7653cf:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  7653d5:	89 74 24 34          	mov    DWORD PTR [esp+0x34],esi
  7653d9:	e8 e2 74 37 00       	call   0xadc8c0
  7653de:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  7653e2:	83 c4 0c             	add    esp,0xc
  7653e5:	3b c6                	cmp    eax,esi
  7653e7:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  7653eb:	7d 17                	jge    0x765404
  7653ed:	8d 44 24 20          	lea    eax,[esp+0x20]
  7653f1:	50                   	push   eax
  7653f2:	57                   	push   edi
  7653f3:	e8 f8 a7 39 00       	call   0xaffbf0
  7653f8:	83 c4 08             	add    esp,0x8
  7653fb:	84 c0                	test   al,al
  7653fd:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  765402:	75 05                	jne    0x765409
  765404:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  765409:	39 74 24 14          	cmp    DWORD PTR [esp+0x14],esi
  76540d:	7d 1f                	jge    0x76542e
  76540f:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  765414:	75 18                	jne    0x76542e
  765416:	6a 01                	push   0x1
  765418:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  76541c:	51                   	push   ecx
  76541d:	57                   	push   edi
  76541e:	e8 7d a2 39 00       	call   0xaff6a0
  765423:	83 c4 0c             	add    esp,0xc
  765426:	84 c0                	test   al,al
  765428:	75 04                	jne    0x76542e
  76542a:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
  76542e:	83 bf 08 04 00 00 01 	cmp    DWORD PTR [edi+0x408],0x1
  765435:	75 0f                	jne    0x765446
  765437:	83 bf 0c 04 00 00 50 	cmp    DWORD PTR [edi+0x40c],0x50
  76543e:	75 06                	jne    0x765446
  765440:	39 74 24 28          	cmp    DWORD PTR [esp+0x28],esi
  765444:	74 0e                	je     0x765454
  765446:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  76544b:	75 07                	jne    0x765454
  76544d:	c6 44 24 18 01       	mov    BYTE PTR [esp+0x18],0x1
  765452:	eb 05                	jmp    0x765459
  765454:	c6 44 24 18 00       	mov    BYTE PTR [esp+0x18],0x0
  765459:	e8 92 38 0c 00       	call   0x828cf0
  76545e:	3b c6                	cmp    eax,esi
  765460:	74 2f                	je     0x765491
  765462:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  765466:	d9 45 18             	fld    DWORD PTR [ebp+0x18]
  765469:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  76546d:	52                   	push   edx
  76546e:	6a 01                	push   0x1
  765470:	51                   	push   ecx
  765471:	83 ec 08             	sub    esp,0x8
  765474:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  765478:	8b c8                	mov    ecx,eax
  76547a:	d9 45 10             	fld    DWORD PTR [ebp+0x10]
  76547d:	d9 1c 24             	fstp   DWORD PTR [esp]
  765480:	e8 0b 3a 0c 00       	call   0x828e90
  765485:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  765489:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  76548f:	eb 03                	jmp    0x765494
  765491:	0f 57 c0             	xorps  xmm0,xmm0
  765494:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  765499:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  76549d:	8d 54 24 30          	lea    edx,[esp+0x30]
  7654a1:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  7654a6:	52                   	push   edx
  7654a7:	8d 44 24 4c          	lea    eax,[esp+0x4c]
  7654ab:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  7654b1:	0f 28 44 24 24       	movaps xmm0,XMMWORD PTR [esp+0x24]
  7654b6:	50                   	push   eax
  7654b7:	0f 29 44 24 38       	movaps XMMWORD PTR [esp+0x38],xmm0
  7654bc:	e8 8f ee ff ff       	call   0x764350
  7654c1:	8b f0                	mov    esi,eax
  7654c3:	b9 12 00 00 00       	mov    ecx,0x12
  7654c8:	8b fb                	mov    edi,ebx
  7654ca:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7654cc:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  7654d0:	8b 11                	mov    edx,DWORD PTR [ecx]
  7654d2:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  7654d5:	ff d0                	call   eax
  7654d7:	8b c3                	mov    eax,ebx
  7654d9:	5f                   	pop    edi
  7654da:	5e                   	pop    esi
  7654db:	5b                   	pop    ebx
  7654dc:	8b e5                	mov    esp,ebp
  7654de:	5d                   	pop    ebp
  7654df:	c3                   	ret
  7654e0:	0f 57 c0             	xorps  xmm0,xmm0
  7654e3:	5f                   	pop    edi
  7654e4:	89 73 04             	mov    DWORD PTR [ebx+0x4],esi
  7654e7:	89 73 0c             	mov    DWORD PTR [ebx+0xc],esi
  7654ea:	89 73 20             	mov    DWORD PTR [ebx+0x20],esi
  7654ed:	89 73 24             	mov    DWORD PTR [ebx+0x24],esi
  7654f0:	5e                   	pop    esi
  7654f1:	c7 03 02 00 00 00    	mov    DWORD PTR [ebx],0x2
  7654f7:	f3 0f 11 43 10       	movss  DWORD PTR [ebx+0x10],xmm0
  7654fc:	f3 0f 11 43 14       	movss  DWORD PTR [ebx+0x14],xmm0
  765501:	f3 0f 11 43 18       	movss  DWORD PTR [ebx+0x18],xmm0
  765506:	f3 0f 11 43 1c       	movss  DWORD PTR [ebx+0x1c],xmm0
  76550b:	8b c3                	mov    eax,ebx
  76550d:	5b                   	pop    ebx
  76550e:	8b e5                	mov    esp,ebp
  765510:	5d                   	pop    ebp
  765511:	c3                   	ret
