# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d84200 (ScriptCore.TaskControl::TaskControl_GetTaskContext)
Paired Ghidra pseudocode: 00D84200_ScriptCore_TaskControl_TaskControl_GetTaskContext.c
Window: [0x00d84200, 0x00d84790) (1424 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d84790
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d84200: 81 ec cc 00 00 00 53 55 56 57 e8 81 51 9e ff 33
00d84210: ff 3b c7 74 05 8d 70 f8 eb 02 33 f6 8b 46 08 8b
00d84220: 90 18 01 00 00 8d 4e 08 c6 44 24 1b 00 89 4c 24
00d84230: 20 ff d2 8b 9c 24 e0 00 00 00 3b d8 8b 84 24 e4
00d84240: 00 00 00 75 08 3b c2 0f 84 d4 00 00 00 57 50 53
00d84250: 8b ce e8 69 1e ff ff 8b e8 3b ef 89 6c 24 38 b0
00d84260: 01 0f 84 be 00 00 00 68 3c d6 08 01 68 f0 c8 08
00d84270: 01 8b ce e8 18 5e ff ff 68 2c d6 08 01 68 f0 c8
00d84280: 08 01 8b ce 89 44 24 24 e8 03 5e ff ff 89 44 24
00d84290: 3c e8 ba 12 0f 00 8b 8d 40 01 00 00 8b 54 24 1c
00d842a0: 8b bc 24 ec 00 00 00 83 c1 01 51 52 50 89 44 24
00d842b0: 30 e8 3a f1 11 00 83 c4 0c 89 47 04 8d 44 24 10
00d842c0: 50 8b 84 24 e8 00 00 00 8d 4f 0c 51 8d 57 08 52
00d842d0: 50 53 8b ce c7 44 24 24 00 00 00 00 e8 3f 09 ff
00d842e0: ff 8b 44 24 10 33 f6 85 c0 74 5a 8b 4c 24 20 8b
00d842f0: 11 6a 43 50 8b 82 c8 00 00 00 89 74 24 18 ff d0
00d84300: 8b 4c 24 10 3b ce 89 47 10 74 07 8b 11 8b 42 04
00d84310: ff d0 8b 85 4c 01 00 00 3b c6 74 32 8b 40 08 eb
00d84320: 2f 8a 44 24 1b 8b 8c 24 ec 00 00 00 89 39 89 79
00d84330: 04 89 79 08 89 79 0c 89 79 10 5f 5e 5d 5b 81 c4
00d84340: cc 00 00 00 c3 c7 47 10 00 00 00 00 eb c4 33 c0
00d84350: 89 07 39 b5 40 01 00 00 89 74 24 30 0f 8c b8 03
00d84360: 00 00 83 c5 3c 89 74 24 2c 89 6c 24 34 8d 49 00
00d84370: 8b 4c 24 34 8b 39 8b 94 24 ec 00 00 00 8b 42 04
00d84380: 8b 17 8b 5a 08 85 db 8b 4c 24 2c 89 7c 24 20 8d
00d84390: 6c 08 10 89 5c 24 1c 0f 84 a1 03 00 00 53 e8 cd
00d843a0: 12 10 00 83 c4 04 85 c0 89 44 24 10 75 12 8b 07
00d843b0: 8b 48 0c 51 e8 b7 12 10 00 83 c4 04 89 44 24 10
00d843c0: 80 bc 24 e8 00 00 00 00 8b 73 0c 89 74 24 28 89
00d843d0: 5d 00 75 15 8d 55 04 52 53 e8 a2 f6 ff ff 83 c4
00d843e0: 08 84 c0 0f 84 55 03 00 00 8b 47 08 89 45 08 8b
00d843f0: 4f 0c 89 4d 0c 8b 57 10 89 55 10 8b 47 18 89 45
00d84400: 14 8b 4f 1c 89 4d 18 8b 57 28 89 55 1c 8b 43 08
00d84410: f6 40 14 08 74 09 f6 06 01 0f 85 1f 03 00 00 8b
00d84420: 4b 0c 51 e8 58 9c 11 00 8b 54 24 14 8b f0 0f b7
00d84430: 42 10 83 c4 04 80 bc 24 e8 00 00 00 00 89 44 24
00d84440: 14 0f 85 97 00 00 00 8b 54 24 3c 8b c8 8b 44 24
00d84450: 24 03 ce 51 52 50 e8 95 ef 11 00 83 c4 0c 33 c9
00d84460: 85 f6 89 45 20 76 2c 8b 7c 24 28 ba 10 00 00 00
00d84470: 03 fa 8b 45 20 8b 1f 03 c2 89 08 83 c1 01 83 c2
00d84480: 08 83 c7 04 3b ce 89 58 04 72 e7 8b 5c 24 1c 8b
00d84490: 7c 24 20 33 c9 39 4c 24 14 76 43 8b 7c 24 10 8d
00d844a0: 14 f5 10 00 00 00 83 c7 18 8d a4 24 00 00 00 00
00d844b0: 8b 1f 8b 45 20 03 c2 89 5c 24 28 8d 1c 31 89 18
00d844c0: 8b 5c 24 28 83 c1 01 83 c2 08 83 c7 04 3b 4c 24
00d844d0: 14 89 58 04 72 da 8b 7c 24 20 8b 5c 24 1c 53 e8
00d844e0: 2c dd 0c 00 8d 4c 24 60 8b d8 8b 43 30 83 c4 04
00d844f0: 85 c0 8b d1 8d b4 24 dc 00 00 00 89 4c 24 58 89
00d84500: 54 24 4c 89 4c 24 48 89 74 24 50 c7 44 24 54 10
00d84510: d6 08 01 74 49 80 38 00 74 34 8d 9b 00 00 00 00
00d84520: 50 8d 54 24 48 52 e8 55 fc ff ff 8b 4c 24 4c 83
00d84530: c4 08 3b 4f 08 73 11 80 38 00 75 e4 8b 4c 24 48
00d84540: 8b d1 89 54 24 4c eb 16 74 0c 8b 4c 24 48 8b d1
00d84550: 89 54 24 4c eb 08 8b 54 24 4c 8b 4c 24 48 8b 74
00d84560: 24 30 8b 44 24 38 3b b0 40 01 00 00 75 2b 8b 80
00d84570: 4c 01 00 00 85 c0 74 21 8b 40 08 50 8d 44 24 48
00d84580: 50 e8 ba fa ff ff 83 c4 08 84 c0 0f 84 96 01 00
00d84590: 00 8b 54 24 4c 8b 4c 24 48 2b d1 c1 fa 03 39 57
00d845a0: 0c 0f 85 a4 01 00 00 85 d2 0f 84 33 01 00 00 80
00d845b0: bc 24 e8 00 00 00 00 0f 85 25 01 00 00 52 e8 bd
00d845c0: 13 0f 00 8b 4c 24 28 50 51 e8 22 ee 11 00 89 45
00d845d0: 24 0f b7 43 3e 0f b7 53 34 8b 4f 20 03 d1 8d 34
00d845e0: 01 8b 4c 24 54 03 d0 8b 44 24 58 33 db 2b c1 83
00d845f0: c4 0c c1 f8 03 89 54 24 28 89 5c 24 14 89 44 24
00d84600: 10 0f 84 db 00 00 00 8b 7c 24 24 c7 44 24 1c 10
00d84610: 00 00 00 0f b6 04 d9 83 f8 06 0f 87 2b 01 00 00
00d84620: ff 24 85 6c 47 d8 00 56 e8 b3 13 0f 00 50 e9 81
00d84630: 00 00 00 56 e8 d7 13 0f 00 50 eb 78 56 e8 fe 13
00d84640: 0f 00 50 eb 6f 8b 06 eb 74 8b 7c d9 04 57 e8 dd
00d84650: 73 0e 00 83 c4 04 80 78 06 16 0f 84 c7 00 00 00
00d84660: 8b 06 89 44 24 20 2b 44 24 28 3b 44 24 14 0f 85
00d84670: b3 00 00 00 6a 00 57 e8 14 b2 0e 00 8b 54 24 28
00d84680: 83 c0 07 83 e0 f8 01 44 24 1c 8b 44 24 2c 52 57
00d84690: 50 e8 aa ed 11 00 8b 7c 24 38 83 c4 14 eb 1e 8b
00d846a0: 0e 8b 51 08 8b 0d a8 1e 22 01 8d 44 24 40 50 89
00d846b0: 54 24 44 51 57 e8 86 ed 11 00 83 c4 0c 8b 4c 24
00d846c0: 1c 8b 55 24 89 04 11 83 c1 04 83 c3 01 83 c6 08
00d846d0: 3b 5c 24 10 89 4c 24 1c 8b 4c 24 48 0f 82 31 ff
00d846e0: ff ff 85 c9 74 0f 3b 4c 24 58 74 09 51 e8 ee fd
00d846f0: 75 ff 83 c4 04 8b 44 24 30 8b 4c 24 38 83 44 24
00d84700: 34 04 83 44 24 2c 28 83 c0 01 3b 81 40 01 00 00
00d84710: 89 44 24 30 0f 8e 56 fc ff ff 5f 5e 5d b0 01 5b
00d84720: 81 c4 cc 00 00 00 c3 8b 44 24 48 85 c0 74 0f 3b
00d84730: 44 24 58 74 09 50 e8 a5 fd 75 ff 83 c4 04 5f 5e
00d84740: 5d 32 c0 5b 81 c4 cc 00 00 00 c3 85 c9 74 ef 3b
00d84750: 4c 24 58 74 e9 51 e8 85 fd 75 ff 83 c4 04 5f 5e
00d84760: 5d 32 c0 5b 81 c4 cc 00 00 00 c3 90 27 46 d8 00
00d84770: 33 46 d8 00 3c 46 d8 00 45 46 d8 00 49 46 d8 00
00d84780: 4b 47 d8 00 9f 46 d8 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d84200 <.text+0x983200>:
  d84200:	81 ec cc 00 00 00                               	sub    esp,0xcc
  d84206:	53                                              	push   ebx
  d84207:	55                                              	push   ebp
  d84208:	56                                              	push   esi
  d84209:	57                                              	push   edi
  d8420a:	e8 81 51 9e ff                                  	call   0x769390
  d8420f:	33 ff                                           	xor    edi,edi
  d84211:	3b c7                                           	cmp    eax,edi
  d84213:	74 05                                           	je     0xd8421a
  d84215:	8d 70 f8                                        	lea    esi,[eax-0x8]
  d84218:	eb 02                                           	jmp    0xd8421c
  d8421a:	33 f6                                           	xor    esi,esi
  d8421c:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  d8421f:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  d84225:	8d 4e 08                                        	lea    ecx,[esi+0x8]
  d84228:	c6 44 24 1b 00                                  	mov    BYTE PTR [esp+0x1b],0x0
  d8422d:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  d84231:	ff d2                                           	call   edx
  d84233:	8b 9c 24 e0 00 00 00                            	mov    ebx,DWORD PTR [esp+0xe0]
  d8423a:	3b d8                                           	cmp    ebx,eax
  d8423c:	8b 84 24 e4 00 00 00                            	mov    eax,DWORD PTR [esp+0xe4]
  d84243:	75 08                                           	jne    0xd8424d
  d84245:	3b c2                                           	cmp    eax,edx
  d84247:	0f 84 d4 00 00 00                               	je     0xd84321
  d8424d:	57                                              	push   edi
  d8424e:	50                                              	push   eax
  d8424f:	53                                              	push   ebx
  d84250:	8b ce                                           	mov    ecx,esi
  d84252:	e8 69 1e ff ff                                  	call   0xd760c0
  d84257:	8b e8                                           	mov    ebp,eax
  d84259:	3b ef                                           	cmp    ebp,edi
  d8425b:	89 6c 24 38                                     	mov    DWORD PTR [esp+0x38],ebp
  d8425f:	b0 01                                           	mov    al,0x1
  d84261:	0f 84 be 00 00 00                               	je     0xd84325
  d84267:	68 3c d6 08 01                                  	push   0x108d63c
  d8426c:	68 f0 c8 08 01                                  	push   0x108c8f0
  d84271:	8b ce                                           	mov    ecx,esi
  d84273:	e8 18 5e ff ff                                  	call   0xd7a090
  d84278:	68 2c d6 08 01                                  	push   0x108d62c
  d8427d:	68 f0 c8 08 01                                  	push   0x108c8f0
  d84282:	8b ce                                           	mov    ecx,esi
  d84284:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  d84288:	e8 03 5e ff ff                                  	call   0xd7a090
  d8428d:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  d84291:	e8 ba 12 0f 00                                  	call   0xe75550
  d84296:	8b 8d 40 01 00 00                               	mov    ecx,DWORD PTR [ebp+0x140]
  d8429c:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  d842a0:	8b bc 24 ec 00 00 00                            	mov    edi,DWORD PTR [esp+0xec]
  d842a7:	83 c1 01                                        	add    ecx,0x1
  d842aa:	51                                              	push   ecx
  d842ab:	52                                              	push   edx
  d842ac:	50                                              	push   eax
  d842ad:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  d842b1:	e8 3a f1 11 00                                  	call   0xea33f0
  d842b6:	83 c4 0c                                        	add    esp,0xc
  d842b9:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
  d842bc:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  d842c0:	50                                              	push   eax
  d842c1:	8b 84 24 e8 00 00 00                            	mov    eax,DWORD PTR [esp+0xe8]
  d842c8:	8d 4f 0c                                        	lea    ecx,[edi+0xc]
  d842cb:	51                                              	push   ecx
  d842cc:	8d 57 08                                        	lea    edx,[edi+0x8]
  d842cf:	52                                              	push   edx
  d842d0:	50                                              	push   eax
  d842d1:	53                                              	push   ebx
  d842d2:	8b ce                                           	mov    ecx,esi
  d842d4:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  d842dc:	e8 3f 09 ff ff                                  	call   0xd74c20
  d842e1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d842e5:	33 f6                                           	xor    esi,esi
  d842e7:	85 c0                                           	test   eax,eax
  d842e9:	74 5a                                           	je     0xd84345
  d842eb:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d842ef:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d842f1:	6a 43                                           	push   0x43
  d842f3:	50                                              	push   eax
  d842f4:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  d842fa:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  d842fe:	ff d0                                           	call   eax
  d84300:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d84304:	3b ce                                           	cmp    ecx,esi
  d84306:	89 47 10                                        	mov    DWORD PTR [edi+0x10],eax
  d84309:	74 07                                           	je     0xd84312
  d8430b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d8430d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d84310:	ff d0                                           	call   eax
  d84312:	8b 85 4c 01 00 00                               	mov    eax,DWORD PTR [ebp+0x14c]
  d84318:	3b c6                                           	cmp    eax,esi
  d8431a:	74 32                                           	je     0xd8434e
  d8431c:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d8431f:	eb 2f                                           	jmp    0xd84350
  d84321:	8a 44 24 1b                                     	mov    al,BYTE PTR [esp+0x1b]
  d84325:	8b 8c 24 ec 00 00 00                            	mov    ecx,DWORD PTR [esp+0xec]
  d8432c:	89 39                                           	mov    DWORD PTR [ecx],edi
  d8432e:	89 79 04                                        	mov    DWORD PTR [ecx+0x4],edi
  d84331:	89 79 08                                        	mov    DWORD PTR [ecx+0x8],edi
  d84334:	89 79 0c                                        	mov    DWORD PTR [ecx+0xc],edi
  d84337:	89 79 10                                        	mov    DWORD PTR [ecx+0x10],edi
  d8433a:	5f                                              	pop    edi
  d8433b:	5e                                              	pop    esi
  d8433c:	5d                                              	pop    ebp
  d8433d:	5b                                              	pop    ebx
  d8433e:	81 c4 cc 00 00 00                               	add    esp,0xcc
  d84344:	c3                                              	ret
  d84345:	c7 47 10 00 00 00 00                            	mov    DWORD PTR [edi+0x10],0x0
  d8434c:	eb c4                                           	jmp    0xd84312
  d8434e:	33 c0                                           	xor    eax,eax
  d84350:	89 07                                           	mov    DWORD PTR [edi],eax
  d84352:	39 b5 40 01 00 00                               	cmp    DWORD PTR [ebp+0x140],esi
  d84358:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  d8435c:	0f 8c b8 03 00 00                               	jl     0xd8471a
  d84362:	83 c5 3c                                        	add    ebp,0x3c
  d84365:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  d84369:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
  d8436d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  d84370:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  d84374:	8b 39                                           	mov    edi,DWORD PTR [ecx]
  d84376:	8b 94 24 ec 00 00 00                            	mov    edx,DWORD PTR [esp+0xec]
  d8437d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d84380:	8b 17                                           	mov    edx,DWORD PTR [edi]
  d84382:	8b 5a 08                                        	mov    ebx,DWORD PTR [edx+0x8]
  d84385:	85 db                                           	test   ebx,ebx
  d84387:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  d8438b:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  d8438f:	8d 6c 08 10                                     	lea    ebp,[eax+ecx*1+0x10]
  d84393:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  d84397:	0f 84 a1 03 00 00                               	je     0xd8473e
  d8439d:	53                                              	push   ebx
  d8439e:	e8 cd 12 10 00                                  	call   0xe85670
  d843a3:	83 c4 04                                        	add    esp,0x4
  d843a6:	85 c0                                           	test   eax,eax
  d843a8:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  d843ac:	75 12                                           	jne    0xd843c0
  d843ae:	8b 07                                           	mov    eax,DWORD PTR [edi]
  d843b0:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d843b3:	51                                              	push   ecx
  d843b4:	e8 b7 12 10 00                                  	call   0xe85670
  d843b9:	83 c4 04                                        	add    esp,0x4
  d843bc:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  d843c0:	80 bc 24 e8 00 00 00 00                         	cmp    BYTE PTR [esp+0xe8],0x0
  d843c8:	8b 73 0c                                        	mov    esi,DWORD PTR [ebx+0xc]
  d843cb:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  d843cf:	89 5d 00                                        	mov    DWORD PTR [ebp+0x0],ebx
  d843d2:	75 15                                           	jne    0xd843e9
  d843d4:	8d 55 04                                        	lea    edx,[ebp+0x4]
  d843d7:	52                                              	push   edx
  d843d8:	53                                              	push   ebx
  d843d9:	e8 a2 f6 ff ff                                  	call   0xd83a80
  d843de:	83 c4 08                                        	add    esp,0x8
  d843e1:	84 c0                                           	test   al,al
  d843e3:	0f 84 55 03 00 00                               	je     0xd8473e
  d843e9:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
  d843ec:	89 45 08                                        	mov    DWORD PTR [ebp+0x8],eax
  d843ef:	8b 4f 0c                                        	mov    ecx,DWORD PTR [edi+0xc]
  d843f2:	89 4d 0c                                        	mov    DWORD PTR [ebp+0xc],ecx
  d843f5:	8b 57 10                                        	mov    edx,DWORD PTR [edi+0x10]
  d843f8:	89 55 10                                        	mov    DWORD PTR [ebp+0x10],edx
  d843fb:	8b 47 18                                        	mov    eax,DWORD PTR [edi+0x18]
  d843fe:	89 45 14                                        	mov    DWORD PTR [ebp+0x14],eax
  d84401:	8b 4f 1c                                        	mov    ecx,DWORD PTR [edi+0x1c]
  d84404:	89 4d 18                                        	mov    DWORD PTR [ebp+0x18],ecx
  d84407:	8b 57 28                                        	mov    edx,DWORD PTR [edi+0x28]
  d8440a:	89 55 1c                                        	mov    DWORD PTR [ebp+0x1c],edx
  d8440d:	8b 43 08                                        	mov    eax,DWORD PTR [ebx+0x8]
  d84410:	f6 40 14 08                                     	test   BYTE PTR [eax+0x14],0x8
  d84414:	74 09                                           	je     0xd8441f
  d84416:	f6 06 01                                        	test   BYTE PTR [esi],0x1
  d84419:	0f 85 1f 03 00 00                               	jne    0xd8473e
  d8441f:	8b 4b 0c                                        	mov    ecx,DWORD PTR [ebx+0xc]
  d84422:	51                                              	push   ecx
  d84423:	e8 58 9c 11 00                                  	call   0xe9e080
  d84428:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  d8442c:	8b f0                                           	mov    esi,eax
  d8442e:	0f b7 42 10                                     	movzx  eax,WORD PTR [edx+0x10]
  d84432:	83 c4 04                                        	add    esp,0x4
  d84435:	80 bc 24 e8 00 00 00 00                         	cmp    BYTE PTR [esp+0xe8],0x0
  d8443d:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  d84441:	0f 85 97 00 00 00                               	jne    0xd844de
  d84447:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  d8444b:	8b c8                                           	mov    ecx,eax
  d8444d:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  d84451:	03 ce                                           	add    ecx,esi
  d84453:	51                                              	push   ecx
  d84454:	52                                              	push   edx
  d84455:	50                                              	push   eax
  d84456:	e8 95 ef 11 00                                  	call   0xea33f0
  d8445b:	83 c4 0c                                        	add    esp,0xc
  d8445e:	33 c9                                           	xor    ecx,ecx
  d84460:	85 f6                                           	test   esi,esi
  d84462:	89 45 20                                        	mov    DWORD PTR [ebp+0x20],eax
  d84465:	76 2c                                           	jbe    0xd84493
  d84467:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
  d8446b:	ba 10 00 00 00                                  	mov    edx,0x10
  d84470:	03 fa                                           	add    edi,edx
  d84472:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
  d84475:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  d84477:	03 c2                                           	add    eax,edx
  d84479:	89 08                                           	mov    DWORD PTR [eax],ecx
  d8447b:	83 c1 01                                        	add    ecx,0x1
  d8447e:	83 c2 08                                        	add    edx,0x8
  d84481:	83 c7 04                                        	add    edi,0x4
  d84484:	3b ce                                           	cmp    ecx,esi
  d84486:	89 58 04                                        	mov    DWORD PTR [eax+0x4],ebx
  d84489:	72 e7                                           	jb     0xd84472
  d8448b:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
  d8448f:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  d84493:	33 c9                                           	xor    ecx,ecx
  d84495:	39 4c 24 14                                     	cmp    DWORD PTR [esp+0x14],ecx
  d84499:	76 43                                           	jbe    0xd844de
  d8449b:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  d8449f:	8d 14 f5 10 00 00 00                            	lea    edx,[esi*8+0x10]
  d844a6:	83 c7 18                                        	add    edi,0x18
  d844a9:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  d844b0:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  d844b2:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
  d844b5:	03 c2                                           	add    eax,edx
  d844b7:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  d844bb:	8d 1c 31                                        	lea    ebx,[ecx+esi*1]
  d844be:	89 18                                           	mov    DWORD PTR [eax],ebx
  d844c0:	8b 5c 24 28                                     	mov    ebx,DWORD PTR [esp+0x28]
  d844c4:	83 c1 01                                        	add    ecx,0x1
  d844c7:	83 c2 08                                        	add    edx,0x8
  d844ca:	83 c7 04                                        	add    edi,0x4
  d844cd:	3b 4c 24 14                                     	cmp    ecx,DWORD PTR [esp+0x14]
  d844d1:	89 58 04                                        	mov    DWORD PTR [eax+0x4],ebx
  d844d4:	72 da                                           	jb     0xd844b0
  d844d6:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  d844da:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
  d844de:	53                                              	push   ebx
  d844df:	e8 2c dd 0c 00                                  	call   0xe52210
  d844e4:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  d844e8:	8b d8                                           	mov    ebx,eax
  d844ea:	8b 43 30                                        	mov    eax,DWORD PTR [ebx+0x30]
  d844ed:	83 c4 04                                        	add    esp,0x4
  d844f0:	85 c0                                           	test   eax,eax
  d844f2:	8b d1                                           	mov    edx,ecx
  d844f4:	8d b4 24 dc 00 00 00                            	lea    esi,[esp+0xdc]
  d844fb:	89 4c 24 58                                     	mov    DWORD PTR [esp+0x58],ecx
  d844ff:	89 54 24 4c                                     	mov    DWORD PTR [esp+0x4c],edx
  d84503:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
  d84507:	89 74 24 50                                     	mov    DWORD PTR [esp+0x50],esi
  d8450b:	c7 44 24 54 10 d6 08 01                         	mov    DWORD PTR [esp+0x54],0x108d610
  d84513:	74 49                                           	je     0xd8455e
  d84515:	80 38 00                                        	cmp    BYTE PTR [eax],0x0
  d84518:	74 34                                           	je     0xd8454e
  d8451a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  d84520:	50                                              	push   eax
  d84521:	8d 54 24 48                                     	lea    edx,[esp+0x48]
  d84525:	52                                              	push   edx
  d84526:	e8 55 fc ff ff                                  	call   0xd84180
  d8452b:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  d8452f:	83 c4 08                                        	add    esp,0x8
  d84532:	3b 4f 08                                        	cmp    ecx,DWORD PTR [edi+0x8]
  d84535:	73 11                                           	jae    0xd84548
  d84537:	80 38 00                                        	cmp    BYTE PTR [eax],0x0
  d8453a:	75 e4                                           	jne    0xd84520
  d8453c:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  d84540:	8b d1                                           	mov    edx,ecx
  d84542:	89 54 24 4c                                     	mov    DWORD PTR [esp+0x4c],edx
  d84546:	eb 16                                           	jmp    0xd8455e
  d84548:	74 0c                                           	je     0xd84556
  d8454a:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  d8454e:	8b d1                                           	mov    edx,ecx
  d84550:	89 54 24 4c                                     	mov    DWORD PTR [esp+0x4c],edx
  d84554:	eb 08                                           	jmp    0xd8455e
  d84556:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  d8455a:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  d8455e:	8b 74 24 30                                     	mov    esi,DWORD PTR [esp+0x30]
  d84562:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  d84566:	3b b0 40 01 00 00                               	cmp    esi,DWORD PTR [eax+0x140]
  d8456c:	75 2b                                           	jne    0xd84599
  d8456e:	8b 80 4c 01 00 00                               	mov    eax,DWORD PTR [eax+0x14c]
  d84574:	85 c0                                           	test   eax,eax
  d84576:	74 21                                           	je     0xd84599
  d84578:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d8457b:	50                                              	push   eax
  d8457c:	8d 44 24 48                                     	lea    eax,[esp+0x48]
  d84580:	50                                              	push   eax
  d84581:	e8 ba fa ff ff                                  	call   0xd84040
  d84586:	83 c4 08                                        	add    esp,0x8
  d84589:	84 c0                                           	test   al,al
  d8458b:	0f 84 96 01 00 00                               	je     0xd84727
  d84591:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  d84595:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  d84599:	2b d1                                           	sub    edx,ecx
  d8459b:	c1 fa 03                                        	sar    edx,0x3
  d8459e:	39 57 0c                                        	cmp    DWORD PTR [edi+0xc],edx
  d845a1:	0f 85 a4 01 00 00                               	jne    0xd8474b
  d845a7:	85 d2                                           	test   edx,edx
  d845a9:	0f 84 33 01 00 00                               	je     0xd846e2
  d845af:	80 bc 24 e8 00 00 00 00                         	cmp    BYTE PTR [esp+0xe8],0x0
  d845b7:	0f 85 25 01 00 00                               	jne    0xd846e2
  d845bd:	52                                              	push   edx
  d845be:	e8 bd 13 0f 00                                  	call   0xe75980
  d845c3:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  d845c7:	50                                              	push   eax
  d845c8:	51                                              	push   ecx
  d845c9:	e8 22 ee 11 00                                  	call   0xea33f0
  d845ce:	89 45 24                                        	mov    DWORD PTR [ebp+0x24],eax
  d845d1:	0f b7 43 3e                                     	movzx  eax,WORD PTR [ebx+0x3e]
  d845d5:	0f b7 53 34                                     	movzx  edx,WORD PTR [ebx+0x34]
  d845d9:	8b 4f 20                                        	mov    ecx,DWORD PTR [edi+0x20]
  d845dc:	03 d1                                           	add    edx,ecx
  d845de:	8d 34 01                                        	lea    esi,[ecx+eax*1]
  d845e1:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  d845e5:	03 d0                                           	add    edx,eax
  d845e7:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  d845eb:	33 db                                           	xor    ebx,ebx
  d845ed:	2b c1                                           	sub    eax,ecx
  d845ef:	83 c4 0c                                        	add    esp,0xc
  d845f2:	c1 f8 03                                        	sar    eax,0x3
  d845f5:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  d845f9:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  d845fd:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  d84601:	0f 84 db 00 00 00                               	je     0xd846e2
  d84607:	8b 7c 24 24                                     	mov    edi,DWORD PTR [esp+0x24]
  d8460b:	c7 44 24 1c 10 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x10
  d84613:	0f b6 04 d9                                     	movzx  eax,BYTE PTR [ecx+ebx*8]
  d84617:	83 f8 06                                        	cmp    eax,0x6
  d8461a:	0f 87 2b 01 00 00                               	ja     0xd8474b
  d84620:	ff 24 85 6c 47 d8 00                            	jmp    DWORD PTR [eax*4+0xd8476c]
  d84627:	56                                              	push   esi
  d84628:	e8 b3 13 0f 00                                  	call   0xe759e0
  d8462d:	50                                              	push   eax
  d8462e:	e9 81 00 00 00                                  	jmp    0xd846b4
  d84633:	56                                              	push   esi
  d84634:	e8 d7 13 0f 00                                  	call   0xe75a10
  d84639:	50                                              	push   eax
  d8463a:	eb 78                                           	jmp    0xd846b4
  d8463c:	56                                              	push   esi
  d8463d:	e8 fe 13 0f 00                                  	call   0xe75a40
  d84642:	50                                              	push   eax
  d84643:	eb 6f                                           	jmp    0xd846b4
  d84645:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d84647:	eb 74                                           	jmp    0xd846bd
  d84649:	8b 7c d9 04                                     	mov    edi,DWORD PTR [ecx+ebx*8+0x4]
  d8464d:	57                                              	push   edi
  d8464e:	e8 dd 73 0e 00                                  	call   0xe6ba30
  d84653:	83 c4 04                                        	add    esp,0x4
  d84656:	80 78 06 16                                     	cmp    BYTE PTR [eax+0x6],0x16
  d8465a:	0f 84 c7 00 00 00                               	je     0xd84727
  d84660:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d84662:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  d84666:	2b 44 24 28                                     	sub    eax,DWORD PTR [esp+0x28]
  d8466a:	3b 44 24 14                                     	cmp    eax,DWORD PTR [esp+0x14]
  d8466e:	0f 85 b3 00 00 00                               	jne    0xd84727
  d84674:	6a 00                                           	push   0x0
  d84676:	57                                              	push   edi
  d84677:	e8 14 b2 0e 00                                  	call   0xe6f890
  d8467c:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  d84680:	83 c0 07                                        	add    eax,0x7
  d84683:	83 e0 f8                                        	and    eax,0xfffffff8
  d84686:	01 44 24 1c                                     	add    DWORD PTR [esp+0x1c],eax
  d8468a:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  d8468e:	52                                              	push   edx
  d8468f:	57                                              	push   edi
  d84690:	50                                              	push   eax
  d84691:	e8 aa ed 11 00                                  	call   0xea3440
  d84696:	8b 7c 24 38                                     	mov    edi,DWORD PTR [esp+0x38]
  d8469a:	83 c4 14                                        	add    esp,0x14
  d8469d:	eb 1e                                           	jmp    0xd846bd
  d8469f:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d846a1:	8b 51 08                                        	mov    edx,DWORD PTR [ecx+0x8]
  d846a4:	8b 0d a8 1e 22 01                               	mov    ecx,DWORD PTR ds:0x1221ea8
  d846aa:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  d846ae:	50                                              	push   eax
  d846af:	89 54 24 44                                     	mov    DWORD PTR [esp+0x44],edx
  d846b3:	51                                              	push   ecx
  d846b4:	57                                              	push   edi
  d846b5:	e8 86 ed 11 00                                  	call   0xea3440
  d846ba:	83 c4 0c                                        	add    esp,0xc
  d846bd:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  d846c1:	8b 55 24                                        	mov    edx,DWORD PTR [ebp+0x24]
  d846c4:	89 04 11                                        	mov    DWORD PTR [ecx+edx*1],eax
  d846c7:	83 c1 04                                        	add    ecx,0x4
  d846ca:	83 c3 01                                        	add    ebx,0x1
  d846cd:	83 c6 08                                        	add    esi,0x8
  d846d0:	3b 5c 24 10                                     	cmp    ebx,DWORD PTR [esp+0x10]
  d846d4:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  d846d8:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  d846dc:	0f 82 31 ff ff ff                               	jb     0xd84613
  d846e2:	85 c9                                           	test   ecx,ecx
  d846e4:	74 0f                                           	je     0xd846f5
  d846e6:	3b 4c 24 58                                     	cmp    ecx,DWORD PTR [esp+0x58]
  d846ea:	74 09                                           	je     0xd846f5
  d846ec:	51                                              	push   ecx
  d846ed:	e8 ee fd 75 ff                                  	call   0x4e44e0
  d846f2:	83 c4 04                                        	add    esp,0x4
  d846f5:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  d846f9:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  d846fd:	83 44 24 34 04                                  	add    DWORD PTR [esp+0x34],0x4
  d84702:	83 44 24 2c 28                                  	add    DWORD PTR [esp+0x2c],0x28
  d84707:	83 c0 01                                        	add    eax,0x1
  d8470a:	3b 81 40 01 00 00                               	cmp    eax,DWORD PTR [ecx+0x140]
  d84710:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  d84714:	0f 8e 56 fc ff ff                               	jle    0xd84370
  d8471a:	5f                                              	pop    edi
  d8471b:	5e                                              	pop    esi
  d8471c:	5d                                              	pop    ebp
  d8471d:	b0 01                                           	mov    al,0x1
  d8471f:	5b                                              	pop    ebx
  d84720:	81 c4 cc 00 00 00                               	add    esp,0xcc
  d84726:	c3                                              	ret
  d84727:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  d8472b:	85 c0                                           	test   eax,eax
  d8472d:	74 0f                                           	je     0xd8473e
  d8472f:	3b 44 24 58                                     	cmp    eax,DWORD PTR [esp+0x58]
  d84733:	74 09                                           	je     0xd8473e
  d84735:	50                                              	push   eax
  d84736:	e8 a5 fd 75 ff                                  	call   0x4e44e0
  d8473b:	83 c4 04                                        	add    esp,0x4
  d8473e:	5f                                              	pop    edi
  d8473f:	5e                                              	pop    esi
  d84740:	5d                                              	pop    ebp
  d84741:	32 c0                                           	xor    al,al
  d84743:	5b                                              	pop    ebx
  d84744:	81 c4 cc 00 00 00                               	add    esp,0xcc
  d8474a:	c3                                              	ret
  d8474b:	85 c9                                           	test   ecx,ecx
  d8474d:	74 ef                                           	je     0xd8473e
  d8474f:	3b 4c 24 58                                     	cmp    ecx,DWORD PTR [esp+0x58]
  d84753:	74 e9                                           	je     0xd8473e
  d84755:	51                                              	push   ecx
  d84756:	e8 85 fd 75 ff                                  	call   0x4e44e0
  d8475b:	83 c4 04                                        	add    esp,0x4
  d8475e:	5f                                              	pop    edi
  d8475f:	5e                                              	pop    esi
  d84760:	5d                                              	pop    ebp
  d84761:	32 c0                                           	xor    al,al
  d84763:	5b                                              	pop    ebx
  d84764:	81 c4 cc 00 00 00                               	add    esp,0xcc
  d8476a:	c3                                              	ret
  d8476b:	90                                              	nop
  d8476c:	27                                              	daa
  d8476d:	46                                              	inc    esi
  d8476e:	d8 00                                           	fadd   DWORD PTR [eax]
  d84770:	33 46 d8                                        	xor    eax,DWORD PTR [esi-0x28]
  d84773:	00 3c 46                                        	add    BYTE PTR [esi+eax*2],bh
  d84776:	d8 00                                           	fadd   DWORD PTR [eax]
  d84778:	45                                              	inc    ebp
  d84779:	46                                              	inc    esi
  d8477a:	d8 00                                           	fadd   DWORD PTR [eax]
  d8477c:	49                                              	dec    ecx
  d8477d:	46                                              	inc    esi
  d8477e:	d8 00                                           	fadd   DWORD PTR [eax]
  d84780:	4b                                              	dec    ebx
  d84781:	47                                              	inc    edi
  d84782:	d8 00                                           	fadd   DWORD PTR [eax]
  d84784:	9f                                              	lahf
  d84785:	46                                              	inc    esi
  d84786:	d8 00                                           	fadd   DWORD PTR [eax]
  d84788:	cc                                              	int3
  d84789:	cc                                              	int3
  d8478a:	cc                                              	int3
  d8478b:	cc                                              	int3
  d8478c:	cc                                              	int3
  d8478d:	cc                                              	int3
  d8478e:	cc                                              	int3
  d8478f:	cc                                              	int3
