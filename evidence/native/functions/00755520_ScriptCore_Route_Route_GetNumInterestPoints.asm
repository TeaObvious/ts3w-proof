# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00755520 (ScriptCore.Route::Route_GetNumInterestPoints)
Paired Ghidra pseudocode: 00755520_ScriptCore_Route_Route_GetNumInterestPoints.c
Window: [0x00755520, 0x007555e0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x007555e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00755520: 51 8b 44 24 08 8b 0d c4 50 1d 01 55 56 50 e8 7d
00755530: 5f ff ff 8b e8 85 ed 0f 84 95 00 00 00 8b 55 00
00755540: 8b 42 10 8b cd ff d0 80 bd f4 00 00 00 00 74 08
00755550: 8b b5 ec 00 00 00 eb 0f 8d 85 e0 00 00 00 39 00
00755560: 74 66 8b 08 8b 71 08 85 f6 74 5d 53 8d 5e 04 57
00755570: 8b d3 b8 01 00 00 00 f0 0f c1 02 8b 16 8b 82 5c
00755580: 01 00 00 8b ce ff d0 8b 08 33 ff 3b c8 74 0a 90
00755590: 8b 09 83 c7 01 3b c8 75 f7 8b cb 83 ca ff f0 0f
007555a0: c1 11 4a 75 11 b8 01 00 00 00 87 03 8b 16 8b 02
007555b0: 6a 01 8b ce ff d0 8b 55 00 8b 42 14 8b cd ff d0
007555c0: 8b c7 5f 5b 5e 5d 59 c3 8b 55 00 8b 42 14 8b cd
007555d0: ff d0 5e 33 c0 5d 59 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00755520 <.text+0x354520>:
  755520:	51                                              	push   ecx
  755521:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  755525:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75552b:	55                                              	push   ebp
  75552c:	56                                              	push   esi
  75552d:	50                                              	push   eax
  75552e:	e8 7d 5f ff ff                                  	call   0x74b4b0
  755533:	8b e8                                           	mov    ebp,eax
  755535:	85 ed                                           	test   ebp,ebp
  755537:	0f 84 95 00 00 00                               	je     0x7555d2
  75553d:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  755540:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  755543:	8b cd                                           	mov    ecx,ebp
  755545:	ff d0                                           	call   eax
  755547:	80 bd f4 00 00 00 00                            	cmp    BYTE PTR [ebp+0xf4],0x0
  75554e:	74 08                                           	je     0x755558
  755550:	8b b5 ec 00 00 00                               	mov    esi,DWORD PTR [ebp+0xec]
  755556:	eb 0f                                           	jmp    0x755567
  755558:	8d 85 e0 00 00 00                               	lea    eax,[ebp+0xe0]
  75555e:	39 00                                           	cmp    DWORD PTR [eax],eax
  755560:	74 66                                           	je     0x7555c8
  755562:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  755564:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  755567:	85 f6                                           	test   esi,esi
  755569:	74 5d                                           	je     0x7555c8
  75556b:	53                                              	push   ebx
  75556c:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  75556f:	57                                              	push   edi
  755570:	8b d3                                           	mov    edx,ebx
  755572:	b8 01 00 00 00                                  	mov    eax,0x1
  755577:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  75557b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75557d:	8b 82 5c 01 00 00                               	mov    eax,DWORD PTR [edx+0x15c]
  755583:	8b ce                                           	mov    ecx,esi
  755585:	ff d0                                           	call   eax
  755587:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  755589:	33 ff                                           	xor    edi,edi
  75558b:	3b c8                                           	cmp    ecx,eax
  75558d:	74 0a                                           	je     0x755599
  75558f:	90                                              	nop
  755590:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  755592:	83 c7 01                                        	add    edi,0x1
  755595:	3b c8                                           	cmp    ecx,eax
  755597:	75 f7                                           	jne    0x755590
  755599:	8b cb                                           	mov    ecx,ebx
  75559b:	83 ca ff                                        	or     edx,0xffffffff
  75559e:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7555a2:	4a                                              	dec    edx
  7555a3:	75 11                                           	jne    0x7555b6
  7555a5:	b8 01 00 00 00                                  	mov    eax,0x1
  7555aa:	87 03                                           	xchg   DWORD PTR [ebx],eax
  7555ac:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7555ae:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7555b0:	6a 01                                           	push   0x1
  7555b2:	8b ce                                           	mov    ecx,esi
  7555b4:	ff d0                                           	call   eax
  7555b6:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  7555b9:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7555bc:	8b cd                                           	mov    ecx,ebp
  7555be:	ff d0                                           	call   eax
  7555c0:	8b c7                                           	mov    eax,edi
  7555c2:	5f                                              	pop    edi
  7555c3:	5b                                              	pop    ebx
  7555c4:	5e                                              	pop    esi
  7555c5:	5d                                              	pop    ebp
  7555c6:	59                                              	pop    ecx
  7555c7:	c3                                              	ret
  7555c8:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  7555cb:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7555ce:	8b cd                                           	mov    ecx,ebp
  7555d0:	ff d0                                           	call   eax
  7555d2:	5e                                              	pop    esi
  7555d3:	33 c0                                           	xor    eax,eax
  7555d5:	5d                                              	pop    ebp
  7555d6:	59                                              	pop    ecx
  7555d7:	c3                                              	ret
  7555d8:	cc                                              	int3
  7555d9:	cc                                              	int3
  7555da:	cc                                              	int3
  7555db:	cc                                              	int3
  7555dc:	cc                                              	int3
  7555dd:	cc                                              	int3
  7555de:	cc                                              	int3
  7555df:	cc                                              	int3
