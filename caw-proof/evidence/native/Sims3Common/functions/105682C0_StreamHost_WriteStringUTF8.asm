# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105682c0 (StreamHost_WriteStringUTF8)
Paired Ghidra pseudocode: 105682C0_StreamHost_WriteStringUTF8.c
Window: [0x105682c0, 0x105683e0) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x105683e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105682c0: 83 ec 18 57 8b 7c 24 24 85 ff 75 08 8d 47 fa 5f
105682d0: 83 c4 18 c3 8b 44 24 20 3b 05 a4 b0 c7 10 55 75
105682e0: 08 8b 2d a8 b0 c7 10 eb 0b 50 e8 81 ef ff ff 83
105682f0: c4 04 8b e8 85 ed 75 09 8d 45 fe 5d 5f 83 c4 18
10568300: c3 53 56 e8 18 2e ff ff 8b f0 8b 06 8b 50 5c 6a
10568310: 00 57 8b ce ff d2 50 8b 06 8b 50 58 57 8b ce ff
10568320: d2 50 8d 44 24 24 50 e8 f4 eb 3b 00 8b 5c 24 2c
10568330: 2b 5c 24 28 83 c4 10 8a c3 8b d3 24 7f c1 ea 07
10568340: 8d 4c 24 10 74 10 04 80 88 01 8a c2 83 c1 01 24
10568350: 7f c1 ea 07 75 f0 88 01 8b 55 00 8b 52 38 8d 44
10568360: 24 10 2b c8 83 c1 01 51 8b c8 51 8b cd ff d2 84
10568370: c0 8b 44 24 18 74 14 8b 55 00 8b 52 38 53 50 8b
10568380: cd ff d2 84 c0 8b 44 24 18 75 25 8b 4c 24 20 2b
10568390: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 f0 0a 3b 00
105683a0: 83 c4 04 5e 5b 5d b8 fd ff ff ff 5f 83 c4 18 c3
105683b0: 8b 54 24 20 2b d0 83 fa 01 7e 0d 85 c0 74 09 50
105683c0: e8 cb 0a 3b 00 83 c4 04 5e 5b 5d 33 c0 5f 83 c4
105683d0: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105682c0 <.text+0x5672c0>:
105682c0:	83 ec 18                                        	sub    esp,0x18
105682c3:	57                                              	push   edi
105682c4:	8b 7c 24 24                                     	mov    edi,DWORD PTR [esp+0x24]
105682c8:	85 ff                                           	test   edi,edi
105682ca:	75 08                                           	jne    0x105682d4
105682cc:	8d 47 fa                                        	lea    eax,[edi-0x6]
105682cf:	5f                                              	pop    edi
105682d0:	83 c4 18                                        	add    esp,0x18
105682d3:	c3                                              	ret
105682d4:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
105682d8:	3b 05 a4 b0 c7 10                               	cmp    eax,DWORD PTR ds:0x10c7b0a4
105682de:	55                                              	push   ebp
105682df:	75 08                                           	jne    0x105682e9
105682e1:	8b 2d a8 b0 c7 10                               	mov    ebp,DWORD PTR ds:0x10c7b0a8
105682e7:	eb 0b                                           	jmp    0x105682f4
105682e9:	50                                              	push   eax
105682ea:	e8 81 ef ff ff                                  	call   0x10567270
105682ef:	83 c4 04                                        	add    esp,0x4
105682f2:	8b e8                                           	mov    ebp,eax
105682f4:	85 ed                                           	test   ebp,ebp
105682f6:	75 09                                           	jne    0x10568301
105682f8:	8d 45 fe                                        	lea    eax,[ebp-0x2]
105682fb:	5d                                              	pop    ebp
105682fc:	5f                                              	pop    edi
105682fd:	83 c4 18                                        	add    esp,0x18
10568300:	c3                                              	ret
10568301:	53                                              	push   ebx
10568302:	56                                              	push   esi
10568303:	e8 18 2e ff ff                                  	call   0x1055b120
10568308:	8b f0                                           	mov    esi,eax
1056830a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056830c:	8b 50 5c                                        	mov    edx,DWORD PTR [eax+0x5c]
1056830f:	6a 00                                           	push   0x0
10568311:	57                                              	push   edi
10568312:	8b ce                                           	mov    ecx,esi
10568314:	ff d2                                           	call   edx
10568316:	50                                              	push   eax
10568317:	8b 06                                           	mov    eax,DWORD PTR [esi]
10568319:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1056831c:	57                                              	push   edi
1056831d:	8b ce                                           	mov    ecx,esi
1056831f:	ff d2                                           	call   edx
10568321:	50                                              	push   eax
10568322:	8d 44 24 24                                     	lea    eax,[esp+0x24]
10568326:	50                                              	push   eax
10568327:	e8 f4 eb 3b 00                                  	call   0x10926f20
1056832c:	8b 5c 24 2c                                     	mov    ebx,DWORD PTR [esp+0x2c]
10568330:	2b 5c 24 28                                     	sub    ebx,DWORD PTR [esp+0x28]
10568334:	83 c4 10                                        	add    esp,0x10
10568337:	8a c3                                           	mov    al,bl
10568339:	8b d3                                           	mov    edx,ebx
1056833b:	24 7f                                           	and    al,0x7f
1056833d:	c1 ea 07                                        	shr    edx,0x7
10568340:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10568344:	74 10                                           	je     0x10568356
10568346:	04 80                                           	add    al,0x80
10568348:	88 01                                           	mov    BYTE PTR [ecx],al
1056834a:	8a c2                                           	mov    al,dl
1056834c:	83 c1 01                                        	add    ecx,0x1
1056834f:	24 7f                                           	and    al,0x7f
10568351:	c1 ea 07                                        	shr    edx,0x7
10568354:	75 f0                                           	jne    0x10568346
10568356:	88 01                                           	mov    BYTE PTR [ecx],al
10568358:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
1056835b:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
1056835e:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10568362:	2b c8                                           	sub    ecx,eax
10568364:	83 c1 01                                        	add    ecx,0x1
10568367:	51                                              	push   ecx
10568368:	8b c8                                           	mov    ecx,eax
1056836a:	51                                              	push   ecx
1056836b:	8b cd                                           	mov    ecx,ebp
1056836d:	ff d2                                           	call   edx
1056836f:	84 c0                                           	test   al,al
10568371:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10568375:	74 14                                           	je     0x1056838b
10568377:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
1056837a:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
1056837d:	53                                              	push   ebx
1056837e:	50                                              	push   eax
1056837f:	8b cd                                           	mov    ecx,ebp
10568381:	ff d2                                           	call   edx
10568383:	84 c0                                           	test   al,al
10568385:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10568389:	75 25                                           	jne    0x105683b0
1056838b:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1056838f:	2b c8                                           	sub    ecx,eax
10568391:	83 f9 01                                        	cmp    ecx,0x1
10568394:	7e 0d                                           	jle    0x105683a3
10568396:	85 c0                                           	test   eax,eax
10568398:	74 09                                           	je     0x105683a3
1056839a:	50                                              	push   eax
1056839b:	e8 f0 0a 3b 00                                  	call   0x10918e90
105683a0:	83 c4 04                                        	add    esp,0x4
105683a3:	5e                                              	pop    esi
105683a4:	5b                                              	pop    ebx
105683a5:	5d                                              	pop    ebp
105683a6:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
105683ab:	5f                                              	pop    edi
105683ac:	83 c4 18                                        	add    esp,0x18
105683af:	c3                                              	ret
105683b0:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
105683b4:	2b d0                                           	sub    edx,eax
105683b6:	83 fa 01                                        	cmp    edx,0x1
105683b9:	7e 0d                                           	jle    0x105683c8
105683bb:	85 c0                                           	test   eax,eax
105683bd:	74 09                                           	je     0x105683c8
105683bf:	50                                              	push   eax
105683c0:	e8 cb 0a 3b 00                                  	call   0x10918e90
105683c5:	83 c4 04                                        	add    esp,0x4
105683c8:	5e                                              	pop    esi
105683c9:	5b                                              	pop    ebx
105683ca:	5d                                              	pop    ebp
105683cb:	33 c0                                           	xor    eax,eax
105683cd:	5f                                              	pop    edi
105683ce:	83 c4 18                                        	add    esp,0x18
105683d1:	c3                                              	ret
105683d2:	cc                                              	int3
105683d3:	cc                                              	int3
105683d4:	cc                                              	int3
105683d5:	cc                                              	int3
105683d6:	cc                                              	int3
105683d7:	cc                                              	int3
105683d8:	cc                                              	int3
105683d9:	cc                                              	int3
105683da:	cc                                              	int3
105683db:	cc                                              	int3
105683dc:	cc                                              	int3
105683dd:	cc                                              	int3
105683de:	cc                                              	int3
105683df:	cc                                              	int3
