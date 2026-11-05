# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007417f0 (ScriptCore.DeviceConfig::DeviceConfig_GetResolutionList)
Paired Ghidra pseudocode: 007417F0_ScriptCore_DeviceConfig_DeviceConfig_GetResolutionList.c
Window: [0x007417f0, 0x007419a0) (432 bytes; stop exclusive)
Next defined Ghidra entry: 0x007419a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007417f0: 55 8b ec 83 e4 f8 81 ec 2c 01 00 00 53 56 57 e8
00741800: 8c 7b 02 00 8b f8 89 7c 24 18 c7 44 24 0c 00 00
00741810: 00 00 e8 e9 cf e4 ff 85 c0 0f 84 73 01 00 00 8b
00741820: 70 7c 8b 80 80 00 00 00 3b f0 8d 4c 24 38 8b d1
00741830: 89 54 24 20 8d 94 24 38 01 00 00 89 4c 24 30 89
00741840: 4c 24 24 89 54 24 28 c7 44 24 2c 34 1a 00 01 89
00741850: 44 24 1c 74 55 8b 56 04 8b 1e c1 e2 10 0b 56 08
00741860: 33 ff 33 c0 0b d0 0b fb 3b 4c 24 28 89 54 24 10
00741870: 89 7c 24 14 73 14 8b c1 83 c1 08 85 c0 89 4c 24
00741880: 24 74 1a 89 10 89 78 04 eb 0f 8d 54 24 10 52 51
00741890: 8d 4c 24 28 e8 87 81 00 00 8b 4c 24 24 83 c6 10
007418a0: 3b 74 24 1c 75 af 8b 7c 24 18 3b 4c 24 28 ba 80
007418b0: 02 00 00 c7 44 24 10 00 00 e0 01 89 54 24 14 73
007418c0: 18 8b c1 83 c1 08 85 c0 89 4c 24 24 74 1e c7 00
007418d0: 00 00 e0 01 89 50 04 eb 0f 8d 44 24 10 50 51 8d
007418e0: 4c 24 28 e8 38 81 00 00 8b 4c 24 24 3b 4c 24 28
007418f0: ba 20 03 00 00 c7 44 24 10 00 00 58 02 89 54 24
00741900: 14 73 18 8b c1 83 c1 08 85 c0 89 4c 24 24 74 1e
00741910: c7 00 00 00 58 02 89 50 04 eb 0f 8d 54 24 10 52
00741920: 51 8d 4c 24 28 e8 f6 80 00 00 8b 4c 24 24 8b 44
00741930: 24 20 51 50 e8 47 fe ff ff 8b 44 24 2c 2b 44 24
00741940: 28 8b 17 8b 92 88 00 00 00 83 c4 08 c1 f8 03 50
00741950: 8d 4c 24 10 51 8b cf ff d2 8b 44 24 20 8b 4c 24
00741960: 24 8b 17 8b 92 a0 00 00 00 2b c8 c1 f9 03 51 6a
00741970: 00 50 8d 44 24 18 50 8b cf ff d2 8b 44 24 20 85
00741980: c0 74 0f 3b 44 24 30 74 09 50 e8 51 2b da ff 83
00741990: c4 04 8b 44 24 0c 5f 5e 5b 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
007417f0 <.text+0x3407f0>:
  7417f0:	55                                              	push   ebp
  7417f1:	8b ec                                           	mov    ebp,esp
  7417f3:	83 e4 f8                                        	and    esp,0xfffffff8
  7417f6:	81 ec 2c 01 00 00                               	sub    esp,0x12c
  7417fc:	53                                              	push   ebx
  7417fd:	56                                              	push   esi
  7417fe:	57                                              	push   edi
  7417ff:	e8 8c 7b 02 00                                  	call   0x769390
  741804:	8b f8                                           	mov    edi,eax
  741806:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  74180a:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  741812:	e8 e9 cf e4 ff                                  	call   0x58e800
  741817:	85 c0                                           	test   eax,eax
  741819:	0f 84 73 01 00 00                               	je     0x741992
  74181f:	8b 70 7c                                        	mov    esi,DWORD PTR [eax+0x7c]
  741822:	8b 80 80 00 00 00                               	mov    eax,DWORD PTR [eax+0x80]
  741828:	3b f0                                           	cmp    esi,eax
  74182a:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  74182e:	8b d1                                           	mov    edx,ecx
  741830:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  741834:	8d 94 24 38 01 00 00                            	lea    edx,[esp+0x138]
  74183b:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  74183f:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  741843:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  741847:	c7 44 24 2c 34 1a 00 01                         	mov    DWORD PTR [esp+0x2c],0x1001a34
  74184f:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  741853:	74 55                                           	je     0x7418aa
  741855:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  741858:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
  74185a:	c1 e2 10                                        	shl    edx,0x10
  74185d:	0b 56 08                                        	or     edx,DWORD PTR [esi+0x8]
  741860:	33 ff                                           	xor    edi,edi
  741862:	33 c0                                           	xor    eax,eax
  741864:	0b d0                                           	or     edx,eax
  741866:	0b fb                                           	or     edi,ebx
  741868:	3b 4c 24 28                                     	cmp    ecx,DWORD PTR [esp+0x28]
  74186c:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  741870:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  741874:	73 14                                           	jae    0x74188a
  741876:	8b c1                                           	mov    eax,ecx
  741878:	83 c1 08                                        	add    ecx,0x8
  74187b:	85 c0                                           	test   eax,eax
  74187d:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  741881:	74 1a                                           	je     0x74189d
  741883:	89 10                                           	mov    DWORD PTR [eax],edx
  741885:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
  741888:	eb 0f                                           	jmp    0x741899
  74188a:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  74188e:	52                                              	push   edx
  74188f:	51                                              	push   ecx
  741890:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  741894:	e8 87 81 00 00                                  	call   0x749a20
  741899:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  74189d:	83 c6 10                                        	add    esi,0x10
  7418a0:	3b 74 24 1c                                     	cmp    esi,DWORD PTR [esp+0x1c]
  7418a4:	75 af                                           	jne    0x741855
  7418a6:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  7418aa:	3b 4c 24 28                                     	cmp    ecx,DWORD PTR [esp+0x28]
  7418ae:	ba 80 02 00 00                                  	mov    edx,0x280
  7418b3:	c7 44 24 10 00 00 e0 01                         	mov    DWORD PTR [esp+0x10],0x1e00000
  7418bb:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  7418bf:	73 18                                           	jae    0x7418d9
  7418c1:	8b c1                                           	mov    eax,ecx
  7418c3:	83 c1 08                                        	add    ecx,0x8
  7418c6:	85 c0                                           	test   eax,eax
  7418c8:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  7418cc:	74 1e                                           	je     0x7418ec
  7418ce:	c7 00 00 00 e0 01                               	mov    DWORD PTR [eax],0x1e00000
  7418d4:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  7418d7:	eb 0f                                           	jmp    0x7418e8
  7418d9:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  7418dd:	50                                              	push   eax
  7418de:	51                                              	push   ecx
  7418df:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  7418e3:	e8 38 81 00 00                                  	call   0x749a20
  7418e8:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  7418ec:	3b 4c 24 28                                     	cmp    ecx,DWORD PTR [esp+0x28]
  7418f0:	ba 20 03 00 00                                  	mov    edx,0x320
  7418f5:	c7 44 24 10 00 00 58 02                         	mov    DWORD PTR [esp+0x10],0x2580000
  7418fd:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  741901:	73 18                                           	jae    0x74191b
  741903:	8b c1                                           	mov    eax,ecx
  741905:	83 c1 08                                        	add    ecx,0x8
  741908:	85 c0                                           	test   eax,eax
  74190a:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  74190e:	74 1e                                           	je     0x74192e
  741910:	c7 00 00 00 58 02                               	mov    DWORD PTR [eax],0x2580000
  741916:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  741919:	eb 0f                                           	jmp    0x74192a
  74191b:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  74191f:	52                                              	push   edx
  741920:	51                                              	push   ecx
  741921:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  741925:	e8 f6 80 00 00                                  	call   0x749a20
  74192a:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  74192e:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  741932:	51                                              	push   ecx
  741933:	50                                              	push   eax
  741934:	e8 47 fe ff ff                                  	call   0x741780
  741939:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  74193d:	2b 44 24 28                                     	sub    eax,DWORD PTR [esp+0x28]
  741941:	8b 17                                           	mov    edx,DWORD PTR [edi]
  741943:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
  741949:	83 c4 08                                        	add    esp,0x8
  74194c:	c1 f8 03                                        	sar    eax,0x3
  74194f:	50                                              	push   eax
  741950:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  741954:	51                                              	push   ecx
  741955:	8b cf                                           	mov    ecx,edi
  741957:	ff d2                                           	call   edx
  741959:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  74195d:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  741961:	8b 17                                           	mov    edx,DWORD PTR [edi]
  741963:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
  741969:	2b c8                                           	sub    ecx,eax
  74196b:	c1 f9 03                                        	sar    ecx,0x3
  74196e:	51                                              	push   ecx
  74196f:	6a 00                                           	push   0x0
  741971:	50                                              	push   eax
  741972:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  741976:	50                                              	push   eax
  741977:	8b cf                                           	mov    ecx,edi
  741979:	ff d2                                           	call   edx
  74197b:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  74197f:	85 c0                                           	test   eax,eax
  741981:	74 0f                                           	je     0x741992
  741983:	3b 44 24 30                                     	cmp    eax,DWORD PTR [esp+0x30]
  741987:	74 09                                           	je     0x741992
  741989:	50                                              	push   eax
  74198a:	e8 51 2b da ff                                  	call   0x4e44e0
  74198f:	83 c4 04                                        	add    esp,0x4
  741992:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  741996:	5f                                              	pop    edi
  741997:	5e                                              	pop    esi
  741998:	5b                                              	pop    ebx
  741999:	8b e5                                           	mov    esp,ebp
  74199b:	5d                                              	pop    ebp
  74199c:	c3                                              	ret
  74199d:	cc                                              	int3
  74199e:	cc                                              	int3
  74199f:	cc                                              	int3
