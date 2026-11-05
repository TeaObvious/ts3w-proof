# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d84790 (ScriptCore.TaskControl::TaskControl_SetTaskContext)
Paired Ghidra pseudocode: 00D84790_ScriptCore_TaskControl_TaskControl_SetTaskContext.c
Window: [0x00d84790, 0x00d84e80) (1776 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d84e80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d84790: 81 ec c8 00 00 00 53 55 56 e8 f2 4b 9e ff 33 db
00d847a0: 3b c3 74 05 8d 68 f8 eb 02 33 ed 8b 45 08 8b 90
00d847b0: 18 01 00 00 8d 75 08 8b ce 89 6c 24 20 ff d2 39
00d847c0: 84 24 d8 00 00 00 75 15 39 94 24 dc 00 00 00 75
00d847d0: 0c 5e 5d 32 c0 5b 81 c4 c8 00 00 00 c3 8b 84 24
00d847e0: e0 00 00 00 8b 40 10 57 33 ff 3b c3 89 7c 24 10
00d847f0: 74 37 8b c8 81 e1 00 00 00 ff 81 f9 00 00 00 43
00d84800: 0f 85 42 06 00 00 8b 16 50 8b 82 cc 00 00 00 8b
00d84810: ce ff d0 50 8d 4c 24 14 e8 e3 44 b4 ff 8b 7c 24
00d84820: 10 3b fb 0f 84 1f 06 00 00 8b 8c 24 e0 00 00 00
00d84830: 8b 94 24 dc 00 00 00 6a 01 51 52 8b cd e8 7e 18
00d84840: ff ff 8b f0 3b f3 89 74 24 1c 75 1e 3b fb 0f 84
00d84850: f4 05 00 00 8b 07 8b 50 04 8b cf ff d2 5f 5e 5d
00d84860: 32 c0 5b 81 c4 c8 00 00 00 c3 e8 e1 0c 0f 00 56
00d84870: 89 44 24 34 e8 b7 d4 fe ff 8b 84 24 e8 00 00 00
00d84880: 8b 48 04 8b 41 08 83 c0 ff 83 c4 04 3b c3 89 86
00d84890: 40 01 00 00 89 5c 24 20 0f 8c b0 03 00 00 83 c6
00d848a0: 3c 89 5c 24 28 89 74 24 2c 8d a4 24 00 00 00 00
00d848b0: 8b 6c 24 2c 8b 94 24 e4 00 00 00 8b 75 00 8b 42
00d848c0: 04 8b 4c 24 28 33 db 3b f3 8d 7c 01 10 75 1a 8b
00d848d0: 4c 24 24 e8 88 cd fe ff 6a 2c 8b f0 53 56 89 75
00d848e0: 00 e8 b2 a9 1f 00 83 c4 0c 8b 54 24 30 89 5e 24
00d848f0: 89 5e 20 89 5e 28 8b 07 50 52 89 46 04 e8 7e e5
00d84900: 0c 00 89 06 8b 4f 08 89 4e 08 8b 57 0c 89 56 0c
00d84910: 8b 4f 10 89 4e 10 8b 57 14 89 56 18 8b 4f 18 89
00d84920: 4e 1c 8b 57 1c 89 56 28 89 5e 14 0f b7 40 38 50
00d84930: 89 46 24 8b 44 24 28 50 e8 83 d1 fe ff 8b 4e 24
00d84940: 51 53 50 89 46 20 e8 4d a9 1f 00 83 c4 1c 39 5c
00d84950: 24 20 74 1d 8b 45 fc 8b 08 0f b7 69 3e 0f b7 49
00d84960: 34 8b 50 20 03 e9 03 68 10 8b 46 18 03 ea 89 2c
00d84970: 02 8b 0e 8b 41 30 3b c3 8d 54 24 58 8b ca 8b ea
00d84980: 89 54 24 54 8d 94 24 d8 00 00 00 89 4c 24 48 89
00d84990: 6c 24 44 89 54 24 4c c7 44 24 50 10 d6 08 01 74
00d849a0: 43 80 38 00 74 2e 50 8d 44 24 44 50 e8 cf f7 ff
00d849b0: ff 8b 4c 24 48 83 c4 08 3b 4e 08 73 11 80 38 00
00d849c0: 75 e4 8b 6c 24 44 8b cd 89 4c 24 48 eb 16 74 0c
00d849d0: 8b 6c 24 44 8b cd 89 4c 24 48 eb 08 8b 4c 24 48
00d849e0: 8b 6c 24 44 8b 54 24 20 8b 44 24 1c 3b 90 40 01
00d849f0: 00 00 75 2b 8b 94 24 e4 00 00 00 8b 02 3b c3 74
00d84a00: 1e 50 8d 44 24 44 50 e8 34 f6 ff ff 83 c4 08 84
00d84a10: c0 0f 84 77 03 00 00 8b 4c 24 48 8b 6c 24 44 2b
00d84a20: cd c1 f9 03 3b 4e 0c 89 4c 24 14 0f 85 6e 03 00
00d84a30: 00 8b 7f 24 3b fb 89 7c 24 18 74 05 8b 7f 08 eb
00d84a40: 02 33 ff 3b f9 0f 85 87 03 00 00 3b cb 0f 84 bb
00d84a50: 01 00 00 8b 0e 0f b7 41 3e 8b 56 20 0f b7 49 34
00d84a60: 8b 76 10 2b f1 2b f0 8d 3c 01 89 74 24 3c 33 f6
00d84a70: 03 fa 39 74 24 14 8d 1c 10 89 7c 24 38 89 74 24
00d84a80: 34 0f 86 87 01 00 00 8b 4c 24 18 83 c1 10 89 4c
00d84a90: 24 18 0f b6 44 f5 00 83 f8 06 8b 54 24 18 8b 3a
00d84aa0: 0f 87 80 03 00 00 ff 24 85 58 4e d8 00 85 ff 0f
00d84ab0: 84 4c 03 00 00 57 e8 75 ce 11 00 83 c4 04 8b e8
00d84ac0: e8 1b 0f 0f 00 3b e8 0f 85 34 03 00 00 57 e8 6d
00d84ad0: ce 11 00 8b 00 83 c4 04 e9 16 01 00 00 85 ff 0f
00d84ae0: 84 1c 03 00 00 57 e8 45 ce 11 00 83 c4 04 8b e8
00d84af0: e8 1b 0f 0f 00 3b e8 0f 85 04 03 00 00 57 e8 3d
00d84b00: ce 11 00 8b 08 89 0b 8b 50 04 83 c4 04 89 53 04
00d84b10: e9 e0 00 00 00 85 ff 0f 84 e4 02 00 00 57 e8 0d
00d84b20: ce 11 00 83 c4 04 8b e8 e8 13 0f 0f 00 3b e8 0f
00d84b30: 85 cc 02 00 00 57 e8 05 ce 11 00 dd 00 dd 1b 83
00d84b40: c4 04 e9 ae 00 00 00 89 3b e9 a7 00 00 00 85 ff
00d84b50: 8b 6c f5 04 0f 84 a7 02 00 00 57 e8 d0 cd 11 00
00d84b60: 83 c4 04 3b c5 0f 85 96 02 00 00 6a 00 55 e8 1d
00d84b70: ad 0e 00 8b 4c 24 3c 8b e8 8b 44 24 40 8d 55 07
00d84b80: 83 e2 f8 03 c1 03 ca 83 c4 08 3b 4c 24 3c 89 4c
00d84b90: 24 34 0f 87 69 02 00 00 57 89 03 e8 a0 cd 11 00
00d84ba0: 55 50 8b 03 50 e8 dc a6 1f 00 83 c4 10 eb 46 85
00d84bb0: ff 0f 84 4a 02 00 00 57 e8 73 cd 11 00 83 c4 04
00d84bc0: 3b 05 a8 1e 22 01 0f 85 35 02 00 00 57 e8 6e cd
00d84bd0: 11 00 8b 08 83 c4 04 33 c0 85 c9 74 16 51 8b 4c
00d84be0: 24 34 51 e8 98 e2 0c 00 83 c4 08 85 c0 0f 84 0e
00d84bf0: 02 00 00 89 03 83 44 24 18 04 8b 6c 24 44 83 c6
00d84c00: 01 83 c3 08 3b 74 24 14 0f 82 84 fe ff ff 85 ed
00d84c10: 74 0f 3b 6c 24 54 74 09 55 e8 c2 f8 75 ff 83 c4
00d84c20: 04 8b 44 24 20 8b 54 24 1c 83 44 24 2c 04 83 44
00d84c30: 24 28 28 83 c0 01 3b 82 40 01 00 00 89 44 24 20
00d84c40: 0f 8e 6a fc ff ff 8b 6c 24 24 33 db 8b f2 8b 86
00d84c50: 44 01 00 00 3b 86 40 01 00 00 7e 35 8d 64 24 00
00d84c60: 8b be 44 01 00 00 8d 4f ff 89 8e 44 01 00 00 8b
00d84c70: 44 be 3c 3b c3 74 0c 50 8b cd e8 f1 c9 fe ff 89
00d84c80: 5c be 3c 8b 96 44 01 00 00 3b 96 40 01 00 00 7f
00d84c90: cf 8b 7e 3c 8b 47 04 89 06 8b 4f 28 89 4e 04 c6
00d84ca0: 86 4a 01 00 00 00 8b 57 04 52 e8 81 06 10 00 89
00d84cb0: 46 24 8b 40 0c 50 e8 85 c3 0e 00 8b 8c 24 ec 00
00d84cc0: 00 00 89 46 28 89 5e 18 89 5e 1c 89 5e 20 89 5e
00d84cd0: 34 89 5e 2c 89 5e 38 c6 86 4b 01 00 00 00 89 9e
00d84ce0: 4c 01 00 00 8b 01 83 c4 08 3b c3 74 14 8b 54 24
00d84cf0: 30 50 52 e8 88 e1 0c 00 83 c4 08 89 86 4c 01 00
00d84d00: 00 39 5e 30 75 2c e8 b5 cc fe ff 89 46 30 33 c9
00d84d10: 89 08 89 48 04 89 48 08 89 48 0c 89 48 10 89 48
00d84d20: 14 89 48 18 89 48 1c 89 48 20 89 48 24 8b 0f 89
00d84d30: 48 04 8b 94 24 e4 00 00 00 83 7a 08 fd c6 44 24
00d84d40: 14 00 75 05 c6 44 24 14 01 8b 44 24 14 8b 74 24
00d84d50: 10 50 8b c2 8b 48 0c 8b 50 08 8b 84 24 e4 00 00
00d84d60: 00 56 51 8b 8c 24 e8 00 00 00 52 50 51 8b cd e8
00d84d70: 5c 31 ff ff 3b f3 74 09 8b 16 8b 42 04 8b ce ff
00d84d80: d0 5f 5e 5d b0 01 5b 81 c4 c8 00 00 00 c3 8b 44
00d84d90: 24 44 3b c3 74 4f 3b 44 24 54 74 49 50 eb 3e 3b
00d84da0: eb 74 0f 3b 6c 24 54 74 09 55 e8 31 f7 75 ff 83
00d84db0: c4 04 8b 4c 24 10 3b cb 0f 84 8a 00 00 00 8b 01
00d84dc0: 8b 50 04 ff d2 5f 5e 5d 32 c0 5b 81 c4 c8 00 00
00d84dd0: 00 c3 3b eb 74 0f 3b 6c 24 54 74 09 55 e8 fe f6
00d84de0: 75 ff 83 c4 04 8b 4c 24 10 3b cb 74 5b 8b 01 8b
00d84df0: 50 04 ff d2 5f 5e 5d 32 c0 5b 81 c4 c8 00 00 00
00d84e00: c3 8d 4c 24 40 e8 26 f0 ff ff 8b 4c 24 10 85 c9
00d84e10: 74 36 8b 01 8b 50 04 ff d2 5f 5e 5d 32 c0 5b 81
00d84e20: c4 c8 00 00 00 c3 85 ed 74 0f 3b 6c 24 54 74 09
00d84e30: 55 e8 aa f6 75 ff 83 c4 04 8b 4c 24 10 85 c9 74
00d84e40: 07 8b 01 8b 50 04 ff d2 5f 5e 5d 32 c0 5b 81 c4
00d84e50: c8 00 00 00 c3 8d 49 00 ad 4a d8 00 dd 4a d8 00
00d84e60: 15 4b d8 00 47 4b d8 00 4e 4b d8 00 01 4e d8 00
00d84e70: af 4b d8 00 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d84790 <.text+0x983790>:
  d84790:	81 ec c8 00 00 00                               	sub    esp,0xc8
  d84796:	53                                              	push   ebx
  d84797:	55                                              	push   ebp
  d84798:	56                                              	push   esi
  d84799:	e8 f2 4b 9e ff                                  	call   0x769390
  d8479e:	33 db                                           	xor    ebx,ebx
  d847a0:	3b c3                                           	cmp    eax,ebx
  d847a2:	74 05                                           	je     0xd847a9
  d847a4:	8d 68 f8                                        	lea    ebp,[eax-0x8]
  d847a7:	eb 02                                           	jmp    0xd847ab
  d847a9:	33 ed                                           	xor    ebp,ebp
  d847ab:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  d847ae:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  d847b4:	8d 75 08                                        	lea    esi,[ebp+0x8]
  d847b7:	8b ce                                           	mov    ecx,esi
  d847b9:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
  d847bd:	ff d2                                           	call   edx
  d847bf:	39 84 24 d8 00 00 00                            	cmp    DWORD PTR [esp+0xd8],eax
  d847c6:	75 15                                           	jne    0xd847dd
  d847c8:	39 94 24 dc 00 00 00                            	cmp    DWORD PTR [esp+0xdc],edx
  d847cf:	75 0c                                           	jne    0xd847dd
  d847d1:	5e                                              	pop    esi
  d847d2:	5d                                              	pop    ebp
  d847d3:	32 c0                                           	xor    al,al
  d847d5:	5b                                              	pop    ebx
  d847d6:	81 c4 c8 00 00 00                               	add    esp,0xc8
  d847dc:	c3                                              	ret
  d847dd:	8b 84 24 e0 00 00 00                            	mov    eax,DWORD PTR [esp+0xe0]
  d847e4:	8b 40 10                                        	mov    eax,DWORD PTR [eax+0x10]
  d847e7:	57                                              	push   edi
  d847e8:	33 ff                                           	xor    edi,edi
  d847ea:	3b c3                                           	cmp    eax,ebx
  d847ec:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  d847f0:	74 37                                           	je     0xd84829
  d847f2:	8b c8                                           	mov    ecx,eax
  d847f4:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  d847fa:	81 f9 00 00 00 43                               	cmp    ecx,0x43000000
  d84800:	0f 85 42 06 00 00                               	jne    0xd84e48
  d84806:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d84808:	50                                              	push   eax
  d84809:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  d8480f:	8b ce                                           	mov    ecx,esi
  d84811:	ff d0                                           	call   eax
  d84813:	50                                              	push   eax
  d84814:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  d84818:	e8 e3 44 b4 ff                                  	call   0x8c8d00
  d8481d:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  d84821:	3b fb                                           	cmp    edi,ebx
  d84823:	0f 84 1f 06 00 00                               	je     0xd84e48
  d84829:	8b 8c 24 e0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xe0]
  d84830:	8b 94 24 dc 00 00 00                            	mov    edx,DWORD PTR [esp+0xdc]
  d84837:	6a 01                                           	push   0x1
  d84839:	51                                              	push   ecx
  d8483a:	52                                              	push   edx
  d8483b:	8b cd                                           	mov    ecx,ebp
  d8483d:	e8 7e 18 ff ff                                  	call   0xd760c0
  d84842:	8b f0                                           	mov    esi,eax
  d84844:	3b f3                                           	cmp    esi,ebx
  d84846:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  d8484a:	75 1e                                           	jne    0xd8486a
  d8484c:	3b fb                                           	cmp    edi,ebx
  d8484e:	0f 84 f4 05 00 00                               	je     0xd84e48
  d84854:	8b 07                                           	mov    eax,DWORD PTR [edi]
  d84856:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d84859:	8b cf                                           	mov    ecx,edi
  d8485b:	ff d2                                           	call   edx
  d8485d:	5f                                              	pop    edi
  d8485e:	5e                                              	pop    esi
  d8485f:	5d                                              	pop    ebp
  d84860:	32 c0                                           	xor    al,al
  d84862:	5b                                              	pop    ebx
  d84863:	81 c4 c8 00 00 00                               	add    esp,0xc8
  d84869:	c3                                              	ret
  d8486a:	e8 e1 0c 0f 00                                  	call   0xe75550
  d8486f:	56                                              	push   esi
  d84870:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  d84874:	e8 b7 d4 fe ff                                  	call   0xd71d30
  d84879:	8b 84 24 e8 00 00 00                            	mov    eax,DWORD PTR [esp+0xe8]
  d84880:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d84883:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  d84886:	83 c0 ff                                        	add    eax,0xffffffff
  d84889:	83 c4 04                                        	add    esp,0x4
  d8488c:	3b c3                                           	cmp    eax,ebx
  d8488e:	89 86 40 01 00 00                               	mov    DWORD PTR [esi+0x140],eax
  d84894:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  d84898:	0f 8c b0 03 00 00                               	jl     0xd84c4e
  d8489e:	83 c6 3c                                        	add    esi,0x3c
  d848a1:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  d848a5:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  d848a9:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  d848b0:	8b 6c 24 2c                                     	mov    ebp,DWORD PTR [esp+0x2c]
  d848b4:	8b 94 24 e4 00 00 00                            	mov    edx,DWORD PTR [esp+0xe4]
  d848bb:	8b 75 00                                        	mov    esi,DWORD PTR [ebp+0x0]
  d848be:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d848c1:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  d848c5:	33 db                                           	xor    ebx,ebx
  d848c7:	3b f3                                           	cmp    esi,ebx
  d848c9:	8d 7c 01 10                                     	lea    edi,[ecx+eax*1+0x10]
  d848cd:	75 1a                                           	jne    0xd848e9
  d848cf:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  d848d3:	e8 88 cd fe ff                                  	call   0xd71660
  d848d8:	6a 2c                                           	push   0x2c
  d848da:	8b f0                                           	mov    esi,eax
  d848dc:	53                                              	push   ebx
  d848dd:	56                                              	push   esi
  d848de:	89 75 00                                        	mov    DWORD PTR [ebp+0x0],esi
  d848e1:	e8 b2 a9 1f 00                                  	call   0xf7f298
  d848e6:	83 c4 0c                                        	add    esp,0xc
  d848e9:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  d848ed:	89 5e 24                                        	mov    DWORD PTR [esi+0x24],ebx
  d848f0:	89 5e 20                                        	mov    DWORD PTR [esi+0x20],ebx
  d848f3:	89 5e 28                                        	mov    DWORD PTR [esi+0x28],ebx
  d848f6:	8b 07                                           	mov    eax,DWORD PTR [edi]
  d848f8:	50                                              	push   eax
  d848f9:	52                                              	push   edx
  d848fa:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  d848fd:	e8 7e e5 0c 00                                  	call   0xe52e80
  d84902:	89 06                                           	mov    DWORD PTR [esi],eax
  d84904:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
  d84907:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  d8490a:	8b 57 0c                                        	mov    edx,DWORD PTR [edi+0xc]
  d8490d:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  d84910:	8b 4f 10                                        	mov    ecx,DWORD PTR [edi+0x10]
  d84913:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
  d84916:	8b 57 14                                        	mov    edx,DWORD PTR [edi+0x14]
  d84919:	89 56 18                                        	mov    DWORD PTR [esi+0x18],edx
  d8491c:	8b 4f 18                                        	mov    ecx,DWORD PTR [edi+0x18]
  d8491f:	89 4e 1c                                        	mov    DWORD PTR [esi+0x1c],ecx
  d84922:	8b 57 1c                                        	mov    edx,DWORD PTR [edi+0x1c]
  d84925:	89 56 28                                        	mov    DWORD PTR [esi+0x28],edx
  d84928:	89 5e 14                                        	mov    DWORD PTR [esi+0x14],ebx
  d8492b:	0f b7 40 38                                     	movzx  eax,WORD PTR [eax+0x38]
  d8492f:	50                                              	push   eax
  d84930:	89 46 24                                        	mov    DWORD PTR [esi+0x24],eax
  d84933:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  d84937:	50                                              	push   eax
  d84938:	e8 83 d1 fe ff                                  	call   0xd71ac0
  d8493d:	8b 4e 24                                        	mov    ecx,DWORD PTR [esi+0x24]
  d84940:	51                                              	push   ecx
  d84941:	53                                              	push   ebx
  d84942:	50                                              	push   eax
  d84943:	89 46 20                                        	mov    DWORD PTR [esi+0x20],eax
  d84946:	e8 4d a9 1f 00                                  	call   0xf7f298
  d8494b:	83 c4 1c                                        	add    esp,0x1c
  d8494e:	39 5c 24 20                                     	cmp    DWORD PTR [esp+0x20],ebx
  d84952:	74 1d                                           	je     0xd84971
  d84954:	8b 45 fc                                        	mov    eax,DWORD PTR [ebp-0x4]
  d84957:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  d84959:	0f b7 69 3e                                     	movzx  ebp,WORD PTR [ecx+0x3e]
  d8495d:	0f b7 49 34                                     	movzx  ecx,WORD PTR [ecx+0x34]
  d84961:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d84964:	03 e9                                           	add    ebp,ecx
  d84966:	03 68 10                                        	add    ebp,DWORD PTR [eax+0x10]
  d84969:	8b 46 18                                        	mov    eax,DWORD PTR [esi+0x18]
  d8496c:	03 ea                                           	add    ebp,edx
  d8496e:	89 2c 02                                        	mov    DWORD PTR [edx+eax*1],ebp
  d84971:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d84973:	8b 41 30                                        	mov    eax,DWORD PTR [ecx+0x30]
  d84976:	3b c3                                           	cmp    eax,ebx
  d84978:	8d 54 24 58                                     	lea    edx,[esp+0x58]
  d8497c:	8b ca                                           	mov    ecx,edx
  d8497e:	8b ea                                           	mov    ebp,edx
  d84980:	89 54 24 54                                     	mov    DWORD PTR [esp+0x54],edx
  d84984:	8d 94 24 d8 00 00 00                            	lea    edx,[esp+0xd8]
  d8498b:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
  d8498f:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
  d84993:	89 54 24 4c                                     	mov    DWORD PTR [esp+0x4c],edx
  d84997:	c7 44 24 50 10 d6 08 01                         	mov    DWORD PTR [esp+0x50],0x108d610
  d8499f:	74 43                                           	je     0xd849e4
  d849a1:	80 38 00                                        	cmp    BYTE PTR [eax],0x0
  d849a4:	74 2e                                           	je     0xd849d4
  d849a6:	50                                              	push   eax
  d849a7:	8d 44 24 44                                     	lea    eax,[esp+0x44]
  d849ab:	50                                              	push   eax
  d849ac:	e8 cf f7 ff ff                                  	call   0xd84180
  d849b1:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  d849b5:	83 c4 08                                        	add    esp,0x8
  d849b8:	3b 4e 08                                        	cmp    ecx,DWORD PTR [esi+0x8]
  d849bb:	73 11                                           	jae    0xd849ce
  d849bd:	80 38 00                                        	cmp    BYTE PTR [eax],0x0
  d849c0:	75 e4                                           	jne    0xd849a6
  d849c2:	8b 6c 24 44                                     	mov    ebp,DWORD PTR [esp+0x44]
  d849c6:	8b cd                                           	mov    ecx,ebp
  d849c8:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
  d849cc:	eb 16                                           	jmp    0xd849e4
  d849ce:	74 0c                                           	je     0xd849dc
  d849d0:	8b 6c 24 44                                     	mov    ebp,DWORD PTR [esp+0x44]
  d849d4:	8b cd                                           	mov    ecx,ebp
  d849d6:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
  d849da:	eb 08                                           	jmp    0xd849e4
  d849dc:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  d849e0:	8b 6c 24 44                                     	mov    ebp,DWORD PTR [esp+0x44]
  d849e4:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  d849e8:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  d849ec:	3b 90 40 01 00 00                               	cmp    edx,DWORD PTR [eax+0x140]
  d849f2:	75 2b                                           	jne    0xd84a1f
  d849f4:	8b 94 24 e4 00 00 00                            	mov    edx,DWORD PTR [esp+0xe4]
  d849fb:	8b 02                                           	mov    eax,DWORD PTR [edx]
  d849fd:	3b c3                                           	cmp    eax,ebx
  d849ff:	74 1e                                           	je     0xd84a1f
  d84a01:	50                                              	push   eax
  d84a02:	8d 44 24 44                                     	lea    eax,[esp+0x44]
  d84a06:	50                                              	push   eax
  d84a07:	e8 34 f6 ff ff                                  	call   0xd84040
  d84a0c:	83 c4 08                                        	add    esp,0x8
  d84a0f:	84 c0                                           	test   al,al
  d84a11:	0f 84 77 03 00 00                               	je     0xd84d8e
  d84a17:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  d84a1b:	8b 6c 24 44                                     	mov    ebp,DWORD PTR [esp+0x44]
  d84a1f:	2b cd                                           	sub    ecx,ebp
  d84a21:	c1 f9 03                                        	sar    ecx,0x3
  d84a24:	3b 4e 0c                                        	cmp    ecx,DWORD PTR [esi+0xc]
  d84a27:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  d84a2b:	0f 85 6e 03 00 00                               	jne    0xd84d9f
  d84a31:	8b 7f 24                                        	mov    edi,DWORD PTR [edi+0x24]
  d84a34:	3b fb                                           	cmp    edi,ebx
  d84a36:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  d84a3a:	74 05                                           	je     0xd84a41
  d84a3c:	8b 7f 08                                        	mov    edi,DWORD PTR [edi+0x8]
  d84a3f:	eb 02                                           	jmp    0xd84a43
  d84a41:	33 ff                                           	xor    edi,edi
  d84a43:	3b f9                                           	cmp    edi,ecx
  d84a45:	0f 85 87 03 00 00                               	jne    0xd84dd2
  d84a4b:	3b cb                                           	cmp    ecx,ebx
  d84a4d:	0f 84 bb 01 00 00                               	je     0xd84c0e
  d84a53:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d84a55:	0f b7 41 3e                                     	movzx  eax,WORD PTR [ecx+0x3e]
  d84a59:	8b 56 20                                        	mov    edx,DWORD PTR [esi+0x20]
  d84a5c:	0f b7 49 34                                     	movzx  ecx,WORD PTR [ecx+0x34]
  d84a60:	8b 76 10                                        	mov    esi,DWORD PTR [esi+0x10]
  d84a63:	2b f1                                           	sub    esi,ecx
  d84a65:	2b f0                                           	sub    esi,eax
  d84a67:	8d 3c 01                                        	lea    edi,[ecx+eax*1]
  d84a6a:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
  d84a6e:	33 f6                                           	xor    esi,esi
  d84a70:	03 fa                                           	add    edi,edx
  d84a72:	39 74 24 14                                     	cmp    DWORD PTR [esp+0x14],esi
  d84a76:	8d 1c 10                                        	lea    ebx,[eax+edx*1]
  d84a79:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  d84a7d:	89 74 24 34                                     	mov    DWORD PTR [esp+0x34],esi
  d84a81:	0f 86 87 01 00 00                               	jbe    0xd84c0e
  d84a87:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d84a8b:	83 c1 10                                        	add    ecx,0x10
  d84a8e:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  d84a92:	0f b6 44 f5 00                                  	movzx  eax,BYTE PTR [ebp+esi*8+0x0]
  d84a97:	83 f8 06                                        	cmp    eax,0x6
  d84a9a:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  d84a9e:	8b 3a                                           	mov    edi,DWORD PTR [edx]
  d84aa0:	0f 87 80 03 00 00                               	ja     0xd84e26
  d84aa6:	ff 24 85 58 4e d8 00                            	jmp    DWORD PTR [eax*4+0xd84e58]
  d84aad:	85 ff                                           	test   edi,edi
  d84aaf:	0f 84 4c 03 00 00                               	je     0xd84e01
  d84ab5:	57                                              	push   edi
  d84ab6:	e8 75 ce 11 00                                  	call   0xea1930
  d84abb:	83 c4 04                                        	add    esp,0x4
  d84abe:	8b e8                                           	mov    ebp,eax
  d84ac0:	e8 1b 0f 0f 00                                  	call   0xe759e0
  d84ac5:	3b e8                                           	cmp    ebp,eax
  d84ac7:	0f 85 34 03 00 00                               	jne    0xd84e01
  d84acd:	57                                              	push   edi
  d84ace:	e8 6d ce 11 00                                  	call   0xea1940
  d84ad3:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d84ad5:	83 c4 04                                        	add    esp,0x4
  d84ad8:	e9 16 01 00 00                                  	jmp    0xd84bf3
  d84add:	85 ff                                           	test   edi,edi
  d84adf:	0f 84 1c 03 00 00                               	je     0xd84e01
  d84ae5:	57                                              	push   edi
  d84ae6:	e8 45 ce 11 00                                  	call   0xea1930
  d84aeb:	83 c4 04                                        	add    esp,0x4
  d84aee:	8b e8                                           	mov    ebp,eax
  d84af0:	e8 1b 0f 0f 00                                  	call   0xe75a10
  d84af5:	3b e8                                           	cmp    ebp,eax
  d84af7:	0f 85 04 03 00 00                               	jne    0xd84e01
  d84afd:	57                                              	push   edi
  d84afe:	e8 3d ce 11 00                                  	call   0xea1940
  d84b03:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  d84b05:	89 0b                                           	mov    DWORD PTR [ebx],ecx
  d84b07:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d84b0a:	83 c4 04                                        	add    esp,0x4
  d84b0d:	89 53 04                                        	mov    DWORD PTR [ebx+0x4],edx
  d84b10:	e9 e0 00 00 00                                  	jmp    0xd84bf5
  d84b15:	85 ff                                           	test   edi,edi
  d84b17:	0f 84 e4 02 00 00                               	je     0xd84e01
  d84b1d:	57                                              	push   edi
  d84b1e:	e8 0d ce 11 00                                  	call   0xea1930
  d84b23:	83 c4 04                                        	add    esp,0x4
  d84b26:	8b e8                                           	mov    ebp,eax
  d84b28:	e8 13 0f 0f 00                                  	call   0xe75a40
  d84b2d:	3b e8                                           	cmp    ebp,eax
  d84b2f:	0f 85 cc 02 00 00                               	jne    0xd84e01
  d84b35:	57                                              	push   edi
  d84b36:	e8 05 ce 11 00                                  	call   0xea1940
  d84b3b:	dd 00                                           	fld    QWORD PTR [eax]
  d84b3d:	dd 1b                                           	fstp   QWORD PTR [ebx]
  d84b3f:	83 c4 04                                        	add    esp,0x4
  d84b42:	e9 ae 00 00 00                                  	jmp    0xd84bf5
  d84b47:	89 3b                                           	mov    DWORD PTR [ebx],edi
  d84b49:	e9 a7 00 00 00                                  	jmp    0xd84bf5
  d84b4e:	85 ff                                           	test   edi,edi
  d84b50:	8b 6c f5 04                                     	mov    ebp,DWORD PTR [ebp+esi*8+0x4]
  d84b54:	0f 84 a7 02 00 00                               	je     0xd84e01
  d84b5a:	57                                              	push   edi
  d84b5b:	e8 d0 cd 11 00                                  	call   0xea1930
  d84b60:	83 c4 04                                        	add    esp,0x4
  d84b63:	3b c5                                           	cmp    eax,ebp
  d84b65:	0f 85 96 02 00 00                               	jne    0xd84e01
  d84b6b:	6a 00                                           	push   0x0
  d84b6d:	55                                              	push   ebp
  d84b6e:	e8 1d ad 0e 00                                  	call   0xe6f890
  d84b73:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  d84b77:	8b e8                                           	mov    ebp,eax
  d84b79:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  d84b7d:	8d 55 07                                        	lea    edx,[ebp+0x7]
  d84b80:	83 e2 f8                                        	and    edx,0xfffffff8
  d84b83:	03 c1                                           	add    eax,ecx
  d84b85:	03 ca                                           	add    ecx,edx
  d84b87:	83 c4 08                                        	add    esp,0x8
  d84b8a:	3b 4c 24 3c                                     	cmp    ecx,DWORD PTR [esp+0x3c]
  d84b8e:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
  d84b92:	0f 87 69 02 00 00                               	ja     0xd84e01
  d84b98:	57                                              	push   edi
  d84b99:	89 03                                           	mov    DWORD PTR [ebx],eax
  d84b9b:	e8 a0 cd 11 00                                  	call   0xea1940
  d84ba0:	55                                              	push   ebp
  d84ba1:	50                                              	push   eax
  d84ba2:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  d84ba4:	50                                              	push   eax
  d84ba5:	e8 dc a6 1f 00                                  	call   0xf7f286
  d84baa:	83 c4 10                                        	add    esp,0x10
  d84bad:	eb 46                                           	jmp    0xd84bf5
  d84baf:	85 ff                                           	test   edi,edi
  d84bb1:	0f 84 4a 02 00 00                               	je     0xd84e01
  d84bb7:	57                                              	push   edi
  d84bb8:	e8 73 cd 11 00                                  	call   0xea1930
  d84bbd:	83 c4 04                                        	add    esp,0x4
  d84bc0:	3b 05 a8 1e 22 01                               	cmp    eax,DWORD PTR ds:0x1221ea8
  d84bc6:	0f 85 35 02 00 00                               	jne    0xd84e01
  d84bcc:	57                                              	push   edi
  d84bcd:	e8 6e cd 11 00                                  	call   0xea1940
  d84bd2:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  d84bd4:	83 c4 04                                        	add    esp,0x4
  d84bd7:	33 c0                                           	xor    eax,eax
  d84bd9:	85 c9                                           	test   ecx,ecx
  d84bdb:	74 16                                           	je     0xd84bf3
  d84bdd:	51                                              	push   ecx
  d84bde:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  d84be2:	51                                              	push   ecx
  d84be3:	e8 98 e2 0c 00                                  	call   0xe52e80
  d84be8:	83 c4 08                                        	add    esp,0x8
  d84beb:	85 c0                                           	test   eax,eax
  d84bed:	0f 84 0e 02 00 00                               	je     0xd84e01
  d84bf3:	89 03                                           	mov    DWORD PTR [ebx],eax
  d84bf5:	83 44 24 18 04                                  	add    DWORD PTR [esp+0x18],0x4
  d84bfa:	8b 6c 24 44                                     	mov    ebp,DWORD PTR [esp+0x44]
  d84bfe:	83 c6 01                                        	add    esi,0x1
  d84c01:	83 c3 08                                        	add    ebx,0x8
  d84c04:	3b 74 24 14                                     	cmp    esi,DWORD PTR [esp+0x14]
  d84c08:	0f 82 84 fe ff ff                               	jb     0xd84a92
  d84c0e:	85 ed                                           	test   ebp,ebp
  d84c10:	74 0f                                           	je     0xd84c21
  d84c12:	3b 6c 24 54                                     	cmp    ebp,DWORD PTR [esp+0x54]
  d84c16:	74 09                                           	je     0xd84c21
  d84c18:	55                                              	push   ebp
  d84c19:	e8 c2 f8 75 ff                                  	call   0x4e44e0
  d84c1e:	83 c4 04                                        	add    esp,0x4
  d84c21:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  d84c25:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  d84c29:	83 44 24 2c 04                                  	add    DWORD PTR [esp+0x2c],0x4
  d84c2e:	83 44 24 28 28                                  	add    DWORD PTR [esp+0x28],0x28
  d84c33:	83 c0 01                                        	add    eax,0x1
  d84c36:	3b 82 40 01 00 00                               	cmp    eax,DWORD PTR [edx+0x140]
  d84c3c:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  d84c40:	0f 8e 6a fc ff ff                               	jle    0xd848b0
  d84c46:	8b 6c 24 24                                     	mov    ebp,DWORD PTR [esp+0x24]
  d84c4a:	33 db                                           	xor    ebx,ebx
  d84c4c:	8b f2                                           	mov    esi,edx
  d84c4e:	8b 86 44 01 00 00                               	mov    eax,DWORD PTR [esi+0x144]
  d84c54:	3b 86 40 01 00 00                               	cmp    eax,DWORD PTR [esi+0x140]
  d84c5a:	7e 35                                           	jle    0xd84c91
  d84c5c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  d84c60:	8b be 44 01 00 00                               	mov    edi,DWORD PTR [esi+0x144]
  d84c66:	8d 4f ff                                        	lea    ecx,[edi-0x1]
  d84c69:	89 8e 44 01 00 00                               	mov    DWORD PTR [esi+0x144],ecx
  d84c6f:	8b 44 be 3c                                     	mov    eax,DWORD PTR [esi+edi*4+0x3c]
  d84c73:	3b c3                                           	cmp    eax,ebx
  d84c75:	74 0c                                           	je     0xd84c83
  d84c77:	50                                              	push   eax
  d84c78:	8b cd                                           	mov    ecx,ebp
  d84c7a:	e8 f1 c9 fe ff                                  	call   0xd71670
  d84c7f:	89 5c be 3c                                     	mov    DWORD PTR [esi+edi*4+0x3c],ebx
  d84c83:	8b 96 44 01 00 00                               	mov    edx,DWORD PTR [esi+0x144]
  d84c89:	3b 96 40 01 00 00                               	cmp    edx,DWORD PTR [esi+0x140]
  d84c8f:	7f cf                                           	jg     0xd84c60
  d84c91:	8b 7e 3c                                        	mov    edi,DWORD PTR [esi+0x3c]
  d84c94:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  d84c97:	89 06                                           	mov    DWORD PTR [esi],eax
  d84c99:	8b 4f 28                                        	mov    ecx,DWORD PTR [edi+0x28]
  d84c9c:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  d84c9f:	c6 86 4a 01 00 00 00                            	mov    BYTE PTR [esi+0x14a],0x0
  d84ca6:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
  d84ca9:	52                                              	push   edx
  d84caa:	e8 81 06 10 00                                  	call   0xe85330
  d84caf:	89 46 24                                        	mov    DWORD PTR [esi+0x24],eax
  d84cb2:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d84cb5:	50                                              	push   eax
  d84cb6:	e8 85 c3 0e 00                                  	call   0xe71040
  d84cbb:	8b 8c 24 ec 00 00 00                            	mov    ecx,DWORD PTR [esp+0xec]
  d84cc2:	89 46 28                                        	mov    DWORD PTR [esi+0x28],eax
  d84cc5:	89 5e 18                                        	mov    DWORD PTR [esi+0x18],ebx
  d84cc8:	89 5e 1c                                        	mov    DWORD PTR [esi+0x1c],ebx
  d84ccb:	89 5e 20                                        	mov    DWORD PTR [esi+0x20],ebx
  d84cce:	89 5e 34                                        	mov    DWORD PTR [esi+0x34],ebx
  d84cd1:	89 5e 2c                                        	mov    DWORD PTR [esi+0x2c],ebx
  d84cd4:	89 5e 38                                        	mov    DWORD PTR [esi+0x38],ebx
  d84cd7:	c6 86 4b 01 00 00 00                            	mov    BYTE PTR [esi+0x14b],0x0
  d84cde:	89 9e 4c 01 00 00                               	mov    DWORD PTR [esi+0x14c],ebx
  d84ce4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d84ce6:	83 c4 08                                        	add    esp,0x8
  d84ce9:	3b c3                                           	cmp    eax,ebx
  d84ceb:	74 14                                           	je     0xd84d01
  d84ced:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  d84cf1:	50                                              	push   eax
  d84cf2:	52                                              	push   edx
  d84cf3:	e8 88 e1 0c 00                                  	call   0xe52e80
  d84cf8:	83 c4 08                                        	add    esp,0x8
  d84cfb:	89 86 4c 01 00 00                               	mov    DWORD PTR [esi+0x14c],eax
  d84d01:	39 5e 30                                        	cmp    DWORD PTR [esi+0x30],ebx
  d84d04:	75 2c                                           	jne    0xd84d32
  d84d06:	e8 b5 cc fe ff                                  	call   0xd719c0
  d84d0b:	89 46 30                                        	mov    DWORD PTR [esi+0x30],eax
  d84d0e:	33 c9                                           	xor    ecx,ecx
  d84d10:	89 08                                           	mov    DWORD PTR [eax],ecx
  d84d12:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  d84d15:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  d84d18:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  d84d1b:	89 48 10                                        	mov    DWORD PTR [eax+0x10],ecx
  d84d1e:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
  d84d21:	89 48 18                                        	mov    DWORD PTR [eax+0x18],ecx
  d84d24:	89 48 1c                                        	mov    DWORD PTR [eax+0x1c],ecx
  d84d27:	89 48 20                                        	mov    DWORD PTR [eax+0x20],ecx
  d84d2a:	89 48 24                                        	mov    DWORD PTR [eax+0x24],ecx
  d84d2d:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  d84d2f:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  d84d32:	8b 94 24 e4 00 00 00                            	mov    edx,DWORD PTR [esp+0xe4]
  d84d39:	83 7a 08 fd                                     	cmp    DWORD PTR [edx+0x8],0xfffffffd
  d84d3d:	c6 44 24 14 00                                  	mov    BYTE PTR [esp+0x14],0x0
  d84d42:	75 05                                           	jne    0xd84d49
  d84d44:	c6 44 24 14 01                                  	mov    BYTE PTR [esp+0x14],0x1
  d84d49:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  d84d4d:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  d84d51:	50                                              	push   eax
  d84d52:	8b c2                                           	mov    eax,edx
  d84d54:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d84d57:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d84d5a:	8b 84 24 e4 00 00 00                            	mov    eax,DWORD PTR [esp+0xe4]
  d84d61:	56                                              	push   esi
  d84d62:	51                                              	push   ecx
  d84d63:	8b 8c 24 e8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xe8]
  d84d6a:	52                                              	push   edx
  d84d6b:	50                                              	push   eax
  d84d6c:	51                                              	push   ecx
  d84d6d:	8b cd                                           	mov    ecx,ebp
  d84d6f:	e8 5c 31 ff ff                                  	call   0xd77ed0
  d84d74:	3b f3                                           	cmp    esi,ebx
  d84d76:	74 09                                           	je     0xd84d81
  d84d78:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d84d7a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d84d7d:	8b ce                                           	mov    ecx,esi
  d84d7f:	ff d0                                           	call   eax
  d84d81:	5f                                              	pop    edi
  d84d82:	5e                                              	pop    esi
  d84d83:	5d                                              	pop    ebp
  d84d84:	b0 01                                           	mov    al,0x1
  d84d86:	5b                                              	pop    ebx
  d84d87:	81 c4 c8 00 00 00                               	add    esp,0xc8
  d84d8d:	c3                                              	ret
  d84d8e:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  d84d92:	3b c3                                           	cmp    eax,ebx
  d84d94:	74 4f                                           	je     0xd84de5
  d84d96:	3b 44 24 54                                     	cmp    eax,DWORD PTR [esp+0x54]
  d84d9a:	74 49                                           	je     0xd84de5
  d84d9c:	50                                              	push   eax
  d84d9d:	eb 3e                                           	jmp    0xd84ddd
  d84d9f:	3b eb                                           	cmp    ebp,ebx
  d84da1:	74 0f                                           	je     0xd84db2
  d84da3:	3b 6c 24 54                                     	cmp    ebp,DWORD PTR [esp+0x54]
  d84da7:	74 09                                           	je     0xd84db2
  d84da9:	55                                              	push   ebp
  d84daa:	e8 31 f7 75 ff                                  	call   0x4e44e0
  d84daf:	83 c4 04                                        	add    esp,0x4
  d84db2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d84db6:	3b cb                                           	cmp    ecx,ebx
  d84db8:	0f 84 8a 00 00 00                               	je     0xd84e48
  d84dbe:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d84dc0:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d84dc3:	ff d2                                           	call   edx
  d84dc5:	5f                                              	pop    edi
  d84dc6:	5e                                              	pop    esi
  d84dc7:	5d                                              	pop    ebp
  d84dc8:	32 c0                                           	xor    al,al
  d84dca:	5b                                              	pop    ebx
  d84dcb:	81 c4 c8 00 00 00                               	add    esp,0xc8
  d84dd1:	c3                                              	ret
  d84dd2:	3b eb                                           	cmp    ebp,ebx
  d84dd4:	74 0f                                           	je     0xd84de5
  d84dd6:	3b 6c 24 54                                     	cmp    ebp,DWORD PTR [esp+0x54]
  d84dda:	74 09                                           	je     0xd84de5
  d84ddc:	55                                              	push   ebp
  d84ddd:	e8 fe f6 75 ff                                  	call   0x4e44e0
  d84de2:	83 c4 04                                        	add    esp,0x4
  d84de5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d84de9:	3b cb                                           	cmp    ecx,ebx
  d84deb:	74 5b                                           	je     0xd84e48
  d84ded:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d84def:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d84df2:	ff d2                                           	call   edx
  d84df4:	5f                                              	pop    edi
  d84df5:	5e                                              	pop    esi
  d84df6:	5d                                              	pop    ebp
  d84df7:	32 c0                                           	xor    al,al
  d84df9:	5b                                              	pop    ebx
  d84dfa:	81 c4 c8 00 00 00                               	add    esp,0xc8
  d84e00:	c3                                              	ret
  d84e01:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  d84e05:	e8 26 f0 ff ff                                  	call   0xd83e30
  d84e0a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d84e0e:	85 c9                                           	test   ecx,ecx
  d84e10:	74 36                                           	je     0xd84e48
  d84e12:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d84e14:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d84e17:	ff d2                                           	call   edx
  d84e19:	5f                                              	pop    edi
  d84e1a:	5e                                              	pop    esi
  d84e1b:	5d                                              	pop    ebp
  d84e1c:	32 c0                                           	xor    al,al
  d84e1e:	5b                                              	pop    ebx
  d84e1f:	81 c4 c8 00 00 00                               	add    esp,0xc8
  d84e25:	c3                                              	ret
  d84e26:	85 ed                                           	test   ebp,ebp
  d84e28:	74 0f                                           	je     0xd84e39
  d84e2a:	3b 6c 24 54                                     	cmp    ebp,DWORD PTR [esp+0x54]
  d84e2e:	74 09                                           	je     0xd84e39
  d84e30:	55                                              	push   ebp
  d84e31:	e8 aa f6 75 ff                                  	call   0x4e44e0
  d84e36:	83 c4 04                                        	add    esp,0x4
  d84e39:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d84e3d:	85 c9                                           	test   ecx,ecx
  d84e3f:	74 07                                           	je     0xd84e48
  d84e41:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d84e43:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d84e46:	ff d2                                           	call   edx
  d84e48:	5f                                              	pop    edi
  d84e49:	5e                                              	pop    esi
  d84e4a:	5d                                              	pop    ebp
  d84e4b:	32 c0                                           	xor    al,al
  d84e4d:	5b                                              	pop    ebx
  d84e4e:	81 c4 c8 00 00 00                               	add    esp,0xc8
  d84e54:	c3                                              	ret
  d84e55:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  d84e58:	ad                                              	lods   eax,DWORD PTR ds:[esi]
  d84e59:	4a                                              	dec    edx
  d84e5a:	d8 00                                           	fadd   DWORD PTR [eax]
  d84e5c:	dd 4a d8                                        	fisttp QWORD PTR [edx-0x28]
  d84e5f:	00 15 4b d8 00 47                               	add    BYTE PTR ds:0x4700d84b,dl
  d84e65:	4b                                              	dec    ebx
  d84e66:	d8 00                                           	fadd   DWORD PTR [eax]
  d84e68:	4e                                              	dec    esi
  d84e69:	4b                                              	dec    ebx
  d84e6a:	d8 00                                           	fadd   DWORD PTR [eax]
  d84e6c:	01 4e d8                                        	add    DWORD PTR [esi-0x28],ecx
  d84e6f:	00 af 4b d8 00 cc                               	add    BYTE PTR [edi-0x33ff27b5],ch
  d84e75:	cc                                              	int3
  d84e76:	cc                                              	int3
  d84e77:	cc                                              	int3
  d84e78:	cc                                              	int3
  d84e79:	cc                                              	int3
  d84e7a:	cc                                              	int3
  d84e7b:	cc                                              	int3
  d84e7c:	cc                                              	int3
  d84e7d:	cc                                              	int3
  d84e7e:	cc                                              	int3
  d84e7f:	cc                                              	int3
