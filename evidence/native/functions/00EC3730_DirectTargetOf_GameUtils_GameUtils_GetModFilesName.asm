# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec3730 (DirectTargetOf_GameUtils_GameUtils_GetModFilesName)
Paired Ghidra pseudocode: 00EC3730_DirectTargetOf_GameUtils_GameUtils_GetModFilesName.c
Window: [0x00ec3730, 0x00ec3860) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec3860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec3730: 83 ec 44 56 57 e8 56 5c 8a ff 6a 01 6a 10 8b f8
00ec3740: 8d 44 24 24 50 6a 09 be 54 8e 1c 01 6a 13 8d 4c
00ec3750: 24 40 c7 44 24 3c f0 3b 00 01 89 74 24 30 89 74
00ec3760: 24 34 c7 44 24 38 56 8e 1c 01 c7 44 24 40 f4 a6
00ec3770: fb 00 66 c7 44 24 48 00 00 66 c7 44 24 4a 00 00
00ec3780: e8 3b 22 63 ff 8b 54 24 50 8d 4c 24 0c 51 52 b9
00ec3790: e0 ed 1c 01 c7 44 24 20 3c 34 0f 01 89 74 24 14
00ec37a0: 89 74 24 18 c7 44 24 1c 56 8e 1c 01 e8 3f 25 6d
00ec37b0: ff 84 c0 74 28 f6 44 24 34 04 74 0b 6a 01 8d 4c
00ec37c0: 24 30 e8 99 1f 63 ff 6a 01 6a 10 8d 44 24 14 50
00ec37d0: 6a 09 6a 13 8d 4c 24 40 e8 e3 21 63 ff 8d 44 24
00ec37e0: 08 c7 44 24 08 00 00 00 00 8b 17 8b 52 50 50 8d
00ec37f0: 4c 24 30 51 8b cf ff d2 8b 4c 24 14 8b 44 24 0c
00ec3800: 8b 74 24 08 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0
00ec3810: 74 09 50 e8 c8 0c 62 ff 83 c4 04 f6 44 24 34 04
00ec3820: c7 44 24 2c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 30
00ec3830: e8 2b 1f 63 ff 8b 54 24 24 8b 44 24 1c 2b d0 83
00ec3840: e2 fe 83 fa 02 7e 0d 85 c0 74 09 50 e8 8f 0c 62
00ec3850: ff 83 c4 04 5f 8b c6 5e 83 c4 44 c3 cc cc cc cc

LINEAR DISASSEMBLY
00ec3730 <.text+0xac2730>:
  ec3730:	83 ec 44                                        	sub    esp,0x44
  ec3733:	56                                              	push   esi
  ec3734:	57                                              	push   edi
  ec3735:	e8 56 5c 8a ff                                  	call   0x769390
  ec373a:	6a 01                                           	push   0x1
  ec373c:	6a 10                                           	push   0x10
  ec373e:	8b f8                                           	mov    edi,eax
  ec3740:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  ec3744:	50                                              	push   eax
  ec3745:	6a 09                                           	push   0x9
  ec3747:	be 54 8e 1c 01                                  	mov    esi,0x11c8e54
  ec374c:	6a 13                                           	push   0x13
  ec374e:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  ec3752:	c7 44 24 3c f0 3b 00 01                         	mov    DWORD PTR [esp+0x3c],0x1003bf0
  ec375a:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  ec375e:	89 74 24 34                                     	mov    DWORD PTR [esp+0x34],esi
  ec3762:	c7 44 24 38 56 8e 1c 01                         	mov    DWORD PTR [esp+0x38],0x11c8e56
  ec376a:	c7 44 24 40 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x40],0xfba6f4
  ec3772:	66 c7 44 24 48 00 00                            	mov    WORD PTR [esp+0x48],0x0
  ec3779:	66 c7 44 24 4a 00 00                            	mov    WORD PTR [esp+0x4a],0x0
  ec3780:	e8 3b 22 63 ff                                  	call   0x4f59c0
  ec3785:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
  ec3789:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  ec378d:	51                                              	push   ecx
  ec378e:	52                                              	push   edx
  ec378f:	b9 e0 ed 1c 01                                  	mov    ecx,0x11cede0
  ec3794:	c7 44 24 20 3c 34 0f 01                         	mov    DWORD PTR [esp+0x20],0x10f343c
  ec379c:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  ec37a0:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  ec37a4:	c7 44 24 1c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x1c],0x11c8e56
  ec37ac:	e8 3f 25 6d ff                                  	call   0x595cf0
  ec37b1:	84 c0                                           	test   al,al
  ec37b3:	74 28                                           	je     0xec37dd
  ec37b5:	f6 44 24 34 04                                  	test   BYTE PTR [esp+0x34],0x4
  ec37ba:	74 0b                                           	je     0xec37c7
  ec37bc:	6a 01                                           	push   0x1
  ec37be:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  ec37c2:	e8 99 1f 63 ff                                  	call   0x4f5760
  ec37c7:	6a 01                                           	push   0x1
  ec37c9:	6a 10                                           	push   0x10
  ec37cb:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ec37cf:	50                                              	push   eax
  ec37d0:	6a 09                                           	push   0x9
  ec37d2:	6a 13                                           	push   0x13
  ec37d4:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  ec37d8:	e8 e3 21 63 ff                                  	call   0x4f59c0
  ec37dd:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  ec37e1:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  ec37e9:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec37eb:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ec37ee:	50                                              	push   eax
  ec37ef:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  ec37f3:	51                                              	push   ecx
  ec37f4:	8b cf                                           	mov    ecx,edi
  ec37f6:	ff d2                                           	call   edx
  ec37f8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ec37fc:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ec3800:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  ec3804:	2b c8                                           	sub    ecx,eax
  ec3806:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec3809:	83 f9 02                                        	cmp    ecx,0x2
  ec380c:	7e 0d                                           	jle    0xec381b
  ec380e:	85 c0                                           	test   eax,eax
  ec3810:	74 09                                           	je     0xec381b
  ec3812:	50                                              	push   eax
  ec3813:	e8 c8 0c 62 ff                                  	call   0x4e44e0
  ec3818:	83 c4 04                                        	add    esp,0x4
  ec381b:	f6 44 24 34 04                                  	test   BYTE PTR [esp+0x34],0x4
  ec3820:	c7 44 24 2c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x2c],0xfba6f4
  ec3828:	74 0b                                           	je     0xec3835
  ec382a:	6a 00                                           	push   0x0
  ec382c:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  ec3830:	e8 2b 1f 63 ff                                  	call   0x4f5760
  ec3835:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  ec3839:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  ec383d:	2b d0                                           	sub    edx,eax
  ec383f:	83 e2 fe                                        	and    edx,0xfffffffe
  ec3842:	83 fa 02                                        	cmp    edx,0x2
  ec3845:	7e 0d                                           	jle    0xec3854
  ec3847:	85 c0                                           	test   eax,eax
  ec3849:	74 09                                           	je     0xec3854
  ec384b:	50                                              	push   eax
  ec384c:	e8 8f 0c 62 ff                                  	call   0x4e44e0
  ec3851:	83 c4 04                                        	add    esp,0x4
  ec3854:	5f                                              	pop    edi
  ec3855:	8b c6                                           	mov    eax,esi
  ec3857:	5e                                              	pop    esi
  ec3858:	83 c4 44                                        	add    esp,0x44
  ec385b:	c3                                              	ret
  ec385c:	cc                                              	int3
  ec385d:	cc                                              	int3
  ec385e:	cc                                              	int3
  ec385f:	cc                                              	int3
