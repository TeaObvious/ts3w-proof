# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774320 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgeID)
Paired Ghidra pseudocode: 00774320_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEarnedBadgeID.c
Window: [0x00774320, 0x007743f0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007743f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774320: 83 ec 34 8b 44 24 40 8b 4c 24 3c 8b 54 24 38 56
00774330: 57 50 51 52 e8 47 09 2b 00 83 c4 0c 8b f0 c7 44
00774340: 24 08 00 00 00 00 e8 45 50 ff ff 8b f8 85 ff 0f
00774350: 84 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a
00774360: ff 8d 44 24 14 56 50 e8 e4 f7 d7 ff 83 c4 10 6a
00774370: 01 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30
00774380: 6c 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38
00774390: 0b 00 e8 29 16 d8 ff 8b 4c 24 14 8b 44 24 0c 2b
007743a0: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 2d
007743b0: 01 d7 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50
007743c0: 8d 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44
007743d0: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 7d
007743e0: 13 d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
00774320 <.text+0x373320>:
  774320:	83 ec 34                                        	sub    esp,0x34
  774323:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  774327:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  77432b:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  77432f:	56                                              	push   esi
  774330:	57                                              	push   edi
  774331:	50                                              	push   eax
  774332:	51                                              	push   ecx
  774333:	52                                              	push   edx
  774334:	e8 47 09 2b 00                                  	call   0xa24c80
  774339:	83 c4 0c                                        	add    esp,0xc
  77433c:	8b f0                                           	mov    esi,eax
  77433e:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  774346:	e8 45 50 ff ff                                  	call   0x769390
  77434b:	8b f8                                           	mov    edi,eax
  77434d:	85 ff                                           	test   edi,edi
  77434f:	0f 84 8e 00 00 00                               	je     0x7743e3
  774355:	85 f6                                           	test   esi,esi
  774357:	0f 84 86 00 00 00                               	je     0x7743e3
  77435d:	6a 00                                           	push   0x0
  77435f:	6a ff                                           	push   0xffffffff
  774361:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  774365:	56                                              	push   esi
  774366:	50                                              	push   eax
  774367:	e8 e4 f7 d7 ff                                  	call   0x4f3b50
  77436c:	83 c4 10                                        	add    esp,0x10
  77436f:	6a 01                                           	push   0x1
  774371:	6a 10                                           	push   0x10
  774373:	50                                              	push   eax
  774374:	6a 09                                           	push   0x9
  774376:	6a 13                                           	push   0x13
  774378:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77437c:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  774384:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  77438b:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  774392:	e8 29 16 d8 ff                                  	call   0x4f59c0
  774397:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77439b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77439f:	2b c8                                           	sub    ecx,eax
  7743a1:	83 e1 fe                                        	and    ecx,0xfffffffe
  7743a4:	83 f9 02                                        	cmp    ecx,0x2
  7743a7:	7e 0d                                           	jle    0x7743b6
  7743a9:	85 c0                                           	test   eax,eax
  7743ab:	74 09                                           	je     0x7743b6
  7743ad:	50                                              	push   eax
  7743ae:	e8 2d 01 d7 ff                                  	call   0x4e44e0
  7743b3:	83 c4 04                                        	add    esp,0x4
  7743b6:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7743b8:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  7743bb:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  7743bf:	50                                              	push   eax
  7743c0:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7743c4:	51                                              	push   ecx
  7743c5:	8b cf                                           	mov    ecx,edi
  7743c7:	ff d2                                           	call   edx
  7743c9:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7743ce:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7743d6:	74 0b                                           	je     0x7743e3
  7743d8:	6a 00                                           	push   0x0
  7743da:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7743de:	e8 7d 13 d8 ff                                  	call   0x4f5760
  7743e3:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7743e7:	5f                                              	pop    edi
  7743e8:	5e                                              	pop    esi
  7743e9:	83 c4 34                                        	add    esp,0x34
  7743ec:	c3                                              	ret
  7743ed:	cc                                              	int3
  7743ee:	cc                                              	int3
  7743ef:	cc                                              	int3
