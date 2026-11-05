# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3PipelineHelper.dll CAW 1.22.10 original-byte window and independent linear disassembly
Export: ConvertArrayWithScaleOffset at 0x10036390
Paired annotated Ghidra pseudocode: 10036390_ConvertArrayWithScaleOffset.c
Window: [0x10036390, 0x10036665) (725 bytes, stop exclusive)
Ghidra function-body intervals: [0x10036390, 0x10036665)
Boundary rule: entry through the maximum address of the currently defined Ghidra body.
This is a bounded original-file byte window, not a proof of complete function extent;
it can include gaps, padding, or data. Branches and noncontiguous bodies may extend beyond it.
GNU objdump decodes linearly in Intel syntax; verify control flow against bytes and pseudocode.

ORIGINAL BYTES (16 per line)
10036390: 8b 44 24 08 83 c0 ff 83 f8 12 0f 87 c4 02 00 00
100363a0: ff 24 85 68 66 03 10 8b 44 24 1c 8b 4c 24 18 8b
100363b0: 54 24 10 50 8b 44 24 18 51 8b 4c 24 14 52 8b 54
100363c0: 24 10 50 51 52 e8 b6 ca ff ff 83 c4 18 c3 8b 44
100363d0: 24 1c 8b 4c 24 18 8b 54 24 10 50 8b 44 24 18 51
100363e0: 8b 4c 24 14 52 8b 54 24 10 50 51 52 e8 5f cd ff
100363f0: ff 83 c4 18 c3 8b 44 24 1c 8b 4c 24 18 8b 54 24
10036400: 10 50 8b 44 24 18 51 8b 4c 24 14 52 8b 54 24 10
10036410: 50 51 52 e8 08 d0 ff ff 83 c4 18 c3 8b 44 24 1c
10036420: 8b 4c 24 18 8b 54 24 10 50 8b 44 24 18 51 8b 4c
10036430: 24 14 52 8b 54 24 10 50 51 52 e8 b1 d2 ff ff 83
10036440: c4 18 c3 8b 44 24 1c 8b 4c 24 18 8b 54 24 10 50
10036450: 8b 44 24 18 51 8b 4c 24 14 52 8b 54 24 10 50 51
10036460: 52 e8 5a d5 ff ff 83 c4 18 c3 8b 44 24 1c 8b 4c
10036470: 24 18 8b 54 24 10 50 8b 44 24 18 51 8b 4c 24 14
10036480: 52 8b 54 24 10 50 51 52 e8 03 d8 ff ff 83 c4 18
10036490: c3 8b 44 24 1c 8b 4c 24 18 8b 54 24 10 50 8b 44
100364a0: 24 18 51 8b 4c 24 14 52 8b 54 24 10 50 51 52 e8
100364b0: ac da ff ff 83 c4 18 c3 8b 44 24 1c 8b 4c 24 18
100364c0: 8b 54 24 10 50 8b 44 24 18 51 8b 4c 24 14 52 8b
100364d0: 54 24 10 50 51 52 e8 55 dd ff ff 83 c4 18 c3 8b
100364e0: 44 24 1c 8b 4c 24 18 8b 54 24 10 50 8b 44 24 18
100364f0: 51 8b 4c 24 14 52 8b 54 24 10 50 51 52 e8 fe df
10036500: ff ff 83 c4 18 c3 8b 44 24 1c 8b 4c 24 18 8b 54
10036510: 24 10 50 8b 44 24 18 51 8b 4c 24 14 52 8b 54 24
10036520: 10 50 51 52 e8 a7 e2 ff ff 83 c4 18 c3 8b 44 24
10036530: 1c 8b 4c 24 18 8b 54 24 10 50 8b 44 24 18 51 8b
10036540: 4c 24 14 52 8b 54 24 10 50 51 52 e8 50 e5 ff ff
10036550: 83 c4 18 c3 8b 44 24 1c 8b 4c 24 18 8b 54 24 10
10036560: 50 8b 44 24 18 51 8b 4c 24 14 52 8b 54 24 10 50
10036570: 51 52 e8 f9 e7 ff ff 83 c4 18 c3 8b 44 24 1c 8b
10036580: 4c 24 18 8b 54 24 10 50 8b 44 24 18 51 8b 4c 24
10036590: 14 52 8b 54 24 10 50 51 52 e8 a2 ea ff ff 83 c4
100365a0: 18 c3 8b 44 24 1c 8b 4c 24 18 8b 54 24 10 50 8b
100365b0: 44 24 18 51 8b 4c 24 14 52 8b 54 24 10 50 51 52
100365c0: e8 4b ed ff ff 83 c4 18 c3 8b 44 24 1c 8b 4c 24
100365d0: 18 8b 54 24 10 50 8b 44 24 18 51 8b 4c 24 14 52
100365e0: 8b 54 24 10 50 51 52 e8 f4 ef ff ff 83 c4 18 c3
100365f0: 8b 44 24 1c 8b 4c 24 18 8b 54 24 10 50 8b 44 24
10036600: 18 51 8b 4c 24 14 52 8b 54 24 10 50 51 52 e8 9d
10036610: f2 ff ff 83 c4 18 c3 8b 44 24 1c 8b 4c 24 18 8b
10036620: 54 24 10 50 8b 44 24 18 51 8b 4c 24 14 52 8b 54
10036630: 24 10 50 51 52 e8 46 f5 ff ff 83 c4 18 c3 8b 44
10036640: 24 1c 8b 4c 24 18 8b 54 24 10 50 8b 44 24 18 51
10036650: 8b 4c 24 14 52 8b 54 24 10 50 51 52 e8 ef f7 ff
10036660: ff 83 c4 18 c3

