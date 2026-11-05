# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772790 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWallPostAuthor)
Paired Ghidra pseudocode: 00772790_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWallPostAuthor.c
Window: [0x00772790, 0x00772870) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772790: 83 ec 34 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 56
007727a0: 57 50 8b 44 24 44 51 52 50 e8 b2 08 2b 00 83 c4
007727b0: 10 8b f0 c7 44 24 08 00 00 00 00 e8 d0 6b ff ff
007727c0: 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86 00
007727d0: 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 6f 13 d8
007727e0: ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24
007727f0: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00772800: 66 c7 44 24 38 0b 00 e8 b4 31 d8 ff 8b 54 24 14
00772810: 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
00772820: 74 09 50 e8 b8 1c d7 ff 83 c4 04 8b 07 8b 40 50
00772830: 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6 44
00772840: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d
00772850: 4c 24 20 e8 08 2f d8 ff 8b 44 24 08 5f 5e 83 c4
00772860: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772790 <.text+0x371790>:
  772790:	83 ec 34                                        	sub    esp,0x34
  772793:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772797:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  77279b:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  77279f:	56                                              	push   esi
  7727a0:	57                                              	push   edi
  7727a1:	50                                              	push   eax
  7727a2:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7727a6:	51                                              	push   ecx
  7727a7:	52                                              	push   edx
  7727a8:	50                                              	push   eax
  7727a9:	e8 b2 08 2b 00                                  	call   0xa23060
  7727ae:	83 c4 10                                        	add    esp,0x10
  7727b1:	8b f0                                           	mov    esi,eax
  7727b3:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7727bb:	e8 d0 6b ff ff                                  	call   0x769390
  7727c0:	8b f8                                           	mov    edi,eax
  7727c2:	85 ff                                           	test   edi,edi
  7727c4:	0f 84 8e 00 00 00                               	je     0x772858
  7727ca:	85 f6                                           	test   esi,esi
  7727cc:	0f 84 86 00 00 00                               	je     0x772858
  7727d2:	6a 00                                           	push   0x0
  7727d4:	6a ff                                           	push   0xffffffff
  7727d6:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7727da:	56                                              	push   esi
  7727db:	51                                              	push   ecx
  7727dc:	e8 6f 13 d8 ff                                  	call   0x4f3b50
  7727e1:	83 c4 10                                        	add    esp,0x10
  7727e4:	6a 01                                           	push   0x1
  7727e6:	6a 10                                           	push   0x10
  7727e8:	50                                              	push   eax
  7727e9:	6a 09                                           	push   0x9
  7727eb:	6a 13                                           	push   0x13
  7727ed:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7727f1:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  7727f9:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772800:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772807:	e8 b4 31 d8 ff                                  	call   0x4f59c0
  77280c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772810:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772814:	2b d0                                           	sub    edx,eax
  772816:	83 e2 fe                                        	and    edx,0xfffffffe
  772819:	83 fa 02                                        	cmp    edx,0x2
  77281c:	7e 0d                                           	jle    0x77282b
  77281e:	85 c0                                           	test   eax,eax
  772820:	74 09                                           	je     0x77282b
  772822:	50                                              	push   eax
  772823:	e8 b8 1c d7 ff                                  	call   0x4e44e0
  772828:	83 c4 04                                        	add    esp,0x4
  77282b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77282d:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772830:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772834:	51                                              	push   ecx
  772835:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  772839:	52                                              	push   edx
  77283a:	8b cf                                           	mov    ecx,edi
  77283c:	ff d0                                           	call   eax
  77283e:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  772843:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  77284b:	74 0b                                           	je     0x772858
  77284d:	6a 00                                           	push   0x0
  77284f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772853:	e8 08 2f d8 ff                                  	call   0x4f5760
  772858:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  77285c:	5f                                              	pop    edi
  77285d:	5e                                              	pop    esi
  77285e:	83 c4 34                                        	add    esp,0x34
  772861:	c3                                              	ret
  772862:	cc                                              	int3
  772863:	cc                                              	int3
  772864:	cc                                              	int3
  772865:	cc                                              	int3
  772866:	cc                                              	int3
  772867:	cc                                              	int3
  772868:	cc                                              	int3
  772869:	cc                                              	int3
  77286a:	cc                                              	int3
  77286b:	cc                                              	int3
  77286c:	cc                                              	int3
  77286d:	cc                                              	int3
  77286e:	cc                                              	int3
  77286f:	cc                                              	int3
