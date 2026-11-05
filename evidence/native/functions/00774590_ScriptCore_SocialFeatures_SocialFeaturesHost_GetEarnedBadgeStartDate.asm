# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774590 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgeStartDate)
Paired Ghidra pseudocode: 00774590_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEarnedBadgeStartDate.c
Window: [0x00774590, 0x00774660) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774590: 83 ec 34 8b 44 24 40 8b 4c 24 3c 8b 54 24 38 56
007745a0: 57 50 51 52 e8 c7 07 2b 00 83 c4 0c 8b f0 c7 44
007745b0: 24 08 00 00 00 00 e8 d5 4d ff ff 8b f8 85 ff 0f
007745c0: 84 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a
007745d0: ff 8d 44 24 14 56 50 e8 74 f5 d7 ff 83 c4 10 6a
007745e0: 01 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30
007745f0: 6c 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38
00774600: 0b 00 e8 b9 13 d8 ff 8b 4c 24 14 8b 44 24 0c 2b
00774610: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 bd
00774620: fe d6 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50
00774630: 8d 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44
00774640: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 0d
00774650: 11 d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
00774590 <.text+0x373590>:
  774590:	83 ec 34                                        	sub    esp,0x34
  774593:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  774597:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  77459b:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  77459f:	56                                              	push   esi
  7745a0:	57                                              	push   edi
  7745a1:	50                                              	push   eax
  7745a2:	51                                              	push   ecx
  7745a3:	52                                              	push   edx
  7745a4:	e8 c7 07 2b 00                                  	call   0xa24d70
  7745a9:	83 c4 0c                                        	add    esp,0xc
  7745ac:	8b f0                                           	mov    esi,eax
  7745ae:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7745b6:	e8 d5 4d ff ff                                  	call   0x769390
  7745bb:	8b f8                                           	mov    edi,eax
  7745bd:	85 ff                                           	test   edi,edi
  7745bf:	0f 84 8e 00 00 00                               	je     0x774653
  7745c5:	85 f6                                           	test   esi,esi
  7745c7:	0f 84 86 00 00 00                               	je     0x774653
  7745cd:	6a 00                                           	push   0x0
  7745cf:	6a ff                                           	push   0xffffffff
  7745d1:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7745d5:	56                                              	push   esi
  7745d6:	50                                              	push   eax
  7745d7:	e8 74 f5 d7 ff                                  	call   0x4f3b50
  7745dc:	83 c4 10                                        	add    esp,0x10
  7745df:	6a 01                                           	push   0x1
  7745e1:	6a 10                                           	push   0x10
  7745e3:	50                                              	push   eax
  7745e4:	6a 09                                           	push   0x9
  7745e6:	6a 13                                           	push   0x13
  7745e8:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7745ec:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  7745f4:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  7745fb:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  774602:	e8 b9 13 d8 ff                                  	call   0x4f59c0
  774607:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77460b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77460f:	2b c8                                           	sub    ecx,eax
  774611:	83 e1 fe                                        	and    ecx,0xfffffffe
  774614:	83 f9 02                                        	cmp    ecx,0x2
  774617:	7e 0d                                           	jle    0x774626
  774619:	85 c0                                           	test   eax,eax
  77461b:	74 09                                           	je     0x774626
  77461d:	50                                              	push   eax
  77461e:	e8 bd fe d6 ff                                  	call   0x4e44e0
  774623:	83 c4 04                                        	add    esp,0x4
  774626:	8b 17                                           	mov    edx,DWORD PTR [edi]
  774628:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  77462b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77462f:	50                                              	push   eax
  774630:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  774634:	51                                              	push   ecx
  774635:	8b cf                                           	mov    ecx,edi
  774637:	ff d2                                           	call   edx
  774639:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77463e:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  774646:	74 0b                                           	je     0x774653
  774648:	6a 00                                           	push   0x0
  77464a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77464e:	e8 0d 11 d8 ff                                  	call   0x4f5760
  774653:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  774657:	5f                                              	pop    edi
  774658:	5e                                              	pop    esi
  774659:	83 c4 34                                        	add    esp,0x34
  77465c:	c3                                              	ret
  77465d:	cc                                              	int3
  77465e:	cc                                              	int3
  77465f:	cc                                              	int3
