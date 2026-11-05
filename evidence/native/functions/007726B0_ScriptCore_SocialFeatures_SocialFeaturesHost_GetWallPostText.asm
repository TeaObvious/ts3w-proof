# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007726b0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWallPostText)
Paired Ghidra pseudocode: 007726B0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWallPostText.c
Window: [0x007726b0, 0x00772790) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772790
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007726b0: 83 ec 34 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 56
007726c0: 57 50 8b 44 24 44 51 52 50 e8 42 09 2b 00 83 c4
007726d0: 10 8b f0 c7 44 24 08 00 00 00 00 e8 b0 6c ff ff
007726e0: 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86 00
007726f0: 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 4f 14 d8
00772700: ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24
00772710: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00772720: 66 c7 44 24 38 0b 00 e8 94 32 d8 ff 8b 54 24 14
00772730: 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
00772740: 74 09 50 e8 98 1d d7 ff 83 c4 04 8b 07 8b 40 50
00772750: 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6 44
00772760: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d
00772770: 4c 24 20 e8 e8 2f d8 ff 8b 44 24 08 5f 5e 83 c4
00772780: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007726b0 <.text+0x3716b0>:
  7726b0:	83 ec 34                                        	sub    esp,0x34
  7726b3:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7726b7:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7726bb:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  7726bf:	56                                              	push   esi
  7726c0:	57                                              	push   edi
  7726c1:	50                                              	push   eax
  7726c2:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7726c6:	51                                              	push   ecx
  7726c7:	52                                              	push   edx
  7726c8:	50                                              	push   eax
  7726c9:	e8 42 09 2b 00                                  	call   0xa23010
  7726ce:	83 c4 10                                        	add    esp,0x10
  7726d1:	8b f0                                           	mov    esi,eax
  7726d3:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7726db:	e8 b0 6c ff ff                                  	call   0x769390
  7726e0:	8b f8                                           	mov    edi,eax
  7726e2:	85 ff                                           	test   edi,edi
  7726e4:	0f 84 8e 00 00 00                               	je     0x772778
  7726ea:	85 f6                                           	test   esi,esi
  7726ec:	0f 84 86 00 00 00                               	je     0x772778
  7726f2:	6a 00                                           	push   0x0
  7726f4:	6a ff                                           	push   0xffffffff
  7726f6:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7726fa:	56                                              	push   esi
  7726fb:	51                                              	push   ecx
  7726fc:	e8 4f 14 d8 ff                                  	call   0x4f3b50
  772701:	83 c4 10                                        	add    esp,0x10
  772704:	6a 01                                           	push   0x1
  772706:	6a 10                                           	push   0x10
  772708:	50                                              	push   eax
  772709:	6a 09                                           	push   0x9
  77270b:	6a 13                                           	push   0x13
  77270d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772711:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772719:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772720:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772727:	e8 94 32 d8 ff                                  	call   0x4f59c0
  77272c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772730:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772734:	2b d0                                           	sub    edx,eax
  772736:	83 e2 fe                                        	and    edx,0xfffffffe
  772739:	83 fa 02                                        	cmp    edx,0x2
  77273c:	7e 0d                                           	jle    0x77274b
  77273e:	85 c0                                           	test   eax,eax
  772740:	74 09                                           	je     0x77274b
  772742:	50                                              	push   eax
  772743:	e8 98 1d d7 ff                                  	call   0x4e44e0
  772748:	83 c4 04                                        	add    esp,0x4
  77274b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77274d:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772750:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772754:	51                                              	push   ecx
  772755:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  772759:	52                                              	push   edx
  77275a:	8b cf                                           	mov    ecx,edi
  77275c:	ff d0                                           	call   eax
  77275e:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  772763:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  77276b:	74 0b                                           	je     0x772778
  77276d:	6a 00                                           	push   0x0
  77276f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772773:	e8 e8 2f d8 ff                                  	call   0x4f5760
  772778:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  77277c:	5f                                              	pop    edi
  77277d:	5e                                              	pop    esi
  77277e:	83 c4 34                                        	add    esp,0x34
  772781:	c3                                              	ret
  772782:	cc                                              	int3
  772783:	cc                                              	int3
  772784:	cc                                              	int3
  772785:	cc                                              	int3
  772786:	cc                                              	int3
  772787:	cc                                              	int3
  772788:	cc                                              	int3
  772789:	cc                                              	int3
  77278a:	cc                                              	int3
  77278b:	cc                                              	int3
  77278c:	cc                                              	int3
  77278d:	cc                                              	int3
  77278e:	cc                                              	int3
  77278f:	cc                                              	int3
