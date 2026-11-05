# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073c240 (ScriptCore.AutomationUtils::Automation_EnableNetworkListening)
Paired Ghidra pseudocode: 0073C240_ScriptCore_AutomationUtils_Automation_EnableNetworkListening.c
Window: [0x0073c240, 0x0073c400) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073c400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073c240: 83 ec 50 a1 3c 4e 1d 01 53 b9 02 00 00 00 57 66
0073c250: 89 4c 24 20 66 89 4c 24 3c a3 38 4e 1d 01 b8 10
0073c260: 10 00 00 8d 4c 24 20 33 ff 6a ff 51 89 7c 24 2c
0073c270: 66 89 44 24 2a 89 7c 24 48 66 89 44 24 46 e8 7d
0073c280: 5f dc ff 6a 01 8d 54 24 1c 8a d8 8b 44 24 30 52
0073c290: 50 e8 ca 5e dc ff 83 c4 14 84 db 75 08 5f 32 c0
0073c2a0: 5b 83 c4 50 c3 56 e8 95 6a dc ff 85 c0 75 50 57
0073c2b0: 57 57 57 68 a4 05 00 01 68 cc 01 00 00 e8 3e 82
0073c2c0: da ff 83 c4 18 3b c7 74 0b 8b c8 e8 10 61 dc ff
0073c2d0: 8b f0 eb 02 33 f6 8b 16 8b 42 04 8b ce ff d0 84
0073c2e0: c0 75 13 8b 16 8b 02 6a 01 8b ce ff d0 5e 5f 32
0073c2f0: c0 5b 83 c4 50 c3 56 e8 54 6a dc ff 83 c4 04 a1
0073c300: 38 4e 1d 01 8b 70 08 3b f7 55 8b 68 04 0f 84 df
0073c310: 00 00 00 3b ef 0f 84 d7 00 00 00 8b 16 8b 42 24
0073c320: 8b ce ff d0 84 c0 0f 84 c6 00 00 00 8b 55 00 8b
0073c330: 42 24 8b cd ff d0 84 c0 0f 84 b4 00 00 00 8b 16
0073c340: 8b 52 2c 8d 44 24 44 50 8b ce ff d2 84 c0 0f 84
0073c350: 9e 00 00 00 8b 46 7c 8b 50 1c 83 c6 7c 68 f4 01
0073c360: 00 00 8b ce ff d2 84 c0 0f 84 84 00 00 00 8b 06
0073c370: 8b 50 30 6a 00 8b ce ff d2 84 c0 75 2d bb e8 03
0073c380: 00 00 83 ff 0a 73 23 8d 44 24 14 50 89 5c 24 18
0073c390: e8 9b 54 da ff 8b 16 8b 42 30 83 c4 04 6a 00 8b
0073c3a0: ce 83 c7 01 ff d0 84 c0 74 d8 8b 16 8b 42 30 6a
0073c3b0: 00 8b ce ff d0 84 c0 74 39 8d 4c 24 13 c6 44 24
0073c3c0: 13 00 8b 16 8b 52 38 51 8d 45 7c 50 8b ce ff d2
0073c3d0: 84 c0 74 14 80 7c 24 13 00 74 0d 5d 5e 5f b8 01
0073c3e0: 00 00 00 5b 83 c4 50 c3 5d 5e 5f 33 c0 5b 83 c4
0073c3f0: 50 c3 5d 5e 5f 32 c0 5b 83 c4 50 c3 cc cc cc cc

