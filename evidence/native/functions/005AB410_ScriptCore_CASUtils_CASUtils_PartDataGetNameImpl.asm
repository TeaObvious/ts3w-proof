# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ab410 (ScriptCore.CASUtils::CASUtils_PartDataGetNameImpl)
Paired Ghidra pseudocode: 005AB410_ScriptCore_CASUtils_CASUtils_PartDataGetNameImpl.c
Window: [0x005ab410, 0x005ab500) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ab500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ab410: 83 ec 50 8b 4c 24 60 8b 54 24 54 8b 44 24 5c 89
005ab420: 4c 24 04 8d 0c 24 89 54 24 08 89 04 24 8b 44 24
005ab430: 58 51 8d 54 24 14 52 89 44 24 14 e8 30 e3 22 00
005ab440: 8d 44 24 18 50 8d 4c 24 2c 51 e8 41 88 f4 ff 83
005ab450: c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24 44 c7
005ab460: 44 24 44 6c 88 00 01 66 c7 44 24 4e 13 00 66 c7
005ab470: 44 24 4c 0b 00 e8 46 a5 f4 ff 8b 54 24 28 8b 44
005ab480: 24 20 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09
005ab490: 50 e8 4a 90 f3 ff 83 c4 04 56 c7 44 24 58 00 00
005ab4a0: 00 00 e8 e9 de 1b 00 8b 10 8b 52 50 8d 4c 24 58
005ab4b0: 51 8d 4c 24 38 51 8b c8 ff d2 f6 44 24 3c 04 8b
005ab4c0: 74 24 58 c7 44 24 34 f4 a6 fb 00 74 0b 6a 00 8d
005ab4d0: 4c 24 38 e8 88 a2 f4 ff 8b 4c 24 1c 8b 44 24 14
005ab4e0: 2b c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 ef 8f f3
005ab4f0: ff 83 c4 04 8b c6 5e 83 c4 50 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005ab410 <.text+0x1aa410>:
  5ab410:	83 ec 50                                        	sub    esp,0x50
  5ab413:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  5ab417:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  5ab41b:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  5ab41f:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  5ab423:	8d 0c 24                                        	lea    ecx,[esp]
  5ab426:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  5ab42a:	89 04 24                                        	mov    DWORD PTR [esp],eax
  5ab42d:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  5ab431:	51                                              	push   ecx
  5ab432:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  5ab436:	52                                              	push   edx
  5ab437:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5ab43b:	e8 30 e3 22 00                                  	call   0x7d9770
  5ab440:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  5ab444:	50                                              	push   eax
  5ab445:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5ab449:	51                                              	push   ecx
  5ab44a:	e8 41 88 f4 ff                                  	call   0x4f3c90
  5ab44f:	83 c4 10                                        	add    esp,0x10
  5ab452:	6a 01                                           	push   0x1
  5ab454:	6a 10                                           	push   0x10
  5ab456:	50                                              	push   eax
  5ab457:	6a 09                                           	push   0x9
  5ab459:	6a 13                                           	push   0x13
  5ab45b:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5ab45f:	c7 44 24 44 6c 88 00 01                         	mov    DWORD PTR [esp+0x44],0x100886c
  5ab467:	66 c7 44 24 4e 13 00                            	mov    WORD PTR [esp+0x4e],0x13
  5ab46e:	66 c7 44 24 4c 0b 00                            	mov    WORD PTR [esp+0x4c],0xb
  5ab475:	e8 46 a5 f4 ff                                  	call   0x4f59c0
  5ab47a:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5ab47e:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  5ab482:	2b d0                                           	sub    edx,eax
  5ab484:	83 e2 fe                                        	and    edx,0xfffffffe
  5ab487:	83 fa 02                                        	cmp    edx,0x2
  5ab48a:	7e 0d                                           	jle    0x5ab499
  5ab48c:	85 c0                                           	test   eax,eax
  5ab48e:	74 09                                           	je     0x5ab499
  5ab490:	50                                              	push   eax
  5ab491:	e8 4a 90 f3 ff                                  	call   0x4e44e0
  5ab496:	83 c4 04                                        	add    esp,0x4
  5ab499:	56                                              	push   esi
  5ab49a:	c7 44 24 58 00 00 00 00                         	mov    DWORD PTR [esp+0x58],0x0
  5ab4a2:	e8 e9 de 1b 00                                  	call   0x769390
  5ab4a7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ab4a9:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5ab4ac:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  5ab4b0:	51                                              	push   ecx
  5ab4b1:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  5ab4b5:	51                                              	push   ecx
  5ab4b6:	8b c8                                           	mov    ecx,eax
  5ab4b8:	ff d2                                           	call   edx
  5ab4ba:	f6 44 24 3c 04                                  	test   BYTE PTR [esp+0x3c],0x4
  5ab4bf:	8b 74 24 58                                     	mov    esi,DWORD PTR [esp+0x58]
  5ab4c3:	c7 44 24 34 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x34],0xfba6f4
  5ab4cb:	74 0b                                           	je     0x5ab4d8
  5ab4cd:	6a 00                                           	push   0x0
  5ab4cf:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  5ab4d3:	e8 88 a2 f4 ff                                  	call   0x4f5760
  5ab4d8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5ab4dc:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5ab4e0:	2b c8                                           	sub    ecx,eax
  5ab4e2:	83 f9 01                                        	cmp    ecx,0x1
  5ab4e5:	7e 0d                                           	jle    0x5ab4f4
  5ab4e7:	85 c0                                           	test   eax,eax
  5ab4e9:	74 09                                           	je     0x5ab4f4
  5ab4eb:	50                                              	push   eax
  5ab4ec:	e8 ef 8f f3 ff                                  	call   0x4e44e0
  5ab4f1:	83 c4 04                                        	add    esp,0x4
  5ab4f4:	8b c6                                           	mov    eax,esi
  5ab4f6:	5e                                              	pop    esi
  5ab4f7:	83 c4 50                                        	add    esp,0x50
  5ab4fa:	c3                                              	ret
  5ab4fb:	cc                                              	int3
  5ab4fc:	cc                                              	int3
  5ab4fd:	cc                                              	int3
  5ab4fe:	cc                                              	int3
  5ab4ff:	cc                                              	int3
