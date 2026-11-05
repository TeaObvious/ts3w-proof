# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00797200 (ScriptCore.World::World_TestObjectPlacementPQEI)
Paired Ghidra pseudocode: 00797200_ScriptCore_World_World_TestObjectPlacementPQEI.c
Window: [0x00797200, 0x007976b0) (1200 bytes; stop exclusive)
Next defined Ghidra entry: 0x007976b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00797200: 55 8b ec 83 e4 f0 81 ec e4 00 00 00 53 56 57 e8
00797210: 7c 21 fd ff 8b f0 e8 55 03 1a 00 8b 4d 0c 8b 55
00797220: 08 51 52 8b c8 e8 56 0d 1a 00 8b f8 85 ff 89 7c
00797230: 24 10 0f 84 5c 03 00 00 8d 47 04 b9 01 00 00 00
00797240: f0 0f c1 08 8b 45 18 85 c0 0f 84 45 03 00 00 f3
00797250: 0f 10 48 08 f3 0f 10 00 f3 0f 11 4c 24 28 f3 0f
00797260: 10 48 04 8b 45 14 33 c9 33 d2 85 c0 f3 0f 11 44
00797270: 24 2c f3 0f 11 4c 24 24 f3 0f 11 44 24 20 0f 28
00797280: 44 24 20 0f 29 44 24 70 89 4c 24 18 89 54 24 1c
00797290: 74 1c 8b 16 8b 52 68 8d 4c 24 1c 51 8d 4c 24 1c
007972a0: 51 50 8b ce ff d2 8b 4c 24 18 8b 54 24 1c 83 7d
007972b0: 28 00 0f 84 49 02 00 00 83 7d 2c 00 0f 84 3f 02
007972c0: 00 00 83 7d 20 00 0f 86 35 02 00 00 83 7d 24 00
007972d0: 0f 84 2b 02 00 00 8d 8c 24 80 00 00 00 e8 fe 10
007972e0: 4e 00 8b 45 1c 85 c0 8b 4d 10 74 7d f3 0f 10 40
007972f0: 0c f3 0f 11 44 24 4c f3 0f 10 40 08 f3 0f 11 44
00797300: 24 48 f3 0f 10 40 04 f3 0f 11 44 24 44 f3 0f 10
00797310: 00 8d 84 24 80 00 00 00 50 51 8b 4c 24 24 8d 54
00797320: 24 48 52 8b 54 24 24 8d 44 24 7c 50 51 f3 0f 11
00797330: 44 24 54 0f 28 44 24 54 52 57 0f 29 44 24 5c e8
00797340: 3c 27 4e 00 83 c4 1c 84 c0 74 41 8d 8c 24 80 00
00797350: 00 00 e8 39 f2 ff ff 8d 4c 24 10 e8 80 ef fa ff
00797360: b0 01 5f 5e 5b 8b e5 5d c3 8d 84 24 80 00 00 00
00797370: 50 8b 44 24 20 51 8b 4c 24 20 8d 54 24 78 52 50
00797380: 51 57 e8 f9 56 4e 00 83 c4 18 eb bb 8d 54 24 14
00797390: bf 98 1c 01 01 52 8d 4c 24 24 33 db 89 7c 24 18
007973a0: e8 5b 21 04 00 8d 44 24 14 50 8d 4c 24 64 89 7c
007973b0: 24 18 e8 49 21 04 00 8d 8c 24 80 00 00 00 e8 dd
007973c0: dd 04 00 8b 78 08 8d 8c 24 80 00 00 00 89 7c 24
007973d0: 14 e8 ca dd 04 00 83 c0 04 3b f8 74 6b 8d 49 00
007973e0: 3b 5d 20 73 63 8b 4f 10 8d 54 24 30 89 4c 24 30
007973f0: 52 8d 4c 24 24 c7 44 24 38 00 00 00 00 e8 fe b0
00797400: dd ff 8b 4f 3c 8b 47 38 8d 54 24 40 89 4c 24 44
00797410: 52 8d 4c 24 64 89 44 24 44 e8 e2 b0 dd ff 6a 00
00797420: 8d 44 24 60 50 8d 4c 24 1c 83 c3 01 e8 ff b0 08
00797430: 00 8d 8c 24 80 00 00 00 e8 63 dd 04 00 8b 7c 24
00797440: 14 83 c0 04 3b f8 75 98 8b 44 24 24 2b 44 24 20
00797450: 8b 16 8b 7d 28 8b 92 88 00 00 00 c1 f8 03 50 57
00797460: 8b ce ff d2 8b 44 24 20 8b 4c 24 24 8b 16 8b 92
00797470: a0 00 00 00 2b c8 c1 f9 03 51 6a 00 50 57 8b ce
00797480: ff d2 8b 4c 24 64 2b 4c 24 60 8b 06 8b 7d 2c 8b
00797490: 90 88 00 00 00 c1 f9 03 51 57 8b ce ff d2 8b 44
007974a0: 24 60 8b 4c 24 64 8b 16 8b 92 a0 00 00 00 2b c8
007974b0: c1 f9 03 51 6a 00 50 57 8b ce ff d2 8b 45 24 89
007974c0: 18 8b 44 24 60 85 c0 74 09 50 e8 11 d0 d4 ff 83
007974d0: c4 04 8b 44 24 20 85 c0 74 09 50 e8 00 d0 d4 ff
007974e0: 83 c4 04 8d 8c 24 80 00 00 00 e8 a1 f0 ff ff 8d
007974f0: 4c 24 10 e8 e8 ed fa ff 32 c0 5f 5e 5b 8b e5 5d
00797500: c3 8b 45 1c 85 c0 6a 00 74 62 f3 0f 10 40 0c f3
00797510: 0f 11 44 24 30 f3 0f 10 40 08 f3 0f 11 44 24 2c
00797520: f3 0f 10 40 04 f3 0f 11 44 24 28 f3 0f 10 00 8b
00797530: 45 10 50 8d 44 24 28 50 8d 44 24 7c 50 52 f3 0f
00797540: 11 44 24 34 0f 28 44 24 34 51 57 0f 29 44 24 3c
00797550: e8 2b 25 4e 00 83 c4 1c 8d 4c 24 10 8a d8 e8 7d
00797560: ed fa ff 8a c3 5f 5e 5b 8b e5 5d c3 8b 45 10 50
00797570: 8d 44 24 78 50 52 51 57 e8 03 55 4e 00 83 c4 18
00797580: 8d 4c 24 10 8a d8 e8 55 ed fa ff 8a c3 5f 5e 5b
00797590: 8b e5 5d c3 83 7d 20 00 0f 86 d8 00 00 00 8b 45
007975a0: 24 85 c0 0f 84 cd 00 00 00 8b 5d 28 85 db 0f 84
007975b0: c2 00 00 00 8b 7d 2c 85 ff 0f 84 b3 00 00 00 8d
007975c0: 4c 24 14 51 8d 4c 24 34 c7 00 01 00 00 00 c7 44
007975d0: 24 18 98 1c 01 01 e8 25 1f 04 00 33 c0 8d 54 24
007975e0: 40 52 8d 4c 24 34 89 44 24 44 89 44 24 48 e8 0d
007975f0: af dd ff 8b 4c 24 34 2b 4c 24 30 8b 06 8b 90 88
00797600: 00 00 00 c1 f9 03 51 53 8b ce ff d2 8b 44 24 30
00797610: 8b 4c 24 34 8b 16 8b 92 a0 00 00 00 2b c8 c1 f9
00797620: 03 51 6a 00 50 53 8b ce ff d2 8b 4c 24 34 2b 4c
00797630: 24 30 8b 06 8b 90 88 00 00 00 c1 f9 03 51 57 8b
00797640: ce ff d2 8b 44 24 30 8b 4c 24 34 8b 16 8b 92 a0
00797650: 00 00 00 2b c8 c1 f9 03 51 6a 00 50 57 8b ce ff
00797660: d2 8b 44 24 30 85 c0 74 09 50 e8 71 ce d4 ff 83
00797670: c4 04 8b 7c 24 10 85 ff 74 20 8d 47 04 8b c8 83
00797680: ca ff f0 0f c1 11 4a 75 11 b9 01 00 00 00 87 08
00797690: 8b 17 8b 02 6a 01 8b cf ff d0 5f 5e 32 c0 5b 8b
007976a0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00797200 <.text+0x396200>:
  797200:	55                                              	push   ebp
  797201:	8b ec                                           	mov    ebp,esp
  797203:	83 e4 f0                                        	and    esp,0xfffffff0
  797206:	81 ec e4 00 00 00                               	sub    esp,0xe4
  79720c:	53                                              	push   ebx
  79720d:	56                                              	push   esi
  79720e:	57                                              	push   edi
  79720f:	e8 7c 21 fd ff                                  	call   0x769390
  797214:	8b f0                                           	mov    esi,eax
  797216:	e8 55 03 1a 00                                  	call   0x937570
  79721b:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  79721e:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  797221:	51                                              	push   ecx
  797222:	52                                              	push   edx
  797223:	8b c8                                           	mov    ecx,eax
  797225:	e8 56 0d 1a 00                                  	call   0x937f80
  79722a:	8b f8                                           	mov    edi,eax
  79722c:	85 ff                                           	test   edi,edi
  79722e:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  797232:	0f 84 5c 03 00 00                               	je     0x797594
  797238:	8d 47 04                                        	lea    eax,[edi+0x4]
  79723b:	b9 01 00 00 00                                  	mov    ecx,0x1
  797240:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  797244:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  797247:	85 c0                                           	test   eax,eax
  797249:	0f 84 45 03 00 00                               	je     0x797594
  79724f:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
  797254:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  797258:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
  79725e:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  797263:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  797266:	33 c9                                           	xor    ecx,ecx
  797268:	33 d2                                           	xor    edx,edx
  79726a:	85 c0                                           	test   eax,eax
  79726c:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  797272:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
  797278:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  79727e:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  797283:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  797288:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  79728c:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  797290:	74 1c                                           	je     0x7972ae
  797292:	8b 16                                           	mov    edx,DWORD PTR [esi]
  797294:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  797297:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  79729b:	51                                              	push   ecx
  79729c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  7972a0:	51                                              	push   ecx
  7972a1:	50                                              	push   eax
  7972a2:	8b ce                                           	mov    ecx,esi
  7972a4:	ff d2                                           	call   edx
  7972a6:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7972aa:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  7972ae:	83 7d 28 00                                     	cmp    DWORD PTR [ebp+0x28],0x0
  7972b2:	0f 84 49 02 00 00                               	je     0x797501
  7972b8:	83 7d 2c 00                                     	cmp    DWORD PTR [ebp+0x2c],0x0
  7972bc:	0f 84 3f 02 00 00                               	je     0x797501
  7972c2:	83 7d 20 00                                     	cmp    DWORD PTR [ebp+0x20],0x0
  7972c6:	0f 86 35 02 00 00                               	jbe    0x797501
  7972cc:	83 7d 24 00                                     	cmp    DWORD PTR [ebp+0x24],0x0
  7972d0:	0f 84 2b 02 00 00                               	je     0x797501
  7972d6:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  7972dd:	e8 fe 10 4e 00                                  	call   0xc783e0
  7972e2:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  7972e5:	85 c0                                           	test   eax,eax
  7972e7:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  7972ea:	74 7d                                           	je     0x797369
  7972ec:	f3 0f 10 40 0c                                  	movss  xmm0,DWORD PTR [eax+0xc]
  7972f1:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
  7972f7:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
  7972fc:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  797302:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
  797307:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
  79730d:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  797311:	8d 84 24 80 00 00 00                            	lea    eax,[esp+0x80]
  797318:	50                                              	push   eax
  797319:	51                                              	push   ecx
  79731a:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  79731e:	8d 54 24 48                                     	lea    edx,[esp+0x48]
  797322:	52                                              	push   edx
  797323:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  797327:	8d 44 24 7c                                     	lea    eax,[esp+0x7c]
  79732b:	50                                              	push   eax
  79732c:	51                                              	push   ecx
  79732d:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
  797333:	0f 28 44 24 54                                  	movaps xmm0,XMMWORD PTR [esp+0x54]
  797338:	52                                              	push   edx
  797339:	57                                              	push   edi
  79733a:	0f 29 44 24 5c                                  	movaps XMMWORD PTR [esp+0x5c],xmm0
  79733f:	e8 3c 27 4e 00                                  	call   0xc79a80
  797344:	83 c4 1c                                        	add    esp,0x1c
  797347:	84 c0                                           	test   al,al
  797349:	74 41                                           	je     0x79738c
  79734b:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  797352:	e8 39 f2 ff ff                                  	call   0x796590
  797357:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  79735b:	e8 80 ef fa ff                                  	call   0x7462e0
  797360:	b0 01                                           	mov    al,0x1
  797362:	5f                                              	pop    edi
  797363:	5e                                              	pop    esi
  797364:	5b                                              	pop    ebx
  797365:	8b e5                                           	mov    esp,ebp
  797367:	5d                                              	pop    ebp
  797368:	c3                                              	ret
  797369:	8d 84 24 80 00 00 00                            	lea    eax,[esp+0x80]
  797370:	50                                              	push   eax
  797371:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  797375:	51                                              	push   ecx
  797376:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  79737a:	8d 54 24 78                                     	lea    edx,[esp+0x78]
  79737e:	52                                              	push   edx
  79737f:	50                                              	push   eax
  797380:	51                                              	push   ecx
  797381:	57                                              	push   edi
  797382:	e8 f9 56 4e 00                                  	call   0xc7ca80
  797387:	83 c4 18                                        	add    esp,0x18
  79738a:	eb bb                                           	jmp    0x797347
  79738c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  797390:	bf 98 1c 01 01                                  	mov    edi,0x1011c98
  797395:	52                                              	push   edx
  797396:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  79739a:	33 db                                           	xor    ebx,ebx
  79739c:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  7973a0:	e8 5b 21 04 00                                  	call   0x7d9500
  7973a5:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7973a9:	50                                              	push   eax
  7973aa:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  7973ae:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  7973b2:	e8 49 21 04 00                                  	call   0x7d9500
  7973b7:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  7973be:	e8 dd dd 04 00                                  	call   0x7e51a0
  7973c3:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  7973c6:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  7973cd:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  7973d1:	e8 ca dd 04 00                                  	call   0x7e51a0
  7973d6:	83 c0 04                                        	add    eax,0x4
  7973d9:	3b f8                                           	cmp    edi,eax
  7973db:	74 6b                                           	je     0x797448
  7973dd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  7973e0:	3b 5d 20                                        	cmp    ebx,DWORD PTR [ebp+0x20]
  7973e3:	73 63                                           	jae    0x797448
  7973e5:	8b 4f 10                                        	mov    ecx,DWORD PTR [edi+0x10]
  7973e8:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  7973ec:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  7973f0:	52                                              	push   edx
  7973f1:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  7973f5:	c7 44 24 38 00 00 00 00                         	mov    DWORD PTR [esp+0x38],0x0
  7973fd:	e8 fe b0 dd ff                                  	call   0x572500
  797402:	8b 4f 3c                                        	mov    ecx,DWORD PTR [edi+0x3c]
  797405:	8b 47 38                                        	mov    eax,DWORD PTR [edi+0x38]
  797408:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  79740c:	89 4c 24 44                                     	mov    DWORD PTR [esp+0x44],ecx
  797410:	52                                              	push   edx
  797411:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  797415:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  797419:	e8 e2 b0 dd ff                                  	call   0x572500
  79741e:	6a 00                                           	push   0x0
  797420:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  797424:	50                                              	push   eax
  797425:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  797429:	83 c3 01                                        	add    ebx,0x1
  79742c:	e8 ff b0 08 00                                  	call   0x822530
  797431:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  797438:	e8 63 dd 04 00                                  	call   0x7e51a0
  79743d:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  797441:	83 c0 04                                        	add    eax,0x4
  797444:	3b f8                                           	cmp    edi,eax
  797446:	75 98                                           	jne    0x7973e0
  797448:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  79744c:	2b 44 24 20                                     	sub    eax,DWORD PTR [esp+0x20]
  797450:	8b 16                                           	mov    edx,DWORD PTR [esi]
  797452:	8b 7d 28                                        	mov    edi,DWORD PTR [ebp+0x28]
  797455:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
  79745b:	c1 f8 03                                        	sar    eax,0x3
  79745e:	50                                              	push   eax
  79745f:	57                                              	push   edi
  797460:	8b ce                                           	mov    ecx,esi
  797462:	ff d2                                           	call   edx
  797464:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  797468:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  79746c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  79746e:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
  797474:	2b c8                                           	sub    ecx,eax
  797476:	c1 f9 03                                        	sar    ecx,0x3
  797479:	51                                              	push   ecx
  79747a:	6a 00                                           	push   0x0
  79747c:	50                                              	push   eax
  79747d:	57                                              	push   edi
  79747e:	8b ce                                           	mov    ecx,esi
  797480:	ff d2                                           	call   edx
  797482:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  797486:	2b 4c 24 60                                     	sub    ecx,DWORD PTR [esp+0x60]
  79748a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  79748c:	8b 7d 2c                                        	mov    edi,DWORD PTR [ebp+0x2c]
  79748f:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  797495:	c1 f9 03                                        	sar    ecx,0x3
  797498:	51                                              	push   ecx
  797499:	57                                              	push   edi
  79749a:	8b ce                                           	mov    ecx,esi
  79749c:	ff d2                                           	call   edx
  79749e:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  7974a2:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  7974a6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7974a8:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
  7974ae:	2b c8                                           	sub    ecx,eax
  7974b0:	c1 f9 03                                        	sar    ecx,0x3
  7974b3:	51                                              	push   ecx
  7974b4:	6a 00                                           	push   0x0
  7974b6:	50                                              	push   eax
  7974b7:	57                                              	push   edi
  7974b8:	8b ce                                           	mov    ecx,esi
  7974ba:	ff d2                                           	call   edx
  7974bc:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  7974bf:	89 18                                           	mov    DWORD PTR [eax],ebx
  7974c1:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  7974c5:	85 c0                                           	test   eax,eax
  7974c7:	74 09                                           	je     0x7974d2
  7974c9:	50                                              	push   eax
  7974ca:	e8 11 d0 d4 ff                                  	call   0x4e44e0
  7974cf:	83 c4 04                                        	add    esp,0x4
  7974d2:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  7974d6:	85 c0                                           	test   eax,eax
  7974d8:	74 09                                           	je     0x7974e3
  7974da:	50                                              	push   eax
  7974db:	e8 00 d0 d4 ff                                  	call   0x4e44e0
  7974e0:	83 c4 04                                        	add    esp,0x4
  7974e3:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  7974ea:	e8 a1 f0 ff ff                                  	call   0x796590
  7974ef:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7974f3:	e8 e8 ed fa ff                                  	call   0x7462e0
  7974f8:	32 c0                                           	xor    al,al
  7974fa:	5f                                              	pop    edi
  7974fb:	5e                                              	pop    esi
  7974fc:	5b                                              	pop    ebx
  7974fd:	8b e5                                           	mov    esp,ebp
  7974ff:	5d                                              	pop    ebp
  797500:	c3                                              	ret
  797501:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  797504:	85 c0                                           	test   eax,eax
  797506:	6a 00                                           	push   0x0
  797508:	74 62                                           	je     0x79756c
  79750a:	f3 0f 10 40 0c                                  	movss  xmm0,DWORD PTR [eax+0xc]
  79750f:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  797515:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
  79751a:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  797520:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
  797525:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  79752b:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  79752f:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  797532:	50                                              	push   eax
  797533:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  797537:	50                                              	push   eax
  797538:	8d 44 24 7c                                     	lea    eax,[esp+0x7c]
  79753c:	50                                              	push   eax
  79753d:	52                                              	push   edx
  79753e:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  797544:	0f 28 44 24 34                                  	movaps xmm0,XMMWORD PTR [esp+0x34]
  797549:	51                                              	push   ecx
  79754a:	57                                              	push   edi
  79754b:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
  797550:	e8 2b 25 4e 00                                  	call   0xc79a80
  797555:	83 c4 1c                                        	add    esp,0x1c
  797558:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  79755c:	8a d8                                           	mov    bl,al
  79755e:	e8 7d ed fa ff                                  	call   0x7462e0
  797563:	8a c3                                           	mov    al,bl
  797565:	5f                                              	pop    edi
  797566:	5e                                              	pop    esi
  797567:	5b                                              	pop    ebx
  797568:	8b e5                                           	mov    esp,ebp
  79756a:	5d                                              	pop    ebp
  79756b:	c3                                              	ret
  79756c:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  79756f:	50                                              	push   eax
  797570:	8d 44 24 78                                     	lea    eax,[esp+0x78]
  797574:	50                                              	push   eax
  797575:	52                                              	push   edx
  797576:	51                                              	push   ecx
  797577:	57                                              	push   edi
  797578:	e8 03 55 4e 00                                  	call   0xc7ca80
  79757d:	83 c4 18                                        	add    esp,0x18
  797580:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  797584:	8a d8                                           	mov    bl,al
  797586:	e8 55 ed fa ff                                  	call   0x7462e0
  79758b:	8a c3                                           	mov    al,bl
  79758d:	5f                                              	pop    edi
  79758e:	5e                                              	pop    esi
  79758f:	5b                                              	pop    ebx
  797590:	8b e5                                           	mov    esp,ebp
  797592:	5d                                              	pop    ebp
  797593:	c3                                              	ret
  797594:	83 7d 20 00                                     	cmp    DWORD PTR [ebp+0x20],0x0
  797598:	0f 86 d8 00 00 00                               	jbe    0x797676
  79759e:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  7975a1:	85 c0                                           	test   eax,eax
  7975a3:	0f 84 cd 00 00 00                               	je     0x797676
  7975a9:	8b 5d 28                                        	mov    ebx,DWORD PTR [ebp+0x28]
  7975ac:	85 db                                           	test   ebx,ebx
  7975ae:	0f 84 c2 00 00 00                               	je     0x797676
  7975b4:	8b 7d 2c                                        	mov    edi,DWORD PTR [ebp+0x2c]
  7975b7:	85 ff                                           	test   edi,edi
  7975b9:	0f 84 b3 00 00 00                               	je     0x797672
  7975bf:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7975c3:	51                                              	push   ecx
  7975c4:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  7975c8:	c7 00 01 00 00 00                               	mov    DWORD PTR [eax],0x1
  7975ce:	c7 44 24 18 98 1c 01 01                         	mov    DWORD PTR [esp+0x18],0x1011c98
  7975d6:	e8 25 1f 04 00                                  	call   0x7d9500
  7975db:	33 c0                                           	xor    eax,eax
  7975dd:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  7975e1:	52                                              	push   edx
  7975e2:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  7975e6:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  7975ea:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
  7975ee:	e8 0d af dd ff                                  	call   0x572500
  7975f3:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  7975f7:	2b 4c 24 30                                     	sub    ecx,DWORD PTR [esp+0x30]
  7975fb:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7975fd:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  797603:	c1 f9 03                                        	sar    ecx,0x3
  797606:	51                                              	push   ecx
  797607:	53                                              	push   ebx
  797608:	8b ce                                           	mov    ecx,esi
  79760a:	ff d2                                           	call   edx
  79760c:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  797610:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  797614:	8b 16                                           	mov    edx,DWORD PTR [esi]
  797616:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
  79761c:	2b c8                                           	sub    ecx,eax
  79761e:	c1 f9 03                                        	sar    ecx,0x3
  797621:	51                                              	push   ecx
  797622:	6a 00                                           	push   0x0
  797624:	50                                              	push   eax
  797625:	53                                              	push   ebx
  797626:	8b ce                                           	mov    ecx,esi
  797628:	ff d2                                           	call   edx
  79762a:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  79762e:	2b 4c 24 30                                     	sub    ecx,DWORD PTR [esp+0x30]
  797632:	8b 06                                           	mov    eax,DWORD PTR [esi]
  797634:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  79763a:	c1 f9 03                                        	sar    ecx,0x3
  79763d:	51                                              	push   ecx
  79763e:	57                                              	push   edi
  79763f:	8b ce                                           	mov    ecx,esi
  797641:	ff d2                                           	call   edx
  797643:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  797647:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  79764b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  79764d:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
  797653:	2b c8                                           	sub    ecx,eax
  797655:	c1 f9 03                                        	sar    ecx,0x3
  797658:	51                                              	push   ecx
  797659:	6a 00                                           	push   0x0
  79765b:	50                                              	push   eax
  79765c:	57                                              	push   edi
  79765d:	8b ce                                           	mov    ecx,esi
  79765f:	ff d2                                           	call   edx
  797661:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  797665:	85 c0                                           	test   eax,eax
  797667:	74 09                                           	je     0x797672
  797669:	50                                              	push   eax
  79766a:	e8 71 ce d4 ff                                  	call   0x4e44e0
  79766f:	83 c4 04                                        	add    esp,0x4
  797672:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  797676:	85 ff                                           	test   edi,edi
  797678:	74 20                                           	je     0x79769a
  79767a:	8d 47 04                                        	lea    eax,[edi+0x4]
  79767d:	8b c8                                           	mov    ecx,eax
  79767f:	83 ca ff                                        	or     edx,0xffffffff
  797682:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  797686:	4a                                              	dec    edx
  797687:	75 11                                           	jne    0x79769a
  797689:	b9 01 00 00 00                                  	mov    ecx,0x1
  79768e:	87 08                                           	xchg   DWORD PTR [eax],ecx
  797690:	8b 17                                           	mov    edx,DWORD PTR [edi]
  797692:	8b 02                                           	mov    eax,DWORD PTR [edx]
  797694:	6a 01                                           	push   0x1
  797696:	8b cf                                           	mov    ecx,edi
  797698:	ff d0                                           	call   eax
  79769a:	5f                                              	pop    edi
  79769b:	5e                                              	pop    esi
  79769c:	32 c0                                           	xor    al,al
  79769e:	5b                                              	pop    ebx
  79769f:	8b e5                                           	mov    esp,ebp
  7976a1:	5d                                              	pop    ebp
  7976a2:	c3                                              	ret
  7976a3:	cc                                              	int3
  7976a4:	cc                                              	int3
  7976a5:	cc                                              	int3
  7976a6:	cc                                              	int3
  7976a7:	cc                                              	int3
  7976a8:	cc                                              	int3
  7976a9:	cc                                              	int3
  7976aa:	cc                                              	int3
  7976ab:	cc                                              	int3
  7976ac:	cc                                              	int3
  7976ad:	cc                                              	int3
  7976ae:	cc                                              	int3
  7976af:	cc                                              	int3
