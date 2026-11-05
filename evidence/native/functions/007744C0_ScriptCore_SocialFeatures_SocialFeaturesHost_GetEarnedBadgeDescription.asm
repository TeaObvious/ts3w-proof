# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007744c0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgeDescription)
Paired Ghidra pseudocode: 007744C0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEarnedBadgeDescription.c
Window: [0x007744c0, 0x00774590) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007744c0: 83 ec 34 8b 44 24 40 8b 4c 24 3c 8b 54 24 38 56
007744d0: 57 50 51 52 e8 47 08 2b 00 83 c4 0c 8b f0 c7 44
007744e0: 24 08 00 00 00 00 e8 a5 4e ff ff 8b f8 85 ff 0f
007744f0: 84 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a
00774500: ff 8d 44 24 14 56 50 e8 44 f6 d7 ff 83 c4 10 6a
00774510: 01 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30
00774520: 6c 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38
00774530: 0b 00 e8 89 14 d8 ff 8b 4c 24 14 8b 44 24 0c 2b
00774540: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 8d
00774550: ff d6 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50
00774560: 8d 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44
00774570: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 dd
00774580: 11 d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
007744c0 <.text+0x3734c0>:
  7744c0:	83 ec 34                                        	sub    esp,0x34
  7744c3:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  7744c7:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  7744cb:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  7744cf:	56                                              	push   esi
  7744d0:	57                                              	push   edi
  7744d1:	50                                              	push   eax
  7744d2:	51                                              	push   ecx
  7744d3:	52                                              	push   edx
  7744d4:	e8 47 08 2b 00                                  	call   0xa24d20
  7744d9:	83 c4 0c                                        	add    esp,0xc
  7744dc:	8b f0                                           	mov    esi,eax
  7744de:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7744e6:	e8 a5 4e ff ff                                  	call   0x769390
  7744eb:	8b f8                                           	mov    edi,eax
  7744ed:	85 ff                                           	test   edi,edi
  7744ef:	0f 84 8e 00 00 00                               	je     0x774583
  7744f5:	85 f6                                           	test   esi,esi
  7744f7:	0f 84 86 00 00 00                               	je     0x774583
  7744fd:	6a 00                                           	push   0x0
  7744ff:	6a ff                                           	push   0xffffffff
  774501:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  774505:	56                                              	push   esi
  774506:	50                                              	push   eax
  774507:	e8 44 f6 d7 ff                                  	call   0x4f3b50
  77450c:	83 c4 10                                        	add    esp,0x10
  77450f:	6a 01                                           	push   0x1
  774511:	6a 10                                           	push   0x10
  774513:	50                                              	push   eax
  774514:	6a 09                                           	push   0x9
  774516:	6a 13                                           	push   0x13
  774518:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77451c:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  774524:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  77452b:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  774532:	e8 89 14 d8 ff                                  	call   0x4f59c0
  774537:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77453b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77453f:	2b c8                                           	sub    ecx,eax
  774541:	83 e1 fe                                        	and    ecx,0xfffffffe
  774544:	83 f9 02                                        	cmp    ecx,0x2
  774547:	7e 0d                                           	jle    0x774556
  774549:	85 c0                                           	test   eax,eax
  77454b:	74 09                                           	je     0x774556
  77454d:	50                                              	push   eax
  77454e:	e8 8d ff d6 ff                                  	call   0x4e44e0
  774553:	83 c4 04                                        	add    esp,0x4
  774556:	8b 17                                           	mov    edx,DWORD PTR [edi]
  774558:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  77455b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77455f:	50                                              	push   eax
  774560:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  774564:	51                                              	push   ecx
  774565:	8b cf                                           	mov    ecx,edi
  774567:	ff d2                                           	call   edx
  774569:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77456e:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  774576:	74 0b                                           	je     0x774583
  774578:	6a 00                                           	push   0x0
  77457a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77457e:	e8 dd 11 d8 ff                                  	call   0x4f5760
  774583:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  774587:	5f                                              	pop    edi
  774588:	5e                                              	pop    esi
  774589:	83 c4 34                                        	add    esp,0x34
  77458c:	c3                                              	ret
  77458d:	cc                                              	int3
  77458e:	cc                                              	int3
  77458f:	cc                                              	int3
