# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d4d0 (ScriptCore.Route::Route_GetObjectsToIgnoreForRouteEndTurn)
Paired Ghidra pseudocode: 0074D4D0_ScriptCore_Route_Route_GetObjectsToIgnoreForRouteEndTurn.c
Window: [0x0074d4d0, 0x0074d5b0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d5b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d4d0: 83 ec 0c 53 55 57 e8 b5 be 01 00 8b 0d c4 50 1d
0074d4e0: 01 85 c9 8b d8 0f 84 b1 00 00 00 8b 44 24 1c 50
0074d4f0: e8 bb df ff ff 8b e8 85 ed 0f 84 9d 00 00 00 8b
0074d500: 55 00 8b 42 10 8b cd ff d0 8d 8d 58 01 00 00 e8
0074d510: 1c f0 0c 00 8b f8 8b 47 04 2b 07 c1 f8 03 74 72
0074d520: 8b 13 8b 92 88 00 00 00 56 50 8d 44 24 14 50 8b
0074d530: cb ff d2 8b 07 8b 4f 04 2b c8 33 f6 c1 f9 03 74
0074d540: 39 8b 14 f0 89 54 24 14 8b 44 f0 04 8b 13 8b 92
0074d550: a0 00 00 00 6a 01 89 44 24 1c 56 8d 44 24 1c 50
0074d560: 8d 4c 24 1c 51 8b cb ff d2 8b 07 8b 4f 04 2b c8
0074d570: 83 c6 01 c1 f9 03 3b f1 72 c7 8b 55 00 8b 42 14
0074d580: 8b 74 24 10 8b cd ff d0 8b c6 5e 5f 5d 5b 83 c4
0074d590: 0c c3 8b 55 00 8b 42 14 8b cd ff d0 5f 5d 33 c0
0074d5a0: 5b 83 c4 0c c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074d4d0 <.text+0x34c4d0>:
  74d4d0:	83 ec 0c                                        	sub    esp,0xc
  74d4d3:	53                                              	push   ebx
  74d4d4:	55                                              	push   ebp
  74d4d5:	57                                              	push   edi
  74d4d6:	e8 b5 be 01 00                                  	call   0x769390
  74d4db:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d4e1:	85 c9                                           	test   ecx,ecx
  74d4e3:	8b d8                                           	mov    ebx,eax
  74d4e5:	0f 84 b1 00 00 00                               	je     0x74d59c
  74d4eb:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  74d4ef:	50                                              	push   eax
  74d4f0:	e8 bb df ff ff                                  	call   0x74b4b0
  74d4f5:	8b e8                                           	mov    ebp,eax
  74d4f7:	85 ed                                           	test   ebp,ebp
  74d4f9:	0f 84 9d 00 00 00                               	je     0x74d59c
  74d4ff:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  74d502:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d505:	8b cd                                           	mov    ecx,ebp
  74d507:	ff d0                                           	call   eax
  74d509:	8d 8d 58 01 00 00                               	lea    ecx,[ebp+0x158]
  74d50f:	e8 1c f0 0c 00                                  	call   0x81c530
  74d514:	8b f8                                           	mov    edi,eax
  74d516:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  74d519:	2b 07                                           	sub    eax,DWORD PTR [edi]
  74d51b:	c1 f8 03                                        	sar    eax,0x3
  74d51e:	74 72                                           	je     0x74d592
  74d520:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  74d522:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
  74d528:	56                                              	push   esi
  74d529:	50                                              	push   eax
  74d52a:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  74d52e:	50                                              	push   eax
  74d52f:	8b cb                                           	mov    ecx,ebx
  74d531:	ff d2                                           	call   edx
  74d533:	8b 07                                           	mov    eax,DWORD PTR [edi]
  74d535:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  74d538:	2b c8                                           	sub    ecx,eax
  74d53a:	33 f6                                           	xor    esi,esi
  74d53c:	c1 f9 03                                        	sar    ecx,0x3
  74d53f:	74 39                                           	je     0x74d57a
  74d541:	8b 14 f0                                        	mov    edx,DWORD PTR [eax+esi*8]
  74d544:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  74d548:	8b 44 f0 04                                     	mov    eax,DWORD PTR [eax+esi*8+0x4]
  74d54c:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  74d54e:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
  74d554:	6a 01                                           	push   0x1
  74d556:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  74d55a:	56                                              	push   esi
  74d55b:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  74d55f:	50                                              	push   eax
  74d560:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  74d564:	51                                              	push   ecx
  74d565:	8b cb                                           	mov    ecx,ebx
  74d567:	ff d2                                           	call   edx
  74d569:	8b 07                                           	mov    eax,DWORD PTR [edi]
  74d56b:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  74d56e:	2b c8                                           	sub    ecx,eax
  74d570:	83 c6 01                                        	add    esi,0x1
  74d573:	c1 f9 03                                        	sar    ecx,0x3
  74d576:	3b f1                                           	cmp    esi,ecx
  74d578:	72 c7                                           	jb     0x74d541
  74d57a:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  74d57d:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d580:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  74d584:	8b cd                                           	mov    ecx,ebp
  74d586:	ff d0                                           	call   eax
  74d588:	8b c6                                           	mov    eax,esi
  74d58a:	5e                                              	pop    esi
  74d58b:	5f                                              	pop    edi
  74d58c:	5d                                              	pop    ebp
  74d58d:	5b                                              	pop    ebx
  74d58e:	83 c4 0c                                        	add    esp,0xc
  74d591:	c3                                              	ret
  74d592:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  74d595:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d598:	8b cd                                           	mov    ecx,ebp
  74d59a:	ff d0                                           	call   eax
  74d59c:	5f                                              	pop    edi
  74d59d:	5d                                              	pop    ebp
  74d59e:	33 c0                                           	xor    eax,eax
  74d5a0:	5b                                              	pop    ebx
  74d5a1:	83 c4 0c                                        	add    esp,0xc
  74d5a4:	c3                                              	ret
  74d5a5:	cc                                              	int3
  74d5a6:	cc                                              	int3
  74d5a7:	cc                                              	int3
  74d5a8:	cc                                              	int3
  74d5a9:	cc                                              	int3
  74d5aa:	cc                                              	int3
  74d5ab:	cc                                              	int3
  74d5ac:	cc                                              	int3
  74d5ad:	cc                                              	int3
  74d5ae:	cc                                              	int3
  74d5af:	cc                                              	int3
