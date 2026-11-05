# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749630 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_IsRegisteredWithSharingService)
Paired Ghidra pseudocode: 00749630_ScriptCore_OnlineFeatures_OnlineFeaturesHost_IsRegisteredWithSharingService.c
Window: [0x00749630, 0x007496d0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x007496d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749630: 8b 44 24 04 85 c0 75 03 32 c0 c3 56 33 f6 a9 00
00749640: 00 ff ff 74 08 be 10 00 00 00 c1 e8 10 a9 00 ff
00749650: 00 00 74 06 83 c6 08 c1 e8 08 a8 f0 74 06 83 c6
00749660: 04 c1 e8 04 a8 0c 74 06 83 c6 02 c1 e8 02 a8 02
00749670: 74 03 83 c6 01 68 08 50 1d 01 89 74 24 0c ff 15
00749680: 2c 61 f9 00 a1 00 50 1d 01 85 c0 74 30 83 78 30
00749690: 02 75 2a 3b 70 1c 73 25 53 8d 4c 24 0c 51 8d 48
007496a0: 08 e8 ca fd ff ff 83 78 14 00 68 08 50 1d 01 0f
007496b0: 95 c3 ff 15 30 61 f9 00 8a c3 5b 5e c3 68 08 50
007496c0: 1d 01 ff 15 30 61 f9 00 32 c0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00749630 <.text+0x348630>:
  749630:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  749634:	85 c0                                           	test   eax,eax
  749636:	75 03                                           	jne    0x74963b
  749638:	32 c0                                           	xor    al,al
  74963a:	c3                                              	ret
  74963b:	56                                              	push   esi
  74963c:	33 f6                                           	xor    esi,esi
  74963e:	a9 00 00 ff ff                                  	test   eax,0xffff0000
  749643:	74 08                                           	je     0x74964d
  749645:	be 10 00 00 00                                  	mov    esi,0x10
  74964a:	c1 e8 10                                        	shr    eax,0x10
  74964d:	a9 00 ff 00 00                                  	test   eax,0xff00
  749652:	74 06                                           	je     0x74965a
  749654:	83 c6 08                                        	add    esi,0x8
  749657:	c1 e8 08                                        	shr    eax,0x8
  74965a:	a8 f0                                           	test   al,0xf0
  74965c:	74 06                                           	je     0x749664
  74965e:	83 c6 04                                        	add    esi,0x4
  749661:	c1 e8 04                                        	shr    eax,0x4
  749664:	a8 0c                                           	test   al,0xc
  749666:	74 06                                           	je     0x74966e
  749668:	83 c6 02                                        	add    esi,0x2
  74966b:	c1 e8 02                                        	shr    eax,0x2
  74966e:	a8 02                                           	test   al,0x2
  749670:	74 03                                           	je     0x749675
  749672:	83 c6 01                                        	add    esi,0x1
  749675:	68 08 50 1d 01                                  	push   0x11d5008
  74967a:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  74967e:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  749684:	a1 00 50 1d 01                                  	mov    eax,ds:0x11d5000
  749689:	85 c0                                           	test   eax,eax
  74968b:	74 30                                           	je     0x7496bd
  74968d:	83 78 30 02                                     	cmp    DWORD PTR [eax+0x30],0x2
  749691:	75 2a                                           	jne    0x7496bd
  749693:	3b 70 1c                                        	cmp    esi,DWORD PTR [eax+0x1c]
  749696:	73 25                                           	jae    0x7496bd
  749698:	53                                              	push   ebx
  749699:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  74969d:	51                                              	push   ecx
  74969e:	8d 48 08                                        	lea    ecx,[eax+0x8]
  7496a1:	e8 ca fd ff ff                                  	call   0x749470
  7496a6:	83 78 14 00                                     	cmp    DWORD PTR [eax+0x14],0x0
  7496aa:	68 08 50 1d 01                                  	push   0x11d5008
  7496af:	0f 95 c3                                        	setne  bl
  7496b2:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7496b8:	8a c3                                           	mov    al,bl
  7496ba:	5b                                              	pop    ebx
  7496bb:	5e                                              	pop    esi
  7496bc:	c3                                              	ret
  7496bd:	68 08 50 1d 01                                  	push   0x11d5008
  7496c2:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7496c8:	32 c0                                           	xor    al,al
  7496ca:	5e                                              	pop    esi
  7496cb:	c3                                              	ret
  7496cc:	cc                                              	int3
  7496cd:	cc                                              	int3
  7496ce:	cc                                              	int3
  7496cf:	cc                                              	int3
