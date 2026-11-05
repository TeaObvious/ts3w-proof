# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007732b0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeName)
Paired Ghidra pseudocode: 007732B0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileBadgeName.c
Window: [0x007732b0, 0x00773410) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007732b0: 83 ec 34 56 c7 44 24 04 00 00 00 00 e8 cf 60 ff
007732c0: ff 8b f0 85 f6 0f 84 38 01 00 00 8b 4c 24 44 8b
007732d0: 06 8b 50 58 53 57 51 8b ce ff d2 6a 00 6a ff 50
007732e0: 8d 44 24 3c bf 54 8e 1c 01 bb 55 8e 1c 01 50 c7
007732f0: 44 24 2c bc 9c 00 01 89 7c 24 20 89 7c 24 24 89
00773300: 5c 24 28 e8 b8 09 d8 ff 8d 4c 24 20 83 c4 10 3b
00773310: c1 74 14 8b 50 04 8b 00 52 50 e8 f1 25 c9 ff 8b
00773320: 5c 24 18 8b 7c 24 10 8b 4c 24 38 8b 44 24 30 2b
00773330: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 a0 11 d7 ff
00773340: 83 c4 04 8b 54 24 48 8b 44 24 44 57 52 50 e8 6d
00773350: 11 2b 00 83 c4 0c 85 c0 0f 84 86 00 00 00 6a 00
00773360: 6a ff 50 8d 4c 24 3c 51 e8 e3 07 d8 ff 83 c4 10
00773370: 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24 24 c7 44 24
00773380: 24 6c 88 00 01 66 c7 44 24 2e 13 00 66 c7 44 24
00773390: 2c 0b 00 e8 28 26 d8 ff 8b 54 24 38 8b 44 24 30
007733a0: 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09 50 e8
007733b0: 2c 11 d7 ff 83 c4 04 8b 06 8b 40 50 8d 4c 24 0c
007733c0: 51 8d 54 24 14 52 8b ce ff d0 f6 44 24 18 04 c7
007733d0: 44 24 10 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 14 e8
007733e0: 7c 23 d8 ff 2b df 83 fb 01 7e 0d 85 ff 74 09 57
007733f0: e8 eb 10 d7 ff 83 c4 04 8b 44 24 0c 5f 5b 5e 83
00773400: c4 34 c3 8b 44 24 04 5e 83 c4 34 c3 cc cc cc cc

