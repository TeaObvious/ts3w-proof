# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772420 (ScriptCore.SocialFeatures::SocialFeaturesHost_FriendsGetSearchResultCrossroadsName)
Paired Ghidra pseudocode: 00772420_ScriptCore_SocialFeatures_SocialFeaturesHost_FriendsGetSearchResultCrossroadsName.c
Window: [0x00772420, 0x007724f0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007724f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772420: 83 ec 34 8b 44 24 38 56 57 50 e8 81 04 2b 00 83
00772430: c4 04 8b f0 c7 44 24 08 00 00 00 00 e8 4f 6f ff
00772440: ff 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86
00772450: 00 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 ee 16
00772460: d8 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c
00772470: 24 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13
00772480: 00 66 c7 44 24 38 0b 00 e8 33 35 d8 ff 8b 54 24
00772490: 14 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85
007724a0: c0 74 09 50 e8 37 20 d7 ff 83 c4 04 8b 07 8b 40
007724b0: 50 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6
007724c0: 44 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00
007724d0: 8d 4c 24 20 e8 87 32 d8 ff 8b 44 24 08 5f 5e 83
007724e0: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772420 <.text+0x371420>:
  772420:	83 ec 34                                        	sub    esp,0x34
  772423:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  772427:	56                                              	push   esi
  772428:	57                                              	push   edi
  772429:	50                                              	push   eax
  77242a:	e8 81 04 2b 00                                  	call   0xa228b0
  77242f:	83 c4 04                                        	add    esp,0x4
  772432:	8b f0                                           	mov    esi,eax
  772434:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  77243c:	e8 4f 6f ff ff                                  	call   0x769390
  772441:	8b f8                                           	mov    edi,eax
  772443:	85 ff                                           	test   edi,edi
  772445:	0f 84 8e 00 00 00                               	je     0x7724d9
  77244b:	85 f6                                           	test   esi,esi
  77244d:	0f 84 86 00 00 00                               	je     0x7724d9
  772453:	6a 00                                           	push   0x0
  772455:	6a ff                                           	push   0xffffffff
  772457:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77245b:	56                                              	push   esi
  77245c:	51                                              	push   ecx
  77245d:	e8 ee 16 d8 ff                                  	call   0x4f3b50
  772462:	83 c4 10                                        	add    esp,0x10
  772465:	6a 01                                           	push   0x1
  772467:	6a 10                                           	push   0x10
  772469:	50                                              	push   eax
  77246a:	6a 09                                           	push   0x9
  77246c:	6a 13                                           	push   0x13
  77246e:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772472:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  77247a:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772481:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772488:	e8 33 35 d8 ff                                  	call   0x4f59c0
  77248d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772491:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772495:	2b d0                                           	sub    edx,eax
  772497:	83 e2 fe                                        	and    edx,0xfffffffe
  77249a:	83 fa 02                                        	cmp    edx,0x2
  77249d:	7e 0d                                           	jle    0x7724ac
  77249f:	85 c0                                           	test   eax,eax
  7724a1:	74 09                                           	je     0x7724ac
  7724a3:	50                                              	push   eax
  7724a4:	e8 37 20 d7 ff                                  	call   0x4e44e0
  7724a9:	83 c4 04                                        	add    esp,0x4
  7724ac:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7724ae:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  7724b1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7724b5:	51                                              	push   ecx
  7724b6:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  7724ba:	52                                              	push   edx
  7724bb:	8b cf                                           	mov    ecx,edi
  7724bd:	ff d0                                           	call   eax
  7724bf:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7724c4:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7724cc:	74 0b                                           	je     0x7724d9
  7724ce:	6a 00                                           	push   0x0
  7724d0:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7724d4:	e8 87 32 d8 ff                                  	call   0x4f5760
  7724d9:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7724dd:	5f                                              	pop    edi
  7724de:	5e                                              	pop    esi
  7724df:	83 c4 34                                        	add    esp,0x34
  7724e2:	c3                                              	ret
  7724e3:	cc                                              	int3
  7724e4:	cc                                              	int3
  7724e5:	cc                                              	int3
  7724e6:	cc                                              	int3
  7724e7:	cc                                              	int3
  7724e8:	cc                                              	int3
  7724e9:	cc                                              	int3
  7724ea:	cc                                              	int3
  7724eb:	cc                                              	int3
  7724ec:	cc                                              	int3
  7724ed:	cc                                              	int3
  7724ee:	cc                                              	int3
  7724ef:	cc                                              	int3
