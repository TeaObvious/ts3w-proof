# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773410 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeDesc)
Paired Ghidra pseudocode: 00773410_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileBadgeDesc.c
Window: [0x00773410, 0x00773570) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773410: 83 ec 34 56 c7 44 24 04 00 00 00 00 e8 6f 5f ff
00773420: ff 8b f0 85 f6 0f 84 38 01 00 00 8b 4c 24 44 8b
00773430: 06 8b 50 58 53 57 51 8b ce ff d2 6a 00 6a ff 50
00773440: 8d 44 24 3c bf 54 8e 1c 01 bb 55 8e 1c 01 50 c7
00773450: 44 24 2c bc 9c 00 01 89 7c 24 20 89 7c 24 24 89
00773460: 5c 24 28 e8 58 08 d8 ff 8d 4c 24 20 83 c4 10 3b
00773470: c1 74 14 8b 50 04 8b 00 52 50 e8 91 24 c9 ff 8b
00773480: 5c 24 18 8b 7c 24 10 8b 4c 24 38 8b 44 24 30 2b
00773490: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 40 10 d7 ff
007734a0: 83 c4 04 8b 54 24 48 8b 44 24 44 57 52 50 e8 ad
007734b0: 10 2b 00 83 c4 0c 85 c0 0f 84 86 00 00 00 6a 00
007734c0: 6a ff 50 8d 4c 24 3c 51 e8 83 06 d8 ff 83 c4 10
007734d0: 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24 24 c7 44 24
007734e0: 24 6c 88 00 01 66 c7 44 24 2e 13 00 66 c7 44 24
007734f0: 2c 0b 00 e8 c8 24 d8 ff 8b 54 24 38 8b 44 24 30
00773500: 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09 50 e8
00773510: cc 0f d7 ff 83 c4 04 8b 06 8b 40 50 8d 4c 24 0c
00773520: 51 8d 54 24 14 52 8b ce ff d0 f6 44 24 18 04 c7
00773530: 44 24 10 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 14 e8
00773540: 1c 22 d8 ff 2b df 83 fb 01 7e 0d 85 ff 74 09 57
00773550: e8 8b 0f d7 ff 83 c4 04 8b 44 24 0c 5f 5b 5e 83
00773560: c4 34 c3 8b 44 24 04 5e 83 c4 34 c3 cc cc cc cc