LINEAR DISASSEMBLY
007732b0 <.text+0x3722b0>:
  7732b0:	83 ec 34                                        	sub    esp,0x34
  7732b3:	56                                              	push   esi
  7732b4:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  7732bc:	e8 cf 60 ff ff                                  	call   0x769390
  7732c1:	8b f0                                           	mov    esi,eax
  7732c3:	85 f6                                           	test   esi,esi
  7732c5:	0f 84 38 01 00 00                               	je     0x773403
  7732cb:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  7732cf:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7732d1:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  7732d4:	53                                              	push   ebx
  7732d5:	57                                              	push   edi
  7732d6:	51                                              	push   ecx
  7732d7:	8b ce                                           	mov    ecx,esi
  7732d9:	ff d2                                           	call   edx
  7732db:	6a 00                                           	push   0x0
  7732dd:	6a ff                                           	push   0xffffffff
  7732df:	50                                              	push   eax
  7732e0:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  7732e4:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  7732e9:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  7732ee:	50                                              	push   eax
  7732ef:	c7 44 24 2c bc 9c 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009cbc
  7732f7:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  7732fb:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  7732ff:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  773303:	e8 b8 09 d8 ff                                  	call   0x4f3cc0
  773308:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77330c:	83 c4 10                                        	add    esp,0x10
  77330f:	3b c1                                           	cmp    eax,ecx
  773311:	74 14                                           	je     0x773327
  773313:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  773316:	8b 00                                           	mov    eax,DWORD PTR [eax]
  773318:	52                                              	push   edx
  773319:	50                                              	push   eax
  77331a:	e8 f1 25 c9 ff                                  	call   0x405910
  77331f:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  773323:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  773327:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  77332b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  77332f:	2b c8                                           	sub    ecx,eax
  773331:	83 f9 01                                        	cmp    ecx,0x1
  773334:	7e 0d                                           	jle    0x773343
  773336:	85 c0                                           	test   eax,eax
  773338:	74 09                                           	je     0x773343
  77333a:	50                                              	push   eax
  77333b:	e8 a0 11 d7 ff                                  	call   0x4e44e0
  773340:	83 c4 04                                        	add    esp,0x4
  773343:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  773347:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  77334b:	57                                              	push   edi
  77334c:	52                                              	push   edx
  77334d:	50                                              	push   eax
  77334e:	e8 6d 11 2b 00                                  	call   0xa244c0
  773353:	83 c4 0c                                        	add    esp,0xc
  773356:	85 c0                                           	test   eax,eax
  773358:	0f 84 86 00 00 00                               	je     0x7733e4
  77335e:	6a 00                                           	push   0x0
  773360:	6a ff                                           	push   0xffffffff
  773362:	50                                              	push   eax
  773363:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  773367:	51                                              	push   ecx
  773368:	e8 e3 07 d8 ff                                  	call   0x4f3b50
  77336d:	83 c4 10                                        	add    esp,0x10
  773370:	6a 01                                           	push   0x1
  773372:	6a 10                                           	push   0x10
  773374:	50                                              	push   eax
  773375:	6a 09                                           	push   0x9
  773377:	6a 13                                           	push   0x13
  773379:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  77337d:	c7 44 24 24 6c 88 00 01                         	mov    DWORD PTR [esp+0x24],0x100886c
  773385:	66 c7 44 24 2e 13 00                            	mov    WORD PTR [esp+0x2e],0x13
  77338c:	66 c7 44 24 2c 0b 00                            	mov    WORD PTR [esp+0x2c],0xb
  773393:	e8 28 26 d8 ff                                  	call   0x4f59c0
  773398:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  77339c:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  7733a0:	2b d0                                           	sub    edx,eax
  7733a2:	83 e2 fe                                        	and    edx,0xfffffffe
  7733a5:	83 fa 02                                        	cmp    edx,0x2
  7733a8:	7e 0d                                           	jle    0x7733b7
  7733aa:	85 c0                                           	test   eax,eax
  7733ac:	74 09                                           	je     0x7733b7
  7733ae:	50                                              	push   eax
  7733af:	e8 2c 11 d7 ff                                  	call   0x4e44e0
  7733b4:	83 c4 04                                        	add    esp,0x4
  7733b7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7733b9:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  7733bc:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  7733c0:	51                                              	push   ecx
  7733c1:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  7733c5:	52                                              	push   edx
  7733c6:	8b ce                                           	mov    ecx,esi
  7733c8:	ff d0                                           	call   eax
  7733ca:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  7733cf:	c7 44 24 10 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x10],0xfba6f4
  7733d7:	74 0b                                           	je     0x7733e4
  7733d9:	6a 00                                           	push   0x0
  7733db:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7733df:	e8 7c 23 d8 ff                                  	call   0x4f5760
  7733e4:	2b df                                           	sub    ebx,edi
  7733e6:	83 fb 01                                        	cmp    ebx,0x1
  7733e9:	7e 0d                                           	jle    0x7733f8
  7733eb:	85 ff                                           	test   edi,edi
  7733ed:	74 09                                           	je     0x7733f8
  7733ef:	57                                              	push   edi
  7733f0:	e8 eb 10 d7 ff                                  	call   0x4e44e0
  7733f5:	83 c4 04                                        	add    esp,0x4
  7733f8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7733fc:	5f                                              	pop    edi
  7733fd:	5b                                              	pop    ebx
  7733fe:	5e                                              	pop    esi
  7733ff:	83 c4 34                                        	add    esp,0x34
  773402:	c3                                              	ret
  773403:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  773407:	5e                                              	pop    esi
  773408:	83 c4 34                                        	add    esp,0x34
  77340b:	c3                                              	ret
  77340c:	cc                                              	int3
  77340d:	cc                                              	int3
  77340e:	cc                                              	int3
  77340f:	cc                                              	int3
