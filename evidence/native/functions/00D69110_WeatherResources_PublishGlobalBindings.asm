# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00d69110 WeatherResources_PublishGlobalBindings
# Complete actual Ghidra owned ranges: 00d69110..00d69783; 536 instructions/1652 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00D69110_WeatherResources_PublishGlobalBindings.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d69110 <.text+0x968110>:
  d69110:	56                                              	push   esi
  d69111:	57                                              	push   edi
  d69112:	8b 3d 30 85 1d 01                               	mov    edi,DWORD PTR ds:0x11d8530
  d69118:	85 ff                                           	test   edi,edi
  d6911a:	8b f1                                           	mov    esi,ecx
  d6911c:	0f 84 5f 06 00 00                               	je     0xd69781
  d69122:	8b 46 40                                        	mov    eax,DWORD PTR [esi+0x40]
  d69125:	3b 47 08                                        	cmp    eax,DWORD PTR [edi+0x8]
  d69128:	73 17                                           	jae    0xd69141
  d6912a:	c1 e0 04                                        	shl    eax,0x4
  d6912d:	03 47 04                                        	add    eax,DWORD PTR [edi+0x4]
  d69130:	8d 56 10                                        	lea    edx,[esi+0x10]
  d69133:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d69136:	66 8b 4f 12                                     	mov    cx,WORD PTR [edi+0x12]
  d6913a:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6913e:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  d69141:	8b 46 44                                        	mov    eax,DWORD PTR [esi+0x44]
  d69144:	3b 47 08                                        	cmp    eax,DWORD PTR [edi+0x8]
  d69147:	73 17                                           	jae    0xd69160
  d69149:	c1 e0 04                                        	shl    eax,0x4
  d6914c:	03 47 04                                        	add    eax,DWORD PTR [edi+0x4]
  d6914f:	8d 56 20                                        	lea    edx,[esi+0x20]
  d69152:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d69155:	66 8b 4f 12                                     	mov    cx,WORD PTR [edi+0x12]
  d69159:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6915d:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  d69160:	8b 46 48                                        	mov    eax,DWORD PTR [esi+0x48]
  d69163:	3b 47 08                                        	cmp    eax,DWORD PTR [edi+0x8]
  d69166:	73 17                                           	jae    0xd6917f
  d69168:	c1 e0 04                                        	shl    eax,0x4
  d6916b:	03 47 04                                        	add    eax,DWORD PTR [edi+0x4]
  d6916e:	8d 56 30                                        	lea    edx,[esi+0x30]
  d69171:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d69174:	66 8b 4f 12                                     	mov    cx,WORD PTR [edi+0x12]
  d69178:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6917c:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  d6917f:	e8 4c fb f1 ff                                  	call   0xc88cd0
  d69184:	84 c0                                           	test   al,al
  d69186:	0f 84 f5 05 00 00                               	je     0xd69781
  d6918c:	8b 46 60                                        	mov    eax,DWORD PTR [esi+0x60]
  d6918f:	3b 47 08                                        	cmp    eax,DWORD PTR [edi+0x8]
  d69192:	73 17                                           	jae    0xd691ab
  d69194:	c1 e0 04                                        	shl    eax,0x4
  d69197:	03 47 04                                        	add    eax,DWORD PTR [edi+0x4]
  d6919a:	8d 56 50                                        	lea    edx,[esi+0x50]
  d6919d:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d691a0:	66 8b 4f 12                                     	mov    cx,WORD PTR [edi+0x12]
  d691a4:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d691a8:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  d691ab:	8b 86 80 00 00 00                               	mov    eax,DWORD PTR [esi+0x80]
  d691b1:	3b 47 08                                        	cmp    eax,DWORD PTR [edi+0x8]
  d691b4:	73 17                                           	jae    0xd691cd
  d691b6:	c1 e0 04                                        	shl    eax,0x4
  d691b9:	03 47 04                                        	add    eax,DWORD PTR [edi+0x4]
  d691bc:	8d 56 70                                        	lea    edx,[esi+0x70]
  d691bf:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d691c2:	66 8b 4f 12                                     	mov    cx,WORD PTR [edi+0x12]
  d691c6:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d691ca:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  d691cd:	8b 86 a0 00 00 00                               	mov    eax,DWORD PTR [esi+0xa0]
  d691d3:	3b 47 08                                        	cmp    eax,DWORD PTR [edi+0x8]
  d691d6:	73 1a                                           	jae    0xd691f2
  d691d8:	c1 e0 04                                        	shl    eax,0x4
  d691db:	03 47 04                                        	add    eax,DWORD PTR [edi+0x4]
  d691de:	8d 96 90 00 00 00                               	lea    edx,[esi+0x90]
  d691e4:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d691e7:	66 8b 4f 12                                     	mov    cx,WORD PTR [edi+0x12]
  d691eb:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d691ef:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  d691f2:	8b 86 44 01 00 00                               	mov    eax,DWORD PTR [esi+0x144]
  d691f8:	a8 03                                           	test   al,0x3
  d691fa:	75 0f                                           	jne    0xd6920b
  d691fc:	8b 86 44 01 00 00                               	mov    eax,DWORD PTR [esi+0x144]
  d69202:	85 c0                                           	test   eax,eax
  d69204:	74 05                                           	je     0xd6920b
  d69206:	83 c0 28                                        	add    eax,0x28
  d69209:	eb 02                                           	jmp    0xd6920d
  d6920b:	33 c0                                           	xor    eax,eax
  d6920d:	8b 8e a4 00 00 00                               	mov    ecx,DWORD PTR [esi+0xa4]
  d69213:	50                                              	push   eax
  d69214:	51                                              	push   ecx
  d69215:	8b cf                                           	mov    ecx,edi
  d69217:	e8 64 0e a3 ff                                  	call   0x79a080
  d6921c:	8b 96 54 01 00 00                               	mov    edx,DWORD PTR [esi+0x154]
  d69222:	f6 c2 03                                        	test   dl,0x3
  d69225:	75 0f                                           	jne    0xd69236
  d69227:	8b 86 54 01 00 00                               	mov    eax,DWORD PTR [esi+0x154]
  d6922d:	85 c0                                           	test   eax,eax
  d6922f:	74 05                                           	je     0xd69236
  d69231:	83 c0 28                                        	add    eax,0x28
  d69234:	eb 02                                           	jmp    0xd69238
  d69236:	33 c0                                           	xor    eax,eax
  d69238:	50                                              	push   eax
  d69239:	8b 86 e8 00 00 00                               	mov    eax,DWORD PTR [esi+0xe8]
  d6923f:	50                                              	push   eax
  d69240:	8b cf                                           	mov    ecx,edi
  d69242:	e8 39 0e a3 ff                                  	call   0x79a080
  d69247:	8b 8e 58 01 00 00                               	mov    ecx,DWORD PTR [esi+0x158]
  d6924d:	f6 c1 03                                        	test   cl,0x3
  d69250:	75 0f                                           	jne    0xd69261
  d69252:	8b 86 58 01 00 00                               	mov    eax,DWORD PTR [esi+0x158]
  d69258:	85 c0                                           	test   eax,eax
  d6925a:	74 05                                           	je     0xd69261
  d6925c:	83 c0 28                                        	add    eax,0x28
  d6925f:	eb 02                                           	jmp    0xd69263
  d69261:	33 c0                                           	xor    eax,eax
  d69263:	8b 96 ec 00 00 00                               	mov    edx,DWORD PTR [esi+0xec]
  d69269:	50                                              	push   eax
  d6926a:	52                                              	push   edx
  d6926b:	8b cf                                           	mov    ecx,edi
  d6926d:	e8 0e 0e a3 ff                                  	call   0x79a080
  d69272:	8b 86 5c 01 00 00                               	mov    eax,DWORD PTR [esi+0x15c]
  d69278:	a8 03                                           	test   al,0x3
  d6927a:	75 0f                                           	jne    0xd6928b
  d6927c:	8b 86 5c 01 00 00                               	mov    eax,DWORD PTR [esi+0x15c]
  d69282:	85 c0                                           	test   eax,eax
  d69284:	74 05                                           	je     0xd6928b
  d69286:	83 c0 28                                        	add    eax,0x28
  d69289:	eb 02                                           	jmp    0xd6928d
  d6928b:	33 c0                                           	xor    eax,eax
  d6928d:	8b 8e f0 00 00 00                               	mov    ecx,DWORD PTR [esi+0xf0]
  d69293:	50                                              	push   eax
  d69294:	51                                              	push   ecx
  d69295:	8b cf                                           	mov    ecx,edi
  d69297:	e8 e4 0d a3 ff                                  	call   0x79a080
  d6929c:	8b 96 60 01 00 00                               	mov    edx,DWORD PTR [esi+0x160]
  d692a2:	f6 c2 03                                        	test   dl,0x3
  d692a5:	75 0f                                           	jne    0xd692b6
  d692a7:	8b 86 60 01 00 00                               	mov    eax,DWORD PTR [esi+0x160]
  d692ad:	85 c0                                           	test   eax,eax
  d692af:	74 05                                           	je     0xd692b6
  d692b1:	83 c0 28                                        	add    eax,0x28
  d692b4:	eb 02                                           	jmp    0xd692b8
  d692b6:	33 c0                                           	xor    eax,eax
  d692b8:	50                                              	push   eax
  d692b9:	8b 86 f4 00 00 00                               	mov    eax,DWORD PTR [esi+0xf4]
  d692bf:	50                                              	push   eax
  d692c0:	8b cf                                           	mov    ecx,edi
  d692c2:	e8 b9 0d a3 ff                                  	call   0x79a080
  d692c7:	8b 8e 48 01 00 00                               	mov    ecx,DWORD PTR [esi+0x148]
  d692cd:	f6 c1 03                                        	test   cl,0x3
  d692d0:	75 0f                                           	jne    0xd692e1
  d692d2:	8b 86 48 01 00 00                               	mov    eax,DWORD PTR [esi+0x148]
  d692d8:	85 c0                                           	test   eax,eax
  d692da:	74 05                                           	je     0xd692e1
  d692dc:	83 c0 28                                        	add    eax,0x28
  d692df:	eb 02                                           	jmp    0xd692e3
  d692e1:	33 c0                                           	xor    eax,eax
  d692e3:	8b 96 c0 00 00 00                               	mov    edx,DWORD PTR [esi+0xc0]
  d692e9:	50                                              	push   eax
  d692ea:	52                                              	push   edx
  d692eb:	8b cf                                           	mov    ecx,edi
  d692ed:	e8 8e 0d a3 ff                                  	call   0x79a080
  d692f2:	8b 86 4c 01 00 00                               	mov    eax,DWORD PTR [esi+0x14c]
  d692f8:	a8 03                                           	test   al,0x3
  d692fa:	75 0f                                           	jne    0xd6930b
  d692fc:	8b 86 4c 01 00 00                               	mov    eax,DWORD PTR [esi+0x14c]
  d69302:	85 c0                                           	test   eax,eax
  d69304:	74 05                                           	je     0xd6930b
  d69306:	83 c0 28                                        	add    eax,0x28
  d69309:	eb 02                                           	jmp    0xd6930d
  d6930b:	33 c0                                           	xor    eax,eax
  d6930d:	8b 8e c4 00 00 00                               	mov    ecx,DWORD PTR [esi+0xc4]
  d69313:	50                                              	push   eax
  d69314:	51                                              	push   ecx
  d69315:	8b cf                                           	mov    ecx,edi
  d69317:	e8 64 0d a3 ff                                  	call   0x79a080
  d6931c:	8b 96 50 01 00 00                               	mov    edx,DWORD PTR [esi+0x150]
  d69322:	f6 c2 03                                        	test   dl,0x3
  d69325:	75 0f                                           	jne    0xd69336
  d69327:	8b 86 50 01 00 00                               	mov    eax,DWORD PTR [esi+0x150]
  d6932d:	85 c0                                           	test   eax,eax
  d6932f:	74 05                                           	je     0xd69336
  d69331:	83 c0 28                                        	add    eax,0x28
  d69334:	eb 02                                           	jmp    0xd69338
  d69336:	33 c0                                           	xor    eax,eax
  d69338:	50                                              	push   eax
  d69339:	8b 86 c8 00 00 00                               	mov    eax,DWORD PTR [esi+0xc8]
  d6933f:	50                                              	push   eax
  d69340:	8b cf                                           	mov    ecx,edi
  d69342:	e8 39 0d a3 ff                                  	call   0x79a080
  d69347:	8b 8e 64 01 00 00                               	mov    ecx,DWORD PTR [esi+0x164]
  d6934d:	f6 c1 03                                        	test   cl,0x3
  d69350:	75 0f                                           	jne    0xd69361
  d69352:	8b 86 64 01 00 00                               	mov    eax,DWORD PTR [esi+0x164]
  d69358:	85 c0                                           	test   eax,eax
  d6935a:	74 05                                           	je     0xd69361
  d6935c:	83 c0 28                                        	add    eax,0x28
  d6935f:	eb 02                                           	jmp    0xd69363
  d69361:	33 c0                                           	xor    eax,eax
  d69363:	8b 96 cc 00 00 00                               	mov    edx,DWORD PTR [esi+0xcc]
  d69369:	50                                              	push   eax
  d6936a:	52                                              	push   edx
  d6936b:	8b cf                                           	mov    ecx,edi
  d6936d:	e8 0e 0d a3 ff                                  	call   0x79a080
  d69372:	8b 86 68 01 00 00                               	mov    eax,DWORD PTR [esi+0x168]
  d69378:	a8 03                                           	test   al,0x3
  d6937a:	75 0f                                           	jne    0xd6938b
  d6937c:	8b 86 68 01 00 00                               	mov    eax,DWORD PTR [esi+0x168]
  d69382:	85 c0                                           	test   eax,eax
  d69384:	74 05                                           	je     0xd6938b
  d69386:	83 c0 28                                        	add    eax,0x28
  d69389:	eb 02                                           	jmp    0xd6938d
  d6938b:	33 c0                                           	xor    eax,eax
  d6938d:	8b 8e d0 00 00 00                               	mov    ecx,DWORD PTR [esi+0xd0]
  d69393:	50                                              	push   eax
  d69394:	51                                              	push   ecx
  d69395:	8b cf                                           	mov    ecx,edi
  d69397:	e8 e4 0c a3 ff                                  	call   0x79a080
  d6939c:	8b 96 6c 01 00 00                               	mov    edx,DWORD PTR [esi+0x16c]
  d693a2:	f6 c2 03                                        	test   dl,0x3
  d693a5:	75 0f                                           	jne    0xd693b6
  d693a7:	8b 86 6c 01 00 00                               	mov    eax,DWORD PTR [esi+0x16c]
  d693ad:	85 c0                                           	test   eax,eax
  d693af:	74 05                                           	je     0xd693b6
  d693b1:	83 c0 28                                        	add    eax,0x28
  d693b4:	eb 02                                           	jmp    0xd693b8
  d693b6:	33 c0                                           	xor    eax,eax
  d693b8:	50                                              	push   eax
  d693b9:	8b 86 d4 00 00 00                               	mov    eax,DWORD PTR [esi+0xd4]
  d693bf:	50                                              	push   eax
  d693c0:	8b cf                                           	mov    ecx,edi
  d693c2:	e8 b9 0c a3 ff                                  	call   0x79a080
  d693c7:	8b 8e 70 01 00 00                               	mov    ecx,DWORD PTR [esi+0x170]
  d693cd:	f6 c1 03                                        	test   cl,0x3
  d693d0:	75 0f                                           	jne    0xd693e1
  d693d2:	8b 86 70 01 00 00                               	mov    eax,DWORD PTR [esi+0x170]
  d693d8:	85 c0                                           	test   eax,eax
  d693da:	74 05                                           	je     0xd693e1
  d693dc:	83 c0 28                                        	add    eax,0x28
  d693df:	eb 02                                           	jmp    0xd693e3
  d693e1:	33 c0                                           	xor    eax,eax
  d693e3:	8b 96 d8 00 00 00                               	mov    edx,DWORD PTR [esi+0xd8]
  d693e9:	50                                              	push   eax
  d693ea:	52                                              	push   edx
  d693eb:	8b cf                                           	mov    ecx,edi
  d693ed:	e8 8e 0c a3 ff                                  	call   0x79a080
  d693f2:	8b 86 74 01 00 00                               	mov    eax,DWORD PTR [esi+0x174]
  d693f8:	a8 03                                           	test   al,0x3
  d693fa:	75 0f                                           	jne    0xd6940b
  d693fc:	8b 86 74 01 00 00                               	mov    eax,DWORD PTR [esi+0x174]
  d69402:	85 c0                                           	test   eax,eax
  d69404:	74 05                                           	je     0xd6940b
  d69406:	83 c0 28                                        	add    eax,0x28
  d69409:	eb 02                                           	jmp    0xd6940d
  d6940b:	33 c0                                           	xor    eax,eax
  d6940d:	8b 8e dc 00 00 00                               	mov    ecx,DWORD PTR [esi+0xdc]
  d69413:	50                                              	push   eax
  d69414:	51                                              	push   ecx
  d69415:	8b cf                                           	mov    ecx,edi
  d69417:	e8 64 0c a3 ff                                  	call   0x79a080
  d6941c:	8b 96 78 01 00 00                               	mov    edx,DWORD PTR [esi+0x178]
  d69422:	f6 c2 03                                        	test   dl,0x3
  d69425:	75 0f                                           	jne    0xd69436
  d69427:	8b 86 78 01 00 00                               	mov    eax,DWORD PTR [esi+0x178]
  d6942d:	85 c0                                           	test   eax,eax
  d6942f:	74 05                                           	je     0xd69436
  d69431:	83 c0 28                                        	add    eax,0x28
  d69434:	eb 02                                           	jmp    0xd69438
  d69436:	33 c0                                           	xor    eax,eax
  d69438:	50                                              	push   eax
  d69439:	8b 86 e0 00 00 00                               	mov    eax,DWORD PTR [esi+0xe0]
  d6943f:	50                                              	push   eax
  d69440:	8b cf                                           	mov    ecx,edi
  d69442:	e8 39 0c a3 ff                                  	call   0x79a080
  d69447:	8b 86 e4 00 00 00                               	mov    eax,DWORD PTR [esi+0xe4]
  d6944d:	3b 47 08                                        	cmp    eax,DWORD PTR [edi+0x8]
  d69450:	73 1a                                           	jae    0xd6946c
  d69452:	c1 e0 04                                        	shl    eax,0x4
  d69455:	03 47 04                                        	add    eax,DWORD PTR [edi+0x4]
  d69458:	8d 96 b0 00 00 00                               	lea    edx,[esi+0xb0]
  d6945e:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d69461:	66 8b 4f 12                                     	mov    cx,WORD PTR [edi+0x12]
  d69465:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d69469:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  d6946c:	8b 86 7c 01 00 00                               	mov    eax,DWORD PTR [esi+0x17c]
  d69472:	a8 03                                           	test   al,0x3
  d69474:	75 0f                                           	jne    0xd69485
  d69476:	8b 86 7c 01 00 00                               	mov    eax,DWORD PTR [esi+0x17c]
  d6947c:	85 c0                                           	test   eax,eax
  d6947e:	74 05                                           	je     0xd69485
  d69480:	83 c0 28                                        	add    eax,0x28
  d69483:	eb 02                                           	jmp    0xd69487
  d69485:	33 c0                                           	xor    eax,eax
  d69487:	8b 8e f8 00 00 00                               	mov    ecx,DWORD PTR [esi+0xf8]
  d6948d:	50                                              	push   eax
  d6948e:	51                                              	push   ecx
  d6948f:	8b cf                                           	mov    ecx,edi
  d69491:	e8 ea 0b a3 ff                                  	call   0x79a080
  d69496:	8b 96 80 01 00 00                               	mov    edx,DWORD PTR [esi+0x180]
  d6949c:	f6 c2 03                                        	test   dl,0x3
  d6949f:	75 0f                                           	jne    0xd694b0
  d694a1:	8b 86 80 01 00 00                               	mov    eax,DWORD PTR [esi+0x180]
  d694a7:	85 c0                                           	test   eax,eax
  d694a9:	74 05                                           	je     0xd694b0
  d694ab:	83 c0 28                                        	add    eax,0x28
  d694ae:	eb 02                                           	jmp    0xd694b2
  d694b0:	33 c0                                           	xor    eax,eax
  d694b2:	50                                              	push   eax
  d694b3:	8b 86 fc 00 00 00                               	mov    eax,DWORD PTR [esi+0xfc]
  d694b9:	50                                              	push   eax
  d694ba:	8b cf                                           	mov    ecx,edi
  d694bc:	e8 bf 0b a3 ff                                  	call   0x79a080
  d694c1:	8b 8e 84 01 00 00                               	mov    ecx,DWORD PTR [esi+0x184]
  d694c7:	f6 c1 03                                        	test   cl,0x3
  d694ca:	75 0f                                           	jne    0xd694db
  d694cc:	8b 86 84 01 00 00                               	mov    eax,DWORD PTR [esi+0x184]
  d694d2:	85 c0                                           	test   eax,eax
  d694d4:	74 05                                           	je     0xd694db
  d694d6:	83 c0 28                                        	add    eax,0x28
  d694d9:	eb 02                                           	jmp    0xd694dd
  d694db:	33 c0                                           	xor    eax,eax
  d694dd:	8b 96 00 01 00 00                               	mov    edx,DWORD PTR [esi+0x100]
  d694e3:	50                                              	push   eax
  d694e4:	52                                              	push   edx
  d694e5:	8b cf                                           	mov    ecx,edi
  d694e7:	e8 94 0b a3 ff                                  	call   0x79a080
  d694ec:	8b 86 88 01 00 00                               	mov    eax,DWORD PTR [esi+0x188]
  d694f2:	a8 03                                           	test   al,0x3
  d694f4:	75 0f                                           	jne    0xd69505
  d694f6:	8b 86 88 01 00 00                               	mov    eax,DWORD PTR [esi+0x188]
  d694fc:	85 c0                                           	test   eax,eax
  d694fe:	74 05                                           	je     0xd69505
  d69500:	83 c0 28                                        	add    eax,0x28
  d69503:	eb 02                                           	jmp    0xd69507
  d69505:	33 c0                                           	xor    eax,eax
  d69507:	8b 8e 04 01 00 00                               	mov    ecx,DWORD PTR [esi+0x104]
  d6950d:	50                                              	push   eax
  d6950e:	51                                              	push   ecx
  d6950f:	8b cf                                           	mov    ecx,edi
  d69511:	e8 6a 0b a3 ff                                  	call   0x79a080
  d69516:	8b 96 8c 01 00 00                               	mov    edx,DWORD PTR [esi+0x18c]
  d6951c:	f6 c2 03                                        	test   dl,0x3
  d6951f:	75 0f                                           	jne    0xd69530
  d69521:	8b 86 8c 01 00 00                               	mov    eax,DWORD PTR [esi+0x18c]
  d69527:	85 c0                                           	test   eax,eax
  d69529:	74 05                                           	je     0xd69530
  d6952b:	83 c0 28                                        	add    eax,0x28
  d6952e:	eb 02                                           	jmp    0xd69532
  d69530:	33 c0                                           	xor    eax,eax
  d69532:	50                                              	push   eax
  d69533:	8b 86 08 01 00 00                               	mov    eax,DWORD PTR [esi+0x108]
  d69539:	50                                              	push   eax
  d6953a:	8b cf                                           	mov    ecx,edi
  d6953c:	e8 3f 0b a3 ff                                  	call   0x79a080
  d69541:	8b 8e 90 01 00 00                               	mov    ecx,DWORD PTR [esi+0x190]
  d69547:	f6 c1 03                                        	test   cl,0x3
  d6954a:	75 0f                                           	jne    0xd6955b
  d6954c:	8b 86 90 01 00 00                               	mov    eax,DWORD PTR [esi+0x190]
  d69552:	85 c0                                           	test   eax,eax
  d69554:	74 05                                           	je     0xd6955b
  d69556:	83 c0 28                                        	add    eax,0x28
  d69559:	eb 02                                           	jmp    0xd6955d
  d6955b:	33 c0                                           	xor    eax,eax
  d6955d:	8b 96 0c 01 00 00                               	mov    edx,DWORD PTR [esi+0x10c]
  d69563:	50                                              	push   eax
  d69564:	52                                              	push   edx
  d69565:	8b cf                                           	mov    ecx,edi
  d69567:	e8 14 0b a3 ff                                  	call   0x79a080
  d6956c:	8b 86 94 01 00 00                               	mov    eax,DWORD PTR [esi+0x194]
  d69572:	a8 03                                           	test   al,0x3
  d69574:	75 0f                                           	jne    0xd69585
  d69576:	8b 86 94 01 00 00                               	mov    eax,DWORD PTR [esi+0x194]
  d6957c:	85 c0                                           	test   eax,eax
  d6957e:	74 05                                           	je     0xd69585
  d69580:	83 c0 28                                        	add    eax,0x28
  d69583:	eb 02                                           	jmp    0xd69587
  d69585:	33 c0                                           	xor    eax,eax
  d69587:	8b 8e 10 01 00 00                               	mov    ecx,DWORD PTR [esi+0x110]
  d6958d:	50                                              	push   eax
  d6958e:	51                                              	push   ecx
  d6958f:	8b cf                                           	mov    ecx,edi
  d69591:	e8 ea 0a a3 ff                                  	call   0x79a080
  d69596:	8b 96 98 01 00 00                               	mov    edx,DWORD PTR [esi+0x198]
  d6959c:	f6 c2 03                                        	test   dl,0x3
  d6959f:	75 0f                                           	jne    0xd695b0
  d695a1:	8b 86 98 01 00 00                               	mov    eax,DWORD PTR [esi+0x198]
  d695a7:	85 c0                                           	test   eax,eax
  d695a9:	74 05                                           	je     0xd695b0
  d695ab:	83 c0 28                                        	add    eax,0x28
  d695ae:	eb 02                                           	jmp    0xd695b2
  d695b0:	33 c0                                           	xor    eax,eax
  d695b2:	50                                              	push   eax
  d695b3:	8b 86 14 01 00 00                               	mov    eax,DWORD PTR [esi+0x114]
  d695b9:	50                                              	push   eax
  d695ba:	8b cf                                           	mov    ecx,edi
  d695bc:	e8 bf 0a a3 ff                                  	call   0x79a080
  d695c1:	8b 8e b8 01 00 00                               	mov    ecx,DWORD PTR [esi+0x1b8]
  d695c7:	f6 c1 03                                        	test   cl,0x3
  d695ca:	75 0f                                           	jne    0xd695db
  d695cc:	8b 86 b8 01 00 00                               	mov    eax,DWORD PTR [esi+0x1b8]
  d695d2:	85 c0                                           	test   eax,eax
  d695d4:	74 05                                           	je     0xd695db
  d695d6:	83 c0 28                                        	add    eax,0x28
  d695d9:	eb 02                                           	jmp    0xd695dd
  d695db:	33 c0                                           	xor    eax,eax
  d695dd:	8b 96 18 01 00 00                               	mov    edx,DWORD PTR [esi+0x118]
  d695e3:	50                                              	push   eax
  d695e4:	52                                              	push   edx
  d695e5:	8b cf                                           	mov    ecx,edi
  d695e7:	e8 94 0a a3 ff                                  	call   0x79a080
  d695ec:	8b 86 bc 01 00 00                               	mov    eax,DWORD PTR [esi+0x1bc]
  d695f2:	a8 03                                           	test   al,0x3
  d695f4:	75 0f                                           	jne    0xd69605
  d695f6:	8b 86 bc 01 00 00                               	mov    eax,DWORD PTR [esi+0x1bc]
  d695fc:	85 c0                                           	test   eax,eax
  d695fe:	74 05                                           	je     0xd69605
  d69600:	83 c0 28                                        	add    eax,0x28
  d69603:	eb 02                                           	jmp    0xd69607
  d69605:	33 c0                                           	xor    eax,eax
  d69607:	8b 8e 1c 01 00 00                               	mov    ecx,DWORD PTR [esi+0x11c]
  d6960d:	50                                              	push   eax
  d6960e:	51                                              	push   ecx
  d6960f:	8b cf                                           	mov    ecx,edi
  d69611:	e8 6a 0a a3 ff                                  	call   0x79a080
  d69616:	8b 96 9c 01 00 00                               	mov    edx,DWORD PTR [esi+0x19c]
  d6961c:	f6 c2 03                                        	test   dl,0x3
  d6961f:	75 0f                                           	jne    0xd69630
  d69621:	8b 86 9c 01 00 00                               	mov    eax,DWORD PTR [esi+0x19c]
  d69627:	85 c0                                           	test   eax,eax
  d69629:	74 05                                           	je     0xd69630
  d6962b:	83 c0 28                                        	add    eax,0x28
  d6962e:	eb 02                                           	jmp    0xd69632
  d69630:	33 c0                                           	xor    eax,eax
  d69632:	50                                              	push   eax
  d69633:	8b 86 24 01 00 00                               	mov    eax,DWORD PTR [esi+0x124]
  d69639:	50                                              	push   eax
  d6963a:	8b cf                                           	mov    ecx,edi
  d6963c:	e8 3f 0a a3 ff                                  	call   0x79a080
  d69641:	8b 8e a0 01 00 00                               	mov    ecx,DWORD PTR [esi+0x1a0]
  d69647:	f6 c1 03                                        	test   cl,0x3
  d6964a:	75 0f                                           	jne    0xd6965b
  d6964c:	8b 86 a0 01 00 00                               	mov    eax,DWORD PTR [esi+0x1a0]
  d69652:	85 c0                                           	test   eax,eax
  d69654:	74 05                                           	je     0xd6965b
  d69656:	83 c0 28                                        	add    eax,0x28
  d69659:	eb 02                                           	jmp    0xd6965d
  d6965b:	33 c0                                           	xor    eax,eax
  d6965d:	8b 96 28 01 00 00                               	mov    edx,DWORD PTR [esi+0x128]
  d69663:	50                                              	push   eax
  d69664:	52                                              	push   edx
  d69665:	8b cf                                           	mov    ecx,edi
  d69667:	e8 14 0a a3 ff                                  	call   0x79a080
  d6966c:	8b 86 a4 01 00 00                               	mov    eax,DWORD PTR [esi+0x1a4]
  d69672:	a8 03                                           	test   al,0x3
  d69674:	75 0f                                           	jne    0xd69685
  d69676:	8b 86 a4 01 00 00                               	mov    eax,DWORD PTR [esi+0x1a4]
  d6967c:	85 c0                                           	test   eax,eax
  d6967e:	74 05                                           	je     0xd69685
  d69680:	83 c0 28                                        	add    eax,0x28
  d69683:	eb 02                                           	jmp    0xd69687
  d69685:	33 c0                                           	xor    eax,eax
  d69687:	8b 8e 2c 01 00 00                               	mov    ecx,DWORD PTR [esi+0x12c]
  d6968d:	50                                              	push   eax
  d6968e:	51                                              	push   ecx
  d6968f:	8b cf                                           	mov    ecx,edi
  d69691:	e8 ea 09 a3 ff                                  	call   0x79a080
  d69696:	e8 d5 ea 97 ff                                  	call   0x6e8170
  d6969b:	8b c8                                           	mov    ecx,eax
  d6969d:	e8 7e eb 97 ff                                  	call   0x6e8220
  d696a2:	8b 40 64                                        	mov    eax,DWORD PTR [eax+0x64]
  d696a5:	85 c0                                           	test   eax,eax
  d696a7:	74 08                                           	je     0xd696b1
  d696a9:	8b 80 5c 2c 00 00                               	mov    eax,DWORD PTR [eax+0x2c5c]
  d696af:	eb 02                                           	jmp    0xd696b3
  d696b1:	33 c0                                           	xor    eax,eax
  d696b3:	8b 96 30 01 00 00                               	mov    edx,DWORD PTR [esi+0x130]
  d696b9:	50                                              	push   eax
  d696ba:	52                                              	push   edx
  d696bb:	8b cf                                           	mov    ecx,edi
  d696bd:	e8 be 09 a3 ff                                  	call   0x79a080
  d696c2:	8b 86 a8 01 00 00                               	mov    eax,DWORD PTR [esi+0x1a8]
  d696c8:	a8 03                                           	test   al,0x3
  d696ca:	75 0f                                           	jne    0xd696db
  d696cc:	8b 86 a8 01 00 00                               	mov    eax,DWORD PTR [esi+0x1a8]
  d696d2:	85 c0                                           	test   eax,eax
  d696d4:	74 05                                           	je     0xd696db
  d696d6:	83 c0 28                                        	add    eax,0x28
  d696d9:	eb 02                                           	jmp    0xd696dd
  d696db:	33 c0                                           	xor    eax,eax
  d696dd:	8b 8e 34 01 00 00                               	mov    ecx,DWORD PTR [esi+0x134]
  d696e3:	50                                              	push   eax
  d696e4:	51                                              	push   ecx
  d696e5:	8b cf                                           	mov    ecx,edi
  d696e7:	e8 94 09 a3 ff                                  	call   0x79a080
  d696ec:	8b 96 ac 01 00 00                               	mov    edx,DWORD PTR [esi+0x1ac]
  d696f2:	f6 c2 03                                        	test   dl,0x3
  d696f5:	75 0f                                           	jne    0xd69706
  d696f7:	8b 86 ac 01 00 00                               	mov    eax,DWORD PTR [esi+0x1ac]
  d696fd:	85 c0                                           	test   eax,eax
  d696ff:	74 05                                           	je     0xd69706
  d69701:	83 c0 28                                        	add    eax,0x28
  d69704:	eb 02                                           	jmp    0xd69708
  d69706:	33 c0                                           	xor    eax,eax
  d69708:	50                                              	push   eax
  d69709:	8b 86 38 01 00 00                               	mov    eax,DWORD PTR [esi+0x138]
  d6970f:	50                                              	push   eax
  d69710:	8b cf                                           	mov    ecx,edi
  d69712:	e8 69 09 a3 ff                                  	call   0x79a080
  d69717:	8b 8e b0 01 00 00                               	mov    ecx,DWORD PTR [esi+0x1b0]
  d6971d:	f6 c1 03                                        	test   cl,0x3
  d69720:	75 0f                                           	jne    0xd69731
  d69722:	8b 86 b0 01 00 00                               	mov    eax,DWORD PTR [esi+0x1b0]
  d69728:	85 c0                                           	test   eax,eax
  d6972a:	74 05                                           	je     0xd69731
  d6972c:	83 c0 28                                        	add    eax,0x28
  d6972f:	eb 02                                           	jmp    0xd69733
  d69731:	33 c0                                           	xor    eax,eax
  d69733:	8b 96 3c 01 00 00                               	mov    edx,DWORD PTR [esi+0x13c]
  d69739:	50                                              	push   eax
  d6973a:	52                                              	push   edx
  d6973b:	8b cf                                           	mov    ecx,edi
  d6973d:	e8 3e 09 a3 ff                                  	call   0x79a080
  d69742:	8b 86 b4 01 00 00                               	mov    eax,DWORD PTR [esi+0x1b4]
  d69748:	a8 03                                           	test   al,0x3
  d6974a:	75 0f                                           	jne    0xd6975b
  d6974c:	8b 86 b4 01 00 00                               	mov    eax,DWORD PTR [esi+0x1b4]
  d69752:	85 c0                                           	test   eax,eax
  d69754:	74 05                                           	je     0xd6975b
  d69756:	83 c0 28                                        	add    eax,0x28
  d69759:	eb 02                                           	jmp    0xd6975d
  d6975b:	33 c0                                           	xor    eax,eax
  d6975d:	8b 8e 40 01 00 00                               	mov    ecx,DWORD PTR [esi+0x140]
  d69763:	50                                              	push   eax
  d69764:	51                                              	push   ecx
  d69765:	8b cf                                           	mov    ecx,edi
  d69767:	e8 14 09 a3 ff                                  	call   0x79a080
  d6976c:	8b 96 c0 01 00 00                               	mov    edx,DWORD PTR [esi+0x1c0]
  d69772:	8b 86 20 01 00 00                               	mov    eax,DWORD PTR [esi+0x120]
  d69778:	52                                              	push   edx
  d69779:	50                                              	push   eax
  d6977a:	8b cf                                           	mov    ecx,edi
  d6977c:	e8 ff 08 a3 ff                                  	call   0x79a080
  d69781:	5f                                              	pop    edi
  d69782:	5e                                              	pop    esi
  d69783:	c3                                              	ret
