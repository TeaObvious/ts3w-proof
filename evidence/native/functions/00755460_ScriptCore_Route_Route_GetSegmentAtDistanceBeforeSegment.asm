# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00755460 (ScriptCore.Route::Route_GetSegmentAtDistanceBeforeSegment)
Paired Ghidra pseudocode: 00755460_ScriptCore_Route_Route_GetSegmentAtDistanceBeforeSegment.c
Window: [0x00755460, 0x00755520) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00755520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00755460: 51 8b 44 24 08 8b 0d c4 50 1d 01 53 56 50 e8 3d
00755470: 60 ff ff 8b d8 85 db 0f 84 94 00 00 00 8b 13 8b
00755480: 42 10 8b cb ff d0 80 bb f4 00 00 00 00 74 08 8b
00755490: b3 ec 00 00 00 eb 0f 8d 83 e0 00 00 00 39 00 74
007554a0: 67 8b 08 8b 71 08 85 f6 74 5e 55 57 8d 7e 04 8b
007554b0: d7 b8 01 00 00 00 f0 0f c1 02 d9 44 24 20 8b 44
007554c0: 24 24 8b 16 8b 92 f0 00 00 00 50 51 8b 4c 24 24
007554d0: d9 1c 24 51 8b ce ff d2 8b e8 8b c7 83 c9 ff f0
007554e0: 0f c1 08 49 75 11 ba 01 00 00 00 87 17 8b 06 8b
007554f0: 10 6a 01 8b ce ff d2 8b 03 8b 50 14 8b cb ff d2
00755500: 5f 8b c5 5d 5e 5b 59 c3 8b 03 8b 50 14 8b cb ff
00755510: d2 5e 33 c0 5b 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00755460 <.text+0x354460>:
  755460:	51                                              	push   ecx
  755461:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  755465:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75546b:	53                                              	push   ebx
  75546c:	56                                              	push   esi
  75546d:	50                                              	push   eax
  75546e:	e8 3d 60 ff ff                                  	call   0x74b4b0
  755473:	8b d8                                           	mov    ebx,eax
  755475:	85 db                                           	test   ebx,ebx
  755477:	0f 84 94 00 00 00                               	je     0x755511
  75547d:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  75547f:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  755482:	8b cb                                           	mov    ecx,ebx
  755484:	ff d0                                           	call   eax
  755486:	80 bb f4 00 00 00 00                            	cmp    BYTE PTR [ebx+0xf4],0x0
  75548d:	74 08                                           	je     0x755497
  75548f:	8b b3 ec 00 00 00                               	mov    esi,DWORD PTR [ebx+0xec]
  755495:	eb 0f                                           	jmp    0x7554a6
  755497:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
  75549d:	39 00                                           	cmp    DWORD PTR [eax],eax
  75549f:	74 67                                           	je     0x755508
  7554a1:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  7554a3:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  7554a6:	85 f6                                           	test   esi,esi
  7554a8:	74 5e                                           	je     0x755508
  7554aa:	55                                              	push   ebp
  7554ab:	57                                              	push   edi
  7554ac:	8d 7e 04                                        	lea    edi,[esi+0x4]
  7554af:	8b d7                                           	mov    edx,edi
  7554b1:	b8 01 00 00 00                                  	mov    eax,0x1
  7554b6:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  7554ba:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  7554be:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  7554c2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7554c4:	8b 92 f0 00 00 00                               	mov    edx,DWORD PTR [edx+0xf0]
  7554ca:	50                                              	push   eax
  7554cb:	51                                              	push   ecx
  7554cc:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  7554d0:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7554d3:	51                                              	push   ecx
  7554d4:	8b ce                                           	mov    ecx,esi
  7554d6:	ff d2                                           	call   edx
  7554d8:	8b e8                                           	mov    ebp,eax
  7554da:	8b c7                                           	mov    eax,edi
  7554dc:	83 c9 ff                                        	or     ecx,0xffffffff
  7554df:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7554e3:	49                                              	dec    ecx
  7554e4:	75 11                                           	jne    0x7554f7
  7554e6:	ba 01 00 00 00                                  	mov    edx,0x1
  7554eb:	87 17                                           	xchg   DWORD PTR [edi],edx
  7554ed:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7554ef:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7554f1:	6a 01                                           	push   0x1
  7554f3:	8b ce                                           	mov    ecx,esi
  7554f5:	ff d2                                           	call   edx
  7554f7:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  7554f9:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  7554fc:	8b cb                                           	mov    ecx,ebx
  7554fe:	ff d2                                           	call   edx
  755500:	5f                                              	pop    edi
  755501:	8b c5                                           	mov    eax,ebp
  755503:	5d                                              	pop    ebp
  755504:	5e                                              	pop    esi
  755505:	5b                                              	pop    ebx
  755506:	59                                              	pop    ecx
  755507:	c3                                              	ret
  755508:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  75550a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  75550d:	8b cb                                           	mov    ecx,ebx
  75550f:	ff d2                                           	call   edx
  755511:	5e                                              	pop    esi
  755512:	33 c0                                           	xor    eax,eax
  755514:	5b                                              	pop    ebx
  755515:	59                                              	pop    ecx
  755516:	c3                                              	ret
  755517:	cc                                              	int3
  755518:	cc                                              	int3
  755519:	cc                                              	int3
  75551a:	cc                                              	int3
  75551b:	cc                                              	int3
  75551c:	cc                                              	int3
  75551d:	cc                                              	int3
  75551e:	cc                                              	int3
  75551f:	cc                                              	int3
