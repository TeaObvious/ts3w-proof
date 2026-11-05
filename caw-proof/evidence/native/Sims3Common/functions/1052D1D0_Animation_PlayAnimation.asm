# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052d1d0 (Animation_PlayAnimation)
Paired Ghidra pseudocode: 1052D1D0_Animation_PlayAnimation.c
Window: [0x1052d1d0, 0x1052d3a0) (464 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052d3a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052d1d0: 83 ec 14 56 e8 c7 cf 1f 00 8b 4c 24 20 8b 54 24
1052d1e0: 1c 51 52 8b c8 e8 c6 d9 1f 00 8b f0 85 f6 89 74
1052d1f0: 24 04 0f 84 98 01 00 00 53 bb 01 00 00 00 55 8d
1052d200: 46 04 8b cb f0 0f c1 08 8b 15 c4 0c c8 10 52 8b
1052d210: ce e8 8a 9b 1f 00 8b e8 85 ed 0f 84 4e 01 00 00
1052d220: 57 6a 00 6a 00 6a 00 6a 00 68 34 9a b1 10 68 00
1052d230: 06 00 00 e8 78 bc 3e 00 83 c4 18 85 c0 0f 84 94
1052d240: 00 00 00 d9 ee 51 8d 4d 08 d9 1c 24 51 8b c8 e8
1052d250: 9c 7d e3 ff 8b f8 85 ff 74 03 01 5f 04 8b 54 24
1052d260: 3c 8b 4c 24 38 8b 44 24 40 89 54 24 14 8d 54 24
1052d270: 14 89 4c 24 20 52 8b cf 89 44 24 1c c7 44 24 20
1052d280: f3 c4 20 6b e8 a7 93 e3 ff 6a 00 6a 00 6a 00 6a
1052d290: 00 68 14 9a b1 10 6a 38 e8 13 bc 3e 00 83 c4 18
1052d2a0: 85 c0 74 37 d9 44 24 44 51 d9 1c 24 57 8d 4d 08
1052d2b0: 51 8b c8 e8 38 e9 e3 ff 8b f0 85 f6 74 03 01 5e
1052d2c0: 04 8a 5c 24 48 84 db 74 2b a1 b4 86 c7 10 85 c0
1052d2d0: 74 0d 83 c0 04 eb 0a 33 ff eb 82 33 f6 eb e2 33
1052d2e0: c0 85 f6 74 05 8d 4e 0c eb 02 33 c9 6a ff 50 e8
1052d2f0: 6c 57 e3 ff d9 05 84 e1 aa 10 8b 55 08 6a 01 84
1052d300: db 0f 94 c0 8b 52 14 6a 00 6a 00 8d 4d 08 50 8b
1052d310: 44 24 40 83 ec 08 f6 db d9 54 24 04 d9 1c 24 1b
1052d320: db 83 c3 02 53 56 50 ff d2 85 f6 74 1c 8b 46 04
1052d330: 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b
1052d340: 06 8b 10 6a 01 8b ce ff d2 85 ff 74 1c 8b 47 04
1052d350: 83 c0 ff 89 47 04 75 11 c7 47 04 01 00 00 00 8b
1052d360: 07 8b 10 6a 01 8b cf ff d2 8b 74 24 10 5f 8d 46
1052d370: 04 5d 8b c8 83 ca ff 5b f0 0f c1 11 4a 75 11 b9
1052d380: 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff d0
1052d390: 5e 83 c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052d1d0 <.text+0x52c1d0>:
1052d1d0:	83 ec 14                                        	sub    esp,0x14
1052d1d3:	56                                              	push   esi
1052d1d4:	e8 c7 cf 1f 00                                  	call   0x1072a1a0
1052d1d9:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1052d1dd:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1052d1e1:	51                                              	push   ecx
1052d1e2:	52                                              	push   edx
1052d1e3:	8b c8                                           	mov    ecx,eax
1052d1e5:	e8 c6 d9 1f 00                                  	call   0x1072abb0
1052d1ea:	8b f0                                           	mov    esi,eax
1052d1ec:	85 f6                                           	test   esi,esi
1052d1ee:	89 74 24 04                                     	mov    DWORD PTR [esp+0x4],esi
1052d1f2:	0f 84 98 01 00 00                               	je     0x1052d390
1052d1f8:	53                                              	push   ebx
1052d1f9:	bb 01 00 00 00                                  	mov    ebx,0x1
1052d1fe:	55                                              	push   ebp
1052d1ff:	8d 46 04                                        	lea    eax,[esi+0x4]
1052d202:	8b cb                                           	mov    ecx,ebx
1052d204:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d208:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052d20e:	52                                              	push   edx
1052d20f:	8b ce                                           	mov    ecx,esi
1052d211:	e8 8a 9b 1f 00                                  	call   0x10726da0
1052d216:	8b e8                                           	mov    ebp,eax
1052d218:	85 ed                                           	test   ebp,ebp
1052d21a:	0f 84 4e 01 00 00                               	je     0x1052d36e
1052d220:	57                                              	push   edi
1052d221:	6a 00                                           	push   0x0
1052d223:	6a 00                                           	push   0x0
1052d225:	6a 00                                           	push   0x0
1052d227:	6a 00                                           	push   0x0
1052d229:	68 34 9a b1 10                                  	push   0x10b19a34
1052d22e:	68 00 06 00 00                                  	push   0x600
1052d233:	e8 78 bc 3e 00                                  	call   0x10918eb0
1052d238:	83 c4 18                                        	add    esp,0x18
1052d23b:	85 c0                                           	test   eax,eax
1052d23d:	0f 84 94 00 00 00                               	je     0x1052d2d7
1052d243:	d9 ee                                           	fldz
1052d245:	51                                              	push   ecx
1052d246:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
1052d249:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052d24c:	51                                              	push   ecx
1052d24d:	8b c8                                           	mov    ecx,eax
1052d24f:	e8 9c 7d e3 ff                                  	call   0x10364ff0
1052d254:	8b f8                                           	mov    edi,eax
1052d256:	85 ff                                           	test   edi,edi
1052d258:	74 03                                           	je     0x1052d25d
1052d25a:	01 5f 04                                        	add    DWORD PTR [edi+0x4],ebx
1052d25d:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
1052d261:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
1052d265:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1052d269:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1052d26d:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1052d271:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
1052d275:	52                                              	push   edx
1052d276:	8b cf                                           	mov    ecx,edi
1052d278:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1052d27c:	c7 44 24 20 f3 c4 20 6b                         	mov    DWORD PTR [esp+0x20],0x6b20c4f3
1052d284:	e8 a7 93 e3 ff                                  	call   0x10366630
1052d289:	6a 00                                           	push   0x0
1052d28b:	6a 00                                           	push   0x0
1052d28d:	6a 00                                           	push   0x0
1052d28f:	6a 00                                           	push   0x0
1052d291:	68 14 9a b1 10                                  	push   0x10b19a14
1052d296:	6a 38                                           	push   0x38
1052d298:	e8 13 bc 3e 00                                  	call   0x10918eb0
1052d29d:	83 c4 18                                        	add    esp,0x18
1052d2a0:	85 c0                                           	test   eax,eax
1052d2a2:	74 37                                           	je     0x1052d2db
1052d2a4:	d9 44 24 44                                     	fld    DWORD PTR [esp+0x44]
1052d2a8:	51                                              	push   ecx
1052d2a9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052d2ac:	57                                              	push   edi
1052d2ad:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
1052d2b0:	51                                              	push   ecx
1052d2b1:	8b c8                                           	mov    ecx,eax
1052d2b3:	e8 38 e9 e3 ff                                  	call   0x1036bbf0
1052d2b8:	8b f0                                           	mov    esi,eax
1052d2ba:	85 f6                                           	test   esi,esi
1052d2bc:	74 03                                           	je     0x1052d2c1
1052d2be:	01 5e 04                                        	add    DWORD PTR [esi+0x4],ebx
1052d2c1:	8a 5c 24 48                                     	mov    bl,BYTE PTR [esp+0x48]
1052d2c5:	84 db                                           	test   bl,bl
1052d2c7:	74 2b                                           	je     0x1052d2f4
1052d2c9:	a1 b4 86 c7 10                                  	mov    eax,ds:0x10c786b4
1052d2ce:	85 c0                                           	test   eax,eax
1052d2d0:	74 0d                                           	je     0x1052d2df
1052d2d2:	83 c0 04                                        	add    eax,0x4
1052d2d5:	eb 0a                                           	jmp    0x1052d2e1
1052d2d7:	33 ff                                           	xor    edi,edi
1052d2d9:	eb 82                                           	jmp    0x1052d25d
1052d2db:	33 f6                                           	xor    esi,esi
1052d2dd:	eb e2                                           	jmp    0x1052d2c1
1052d2df:	33 c0                                           	xor    eax,eax
1052d2e1:	85 f6                                           	test   esi,esi
1052d2e3:	74 05                                           	je     0x1052d2ea
1052d2e5:	8d 4e 0c                                        	lea    ecx,[esi+0xc]
1052d2e8:	eb 02                                           	jmp    0x1052d2ec
1052d2ea:	33 c9                                           	xor    ecx,ecx
1052d2ec:	6a ff                                           	push   0xffffffff
1052d2ee:	50                                              	push   eax
1052d2ef:	e8 6c 57 e3 ff                                  	call   0x10362a60
1052d2f4:	d9 05 84 e1 aa 10                               	fld    DWORD PTR ds:0x10aae184
1052d2fa:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1052d2fd:	6a 01                                           	push   0x1
1052d2ff:	84 db                                           	test   bl,bl
1052d301:	0f 94 c0                                        	sete   al
1052d304:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
1052d307:	6a 00                                           	push   0x0
1052d309:	6a 00                                           	push   0x0
1052d30b:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
1052d30e:	50                                              	push   eax
1052d30f:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1052d313:	83 ec 08                                        	sub    esp,0x8
1052d316:	f6 db                                           	neg    bl
1052d318:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1052d31c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052d31f:	1b db                                           	sbb    ebx,ebx
1052d321:	83 c3 02                                        	add    ebx,0x2
1052d324:	53                                              	push   ebx
1052d325:	56                                              	push   esi
1052d326:	50                                              	push   eax
1052d327:	ff d2                                           	call   edx
1052d329:	85 f6                                           	test   esi,esi
1052d32b:	74 1c                                           	je     0x1052d349
1052d32d:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1052d330:	83 c0 ff                                        	add    eax,0xffffffff
1052d333:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1052d336:	75 11                                           	jne    0x1052d349
1052d338:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
1052d33f:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052d341:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052d343:	6a 01                                           	push   0x1
1052d345:	8b ce                                           	mov    ecx,esi
1052d347:	ff d2                                           	call   edx
1052d349:	85 ff                                           	test   edi,edi
1052d34b:	74 1c                                           	je     0x1052d369
1052d34d:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
1052d350:	83 c0 ff                                        	add    eax,0xffffffff
1052d353:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
1052d356:	75 11                                           	jne    0x1052d369
1052d358:	c7 47 04 01 00 00 00                            	mov    DWORD PTR [edi+0x4],0x1
1052d35f:	8b 07                                           	mov    eax,DWORD PTR [edi]
1052d361:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052d363:	6a 01                                           	push   0x1
1052d365:	8b cf                                           	mov    ecx,edi
1052d367:	ff d2                                           	call   edx
1052d369:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
1052d36d:	5f                                              	pop    edi
1052d36e:	8d 46 04                                        	lea    eax,[esi+0x4]
1052d371:	5d                                              	pop    ebp
1052d372:	8b c8                                           	mov    ecx,eax
1052d374:	83 ca ff                                        	or     edx,0xffffffff
1052d377:	5b                                              	pop    ebx
1052d378:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
1052d37c:	4a                                              	dec    edx
1052d37d:	75 11                                           	jne    0x1052d390
1052d37f:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d384:	87 08                                           	xchg   DWORD PTR [eax],ecx
1052d386:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052d388:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052d38a:	6a 01                                           	push   0x1
1052d38c:	8b ce                                           	mov    ecx,esi
1052d38e:	ff d0                                           	call   eax
1052d390:	5e                                              	pop    esi
1052d391:	83 c4 14                                        	add    esp,0x14
1052d394:	c3                                              	ret
1052d395:	cc                                              	int3
1052d396:	cc                                              	int3
1052d397:	cc                                              	int3
1052d398:	cc                                              	int3
1052d399:	cc                                              	int3
1052d39a:	cc                                              	int3
1052d39b:	cc                                              	int3
1052d39c:	cc                                              	int3
1052d39d:	cc                                              	int3
1052d39e:	cc                                              	int3
1052d39f:	cc                                              	int3