LINEAR DISASSEMBLY
10036390 <.text+0x35390>:
10036390:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
10036394:	83 c0 ff             	add    eax,0xffffffff
10036397:	83 f8 12             	cmp    eax,0x12
1003639a:	0f 87 c4 02 00 00    	ja     0x10036664
100363a0:	ff 24 85 68 66 03 10 	jmp    DWORD PTR [eax*4+0x10036668]
100363a7:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
100363ab:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100363af:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100363b3:	50                   	push   eax
100363b4:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100363b8:	51                   	push   ecx
100363b9:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100363bd:	52                   	push   edx
100363be:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100363c2:	50                   	push   eax
100363c3:	51                   	push   ecx
100363c4:	52                   	push   edx
100363c5:	e8 b6 ca ff ff       	call   0x10032e80
100363ca:	83 c4 18             	add    esp,0x18
100363cd:	c3                   	ret
100363ce:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
100363d2:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100363d6:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100363da:	50                   	push   eax
100363db:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100363df:	51                   	push   ecx
100363e0:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100363e4:	52                   	push   edx
100363e5:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100363e9:	50                   	push   eax
100363ea:	51                   	push   ecx
100363eb:	52                   	push   edx
100363ec:	e8 5f cd ff ff       	call   0x10033150
100363f1:	83 c4 18             	add    esp,0x18
100363f4:	c3                   	ret
100363f5:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
100363f9:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100363fd:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036401:	50                   	push   eax
10036402:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10036406:	51                   	push   ecx
10036407:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
1003640b:	52                   	push   edx
1003640c:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036410:	50                   	push   eax
10036411:	51                   	push   ecx
10036412:	52                   	push   edx
10036413:	e8 08 d0 ff ff       	call   0x10033420
10036418:	83 c4 18             	add    esp,0x18
1003641b:	c3                   	ret
1003641c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10036420:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10036424:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036428:	50                   	push   eax
10036429:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
1003642d:	51                   	push   ecx
1003642e:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10036432:	52                   	push   edx
10036433:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036437:	50                   	push   eax
10036438:	51                   	push   ecx
10036439:	52                   	push   edx
1003643a:	e8 b1 d2 ff ff       	call   0x100336f0
1003643f:	83 c4 18             	add    esp,0x18
10036442:	c3                   	ret
10036443:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10036447:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
1003644b:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
1003644f:	50                   	push   eax
10036450:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10036454:	51                   	push   ecx
10036455:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10036459:	52                   	push   edx
1003645a:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
1003645e:	50                   	push   eax
1003645f:	51                   	push   ecx
10036460:	52                   	push   edx
10036461:	e8 5a d5 ff ff       	call   0x100339c0
10036466:	83 c4 18             	add    esp,0x18
10036469:	c3                   	ret
1003646a:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
1003646e:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10036472:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036476:	50                   	push   eax
10036477:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
1003647b:	51                   	push   ecx
1003647c:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10036480:	52                   	push   edx
10036481:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036485:	50                   	push   eax
10036486:	51                   	push   ecx
10036487:	52                   	push   edx
10036488:	e8 03 d8 ff ff       	call   0x10033c90
1003648d:	83 c4 18             	add    esp,0x18
10036490:	c3                   	ret
10036491:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10036495:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10036499:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
1003649d:	50                   	push   eax
1003649e:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100364a2:	51                   	push   ecx
100364a3:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100364a7:	52                   	push   edx
100364a8:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100364ac:	50                   	push   eax
100364ad:	51                   	push   ecx
100364ae:	52                   	push   edx
100364af:	e8 ac da ff ff       	call   0x10033f60
100364b4:	83 c4 18             	add    esp,0x18
100364b7:	c3                   	ret
100364b8:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
100364bc:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100364c0:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100364c4:	50                   	push   eax
100364c5:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100364c9:	51                   	push   ecx
100364ca:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100364ce:	52                   	push   edx
100364cf:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100364d3:	50                   	push   eax
100364d4:	51                   	push   ecx
100364d5:	52                   	push   edx
100364d6:	e8 55 dd ff ff       	call   0x10034230
100364db:	83 c4 18             	add    esp,0x18
100364de:	c3                   	ret
100364df:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
100364e3:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100364e7:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100364eb:	50                   	push   eax
100364ec:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100364f0:	51                   	push   ecx
100364f1:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100364f5:	52                   	push   edx
100364f6:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100364fa:	50                   	push   eax
100364fb:	51                   	push   ecx
100364fc:	52                   	push   edx
100364fd:	e8 fe df ff ff       	call   0x10034500
10036502:	83 c4 18             	add    esp,0x18
10036505:	c3                   	ret
10036506:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
1003650a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
1003650e:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036512:	50                   	push   eax
10036513:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10036517:	51                   	push   ecx
10036518:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
1003651c:	52                   	push   edx
1003651d:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036521:	50                   	push   eax
10036522:	51                   	push   ecx
10036523:	52                   	push   edx
10036524:	e8 a7 e2 ff ff       	call   0x100347d0
10036529:	83 c4 18             	add    esp,0x18
1003652c:	c3                   	ret
1003652d:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10036531:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10036535:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036539:	50                   	push   eax
1003653a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
1003653e:	51                   	push   ecx
1003653f:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10036543:	52                   	push   edx
10036544:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036548:	50                   	push   eax
10036549:	51                   	push   ecx
1003654a:	52                   	push   edx
1003654b:	e8 50 e5 ff ff       	call   0x10034aa0
10036550:	83 c4 18             	add    esp,0x18
10036553:	c3                   	ret
10036554:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10036558:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
1003655c:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036560:	50                   	push   eax
10036561:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10036565:	51                   	push   ecx
10036566:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
1003656a:	52                   	push   edx
1003656b:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
1003656f:	50                   	push   eax
10036570:	51                   	push   ecx
10036571:	52                   	push   edx
10036572:	e8 f9 e7 ff ff       	call   0x10034d70
10036577:	83 c4 18             	add    esp,0x18
1003657a:	c3                   	ret
1003657b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
1003657f:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10036583:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036587:	50                   	push   eax
10036588:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
1003658c:	51                   	push   ecx
1003658d:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10036591:	52                   	push   edx
10036592:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036596:	50                   	push   eax
10036597:	51                   	push   ecx
10036598:	52                   	push   edx
10036599:	e8 a2 ea ff ff       	call   0x10035040
1003659e:	83 c4 18             	add    esp,0x18
100365a1:	c3                   	ret
100365a2:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
100365a6:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100365aa:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100365ae:	50                   	push   eax
100365af:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100365b3:	51                   	push   ecx
100365b4:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100365b8:	52                   	push   edx
100365b9:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100365bd:	50                   	push   eax
100365be:	51                   	push   ecx
100365bf:	52                   	push   edx
100365c0:	e8 4b ed ff ff       	call   0x10035310
100365c5:	83 c4 18             	add    esp,0x18
100365c8:	c3                   	ret
100365c9:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
100365cd:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100365d1:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100365d5:	50                   	push   eax
100365d6:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100365da:	51                   	push   ecx
100365db:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100365df:	52                   	push   edx
100365e0:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100365e4:	50                   	push   eax
100365e5:	51                   	push   ecx
100365e6:	52                   	push   edx
100365e7:	e8 f4 ef ff ff       	call   0x100355e0
100365ec:	83 c4 18             	add    esp,0x18
100365ef:	c3                   	ret
100365f0:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
100365f4:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100365f8:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100365fc:	50                   	push   eax
100365fd:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10036601:	51                   	push   ecx
10036602:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10036606:	52                   	push   edx
10036607:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
1003660b:	50                   	push   eax
1003660c:	51                   	push   ecx
1003660d:	52                   	push   edx
1003660e:	e8 9d f2 ff ff       	call   0x100358b0
10036613:	83 c4 18             	add    esp,0x18
10036616:	c3                   	ret
10036617:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
1003661b:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
1003661f:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036623:	50                   	push   eax
10036624:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10036628:	51                   	push   ecx
10036629:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
1003662d:	52                   	push   edx
1003662e:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036632:	50                   	push   eax
10036633:	51                   	push   ecx
10036634:	52                   	push   edx
10036635:	e8 46 f5 ff ff       	call   0x10035b80
1003663a:	83 c4 18             	add    esp,0x18
1003663d:	c3                   	ret
1003663e:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10036642:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10036646:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
1003664a:	50                   	push   eax
1003664b:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
1003664f:	51                   	push   ecx
10036650:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10036654:	52                   	push   edx
10036655:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036659:	50                   	push   eax
1003665a:	51                   	push   ecx
1003665b:	52                   	push   edx
1003665c:	e8 ef f7 ff ff       	call   0x10035e50
10036661:	83 c4 18             	add    esp,0x18
10036664:	c3                   	ret
