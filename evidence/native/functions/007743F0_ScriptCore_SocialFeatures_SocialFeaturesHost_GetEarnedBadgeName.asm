# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007743f0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgeName)
Paired Ghidra pseudocode: 007743F0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEarnedBadgeName.c
Window: [0x007743f0, 0x007744c0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007744c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007743f0: 83 ec 34 8b 44 24 40 8b 4c 24 3c 8b 54 24 38 56
00774400: 57 50 51 52 e8 c7 08 2b 00 83 c4 0c 8b f0 c7 44
00774410: 24 08 00 00 00 00 e8 75 4f ff ff 8b f8 85 ff 0f
00774420: 84 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a
00774430: ff 8d 44 24 14 56 50 e8 14 f7 d7 ff 83 c4 10 6a
00774440: 01 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30
00774450: 6c 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38
00774460: 0b 00 e8 59 15 d8 ff 8b 4c 24 14 8b 44 24 0c 2b
00774470: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 5d
00774480: 00 d7 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50
00774490: 8d 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44
007744a0: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 ad
007744b0: 12 d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
007743f0 <.text+0x3733f0>:
  7743f0:	83 ec 34                                        	sub    esp,0x34
  7743f3:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  7743f7:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  7743fb:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  7743ff:	56                                              	push   esi
  774400:	57                                              	push   edi
  774401:	50                                              	push   eax
  774402:	51                                              	push   ecx
  774403:	52                                              	push   edx
  774404:	e8 c7 08 2b 00                                  	call   0xa24cd0
  774409:	83 c4 0c                                        	add    esp,0xc
  77440c:	8b f0                                           	mov    esi,eax
  77440e:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  774416:	e8 75 4f ff ff                                  	call   0x769390
  77441b:	8b f8                                           	mov    edi,eax
  77441d:	85 ff                                           	test   edi,edi
  77441f:	0f 84 8e 00 00 00                               	je     0x7744b3
  774425:	85 f6                                           	test   esi,esi
  774427:	0f 84 86 00 00 00                               	je     0x7744b3
  77442d:	6a 00                                           	push   0x0
  77442f:	6a ff                                           	push   0xffffffff
  774431:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  774435:	56                                              	push   esi
  774436:	50                                              	push   eax
  774437:	e8 14 f7 d7 ff                                  	call   0x4f3b50
  77443c:	83 c4 10                                        	add    esp,0x10
  77443f:	6a 01                                           	push   0x1
  774441:	6a 10                                           	push   0x10
  774443:	50                                              	push   eax
  774444:	6a 09                                           	push   0x9
  774446:	6a 13                                           	push   0x13
  774448:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77444c:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  774454:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  77445b:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  774462:	e8 59 15 d8 ff                                  	call   0x4f59c0
  774467:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77446b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77446f:	2b c8                                           	sub    ecx,eax
  774471:	83 e1 fe                                        	and    ecx,0xfffffffe
  774474:	83 f9 02                                        	cmp    ecx,0x2
  774477:	7e 0d                                           	jle    0x774486
  774479:	85 c0                                           	test   eax,eax
  77447b:	74 09                                           	je     0x774486
  77447d:	50                                              	push   eax
  77447e:	e8 5d 00 d7 ff                                  	call   0x4e44e0
  774483:	83 c4 04                                        	add    esp,0x4
  774486:	8b 17                                           	mov    edx,DWORD PTR [edi]
  774488:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  77448b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77448f:	50                                              	push   eax
  774490:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  774494:	51                                              	push   ecx
  774495:	8b cf                                           	mov    ecx,edi
  774497:	ff d2                                           	call   edx
  774499:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77449e:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7744a6:	74 0b                                           	je     0x7744b3
  7744a8:	6a 00                                           	push   0x0
  7744aa:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7744ae:	e8 ad 12 d8 ff                                  	call   0x4f5760
  7744b3:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7744b7:	5f                                              	pop    edi
  7744b8:	5e                                              	pop    esi
  7744b9:	83 c4 34                                        	add    esp,0x34
  7744bc:	c3                                              	ret
  7744bd:	cc                                              	int3
  7744be:	cc                                              	int3
  7744bf:	cc                                              	int3
