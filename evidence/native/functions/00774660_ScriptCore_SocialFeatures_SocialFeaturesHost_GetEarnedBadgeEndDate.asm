# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774660 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgeEndDate)
Paired Ghidra pseudocode: 00774660_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEarnedBadgeEndDate.c
Window: [0x00774660, 0x00774730) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774660: 83 ec 34 8b 44 24 40 8b 4c 24 3c 8b 54 24 38 56
00774670: 57 50 51 52 e8 67 07 2b 00 83 c4 0c 8b f0 c7 44
00774680: 24 08 00 00 00 00 e8 05 4d ff ff 8b f8 85 ff 0f
00774690: 84 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a
007746a0: ff 8d 44 24 14 56 50 e8 a4 f4 d7 ff 83 c4 10 6a
007746b0: 01 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30
007746c0: 6c 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38
007746d0: 0b 00 e8 e9 12 d8 ff 8b 4c 24 14 8b 44 24 0c 2b
007746e0: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 ed
007746f0: fd d6 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50
00774700: 8d 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44
00774710: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 3d
00774720: 10 d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
00774660 <.text+0x373660>:
  774660:	83 ec 34                                        	sub    esp,0x34
  774663:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  774667:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  77466b:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  77466f:	56                                              	push   esi
  774670:	57                                              	push   edi
  774671:	50                                              	push   eax
  774672:	51                                              	push   ecx
  774673:	52                                              	push   edx
  774674:	e8 67 07 2b 00                                  	call   0xa24de0
  774679:	83 c4 0c                                        	add    esp,0xc
  77467c:	8b f0                                           	mov    esi,eax
  77467e:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  774686:	e8 05 4d ff ff                                  	call   0x769390
  77468b:	8b f8                                           	mov    edi,eax
  77468d:	85 ff                                           	test   edi,edi
  77468f:	0f 84 8e 00 00 00                               	je     0x774723
  774695:	85 f6                                           	test   esi,esi
  774697:	0f 84 86 00 00 00                               	je     0x774723
  77469d:	6a 00                                           	push   0x0
  77469f:	6a ff                                           	push   0xffffffff
  7746a1:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7746a5:	56                                              	push   esi
  7746a6:	50                                              	push   eax
  7746a7:	e8 a4 f4 d7 ff                                  	call   0x4f3b50
  7746ac:	83 c4 10                                        	add    esp,0x10
  7746af:	6a 01                                           	push   0x1
  7746b1:	6a 10                                           	push   0x10
  7746b3:	50                                              	push   eax
  7746b4:	6a 09                                           	push   0x9
  7746b6:	6a 13                                           	push   0x13
  7746b8:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7746bc:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  7746c4:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  7746cb:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  7746d2:	e8 e9 12 d8 ff                                  	call   0x4f59c0
  7746d7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7746db:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7746df:	2b c8                                           	sub    ecx,eax
  7746e1:	83 e1 fe                                        	and    ecx,0xfffffffe
  7746e4:	83 f9 02                                        	cmp    ecx,0x2
  7746e7:	7e 0d                                           	jle    0x7746f6
  7746e9:	85 c0                                           	test   eax,eax
  7746eb:	74 09                                           	je     0x7746f6
  7746ed:	50                                              	push   eax
  7746ee:	e8 ed fd d6 ff                                  	call   0x4e44e0
  7746f3:	83 c4 04                                        	add    esp,0x4
  7746f6:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7746f8:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  7746fb:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  7746ff:	50                                              	push   eax
  774700:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  774704:	51                                              	push   ecx
  774705:	8b cf                                           	mov    ecx,edi
  774707:	ff d2                                           	call   edx
  774709:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77470e:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  774716:	74 0b                                           	je     0x774723
  774718:	6a 00                                           	push   0x0
  77471a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77471e:	e8 3d 10 d8 ff                                  	call   0x4f5760
  774723:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  774727:	5f                                              	pop    edi
  774728:	5e                                              	pop    esi
  774729:	83 c4 34                                        	add    esp,0x34
  77472c:	c3                                              	ret
  77472d:	cc                                              	int3
  77472e:	cc                                              	int3
  77472f:	cc                                              	int3
