# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981250 (AnimationComponent_ScheduleClipAtEnd)
Paired Ghidra pseudocode: 10981250_AnimationComponent_ScheduleClipAtEnd.c
Window: [0x10981250, 0x109813a0) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x109813a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981250: 81 ec f0 01 00 00 8b 84 24 fc 01 00 00 8b 48 08
10981260: 8b 50 0c 89 4c 24 04 8b 08 89 54 24 08 8b 50 04
10981270: 89 4c 24 0c 89 54 24 10 e8 53 3e f6 ff 8b 10 8b
10981280: 52 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24 10 51 8d
10981290: 4c 24 18 51 8b c8 ff d2 84 c0 0f 84 f6 00 00 00
109812a0: 53 55 56 57 8b 7c 24 10 8d 4c 24 24 e8 8f 18 db
109812b0: ff 8b b4 24 d4 01 00 00 3b fe 8b ac 24 08 02 00
109812c0: 00 89 ac 24 e8 01 00 00 74 20 85 ff 74 08 8b 07
109812d0: 8b 10 8b cf ff d2 85 f6 89 bc 24 d4 01 00 00 74
109812e0: 09 8b 06 8b 50 04 8b ce ff d2 8a 84 24 14 02 00
109812f0: 00 8b 9c 24 04 02 00 00 f3 0f 10 84 24 10 02 00
10981300: 00 8d 4c 24 24 51 8b cb 88 84 24 00 02 00 00 f3
10981310: 0f 11 84 24 f4 01 00 00 c7 84 24 e8 01 00 00 02
10981320: 00 00 00 e8 28 e7 da ff 8b f0 85 f6 74 32 d9 05
10981330: 84 e1 aa 10 83 46 04 01 8b 53 08 8b 42 14 6a 00
10981340: 6a 00 6a 00 6a 00 83 ec 08 d9 5c 24 04 8d 4b 08
10981350: d9 84 24 28 02 00 00 d9 1c 24 6a 00 56 55 ff d0
10981360: 8b 17 8b 42 04 8b cf ff d0 85 f6 74 1c 8b 46 04
10981370: 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b
10981380: 16 8b 02 6a 01 8b ce ff d0 8d 4c 24 24 e8 de 65
10981390: c6 ff 5f 5e 5d 5b 81 c4 f0 01 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10981250 <.text+0x980250>:
10981250:	81 ec f0 01 00 00                               	sub    esp,0x1f0
10981256:	8b 84 24 fc 01 00 00                            	mov    eax,DWORD PTR [esp+0x1fc]
1098125d:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
10981260:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10981263:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10981267:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10981269:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1098126d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10981270:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
10981274:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10981278:	e8 53 3e f6 ff                                  	call   0x108e50d0
1098127d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098127f:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10981282:	6a 00                                           	push   0x0
10981284:	6a 00                                           	push   0x0
10981286:	6a 00                                           	push   0x0
10981288:	6a 00                                           	push   0x0
1098128a:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1098128e:	51                                              	push   ecx
1098128f:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10981293:	51                                              	push   ecx
10981294:	8b c8                                           	mov    ecx,eax
10981296:	ff d2                                           	call   edx
10981298:	84 c0                                           	test   al,al
1098129a:	0f 84 f6 00 00 00                               	je     0x10981396
109812a0:	53                                              	push   ebx
109812a1:	55                                              	push   ebp
109812a2:	56                                              	push   esi
109812a3:	57                                              	push   edi
109812a4:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
109812a8:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
109812ac:	e8 8f 18 db ff                                  	call   0x10732b40
109812b1:	8b b4 24 d4 01 00 00                            	mov    esi,DWORD PTR [esp+0x1d4]
109812b8:	3b fe                                           	cmp    edi,esi
109812ba:	8b ac 24 08 02 00 00                            	mov    ebp,DWORD PTR [esp+0x208]
109812c1:	89 ac 24 e8 01 00 00                            	mov    DWORD PTR [esp+0x1e8],ebp
109812c8:	74 20                                           	je     0x109812ea
109812ca:	85 ff                                           	test   edi,edi
109812cc:	74 08                                           	je     0x109812d6
109812ce:	8b 07                                           	mov    eax,DWORD PTR [edi]
109812d0:	8b 10                                           	mov    edx,DWORD PTR [eax]
109812d2:	8b cf                                           	mov    ecx,edi
109812d4:	ff d2                                           	call   edx
109812d6:	85 f6                                           	test   esi,esi
109812d8:	89 bc 24 d4 01 00 00                            	mov    DWORD PTR [esp+0x1d4],edi
109812df:	74 09                                           	je     0x109812ea
109812e1:	8b 06                                           	mov    eax,DWORD PTR [esi]
109812e3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
109812e6:	8b ce                                           	mov    ecx,esi
109812e8:	ff d2                                           	call   edx
109812ea:	8a 84 24 14 02 00 00                            	mov    al,BYTE PTR [esp+0x214]
109812f1:	8b 9c 24 04 02 00 00                            	mov    ebx,DWORD PTR [esp+0x204]
109812f8:	f3 0f 10 84 24 10 02 00 00                      	movss  xmm0,DWORD PTR [esp+0x210]
10981301:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10981305:	51                                              	push   ecx
10981306:	8b cb                                           	mov    ecx,ebx
10981308:	88 84 24 00 02 00 00                            	mov    BYTE PTR [esp+0x200],al
1098130f:	f3 0f 11 84 24 f4 01 00 00                      	movss  DWORD PTR [esp+0x1f4],xmm0
10981318:	c7 84 24 e8 01 00 00 02 00 00 00                	mov    DWORD PTR [esp+0x1e8],0x2
10981323:	e8 28 e7 da ff                                  	call   0x1072fa50
10981328:	8b f0                                           	mov    esi,eax
1098132a:	85 f6                                           	test   esi,esi
1098132c:	74 32                                           	je     0x10981360
1098132e:	d9 05 84 e1 aa 10                               	fld    DWORD PTR ds:0x10aae184
10981334:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
10981338:	8b 53 08                                        	mov    edx,DWORD PTR [ebx+0x8]
1098133b:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1098133e:	6a 00                                           	push   0x0
10981340:	6a 00                                           	push   0x0
10981342:	6a 00                                           	push   0x0
10981344:	6a 00                                           	push   0x0
10981346:	83 ec 08                                        	sub    esp,0x8
10981349:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1098134d:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
10981350:	d9 84 24 28 02 00 00                            	fld    DWORD PTR [esp+0x228]
10981357:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098135a:	6a 00                                           	push   0x0
1098135c:	56                                              	push   esi
1098135d:	55                                              	push   ebp
1098135e:	ff d0                                           	call   eax
10981360:	8b 17                                           	mov    edx,DWORD PTR [edi]
10981362:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10981365:	8b cf                                           	mov    ecx,edi
10981367:	ff d0                                           	call   eax
10981369:	85 f6                                           	test   esi,esi
1098136b:	74 1c                                           	je     0x10981389
1098136d:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
10981370:	83 c0 ff                                        	add    eax,0xffffffff
10981373:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10981376:	75 11                                           	jne    0x10981389
10981378:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
1098137f:	8b 16                                           	mov    edx,DWORD PTR [esi]
10981381:	8b 02                                           	mov    eax,DWORD PTR [edx]
10981383:	6a 01                                           	push   0x1
10981385:	8b ce                                           	mov    ecx,esi
10981387:	ff d0                                           	call   eax
10981389:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098138d:	e8 de 65 c6 ff                                  	call   0x105e7970
10981392:	5f                                              	pop    edi
10981393:	5e                                              	pop    esi
10981394:	5d                                              	pop    ebp
10981395:	5b                                              	pop    ebx
10981396:	81 c4 f0 01 00 00                               	add    esp,0x1f0
1098139c:	c3                                              	ret
1098139d:	cc                                              	int3
1098139e:	cc                                              	int3
1098139f:	cc                                              	int3
