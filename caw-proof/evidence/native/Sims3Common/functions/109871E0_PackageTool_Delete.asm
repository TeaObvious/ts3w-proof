# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109871e0 (PackageTool_Delete)
Paired Ghidra pseudocode: 109871E0_PackageTool_Delete.c
Window: [0x109871e0, 0x109874a0) (704 bytes; stop exclusive)
Next defined Ghidra entry: 0x109874a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109871e0: 83 ec 54 8b 4c 24 5c b8 44 82 ca 10 57 33 ff 66
109871f0: 39 39 89 44 24 10 89 44 24 14 c7 44 24 1c b0 6a
10987200: b9 10 c7 44 24 18 46 82 ca 10 8b c1 74 0a 8b ff
10987210: 83 c0 02 66 39 38 75 f8 2b c1 d1 f8 8d 04 41 50
10987220: 51 8d 4c 24 18 e8 96 86 69 ff 8d 4c 24 30 e8 dd
10987230: d9 f5 ff 8d 4c 24 30 51 8d 54 24 14 52 e8 3e db
10987240: f5 ff 83 c4 08 84 c0 75 2e 8b 4c 24 18 8b 44 24
10987250: 10 2b c8 83 e1 fe 83 f9 02 c7 44 24 30 7c 3a ab
10987260: 10 7e 0d 3b c7 74 09 50 e8 23 1c f9 ff 83 c4 04
10987270: 32 c0 5f 83 c4 54 c3 8d 54 24 04 56 8b c2 68 98
10987280: 03 00 00 89 7c 24 14 89 54 24 10 89 44 24 0c e8
10987290: 4c 1d f9 ff 83 c4 04 3b c7 74 0d 57 57 8b c8 e8
109872a0: 2c 7d f5 ff 8b f0 eb 02 33 f6 8b 4c 24 10 3b f1
109872b0: 74 3f 8b 44 24 0c 8d 54 24 08 3b c2 75 0e 3b cf
109872c0: 74 29 8b 01 8b 10 6a 01 ff d2 eb 1f 8b 4c 24 08
109872d0: 89 41 04 8b 54 24 0c 8b 44 24 08 89 02 8d 4c 24
109872e0: 08 8b d1 89 4c 24 0c 89 54 24 08 8b ce 89 4c 24
109872f0: 10 8b 01 8b 50 04 ff d2 84 c0 0f 84 27 01 00 00
10987300: 8b 4c 24 10 8b 01 8b 54 24 60 8b 40 2c 52 ff d0
10987310: 84 c0 0f 84 0f 01 00 00 8b 4c 24 10 8b 11 8b 42
10987320: 18 57 6a 03 6a 02 ff d0 84 c0 0f 84 f7 00 00 00
10987330: 8b 4c 24 10 8d 44 24 34 50 89 7c 24 28 89 7c 24
10987340: 2c 89 7c 24 30 c7 44 24 34 88 6a b9 10 8b 11 8b
10987350: 52 30 8d 44 24 28 50 ff d2 8b 74 24 24 3b 74 24
10987360: 28 74 19 8b 4c 24 10 8b 01 8b 50 40 56 ff d2 84
10987370: c0 74 43 83 c6 10 3b 74 24 28 75 e7 8b 4c 24 10
10987380: 8b 11 8b 42 08 ff d0 8b 44 24 24 3b c7 74 09 50
10987390: e8 fb 1a f9 ff 83 c4 04 8b 4c 24 10 3b cf 74 58
109873a0: 8b 44 24 0c 8d 54 24 08 3b c2 75 29 8b 01 8b 10
109873b0: 6a 01 ff d2 eb 3e 8b 44 24 24 3b c7 74 09 50 e8
109873c0: cc 1a f9 ff 83 c4 04 8d 4c 24 08 e8 d0 fd ff ff
109873d0: e9 93 00 00 00 8b 4c 24 08 89 41 04 8b 54 24 0c
109873e0: 8b 44 24 08 89 02 8d 4c 24 08 8b d1 89 4c 24 0c
109873f0: 89 54 24 08 89 7c 24 10 8b 4c 24 1c 8b 44 24 14
10987400: 2b c8 83 e1 fe 83 f9 02 c7 44 24 34 7c 3a ab 10
10987410: 7e 0d 3b c7 74 09 50 e8 74 1a f9 ff 83 c4 04 5e
10987420: b0 01 5f 83 c4 54 c3 8b 4c 24 10 3b cf 74 39 8b
10987430: 44 24 0c 8d 54 24 08 3b c2 75 0a 8b 01 8b 10 6a
10987440: 01 ff d2 eb 1f 8b 4c 24 08 89 41 04 8b 54 24 0c
10987450: 8b 44 24 08 89 02 8d 4c 24 08 8b d1 89 4c 24 0c
10987460: 89 54 24 08 89 7c 24 10 8b 44 24 14 8b 4c 24 1c
10987470: 2b c8 83 e1 fe 83 f9 02 c7 44 24 34 7c 3a ab 10
10987480: 7e 0d 3b c7 74 09 50 e8 04 1a f9 ff 83 c4 04 5e
10987490: 32 c0 5f 83 c4 54 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109871e0 <.text+0x9861e0>:
109871e0:	83 ec 54                                        	sub    esp,0x54
109871e3:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
109871e7:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
109871ec:	57                                              	push   edi
109871ed:	33 ff                                           	xor    edi,edi
109871ef:	66 39 39                                        	cmp    WORD PTR [ecx],di
109871f2:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
109871f6:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
109871fa:	c7 44 24 1c b0 6a b9 10                         	mov    DWORD PTR [esp+0x1c],0x10b96ab0
10987202:	c7 44 24 18 46 82 ca 10                         	mov    DWORD PTR [esp+0x18],0x10ca8246
1098720a:	8b c1                                           	mov    eax,ecx
1098720c:	74 0a                                           	je     0x10987218
1098720e:	8b ff                                           	mov    edi,edi
10987210:	83 c0 02                                        	add    eax,0x2
10987213:	66 39 38                                        	cmp    WORD PTR [eax],di
10987216:	75 f8                                           	jne    0x10987210
10987218:	2b c1                                           	sub    eax,ecx
1098721a:	d1 f8                                           	sar    eax,1
1098721c:	8d 04 41                                        	lea    eax,[ecx+eax*2]
1098721f:	50                                              	push   eax
10987220:	51                                              	push   ecx
10987221:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10987225:	e8 96 86 69 ff                                  	call   0x1001f8c0
1098722a:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1098722e:	e8 dd d9 f5 ff                                  	call   0x108e4c10
10987233:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10987237:	51                                              	push   ecx
10987238:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1098723c:	52                                              	push   edx
1098723d:	e8 3e db f5 ff                                  	call   0x108e4d80
10987242:	83 c4 08                                        	add    esp,0x8
10987245:	84 c0                                           	test   al,al
10987247:	75 2e                                           	jne    0x10987277
10987249:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098724d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10987251:	2b c8                                           	sub    ecx,eax
10987253:	83 e1 fe                                        	and    ecx,0xfffffffe
10987256:	83 f9 02                                        	cmp    ecx,0x2
10987259:	c7 44 24 30 7c 3a ab 10                         	mov    DWORD PTR [esp+0x30],0x10ab3a7c
10987261:	7e 0d                                           	jle    0x10987270
10987263:	3b c7                                           	cmp    eax,edi
10987265:	74 09                                           	je     0x10987270
10987267:	50                                              	push   eax
10987268:	e8 23 1c f9 ff                                  	call   0x10918e90
1098726d:	83 c4 04                                        	add    esp,0x4
10987270:	32 c0                                           	xor    al,al
10987272:	5f                                              	pop    edi
10987273:	83 c4 54                                        	add    esp,0x54
10987276:	c3                                              	ret
10987277:	8d 54 24 04                                     	lea    edx,[esp+0x4]
1098727b:	56                                              	push   esi
1098727c:	8b c2                                           	mov    eax,edx
1098727e:	68 98 03 00 00                                  	push   0x398
10987283:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
10987287:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1098728b:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1098728f:	e8 4c 1d f9 ff                                  	call   0x10918fe0
10987294:	83 c4 04                                        	add    esp,0x4
10987297:	3b c7                                           	cmp    eax,edi
10987299:	74 0d                                           	je     0x109872a8
1098729b:	57                                              	push   edi
1098729c:	57                                              	push   edi
1098729d:	8b c8                                           	mov    ecx,eax
1098729f:	e8 2c 7d f5 ff                                  	call   0x108defd0
109872a4:	8b f0                                           	mov    esi,eax
109872a6:	eb 02                                           	jmp    0x109872aa
109872a8:	33 f6                                           	xor    esi,esi
109872aa:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109872ae:	3b f1                                           	cmp    esi,ecx
109872b0:	74 3f                                           	je     0x109872f1
109872b2:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
109872b6:	8d 54 24 08                                     	lea    edx,[esp+0x8]
109872ba:	3b c2                                           	cmp    eax,edx
109872bc:	75 0e                                           	jne    0x109872cc
109872be:	3b cf                                           	cmp    ecx,edi
109872c0:	74 29                                           	je     0x109872eb
109872c2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109872c4:	8b 10                                           	mov    edx,DWORD PTR [eax]
109872c6:	6a 01                                           	push   0x1
109872c8:	ff d2                                           	call   edx
109872ca:	eb 1f                                           	jmp    0x109872eb
109872cc:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
109872d0:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
109872d3:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
109872d7:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109872db:	89 02                                           	mov    DWORD PTR [edx],eax
109872dd:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
109872e1:	8b d1                                           	mov    edx,ecx
109872e3:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
109872e7:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
109872eb:	8b ce                                           	mov    ecx,esi
109872ed:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
109872f1:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109872f3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
109872f6:	ff d2                                           	call   edx
109872f8:	84 c0                                           	test   al,al
109872fa:	0f 84 27 01 00 00                               	je     0x10987427
10987300:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10987304:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10987306:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
1098730a:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
1098730d:	52                                              	push   edx
1098730e:	ff d0                                           	call   eax
10987310:	84 c0                                           	test   al,al
10987312:	0f 84 0f 01 00 00                               	je     0x10987427
10987318:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098731c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098731e:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
10987321:	57                                              	push   edi
10987322:	6a 03                                           	push   0x3
10987324:	6a 02                                           	push   0x2
10987326:	ff d0                                           	call   eax
10987328:	84 c0                                           	test   al,al
1098732a:	0f 84 f7 00 00 00                               	je     0x10987427
10987330:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10987334:	8d 44 24 34                                     	lea    eax,[esp+0x34]
10987338:	50                                              	push   eax
10987339:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
1098733d:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
10987341:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
10987345:	c7 44 24 34 88 6a b9 10                         	mov    DWORD PTR [esp+0x34],0x10b96a88
1098734d:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098734f:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
10987352:	8d 44 24 28                                     	lea    eax,[esp+0x28]
10987356:	50                                              	push   eax
10987357:	ff d2                                           	call   edx
10987359:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
1098735d:	3b 74 24 28                                     	cmp    esi,DWORD PTR [esp+0x28]
10987361:	74 19                                           	je     0x1098737c
10987363:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10987367:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10987369:	8b 50 40                                        	mov    edx,DWORD PTR [eax+0x40]
1098736c:	56                                              	push   esi
1098736d:	ff d2                                           	call   edx
1098736f:	84 c0                                           	test   al,al
10987371:	74 43                                           	je     0x109873b6
10987373:	83 c6 10                                        	add    esi,0x10
10987376:	3b 74 24 28                                     	cmp    esi,DWORD PTR [esp+0x28]
1098737a:	75 e7                                           	jne    0x10987363
1098737c:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10987380:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10987382:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10987385:	ff d0                                           	call   eax
10987387:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1098738b:	3b c7                                           	cmp    eax,edi
1098738d:	74 09                                           	je     0x10987398
1098738f:	50                                              	push   eax
10987390:	e8 fb 1a f9 ff                                  	call   0x10918e90
10987395:	83 c4 04                                        	add    esp,0x4
10987398:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098739c:	3b cf                                           	cmp    ecx,edi
1098739e:	74 58                                           	je     0x109873f8
109873a0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
109873a4:	8d 54 24 08                                     	lea    edx,[esp+0x8]
109873a8:	3b c2                                           	cmp    eax,edx
109873aa:	75 29                                           	jne    0x109873d5
109873ac:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109873ae:	8b 10                                           	mov    edx,DWORD PTR [eax]
109873b0:	6a 01                                           	push   0x1
109873b2:	ff d2                                           	call   edx
109873b4:	eb 3e                                           	jmp    0x109873f4
109873b6:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
109873ba:	3b c7                                           	cmp    eax,edi
109873bc:	74 09                                           	je     0x109873c7
109873be:	50                                              	push   eax
109873bf:	e8 cc 1a f9 ff                                  	call   0x10918e90
109873c4:	83 c4 04                                        	add    esp,0x4
109873c7:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
109873cb:	e8 d0 fd ff ff                                  	call   0x109871a0
109873d0:	e9 93 00 00 00                                  	jmp    0x10987468
109873d5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
109873d9:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
109873dc:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
109873e0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109873e4:	89 02                                           	mov    DWORD PTR [edx],eax
109873e6:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
109873ea:	8b d1                                           	mov    edx,ecx
109873ec:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
109873f0:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
109873f4:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
109873f8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109873fc:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10987400:	2b c8                                           	sub    ecx,eax
10987402:	83 e1 fe                                        	and    ecx,0xfffffffe
10987405:	83 f9 02                                        	cmp    ecx,0x2
10987408:	c7 44 24 34 7c 3a ab 10                         	mov    DWORD PTR [esp+0x34],0x10ab3a7c
10987410:	7e 0d                                           	jle    0x1098741f
10987412:	3b c7                                           	cmp    eax,edi
10987414:	74 09                                           	je     0x1098741f
10987416:	50                                              	push   eax
10987417:	e8 74 1a f9 ff                                  	call   0x10918e90
1098741c:	83 c4 04                                        	add    esp,0x4
1098741f:	5e                                              	pop    esi
10987420:	b0 01                                           	mov    al,0x1
10987422:	5f                                              	pop    edi
10987423:	83 c4 54                                        	add    esp,0x54
10987426:	c3                                              	ret
10987427:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098742b:	3b cf                                           	cmp    ecx,edi
1098742d:	74 39                                           	je     0x10987468
1098742f:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10987433:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10987437:	3b c2                                           	cmp    eax,edx
10987439:	75 0a                                           	jne    0x10987445
1098743b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098743d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098743f:	6a 01                                           	push   0x1
10987441:	ff d2                                           	call   edx
10987443:	eb 1f                                           	jmp    0x10987464
10987445:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10987449:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
1098744c:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10987450:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10987454:	89 02                                           	mov    DWORD PTR [edx],eax
10987456:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1098745a:	8b d1                                           	mov    edx,ecx
1098745c:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
10987460:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
10987464:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
10987468:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098746c:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10987470:	2b c8                                           	sub    ecx,eax
10987472:	83 e1 fe                                        	and    ecx,0xfffffffe
10987475:	83 f9 02                                        	cmp    ecx,0x2
10987478:	c7 44 24 34 7c 3a ab 10                         	mov    DWORD PTR [esp+0x34],0x10ab3a7c
10987480:	7e 0d                                           	jle    0x1098748f
10987482:	3b c7                                           	cmp    eax,edi
10987484:	74 09                                           	je     0x1098748f
10987486:	50                                              	push   eax
10987487:	e8 04 1a f9 ff                                  	call   0x10918e90
1098748c:	83 c4 04                                        	add    esp,0x4
1098748f:	5e                                              	pop    esi
10987490:	32 c0                                           	xor    al,al
10987492:	5f                                              	pop    edi
10987493:	83 c4 54                                        	add    esp,0x54
10987496:	c3                                              	ret
10987497:	cc                                              	int3
10987498:	cc                                              	int3
10987499:	cc                                              	int3
1098749a:	cc                                              	int3
1098749b:	cc                                              	int3
1098749c:	cc                                              	int3
1098749d:	cc                                              	int3
1098749e:	cc                                              	int3
1098749f:	cc                                              	int3
