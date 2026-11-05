# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007724f0 (ScriptCore.SocialFeatures::SocialFeaturesHost_FriendsGetPersona)
Paired Ghidra pseudocode: 007724F0_ScriptCore_SocialFeatures_SocialFeaturesHost_FriendsGetPersona.c
Window: [0x007724f0, 0x007725d0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x007725d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007724f0: 83 ec 34 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 56
00772500: 57 50 8b 44 24 44 51 52 50 e8 12 05 2b 00 83 c4
00772510: 10 8b f0 c7 44 24 08 00 00 00 00 e8 70 6e ff ff
00772520: 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86 00
00772530: 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 0f 16 d8
00772540: ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24
00772550: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00772560: 66 c7 44 24 38 0b 00 e8 54 34 d8 ff 8b 54 24 14
00772570: 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
00772580: 74 09 50 e8 58 1f d7 ff 83 c4 04 8b 07 8b 40 50
00772590: 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6 44
007725a0: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d
007725b0: 4c 24 20 e8 a8 31 d8 ff 8b 44 24 08 5f 5e 83 c4
007725c0: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007724f0 <.text+0x3714f0>:
  7724f0:	83 ec 34                                        	sub    esp,0x34
  7724f3:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7724f7:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7724fb:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  7724ff:	56                                              	push   esi
  772500:	57                                              	push   edi
  772501:	50                                              	push   eax
  772502:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772506:	51                                              	push   ecx
  772507:	52                                              	push   edx
  772508:	50                                              	push   eax
  772509:	e8 12 05 2b 00                                  	call   0xa22a20
  77250e:	83 c4 10                                        	add    esp,0x10
  772511:	8b f0                                           	mov    esi,eax
  772513:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  77251b:	e8 70 6e ff ff                                  	call   0x769390
  772520:	8b f8                                           	mov    edi,eax
  772522:	85 ff                                           	test   edi,edi
  772524:	0f 84 8e 00 00 00                               	je     0x7725b8
  77252a:	85 f6                                           	test   esi,esi
  77252c:	0f 84 86 00 00 00                               	je     0x7725b8
  772532:	6a 00                                           	push   0x0
  772534:	6a ff                                           	push   0xffffffff
  772536:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77253a:	56                                              	push   esi
  77253b:	51                                              	push   ecx
  77253c:	e8 0f 16 d8 ff                                  	call   0x4f3b50
  772541:	83 c4 10                                        	add    esp,0x10
  772544:	6a 01                                           	push   0x1
  772546:	6a 10                                           	push   0x10
  772548:	50                                              	push   eax
  772549:	6a 09                                           	push   0x9
  77254b:	6a 13                                           	push   0x13
  77254d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772551:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772559:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772560:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772567:	e8 54 34 d8 ff                                  	call   0x4f59c0
  77256c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772570:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772574:	2b d0                                           	sub    edx,eax
  772576:	83 e2 fe                                        	and    edx,0xfffffffe
  772579:	83 fa 02                                        	cmp    edx,0x2
  77257c:	7e 0d                                           	jle    0x77258b
  77257e:	85 c0                                           	test   eax,eax
  772580:	74 09                                           	je     0x77258b
  772582:	50                                              	push   eax
  772583:	e8 58 1f d7 ff                                  	call   0x4e44e0
  772588:	83 c4 04                                        	add    esp,0x4
  77258b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77258d:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772590:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772594:	51                                              	push   ecx
  772595:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  772599:	52                                              	push   edx
  77259a:	8b cf                                           	mov    ecx,edi
  77259c:	ff d0                                           	call   eax
  77259e:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7725a3:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7725ab:	74 0b                                           	je     0x7725b8
  7725ad:	6a 00                                           	push   0x0
  7725af:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7725b3:	e8 a8 31 d8 ff                                  	call   0x4f5760
  7725b8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7725bc:	5f                                              	pop    edi
  7725bd:	5e                                              	pop    esi
  7725be:	83 c4 34                                        	add    esp,0x34
  7725c1:	c3                                              	ret
  7725c2:	cc                                              	int3
  7725c3:	cc                                              	int3
  7725c4:	cc                                              	int3
  7725c5:	cc                                              	int3
  7725c6:	cc                                              	int3
  7725c7:	cc                                              	int3
  7725c8:	cc                                              	int3
  7725c9:	cc                                              	int3
  7725ca:	cc                                              	int3
  7725cb:	cc                                              	int3
  7725cc:	cc                                              	int3
  7725cd:	cc                                              	int3
  7725ce:	cc                                              	int3
  7725cf:	cc                                              	int3
