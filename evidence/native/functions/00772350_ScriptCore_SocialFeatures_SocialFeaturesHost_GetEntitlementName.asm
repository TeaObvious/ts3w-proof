# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772350 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEntitlementName)
Paired Ghidra pseudocode: 00772350_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEntitlementName.c
Window: [0x00772350, 0x00772420) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772350: 83 ec 34 8b 44 24 38 56 57 50 e8 31 02 2b 00 83
00772360: c4 04 8b f0 c7 44 24 08 00 00 00 00 e8 1f 70 ff
00772370: ff 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86
00772380: 00 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 be 17
00772390: d8 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c
007723a0: 24 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13
007723b0: 00 66 c7 44 24 38 0b 00 e8 03 36 d8 ff 8b 54 24
007723c0: 14 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85
007723d0: c0 74 09 50 e8 07 21 d7 ff 83 c4 04 8b 07 8b 40
007723e0: 50 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6
007723f0: 44 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00
00772400: 8d 4c 24 20 e8 57 33 d8 ff 8b 44 24 08 5f 5e 83
00772410: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772350 <.text+0x371350>:
  772350:	83 ec 34                                        	sub    esp,0x34
  772353:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  772357:	56                                              	push   esi
  772358:	57                                              	push   edi
  772359:	50                                              	push   eax
  77235a:	e8 31 02 2b 00                                  	call   0xa22590
  77235f:	83 c4 04                                        	add    esp,0x4
  772362:	8b f0                                           	mov    esi,eax
  772364:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  77236c:	e8 1f 70 ff ff                                  	call   0x769390
  772371:	8b f8                                           	mov    edi,eax
  772373:	85 ff                                           	test   edi,edi
  772375:	0f 84 8e 00 00 00                               	je     0x772409
  77237b:	85 f6                                           	test   esi,esi
  77237d:	0f 84 86 00 00 00                               	je     0x772409
  772383:	6a 00                                           	push   0x0
  772385:	6a ff                                           	push   0xffffffff
  772387:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77238b:	56                                              	push   esi
  77238c:	51                                              	push   ecx
  77238d:	e8 be 17 d8 ff                                  	call   0x4f3b50
  772392:	83 c4 10                                        	add    esp,0x10
  772395:	6a 01                                           	push   0x1
  772397:	6a 10                                           	push   0x10
  772399:	50                                              	push   eax
  77239a:	6a 09                                           	push   0x9
  77239c:	6a 13                                           	push   0x13
  77239e:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7723a2:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  7723aa:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  7723b1:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  7723b8:	e8 03 36 d8 ff                                  	call   0x4f59c0
  7723bd:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  7723c1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7723c5:	2b d0                                           	sub    edx,eax
  7723c7:	83 e2 fe                                        	and    edx,0xfffffffe
  7723ca:	83 fa 02                                        	cmp    edx,0x2
  7723cd:	7e 0d                                           	jle    0x7723dc
  7723cf:	85 c0                                           	test   eax,eax
  7723d1:	74 09                                           	je     0x7723dc
  7723d3:	50                                              	push   eax
  7723d4:	e8 07 21 d7 ff                                  	call   0x4e44e0
  7723d9:	83 c4 04                                        	add    esp,0x4
  7723dc:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7723de:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  7723e1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7723e5:	51                                              	push   ecx
  7723e6:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  7723ea:	52                                              	push   edx
  7723eb:	8b cf                                           	mov    ecx,edi
  7723ed:	ff d0                                           	call   eax
  7723ef:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7723f4:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7723fc:	74 0b                                           	je     0x772409
  7723fe:	6a 00                                           	push   0x0
  772400:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772404:	e8 57 33 d8 ff                                  	call   0x4f5760
  772409:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  77240d:	5f                                              	pop    edi
  77240e:	5e                                              	pop    esi
  77240f:	83 c4 34                                        	add    esp,0x34
  772412:	c3                                              	ret
  772413:	cc                                              	int3
  772414:	cc                                              	int3
  772415:	cc                                              	int3
  772416:	cc                                              	int3
  772417:	cc                                              	int3
  772418:	cc                                              	int3
  772419:	cc                                              	int3
  77241a:	cc                                              	int3
  77241b:	cc                                              	int3
  77241c:	cc                                              	int3
  77241d:	cc                                              	int3
  77241e:	cc                                              	int3
  77241f:	cc                                              	int3