LINEAR DISASSEMBLY
0073c240 <.text+0x33b240>:
  73c240:	83 ec 50                                        	sub    esp,0x50
  73c243:	a1 3c 4e 1d 01                                  	mov    eax,ds:0x11d4e3c
  73c248:	53                                              	push   ebx
  73c249:	b9 02 00 00 00                                  	mov    ecx,0x2
  73c24e:	57                                              	push   edi
  73c24f:	66 89 4c 24 20                                  	mov    WORD PTR [esp+0x20],cx
  73c254:	66 89 4c 24 3c                                  	mov    WORD PTR [esp+0x3c],cx
  73c259:	a3 38 4e 1d 01                                  	mov    ds:0x11d4e38,eax
  73c25e:	b8 10 10 00 00                                  	mov    eax,0x1010
  73c263:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  73c267:	33 ff                                           	xor    edi,edi
  73c269:	6a ff                                           	push   0xffffffff
  73c26b:	51                                              	push   ecx
  73c26c:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  73c270:	66 89 44 24 2a                                  	mov    WORD PTR [esp+0x2a],ax
  73c275:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
  73c279:	66 89 44 24 46                                  	mov    WORD PTR [esp+0x46],ax
  73c27e:	e8 7d 5f dc ff                                  	call   0x502200
  73c283:	6a 01                                           	push   0x1
  73c285:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  73c289:	8a d8                                           	mov    bl,al
  73c28b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  73c28f:	52                                              	push   edx
  73c290:	50                                              	push   eax
  73c291:	e8 ca 5e dc ff                                  	call   0x502160
  73c296:	83 c4 14                                        	add    esp,0x14
  73c299:	84 db                                           	test   bl,bl
  73c29b:	75 08                                           	jne    0x73c2a5
  73c29d:	5f                                              	pop    edi
  73c29e:	32 c0                                           	xor    al,al
  73c2a0:	5b                                              	pop    ebx
  73c2a1:	83 c4 50                                        	add    esp,0x50
  73c2a4:	c3                                              	ret
  73c2a5:	56                                              	push   esi
  73c2a6:	e8 95 6a dc ff                                  	call   0x502d40
  73c2ab:	85 c0                                           	test   eax,eax
  73c2ad:	75 50                                           	jne    0x73c2ff
  73c2af:	57                                              	push   edi
  73c2b0:	57                                              	push   edi
  73c2b1:	57                                              	push   edi
  73c2b2:	57                                              	push   edi
  73c2b3:	68 a4 05 00 01                                  	push   0x10005a4
  73c2b8:	68 cc 01 00 00                                  	push   0x1cc
  73c2bd:	e8 3e 82 da ff                                  	call   0x4e4500
  73c2c2:	83 c4 18                                        	add    esp,0x18
  73c2c5:	3b c7                                           	cmp    eax,edi
  73c2c7:	74 0b                                           	je     0x73c2d4
  73c2c9:	8b c8                                           	mov    ecx,eax
  73c2cb:	e8 10 61 dc ff                                  	call   0x5023e0
  73c2d0:	8b f0                                           	mov    esi,eax
  73c2d2:	eb 02                                           	jmp    0x73c2d6
  73c2d4:	33 f6                                           	xor    esi,esi
  73c2d6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c2d8:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  73c2db:	8b ce                                           	mov    ecx,esi
  73c2dd:	ff d0                                           	call   eax
  73c2df:	84 c0                                           	test   al,al
  73c2e1:	75 13                                           	jne    0x73c2f6
  73c2e3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c2e5:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73c2e7:	6a 01                                           	push   0x1
  73c2e9:	8b ce                                           	mov    ecx,esi
  73c2eb:	ff d0                                           	call   eax
  73c2ed:	5e                                              	pop    esi
  73c2ee:	5f                                              	pop    edi
  73c2ef:	32 c0                                           	xor    al,al
  73c2f1:	5b                                              	pop    ebx
  73c2f2:	83 c4 50                                        	add    esp,0x50
  73c2f5:	c3                                              	ret
  73c2f6:	56                                              	push   esi
  73c2f7:	e8 54 6a dc ff                                  	call   0x502d50
  73c2fc:	83 c4 04                                        	add    esp,0x4
  73c2ff:	a1 38 4e 1d 01                                  	mov    eax,ds:0x11d4e38
  73c304:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  73c307:	3b f7                                           	cmp    esi,edi
  73c309:	55                                              	push   ebp
  73c30a:	8b 68 04                                        	mov    ebp,DWORD PTR [eax+0x4]
  73c30d:	0f 84 df 00 00 00                               	je     0x73c3f2
  73c313:	3b ef                                           	cmp    ebp,edi
  73c315:	0f 84 d7 00 00 00                               	je     0x73c3f2
  73c31b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c31d:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  73c320:	8b ce                                           	mov    ecx,esi
  73c322:	ff d0                                           	call   eax
  73c324:	84 c0                                           	test   al,al
  73c326:	0f 84 c6 00 00 00                               	je     0x73c3f2
  73c32c:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  73c32f:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  73c332:	8b cd                                           	mov    ecx,ebp
  73c334:	ff d0                                           	call   eax
  73c336:	84 c0                                           	test   al,al
  73c338:	0f 84 b4 00 00 00                               	je     0x73c3f2
  73c33e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c340:	8b 52 2c                                        	mov    edx,DWORD PTR [edx+0x2c]
  73c343:	8d 44 24 44                                     	lea    eax,[esp+0x44]
  73c347:	50                                              	push   eax
  73c348:	8b ce                                           	mov    ecx,esi
  73c34a:	ff d2                                           	call   edx
  73c34c:	84 c0                                           	test   al,al
  73c34e:	0f 84 9e 00 00 00                               	je     0x73c3f2
  73c354:	8b 46 7c                                        	mov    eax,DWORD PTR [esi+0x7c]
  73c357:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  73c35a:	83 c6 7c                                        	add    esi,0x7c
  73c35d:	68 f4 01 00 00                                  	push   0x1f4
  73c362:	8b ce                                           	mov    ecx,esi
  73c364:	ff d2                                           	call   edx
  73c366:	84 c0                                           	test   al,al
  73c368:	0f 84 84 00 00 00                               	je     0x73c3f2
  73c36e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73c370:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  73c373:	6a 00                                           	push   0x0
  73c375:	8b ce                                           	mov    ecx,esi
  73c377:	ff d2                                           	call   edx
  73c379:	84 c0                                           	test   al,al
  73c37b:	75 2d                                           	jne    0x73c3aa
  73c37d:	bb e8 03 00 00                                  	mov    ebx,0x3e8
  73c382:	83 ff 0a                                        	cmp    edi,0xa
  73c385:	73 23                                           	jae    0x73c3aa
  73c387:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  73c38b:	50                                              	push   eax
  73c38c:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  73c390:	e8 9b 54 da ff                                  	call   0x4e1830
  73c395:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c397:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  73c39a:	83 c4 04                                        	add    esp,0x4
  73c39d:	6a 00                                           	push   0x0
  73c39f:	8b ce                                           	mov    ecx,esi
  73c3a1:	83 c7 01                                        	add    edi,0x1
  73c3a4:	ff d0                                           	call   eax
  73c3a6:	84 c0                                           	test   al,al
  73c3a8:	74 d8                                           	je     0x73c382
  73c3aa:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c3ac:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  73c3af:	6a 00                                           	push   0x0
  73c3b1:	8b ce                                           	mov    ecx,esi
  73c3b3:	ff d0                                           	call   eax
  73c3b5:	84 c0                                           	test   al,al
  73c3b7:	74 39                                           	je     0x73c3f2
  73c3b9:	8d 4c 24 13                                     	lea    ecx,[esp+0x13]
  73c3bd:	c6 44 24 13 00                                  	mov    BYTE PTR [esp+0x13],0x0
  73c3c2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c3c4:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
  73c3c7:	51                                              	push   ecx
  73c3c8:	8d 45 7c                                        	lea    eax,[ebp+0x7c]
  73c3cb:	50                                              	push   eax
  73c3cc:	8b ce                                           	mov    ecx,esi
  73c3ce:	ff d2                                           	call   edx
  73c3d0:	84 c0                                           	test   al,al
  73c3d2:	74 14                                           	je     0x73c3e8
  73c3d4:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
  73c3d9:	74 0d                                           	je     0x73c3e8
  73c3db:	5d                                              	pop    ebp
  73c3dc:	5e                                              	pop    esi
  73c3dd:	5f                                              	pop    edi
  73c3de:	b8 01 00 00 00                                  	mov    eax,0x1
  73c3e3:	5b                                              	pop    ebx
  73c3e4:	83 c4 50                                        	add    esp,0x50
  73c3e7:	c3                                              	ret
  73c3e8:	5d                                              	pop    ebp
  73c3e9:	5e                                              	pop    esi
  73c3ea:	5f                                              	pop    edi
  73c3eb:	33 c0                                           	xor    eax,eax
  73c3ed:	5b                                              	pop    ebx
  73c3ee:	83 c4 50                                        	add    esp,0x50
  73c3f1:	c3                                              	ret
  73c3f2:	5d                                              	pop    ebp
  73c3f3:	5e                                              	pop    esi
  73c3f4:	5f                                              	pop    edi
  73c3f5:	32 c0                                           	xor    al,al
  73c3f7:	5b                                              	pop    ebx
  73c3f8:	83 c4 50                                        	add    esp,0x50
  73c3fb:	c3                                              	ret
  73c3fc:	cc                                              	int3
  73c3fd:	cc                                              	int3
  73c3fe:	cc                                              	int3
  73c3ff:	cc                                              	int3
