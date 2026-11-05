# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00769320 (SACS_BridgeWatchCallback_769320)
Paired Ghidra pseudocode: 00769320_SACS_BridgeWatchCallback_769320.c
Window: [0x00769320, 0x00769380) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00769380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00769320: 8b 4c 24 04 85 c9 74 48 8b 44 24 08 85 c0 74 40
00769330: 80 78 71 00 74 0b 6a 00 50 e8 a2 fe ff ff 32 c0
00769340: c3 8b 50 10 85 d2 74 f6 56 8b 72 28 3b 71 18 5e
00769350: 75 ec 80 7a 53 00 74 10 8b 50 28 85 d2 74 09 8b
00769360: 42 28 89 41 18 32 c0 c3 6a 01 50 e8 70 fe ff ff
00769370: b0 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00769320 <.text+0x368320>:
  769320:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  769324:	85 c9                                           	test   ecx,ecx
  769326:	74 48                                           	je     0x769370
  769328:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  76932c:	85 c0                                           	test   eax,eax
  76932e:	74 40                                           	je     0x769370
  769330:	80 78 71 00                                     	cmp    BYTE PTR [eax+0x71],0x0
  769334:	74 0b                                           	je     0x769341
  769336:	6a 00                                           	push   0x0
  769338:	50                                              	push   eax
  769339:	e8 a2 fe ff ff                                  	call   0x7691e0
  76933e:	32 c0                                           	xor    al,al
  769340:	c3                                              	ret
  769341:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  769344:	85 d2                                           	test   edx,edx
  769346:	74 f6                                           	je     0x76933e
  769348:	56                                              	push   esi
  769349:	8b 72 28                                        	mov    esi,DWORD PTR [edx+0x28]
  76934c:	3b 71 18                                        	cmp    esi,DWORD PTR [ecx+0x18]
  76934f:	5e                                              	pop    esi
  769350:	75 ec                                           	jne    0x76933e
  769352:	80 7a 53 00                                     	cmp    BYTE PTR [edx+0x53],0x0
  769356:	74 10                                           	je     0x769368
  769358:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  76935b:	85 d2                                           	test   edx,edx
  76935d:	74 09                                           	je     0x769368
  76935f:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
  769362:	89 41 18                                        	mov    DWORD PTR [ecx+0x18],eax
  769365:	32 c0                                           	xor    al,al
  769367:	c3                                              	ret
  769368:	6a 01                                           	push   0x1
  76936a:	50                                              	push   eax
  76936b:	e8 70 fe ff ff                                  	call   0x7691e0
  769370:	b0 01                                           	mov    al,0x1
  769372:	c3                                              	ret
  769373:	cc                                              	int3
  769374:	cc                                              	int3
  769375:	cc                                              	int3
  769376:	cc                                              	int3
  769377:	cc                                              	int3
  769378:	cc                                              	int3
  769379:	cc                                              	int3
  76937a:	cc                                              	int3
  76937b:	cc                                              	int3
  76937c:	cc                                              	int3
  76937d:	cc                                              	int3
  76937e:	cc                                              	int3
  76937f:	cc                                              	int3
