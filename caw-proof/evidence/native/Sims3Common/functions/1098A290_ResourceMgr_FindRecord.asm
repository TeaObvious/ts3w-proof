# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a290 (ResourceMgr_FindRecord)
Paired Ghidra pseudocode: 1098A290_ResourceMgr_FindRecord.c
Window: [0x1098a290, 0x1098a3d0) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a3d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a290: 83 ec 14 53 33 db 89 5c 24 04 e8 31 ae f5 ff 3b
1098a2a0: c3 75 16 8b 4c 24 04 3b cb 74 07 8b 01 8b 50 08
1098a2b0: ff d2 33 c0 5b 83 c4 14 c3 8b 4c 24 24 8b 54 24
1098a2c0: 28 89 4c 24 08 8b 4c 24 1c 89 54 24 0c 8b 54 24
1098a2d0: 20 89 4c 24 10 89 54 24 14 8b 10 8b 52 44 56 8d
1098a2e0: 4c 24 0c 51 8b c8 ff d2 8b 4c 24 08 8b f0 3b f3
1098a2f0: 75 13 3b cb 74 07 8b 01 8b 50 08 ff d2 5e 33 c0
1098a300: 5b 83 c4 14 c3 3b cb 74 0b 89 5c 24 08 8b 01 8b
1098a310: 50 08 ff d2 8b 06 8b 40 34 53 6a 01 6a 06 6a 01
1098a320: 8d 4c 24 18 51 8d 54 24 20 52 8b ce ff d0 84 c0
1098a330: 8b 4c 24 08 75 13 3b cb 74 07 8b 11 8b 42 08 ff
1098a340: d0 5e 33 c0 5b 83 c4 14 c3 8b 11 8b 42 18 55 57
1098a350: ff d0 8b f0 8b 16 8b 42 1c 8b ce ff d0 8b e8 55
1098a360: 53 6a 11 ff 15 e4 b6 aa 10 8b f8 3b fb 74 32 57
1098a370: ff 15 e8 b6 aa 10 85 c0 7c 1e 8b 16 8b 47 0c 8b
1098a380: 52 30 55 50 8b ce ff d2 3b e8 57 0f 94 c3 ff 15
1098a390: ec b6 aa 10 84 db 75 09 57 ff 15 f8 b6 aa 10 33
1098a3a0: ff 8b 4c 24 10 8b 01 8b 50 20 ff d2 8b 4c 24 10
1098a3b0: 85 c9 74 07 8b 01 8b 50 08 ff d2 8b c7 5f 5d 5e
1098a3c0: 5b 83 c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098a290 <.text+0x989290>:
1098a290:	83 ec 14                                        	sub    esp,0x14
1098a293:	53                                              	push   ebx
1098a294:	33 db                                           	xor    ebx,ebx
1098a296:	89 5c 24 04                                     	mov    DWORD PTR [esp+0x4],ebx
1098a29a:	e8 31 ae f5 ff                                  	call   0x108e50d0
1098a29f:	3b c3                                           	cmp    eax,ebx
1098a2a1:	75 16                                           	jne    0x1098a2b9
1098a2a3:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098a2a7:	3b cb                                           	cmp    ecx,ebx
1098a2a9:	74 07                                           	je     0x1098a2b2
1098a2ab:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a2ad:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098a2b0:	ff d2                                           	call   edx
1098a2b2:	33 c0                                           	xor    eax,eax
1098a2b4:	5b                                              	pop    ebx
1098a2b5:	83 c4 14                                        	add    esp,0x14
1098a2b8:	c3                                              	ret
1098a2b9:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1098a2bd:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1098a2c1:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1098a2c5:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1098a2c9:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1098a2cd:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1098a2d1:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
1098a2d5:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1098a2d9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098a2db:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
1098a2de:	56                                              	push   esi
1098a2df:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098a2e3:	51                                              	push   ecx
1098a2e4:	8b c8                                           	mov    ecx,eax
1098a2e6:	ff d2                                           	call   edx
1098a2e8:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098a2ec:	8b f0                                           	mov    esi,eax
1098a2ee:	3b f3                                           	cmp    esi,ebx
1098a2f0:	75 13                                           	jne    0x1098a305
1098a2f2:	3b cb                                           	cmp    ecx,ebx
1098a2f4:	74 07                                           	je     0x1098a2fd
1098a2f6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a2f8:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098a2fb:	ff d2                                           	call   edx
1098a2fd:	5e                                              	pop    esi
1098a2fe:	33 c0                                           	xor    eax,eax
1098a300:	5b                                              	pop    ebx
1098a301:	83 c4 14                                        	add    esp,0x14
1098a304:	c3                                              	ret
1098a305:	3b cb                                           	cmp    ecx,ebx
1098a307:	74 0b                                           	je     0x1098a314
1098a309:	89 5c 24 08                                     	mov    DWORD PTR [esp+0x8],ebx
1098a30d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a30f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098a312:	ff d2                                           	call   edx
1098a314:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098a316:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
1098a319:	53                                              	push   ebx
1098a31a:	6a 01                                           	push   0x1
1098a31c:	6a 06                                           	push   0x6
1098a31e:	6a 01                                           	push   0x1
1098a320:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098a324:	51                                              	push   ecx
1098a325:	8d 54 24 20                                     	lea    edx,[esp+0x20]
1098a329:	52                                              	push   edx
1098a32a:	8b ce                                           	mov    ecx,esi
1098a32c:	ff d0                                           	call   eax
1098a32e:	84 c0                                           	test   al,al
1098a330:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098a334:	75 13                                           	jne    0x1098a349
1098a336:	3b cb                                           	cmp    ecx,ebx
1098a338:	74 07                                           	je     0x1098a341
1098a33a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098a33c:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1098a33f:	ff d0                                           	call   eax
1098a341:	5e                                              	pop    esi
1098a342:	33 c0                                           	xor    eax,eax
1098a344:	5b                                              	pop    ebx
1098a345:	83 c4 14                                        	add    esp,0x14
1098a348:	c3                                              	ret
1098a349:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098a34b:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
1098a34e:	55                                              	push   ebp
1098a34f:	57                                              	push   edi
1098a350:	ff d0                                           	call   eax
1098a352:	8b f0                                           	mov    esi,eax
1098a354:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098a356:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
1098a359:	8b ce                                           	mov    ecx,esi
1098a35b:	ff d0                                           	call   eax
1098a35d:	8b e8                                           	mov    ebp,eax
1098a35f:	55                                              	push   ebp
1098a360:	53                                              	push   ebx
1098a361:	6a 11                                           	push   0x11
1098a363:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
1098a369:	8b f8                                           	mov    edi,eax
1098a36b:	3b fb                                           	cmp    edi,ebx
1098a36d:	74 32                                           	je     0x1098a3a1
1098a36f:	57                                              	push   edi
1098a370:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
1098a376:	85 c0                                           	test   eax,eax
1098a378:	7c 1e                                           	jl     0x1098a398
1098a37a:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098a37c:	8b 47 0c                                        	mov    eax,DWORD PTR [edi+0xc]
1098a37f:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
1098a382:	55                                              	push   ebp
1098a383:	50                                              	push   eax
1098a384:	8b ce                                           	mov    ecx,esi
1098a386:	ff d2                                           	call   edx
1098a388:	3b e8                                           	cmp    ebp,eax
1098a38a:	57                                              	push   edi
1098a38b:	0f 94 c3                                        	sete   bl
1098a38e:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
1098a394:	84 db                                           	test   bl,bl
1098a396:	75 09                                           	jne    0x1098a3a1
1098a398:	57                                              	push   edi
1098a399:	ff 15 f8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6f8
1098a39f:	33 ff                                           	xor    edi,edi
1098a3a1:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098a3a5:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a3a7:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1098a3aa:	ff d2                                           	call   edx
1098a3ac:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098a3b0:	85 c9                                           	test   ecx,ecx
1098a3b2:	74 07                                           	je     0x1098a3bb
1098a3b4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a3b6:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098a3b9:	ff d2                                           	call   edx
1098a3bb:	8b c7                                           	mov    eax,edi
1098a3bd:	5f                                              	pop    edi
1098a3be:	5d                                              	pop    ebp
1098a3bf:	5e                                              	pop    esi
1098a3c0:	5b                                              	pop    ebx
1098a3c1:	83 c4 14                                        	add    esp,0x14
1098a3c4:	c3                                              	ret
1098a3c5:	cc                                              	int3
1098a3c6:	cc                                              	int3
1098a3c7:	cc                                              	int3
1098a3c8:	cc                                              	int3
1098a3c9:	cc                                              	int3
1098a3ca:	cc                                              	int3
1098a3cb:	cc                                              	int3
1098a3cc:	cc                                              	int3
1098a3cd:	cc                                              	int3
1098a3ce:	cc                                              	int3
1098a3cf:	cc                                              	int3
