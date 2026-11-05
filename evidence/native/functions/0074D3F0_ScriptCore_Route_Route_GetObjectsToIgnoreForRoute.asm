# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d3f0 (ScriptCore.Route::Route_GetObjectsToIgnoreForRoute)
Paired Ghidra pseudocode: 0074D3F0_ScriptCore_Route_Route_GetObjectsToIgnoreForRoute.c
Window: [0x0074d3f0, 0x0074d4d0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d4d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d3f0: 83 ec 0c 53 55 57 e8 95 bf 01 00 8b 0d c4 50 1d
0074d400: 01 85 c9 8b d8 0f 84 b1 00 00 00 8b 44 24 1c 50
0074d410: e8 9b e0 ff ff 8b e8 85 ed 0f 84 9d 00 00 00 8b
0074d420: 55 00 8b 42 10 8b cd ff d0 8d 8d 58 01 00 00 e8
0074d430: ec f0 0c 00 8b f8 8b 47 04 2b 07 c1 f8 03 74 72
0074d440: 8b 13 8b 92 88 00 00 00 56 50 8d 44 24 14 50 8b
0074d450: cb ff d2 8b 07 8b 4f 04 2b c8 33 f6 c1 f9 03 74
0074d460: 39 8b 14 f0 89 54 24 14 8b 44 f0 04 8b 13 8b 92
0074d470: a0 00 00 00 6a 01 89 44 24 1c 56 8d 44 24 1c 50
0074d480: 8d 4c 24 1c 51 8b cb ff d2 8b 07 8b 4f 04 2b c8
0074d490: 83 c6 01 c1 f9 03 3b f1 72 c7 8b 55 00 8b 42 14
0074d4a0: 8b 74 24 10 8b cd ff d0 8b c6 5e 5f 5d 5b 83 c4
0074d4b0: 0c c3 8b 55 00 8b 42 14 8b cd ff d0 5f 5d 33 c0
0074d4c0: 5b 83 c4 0c c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074d3f0 <.text+0x34c3f0>:
  74d3f0:	83 ec 0c                                        	sub    esp,0xc
  74d3f3:	53                                              	push   ebx
  74d3f4:	55                                              	push   ebp
  74d3f5:	57                                              	push   edi
  74d3f6:	e8 95 bf 01 00                                  	call   0x769390
  74d3fb:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d401:	85 c9                                           	test   ecx,ecx
  74d403:	8b d8                                           	mov    ebx,eax
  74d405:	0f 84 b1 00 00 00                               	je     0x74d4bc
  74d40b:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  74d40f:	50                                              	push   eax
  74d410:	e8 9b e0 ff ff                                  	call   0x74b4b0
  74d415:	8b e8                                           	mov    ebp,eax
  74d417:	85 ed                                           	test   ebp,ebp
  74d419:	0f 84 9d 00 00 00                               	je     0x74d4bc
  74d41f:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  74d422:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d425:	8b cd                                           	mov    ecx,ebp
  74d427:	ff d0                                           	call   eax
  74d429:	8d 8d 58 01 00 00                               	lea    ecx,[ebp+0x158]
  74d42f:	e8 ec f0 0c 00                                  	call   0x81c520
  74d434:	8b f8                                           	mov    edi,eax
  74d436:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  74d439:	2b 07                                           	sub    eax,DWORD PTR [edi]
  74d43b:	c1 f8 03                                        	sar    eax,0x3
  74d43e:	74 72                                           	je     0x74d4b2
  74d440:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  74d442:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
  74d448:	56                                              	push   esi
  74d449:	50                                              	push   eax
  74d44a:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  74d44e:	50                                              	push   eax
  74d44f:	8b cb                                           	mov    ecx,ebx
  74d451:	ff d2                                           	call   edx
  74d453:	8b 07                                           	mov    eax,DWORD PTR [edi]
  74d455:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  74d458:	2b c8                                           	sub    ecx,eax
  74d45a:	33 f6                                           	xor    esi,esi
  74d45c:	c1 f9 03                                        	sar    ecx,0x3
  74d45f:	74 39                                           	je     0x74d49a
  74d461:	8b 14 f0                                        	mov    edx,DWORD PTR [eax+esi*8]
  74d464:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  74d468:	8b 44 f0 04                                     	mov    eax,DWORD PTR [eax+esi*8+0x4]
  74d46c:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  74d46e:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
  74d474:	6a 01                                           	push   0x1
  74d476:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  74d47a:	56                                              	push   esi
  74d47b:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  74d47f:	50                                              	push   eax
  74d480:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  74d484:	51                                              	push   ecx
  74d485:	8b cb                                           	mov    ecx,ebx
  74d487:	ff d2                                           	call   edx
  74d489:	8b 07                                           	mov    eax,DWORD PTR [edi]
  74d48b:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  74d48e:	2b c8                                           	sub    ecx,eax
  74d490:	83 c6 01                                        	add    esi,0x1
  74d493:	c1 f9 03                                        	sar    ecx,0x3
  74d496:	3b f1                                           	cmp    esi,ecx
  74d498:	72 c7                                           	jb     0x74d461
  74d49a:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  74d49d:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d4a0:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  74d4a4:	8b cd                                           	mov    ecx,ebp
  74d4a6:	ff d0                                           	call   eax
  74d4a8:	8b c6                                           	mov    eax,esi
  74d4aa:	5e                                              	pop    esi
  74d4ab:	5f                                              	pop    edi
  74d4ac:	5d                                              	pop    ebp
  74d4ad:	5b                                              	pop    ebx
  74d4ae:	83 c4 0c                                        	add    esp,0xc
  74d4b1:	c3                                              	ret
  74d4b2:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  74d4b5:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d4b8:	8b cd                                           	mov    ecx,ebp
  74d4ba:	ff d0                                           	call   eax
  74d4bc:	5f                                              	pop    edi
  74d4bd:	5d                                              	pop    ebp
  74d4be:	33 c0                                           	xor    eax,eax
  74d4c0:	5b                                              	pop    ebx
  74d4c1:	83 c4 0c                                        	add    esp,0xc
  74d4c4:	c3                                              	ret
  74d4c5:	cc                                              	int3
  74d4c6:	cc                                              	int3
  74d4c7:	cc                                              	int3
  74d4c8:	cc                                              	int3
  74d4c9:	cc                                              	int3
  74d4ca:	cc                                              	int3
  74d4cb:	cc                                              	int3
  74d4cc:	cc                                              	int3
  74d4cd:	cc                                              	int3
  74d4ce:	cc                                              	int3
  74d4cf:	cc                                              	int3
