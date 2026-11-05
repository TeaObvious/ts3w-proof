# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007513c0 (ScriptCore.RouteEvent::RouteEvent_DestroyRouteEvent)
Paired Ghidra pseudocode: 007513C0_ScriptCore_RouteEvent_RouteEvent_DestroyRouteEvent.c
Window: [0x007513c0, 0x00751480) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007513c0: 8b 0d c4 50 1d 01 85 c9 74 1a 8b 44 24 04 8b d0
007513d0: 81 e2 00 00 00 ff 81 fa 00 00 00 26 75 06 50 e8
007513e0: bc d2 ff ff c3 cc cc cc cc cc cc cc cc cc cc cc
007513f0: 8b 4c 24 04 85 c9 75 05 33 c0 c2 04 00 8b 01 8b
00751400: 50 0c 56 68 d6 90 35 05 ff d2 8b f0 85 f6 74 17
00751410: 8b 0d c4 50 1d 01 85 c9 74 06 56 e8 80 d1 ff ff
00751420: 8b 46 14 5e c2 04 00 33 c0 5e c2 04 00 cc cc cc
00751430: 83 e9 04 e9 e8 61 01 00 cc cc cc cc cc cc cc cc
00751440: 8b 44 24 04 3b 41 14 75 24 8b 49 10 6a 00 6a 00
00751450: 6a 00 6a 00 51 6a 70 e8 a4 30 d9 ff 83 c4 18 85
00751460: c0 74 0a 8b c8 e8 36 e9 ff ff c2 08 00 33 c0 c2
00751470: 08 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007513c0 <.text+0x3503c0>:
  7513c0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  7513c6:	85 c9                                           	test   ecx,ecx
  7513c8:	74 1a                                           	je     0x7513e4
  7513ca:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7513ce:	8b d0                                           	mov    edx,eax
  7513d0:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  7513d6:	81 fa 00 00 00 26                               	cmp    edx,0x26000000
  7513dc:	75 06                                           	jne    0x7513e4
  7513de:	50                                              	push   eax
  7513df:	e8 bc d2 ff ff                                  	call   0x74e6a0
  7513e4:	c3                                              	ret
  7513e5:	cc                                              	int3
  7513e6:	cc                                              	int3
  7513e7:	cc                                              	int3
  7513e8:	cc                                              	int3
  7513e9:	cc                                              	int3
  7513ea:	cc                                              	int3
  7513eb:	cc                                              	int3
  7513ec:	cc                                              	int3
  7513ed:	cc                                              	int3
  7513ee:	cc                                              	int3
  7513ef:	cc                                              	int3
  7513f0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7513f4:	85 c9                                           	test   ecx,ecx
  7513f6:	75 05                                           	jne    0x7513fd
  7513f8:	33 c0                                           	xor    eax,eax
  7513fa:	c2 04 00                                        	ret    0x4
  7513fd:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7513ff:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  751402:	56                                              	push   esi
  751403:	68 d6 90 35 05                                  	push   0x53590d6
  751408:	ff d2                                           	call   edx
  75140a:	8b f0                                           	mov    esi,eax
  75140c:	85 f6                                           	test   esi,esi
  75140e:	74 17                                           	je     0x751427
  751410:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  751416:	85 c9                                           	test   ecx,ecx
  751418:	74 06                                           	je     0x751420
  75141a:	56                                              	push   esi
  75141b:	e8 80 d1 ff ff                                  	call   0x74e5a0
  751420:	8b 46 14                                        	mov    eax,DWORD PTR [esi+0x14]
  751423:	5e                                              	pop    esi
  751424:	c2 04 00                                        	ret    0x4
  751427:	33 c0                                           	xor    eax,eax
  751429:	5e                                              	pop    esi
  75142a:	c2 04 00                                        	ret    0x4
  75142d:	cc                                              	int3
  75142e:	cc                                              	int3
  75142f:	cc                                              	int3
  751430:	83 e9 04                                        	sub    ecx,0x4
  751433:	e9 e8 61 01 00                                  	jmp    0x767620
  751438:	cc                                              	int3
  751439:	cc                                              	int3
  75143a:	cc                                              	int3
  75143b:	cc                                              	int3
  75143c:	cc                                              	int3
  75143d:	cc                                              	int3
  75143e:	cc                                              	int3
  75143f:	cc                                              	int3
  751440:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  751444:	3b 41 14                                        	cmp    eax,DWORD PTR [ecx+0x14]
  751447:	75 24                                           	jne    0x75146d
  751449:	8b 49 10                                        	mov    ecx,DWORD PTR [ecx+0x10]
  75144c:	6a 00                                           	push   0x0
  75144e:	6a 00                                           	push   0x0
  751450:	6a 00                                           	push   0x0
  751452:	6a 00                                           	push   0x0
  751454:	51                                              	push   ecx
  751455:	6a 70                                           	push   0x70
  751457:	e8 a4 30 d9 ff                                  	call   0x4e4500
  75145c:	83 c4 18                                        	add    esp,0x18
  75145f:	85 c0                                           	test   eax,eax
  751461:	74 0a                                           	je     0x75146d
  751463:	8b c8                                           	mov    ecx,eax
  751465:	e8 36 e9 ff ff                                  	call   0x74fda0
  75146a:	c2 08 00                                        	ret    0x8
  75146d:	33 c0                                           	xor    eax,eax
  75146f:	c2 08 00                                        	ret    0x8
  751472:	cc                                              	int3
  751473:	cc                                              	int3
  751474:	cc                                              	int3
  751475:	cc                                              	int3
  751476:	cc                                              	int3
  751477:	cc                                              	int3
  751478:	cc                                              	int3
  751479:	cc                                              	int3
  75147a:	cc                                              	int3
  75147b:	cc                                              	int3
  75147c:	cc                                              	int3
  75147d:	cc                                              	int3
  75147e:	cc                                              	int3
  75147f:	cc                                              	int3
