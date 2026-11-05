# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105424a0 (RouteEvent_DestroyRouteEvent)
Paired Ghidra pseudocode: 105424A0_RouteEvent_DestroyRouteEvent.c
Window: [0x105424a0, 0x10542520) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105424a0: 8b 0d 44 89 c7 10 85 c9 74 1a 8b 44 24 04 8b d0
105424b0: 81 e2 00 00 00 ff 81 fa 00 00 00 26 75 06 50 e8
105424c0: 5c cb ff ff c3 cc cc cc cc cc cc cc cc cc cc cc
105424d0: 83 e9 08 e9 48 00 00 00 cc cc cc cc cc cc cc cc
105424e0: 8b 4c 24 04 85 c9 75 05 33 c0 c2 04 00 8b 01 8b
105424f0: 50 0c 56 68 d6 90 35 05 ff d2 8b f0 85 f6 74 17
10542500: 8b 0d 44 89 c7 10 85 c9 74 06 56 e8 10 ca ff ff
10542510: 8b 46 14 5e c2 04 00 33 c0 5e c2 04 00 cc cc cc

LINEAR DISASSEMBLY
105424a0 <.text+0x5414a0>:
105424a0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
105424a6:	85 c9                                           	test   ecx,ecx
105424a8:	74 1a                                           	je     0x105424c4
105424aa:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105424ae:	8b d0                                           	mov    edx,eax
105424b0:	81 e2 00 00 00 ff                               	and    edx,0xff000000
105424b6:	81 fa 00 00 00 26                               	cmp    edx,0x26000000
105424bc:	75 06                                           	jne    0x105424c4
105424be:	50                                              	push   eax
105424bf:	e8 5c cb ff ff                                  	call   0x1053f020
105424c4:	c3                                              	ret
105424c5:	cc                                              	int3
105424c6:	cc                                              	int3
105424c7:	cc                                              	int3
105424c8:	cc                                              	int3
105424c9:	cc                                              	int3
105424ca:	cc                                              	int3
105424cb:	cc                                              	int3
105424cc:	cc                                              	int3
105424cd:	cc                                              	int3
105424ce:	cc                                              	int3
105424cf:	cc                                              	int3
105424d0:	83 e9 08                                        	sub    ecx,0x8
105424d3:	e9 48 00 00 00                                  	jmp    0x10542520
105424d8:	cc                                              	int3
105424d9:	cc                                              	int3
105424da:	cc                                              	int3
105424db:	cc                                              	int3
105424dc:	cc                                              	int3
105424dd:	cc                                              	int3
105424de:	cc                                              	int3
105424df:	cc                                              	int3
105424e0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105424e4:	85 c9                                           	test   ecx,ecx
105424e6:	75 05                                           	jne    0x105424ed
105424e8:	33 c0                                           	xor    eax,eax
105424ea:	c2 04 00                                        	ret    0x4
105424ed:	8b 01                                           	mov    eax,DWORD PTR [ecx]
105424ef:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
105424f2:	56                                              	push   esi
105424f3:	68 d6 90 35 05                                  	push   0x53590d6
105424f8:	ff d2                                           	call   edx
105424fa:	8b f0                                           	mov    esi,eax
105424fc:	85 f6                                           	test   esi,esi
105424fe:	74 17                                           	je     0x10542517
10542500:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10542506:	85 c9                                           	test   ecx,ecx
10542508:	74 06                                           	je     0x10542510
1054250a:	56                                              	push   esi
1054250b:	e8 10 ca ff ff                                  	call   0x1053ef20
10542510:	8b 46 14                                        	mov    eax,DWORD PTR [esi+0x14]
10542513:	5e                                              	pop    esi
10542514:	c2 04 00                                        	ret    0x4
10542517:	33 c0                                           	xor    eax,eax
10542519:	5e                                              	pop    esi
1054251a:	c2 04 00                                        	ret    0x4
1054251d:	cc                                              	int3
1054251e:	cc                                              	int3
1054251f:	cc                                              	int3
