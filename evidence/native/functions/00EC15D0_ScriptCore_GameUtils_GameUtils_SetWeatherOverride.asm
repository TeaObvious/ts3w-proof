# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec15d0 (ScriptCore.GameUtils::GameUtils_SetWeatherOverride)
Paired Ghidra pseudocode: 00EC15D0_ScriptCore_GameUtils_GameUtils_SetWeatherOverride.c
Window: [0x00ec15d0, 0x00ec1640) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec15d0: 55 8b ec 83 e4 f0 83 ec 50 f3 0f 10 45 08 8d 04
00ec15e0: 24 f3 0f 11 44 24 14 f3 0f 10 45 0c 50 c7 44 24
00ec15f0: 04 ff 43 a6 08 c7 44 24 0c 00 00 00 00 c7 44 24
00ec1600: 10 00 00 00 00 c7 44 24 08 58 73 19 01 f3 0f 11
00ec1610: 44 24 14 e8 68 1d 7d ff 8b 4c 24 08 83 c4 04 85
00ec1620: c9 74 0b 8b 11 8b 12 8d 44 24 10 50 ff d2 8b e5
00ec1630: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec15d0 <.text+0xac05d0>:
  ec15d0:	55                                              	push   ebp
  ec15d1:	8b ec                                           	mov    ebp,esp
  ec15d3:	83 e4 f0                                        	and    esp,0xfffffff0
  ec15d6:	83 ec 50                                        	sub    esp,0x50
  ec15d9:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  ec15de:	8d 04 24                                        	lea    eax,[esp]
  ec15e1:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  ec15e7:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  ec15ec:	50                                              	push   eax
  ec15ed:	c7 44 24 04 ff 43 a6 08                         	mov    DWORD PTR [esp+0x4],0x8a643ff
  ec15f5:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  ec15fd:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  ec1605:	c7 44 24 08 58 73 19 01                         	mov    DWORD PTR [esp+0x8],0x1197358
  ec160d:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  ec1613:	e8 68 1d 7d ff                                  	call   0x693380
  ec1618:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ec161c:	83 c4 04                                        	add    esp,0x4
  ec161f:	85 c9                                           	test   ecx,ecx
  ec1621:	74 0b                                           	je     0xec162e
  ec1623:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ec1625:	8b 12                                           	mov    edx,DWORD PTR [edx]
  ec1627:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  ec162b:	50                                              	push   eax
  ec162c:	ff d2                                           	call   edx
  ec162e:	8b e5                                           	mov    esp,ebp
  ec1630:	5d                                              	pop    ebp
  ec1631:	c3                                              	ret
  ec1632:	cc                                              	int3
  ec1633:	cc                                              	int3
  ec1634:	cc                                              	int3
  ec1635:	cc                                              	int3
  ec1636:	cc                                              	int3
  ec1637:	cc                                              	int3
  ec1638:	cc                                              	int3
  ec1639:	cc                                              	int3
  ec163a:	cc                                              	int3
  ec163b:	cc                                              	int3
  ec163c:	cc                                              	int3
  ec163d:	cc                                              	int3
  ec163e:	cc                                              	int3
  ec163f:	cc                                              	int3