LINEAR DISASSEMBLY
00773410 <.text+0x372410>:
  773410:	83 ec 34                                        	sub    esp,0x34
  773413:	56                                              	push   esi
  773414:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  77341c:	e8 6f 5f ff ff                                  	call   0x769390
  773421:	8b f0                                           	mov    esi,eax
  773423:	85 f6                                           	test   esi,esi
  773425:	0f 84 38 01 00 00                               	je     0x773563
  77342b:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  77342f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  773431:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  773434:	53                                              	push   ebx
  773435:	57                                              	push   edi
  773436:	51                                              	push   ecx
  773437:	8b ce                                           	mov    ecx,esi
  773439:	ff d2                                           	call   edx
  77343b:	6a 00                                           	push   0x0
  77343d:	6a ff                                           	push   0xffffffff
  77343f:	50                                              	push   eax
  773440:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  773444:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  773449:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  77344e:	50                                              	push   eax
  77344f:	c7 44 24 2c bc 9c 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009cbc
  773457:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  77345b:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  77345f:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  773463:	e8 58 08 d8 ff                                  	call   0x4f3cc0
  773468:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77346c:	83 c4 10                                        	add    esp,0x10
  77346f:	3b c1                                           	cmp    eax,ecx
  773471:	74 14                                           	je     0x773487
  773473:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  773476:	8b 00                                           	mov    eax,DWORD PTR [eax]
  773478:	52                                              	push   edx
  773479:	50                                              	push   eax
  77347a:	e8 91 24 c9 ff                                  	call   0x405910
  77347f:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  773483:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  773487:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  77348b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  77348f:	2b c8                                           	sub    ecx,eax
  773491:	83 f9 01                                        	cmp    ecx,0x1
  773494:	7e 0d                                           	jle    0x7734a3
  773496:	85 c0                                           	test   eax,eax
  773498:	74 09                                           	je     0x7734a3
  77349a:	50                                              	push   eax
  77349b:	e8 40 10 d7 ff                                  	call   0x4e44e0
  7734a0:	83 c4 04                                        	add    esp,0x4
  7734a3:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  7734a7:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7734ab:	57                                              	push   edi
  7734ac:	52                                              	push   edx
  7734ad:	50                                              	push   eax
  7734ae:	e8 ad 10 2b 00                                  	call   0xa24560
  7734b3:	83 c4 0c                                        	add    esp,0xc
  7734b6:	85 c0                                           	test   eax,eax
  7734b8:	0f 84 86 00 00 00                               	je     0x773544
  7734be:	6a 00                                           	push   0x0
  7734c0:	6a ff                                           	push   0xffffffff
  7734c2:	50                                              	push   eax
  7734c3:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  7734c7:	51                                              	push   ecx
  7734c8:	e8 83 06 d8 ff                                  	call   0x4f3b50
  7734cd:	83 c4 10                                        	add    esp,0x10
  7734d0:	6a 01                                           	push   0x1
  7734d2:	6a 10                                           	push   0x10
  7734d4:	50                                              	push   eax
  7734d5:	6a 09                                           	push   0x9
  7734d7:	6a 13                                           	push   0x13
  7734d9:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  7734dd:	c7 44 24 24 6c 88 00 01                         	mov    DWORD PTR [esp+0x24],0x100886c
  7734e5:	66 c7 44 24 2e 13 00                            	mov    WORD PTR [esp+0x2e],0x13
  7734ec:	66 c7 44 24 2c 0b 00                            	mov    WORD PTR [esp+0x2c],0xb
  7734f3:	e8 c8 24 d8 ff                                  	call   0x4f59c0
  7734f8:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  7734fc:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  773500:	2b d0                                           	sub    edx,eax
  773502:	83 e2 fe                                        	and    edx,0xfffffffe
  773505:	83 fa 02                                        	cmp    edx,0x2
  773508:	7e 0d                                           	jle    0x773517
  77350a:	85 c0                                           	test   eax,eax
  77350c:	74 09                                           	je     0x773517
  77350e:	50                                              	push   eax
  77350f:	e8 cc 0f d7 ff                                  	call   0x4e44e0
  773514:	83 c4 04                                        	add    esp,0x4
  773517:	8b 06                                           	mov    eax,DWORD PTR [esi]
  773519:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  77351c:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  773520:	51                                              	push   ecx
  773521:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  773525:	52                                              	push   edx
  773526:	8b ce                                           	mov    ecx,esi
  773528:	ff d0                                           	call   eax
  77352a:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  77352f:	c7 44 24 10 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x10],0xfba6f4
  773537:	74 0b                                           	je     0x773544
  773539:	6a 00                                           	push   0x0
  77353b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77353f:	e8 1c 22 d8 ff                                  	call   0x4f5760
  773544:	2b df                                           	sub    ebx,edi
  773546:	83 fb 01                                        	cmp    ebx,0x1
  773549:	7e 0d                                           	jle    0x773558
  77354b:	85 ff                                           	test   edi,edi
  77354d:	74 09                                           	je     0x773558
  77354f:	57                                              	push   edi
  773550:	e8 8b 0f d7 ff                                  	call   0x4e44e0
  773555:	83 c4 04                                        	add    esp,0x4
  773558:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77355c:	5f                                              	pop    edi
  77355d:	5b                                              	pop    ebx
  77355e:	5e                                              	pop    esi
  77355f:	83 c4 34                                        	add    esp,0x34
  773562:	c3                                              	ret
  773563:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  773567:	5e                                              	pop    esi
  773568:	83 c4 34                                        	add    esp,0x34
  77356b:	c3                                              	ret
  77356c:	cc                                              	int3
  77356d:	cc                                              	int3
  77356e:	cc                                              	int3
  77356f:	cc                                              	int3
