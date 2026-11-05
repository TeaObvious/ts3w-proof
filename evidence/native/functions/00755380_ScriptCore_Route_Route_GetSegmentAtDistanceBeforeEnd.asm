# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00755380 (ScriptCore.Route::Route_GetSegmentAtDistanceBeforeEnd)
Paired Ghidra pseudocode: 00755380_ScriptCore_Route_Route_GetSegmentAtDistanceBeforeEnd.c
Window: [0x00755380, 0x00755460) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00755460
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00755380: 51 8b 44 24 08 8b 0d c4 50 1d 01 53 56 57 50 e8
00755390: 1c 61 ff ff 8b f8 85 ff 0f 84 b5 00 00 00 8b 17
007553a0: 8b 42 10 8b cf ff d0 80 bf f4 00 00 00 00 74 08
007553b0: 8b b7 ec 00 00 00 eb 13 8d 87 e0 00 00 00 39 00
007553c0: 74 07 8b 08 8b 71 08 eb 02 33 f6 85 f6 89 74 24
007553d0: 0c 74 77 8d 5e 04 8b d3 b8 01 00 00 00 f0 0f c1
007553e0: 02 8b 16 8b 42 48 8b ce ff d0 85 c0 74 3f 8b 4c
007553f0: 24 1c d9 44 24 18 8b 1e 8b 53 48 51 51 8b ce d9
00755400: 1c 24 ff d2 83 e8 01 50 8b 83 ec 00 00 00 8b ce
00755410: ff d0 8d 4c 24 0c 8b f0 e8 c3 0e ff ff 8b 17 8b
00755420: 42 14 8b cf ff d0 5f 8b c6 5e 5b 59 c3 8b cb 83
00755430: ca ff f0 0f c1 11 4a 75 11 b8 01 00 00 00 87 03
00755440: 8b 16 8b 02 6a 01 8b ce ff d0 8b 17 8b 42 14 8b
00755450: cf ff d0 5f 5e 33 c0 5b 59 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00755380 <.text+0x354380>:
  755380:	51                                              	push   ecx
  755381:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  755385:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75538b:	53                                              	push   ebx
  75538c:	56                                              	push   esi
  75538d:	57                                              	push   edi
  75538e:	50                                              	push   eax
  75538f:	e8 1c 61 ff ff                                  	call   0x74b4b0
  755394:	8b f8                                           	mov    edi,eax
  755396:	85 ff                                           	test   edi,edi
  755398:	0f 84 b5 00 00 00                               	je     0x755453
  75539e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7553a0:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7553a3:	8b cf                                           	mov    ecx,edi
  7553a5:	ff d0                                           	call   eax
  7553a7:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
  7553ae:	74 08                                           	je     0x7553b8
  7553b0:	8b b7 ec 00 00 00                               	mov    esi,DWORD PTR [edi+0xec]
  7553b6:	eb 13                                           	jmp    0x7553cb
  7553b8:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
  7553be:	39 00                                           	cmp    DWORD PTR [eax],eax
  7553c0:	74 07                                           	je     0x7553c9
  7553c2:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  7553c4:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  7553c7:	eb 02                                           	jmp    0x7553cb
  7553c9:	33 f6                                           	xor    esi,esi
  7553cb:	85 f6                                           	test   esi,esi
  7553cd:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  7553d1:	74 77                                           	je     0x75544a
  7553d3:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  7553d6:	8b d3                                           	mov    edx,ebx
  7553d8:	b8 01 00 00 00                                  	mov    eax,0x1
  7553dd:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  7553e1:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7553e3:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  7553e6:	8b ce                                           	mov    ecx,esi
  7553e8:	ff d0                                           	call   eax
  7553ea:	85 c0                                           	test   eax,eax
  7553ec:	74 3f                                           	je     0x75542d
  7553ee:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7553f2:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  7553f6:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
  7553f8:	8b 53 48                                        	mov    edx,DWORD PTR [ebx+0x48]
  7553fb:	51                                              	push   ecx
  7553fc:	51                                              	push   ecx
  7553fd:	8b ce                                           	mov    ecx,esi
  7553ff:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  755402:	ff d2                                           	call   edx
  755404:	83 e8 01                                        	sub    eax,0x1
  755407:	50                                              	push   eax
  755408:	8b 83 ec 00 00 00                               	mov    eax,DWORD PTR [ebx+0xec]
  75540e:	8b ce                                           	mov    ecx,esi
  755410:	ff d0                                           	call   eax
  755412:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  755416:	8b f0                                           	mov    esi,eax
  755418:	e8 c3 0e ff ff                                  	call   0x7462e0
  75541d:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75541f:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  755422:	8b cf                                           	mov    ecx,edi
  755424:	ff d0                                           	call   eax
  755426:	5f                                              	pop    edi
  755427:	8b c6                                           	mov    eax,esi
  755429:	5e                                              	pop    esi
  75542a:	5b                                              	pop    ebx
  75542b:	59                                              	pop    ecx
  75542c:	c3                                              	ret
  75542d:	8b cb                                           	mov    ecx,ebx
  75542f:	83 ca ff                                        	or     edx,0xffffffff
  755432:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  755436:	4a                                              	dec    edx
  755437:	75 11                                           	jne    0x75544a
  755439:	b8 01 00 00 00                                  	mov    eax,0x1
  75543e:	87 03                                           	xchg   DWORD PTR [ebx],eax
  755440:	8b 16                                           	mov    edx,DWORD PTR [esi]
  755442:	8b 02                                           	mov    eax,DWORD PTR [edx]
  755444:	6a 01                                           	push   0x1
  755446:	8b ce                                           	mov    ecx,esi
  755448:	ff d0                                           	call   eax
  75544a:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75544c:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75544f:	8b cf                                           	mov    ecx,edi
  755451:	ff d0                                           	call   eax
  755453:	5f                                              	pop    edi
  755454:	5e                                              	pop    esi
  755455:	33 c0                                           	xor    eax,eax
  755457:	5b                                              	pop    ebx
  755458:	59                                              	pop    ecx
  755459:	c3                                              	ret
  75545a:	cc                                              	int3
  75545b:	cc                                              	int3
  75545c:	cc                                              	int3
  75545d:	cc                                              	int3
  75545e:	cc                                              	int3
  75545f:	cc                                              	int3
