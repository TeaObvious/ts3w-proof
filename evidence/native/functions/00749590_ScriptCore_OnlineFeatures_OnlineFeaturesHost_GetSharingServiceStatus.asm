# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749590 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetSharingServiceStatus)
Paired Ghidra pseudocode: 00749590_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetSharingServiceStatus.c
Window: [0x00749590, 0x00749630) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749590: 8b 44 24 04 85 c0 75 01 c3 56 33 f6 a9 00 00 ff
007495a0: ff 74 08 be 10 00 00 00 c1 e8 10 a9 00 ff 00 00
007495b0: 74 06 83 c6 08 c1 e8 08 a8 f0 74 06 83 c6 04 c1
007495c0: e8 04 a8 0c 74 06 83 c6 02 c1 e8 02 a8 02 74 03
007495d0: 83 c6 01 68 08 50 1d 01 89 74 24 0c ff 15 2c 61
007495e0: f9 00 a1 00 50 1d 01 85 c0 74 2a 83 78 30 00 74
007495f0: 24 3b 70 1c 73 1f 8d 4c 24 08 51 8d 48 08 e8 6d
00749600: fe ff ff 8b 70 10 68 08 50 1d 01 ff 15 30 61 f9
00749610: 00 8b c6 5e c3 68 08 50 1d 01 ff 15 30 61 f9 00
00749620: 33 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00749590 <.text+0x348590>:
  749590:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  749594:	85 c0                                           	test   eax,eax
  749596:	75 01                                           	jne    0x749599
  749598:	c3                                              	ret
  749599:	56                                              	push   esi
  74959a:	33 f6                                           	xor    esi,esi
  74959c:	a9 00 00 ff ff                                  	test   eax,0xffff0000
  7495a1:	74 08                                           	je     0x7495ab
  7495a3:	be 10 00 00 00                                  	mov    esi,0x10
  7495a8:	c1 e8 10                                        	shr    eax,0x10
  7495ab:	a9 00 ff 00 00                                  	test   eax,0xff00
  7495b0:	74 06                                           	je     0x7495b8
  7495b2:	83 c6 08                                        	add    esi,0x8
  7495b5:	c1 e8 08                                        	shr    eax,0x8
  7495b8:	a8 f0                                           	test   al,0xf0
  7495ba:	74 06                                           	je     0x7495c2
  7495bc:	83 c6 04                                        	add    esi,0x4
  7495bf:	c1 e8 04                                        	shr    eax,0x4
  7495c2:	a8 0c                                           	test   al,0xc
  7495c4:	74 06                                           	je     0x7495cc
  7495c6:	83 c6 02                                        	add    esi,0x2
  7495c9:	c1 e8 02                                        	shr    eax,0x2
  7495cc:	a8 02                                           	test   al,0x2
  7495ce:	74 03                                           	je     0x7495d3
  7495d0:	83 c6 01                                        	add    esi,0x1
  7495d3:	68 08 50 1d 01                                  	push   0x11d5008
  7495d8:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  7495dc:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  7495e2:	a1 00 50 1d 01                                  	mov    eax,ds:0x11d5000
  7495e7:	85 c0                                           	test   eax,eax
  7495e9:	74 2a                                           	je     0x749615
  7495eb:	83 78 30 00                                     	cmp    DWORD PTR [eax+0x30],0x0
  7495ef:	74 24                                           	je     0x749615
  7495f1:	3b 70 1c                                        	cmp    esi,DWORD PTR [eax+0x1c]
  7495f4:	73 1f                                           	jae    0x749615
  7495f6:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7495fa:	51                                              	push   ecx
  7495fb:	8d 48 08                                        	lea    ecx,[eax+0x8]
  7495fe:	e8 6d fe ff ff                                  	call   0x749470
  749603:	8b 70 10                                        	mov    esi,DWORD PTR [eax+0x10]
  749606:	68 08 50 1d 01                                  	push   0x11d5008
  74960b:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  749611:	8b c6                                           	mov    eax,esi
  749613:	5e                                              	pop    esi
  749614:	c3                                              	ret
  749615:	68 08 50 1d 01                                  	push   0x11d5008
  74961a:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  749620:	33 c0                                           	xor    eax,eax
  749622:	5e                                              	pop    esi
  749623:	c3                                              	ret
  749624:	cc                                              	int3
  749625:	cc                                              	int3
  749626:	cc                                              	int3
  749627:	cc                                              	int3
  749628:	cc                                              	int3
  749629:	cc                                              	int3
  74962a:	cc                                              	int3
  74962b:	cc                                              	int3
  74962c:	cc                                              	int3
  74962d:	cc                                              	int3
  74962e:	cc                                              	int3
  74962f:	cc                                              	int3
