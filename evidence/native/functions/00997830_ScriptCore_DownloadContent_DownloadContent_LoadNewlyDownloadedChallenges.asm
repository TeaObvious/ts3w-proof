# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00997830 (ScriptCore.DownloadContent::DownloadContent_LoadNewlyDownloadedChallenges)
Paired Ghidra pseudocode: 00997830_ScriptCore_DownloadContent_DownloadContent_LoadNewlyDownloadedChallenges.c
Window: [0x00997830, 0x009979d0) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x009979d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00997830: 83 ec 58 53 33 db 55 56 89 5c 24 40 89 5c 24 44
00997840: 89 5c 24 48 89 5c 24 4c e8 43 24 b4 ff 33 c9 89
00997850: 4c 24 50 89 4c 24 54 89 44 24 58 8d 44 24 50 8b
00997860: c8 89 4c 24 54 68 d8 a2 04 01 8d 4c 24 34 89 5c
00997870: 24 60 c7 44 24 64 a8 a2 04 01 89 44 24 54 89 5c
00997880: 24 34 89 5c 24 38 89 5c 24 3c c7 44 24 40 7c a2
00997890: 04 01 e8 f9 3c a7 ff e8 c4 b5 fe ff 8b 90 00 01
009978a0: 00 00 52 8d 4c 24 24 89 5c 24 24 89 5c 24 28 89
009978b0: 5c 24 2c c7 44 24 30 50 a2 04 01 e8 d0 3c a7 ff
009978c0: 8b 6c 24 30 8b 74 24 20 68 00 00 10 00 6a 02 55
009978d0: 8d 44 24 5c 50 56 8d 4c 24 54 88 5c 24 23 e8 9d
009978e0: 2c b4 ff 8b 44 24 50 8d 4c 24 50 3b c1 0f 84 95
009978f0: 00 00 00 b9 54 8e 1c 01 57 c7 44 24 20 98 ef 02
00997900: 01 89 4c 24 14 89 4c 24 18 c7 44 24 1c 56 8e 1c
00997910: 01 8b f8 8b 47 0c 8d 54 24 14 52 50 56 e8 4e 0f
00997920: f0 ff 8b 4c 24 20 83 c4 0c 51 e8 31 b5 fe ff 8b
00997930: c8 e8 1a 8a ff ff 3d 00 10 00 00 74 0a 38 5c 24
00997940: 13 88 5c 24 13 74 05 c6 44 24 13 01 8b 3f 8d 54
00997950: 24 54 3b fa 75 bd 8b 4c 24 1c 8b 44 24 14 2b c8
00997960: 83 e1 fe 83 f9 02 5f 7e 0d 3b c3 74 09 50 e8 6d
00997970: cb b4 ff 83 c4 04 38 5c 24 0f 74 0c e8 df b4 fe
00997980: ff 8b c8 e8 88 b1 fe ff 8b 54 24 28 2b d6 83 e2
00997990: fe 83 fa 02 7e 0d 3b f3 74 09 56 e8 40 cb b4 ff
009979a0: 83 c4 04 8b 44 24 38 2b c5 83 e0 fe 83 f8 02 7e
009979b0: 0d 3b eb 74 09 55 e8 25 cb b4 ff 83 c4 04 8d 4c
009979c0: 24 50 e8 f9 f4 ab ff 5e 5d 5b 83 c4 58 c3 cc cc

LINEAR DISASSEMBLY
00997830 <.text+0x596830>:
  997830:	83 ec 58                                        	sub    esp,0x58
  997833:	53                                              	push   ebx
  997834:	33 db                                           	xor    ebx,ebx
  997836:	55                                              	push   ebp
  997837:	56                                              	push   esi
  997838:	89 5c 24 40                                     	mov    DWORD PTR [esp+0x40],ebx
  99783c:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
  997840:	89 5c 24 48                                     	mov    DWORD PTR [esp+0x48],ebx
  997844:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
  997848:	e8 43 24 b4 ff                                  	call   0x4d9c90
  99784d:	33 c9                                           	xor    ecx,ecx
  99784f:	89 4c 24 50                                     	mov    DWORD PTR [esp+0x50],ecx
  997853:	89 4c 24 54                                     	mov    DWORD PTR [esp+0x54],ecx
  997857:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
  99785b:	8d 44 24 50                                     	lea    eax,[esp+0x50]
  99785f:	8b c8                                           	mov    ecx,eax
  997861:	89 4c 24 54                                     	mov    DWORD PTR [esp+0x54],ecx
  997865:	68 d8 a2 04 01                                  	push   0x104a2d8
  99786a:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  99786e:	89 5c 24 60                                     	mov    DWORD PTR [esp+0x60],ebx
  997872:	c7 44 24 64 a8 a2 04 01                         	mov    DWORD PTR [esp+0x64],0x104a2a8
  99787a:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
  99787e:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  997882:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
  997886:	89 5c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebx
  99788a:	c7 44 24 40 7c a2 04 01                         	mov    DWORD PTR [esp+0x40],0x104a27c
  997892:	e8 f9 3c a7 ff                                  	call   0x40b590
  997897:	e8 c4 b5 fe ff                                  	call   0x982e60
  99789c:	8b 90 00 01 00 00                               	mov    edx,DWORD PTR [eax+0x100]
  9978a2:	52                                              	push   edx
  9978a3:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  9978a7:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  9978ab:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  9978af:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  9978b3:	c7 44 24 30 50 a2 04 01                         	mov    DWORD PTR [esp+0x30],0x104a250
  9978bb:	e8 d0 3c a7 ff                                  	call   0x40b590
  9978c0:	8b 6c 24 30                                     	mov    ebp,DWORD PTR [esp+0x30]
  9978c4:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
  9978c8:	68 00 00 10 00                                  	push   0x100000
  9978cd:	6a 02                                           	push   0x2
  9978cf:	55                                              	push   ebp
  9978d0:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
  9978d4:	50                                              	push   eax
  9978d5:	56                                              	push   esi
  9978d6:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  9978da:	88 5c 24 23                                     	mov    BYTE PTR [esp+0x23],bl
  9978de:	e8 9d 2c b4 ff                                  	call   0x4da580
  9978e3:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  9978e7:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  9978eb:	3b c1                                           	cmp    eax,ecx
  9978ed:	0f 84 95 00 00 00                               	je     0x997988
  9978f3:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  9978f8:	57                                              	push   edi
  9978f9:	c7 44 24 20 98 ef 02 01                         	mov    DWORD PTR [esp+0x20],0x102ef98
  997901:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  997905:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  997909:	c7 44 24 1c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x1c],0x11c8e56
  997911:	8b f8                                           	mov    edi,eax
  997913:	8b 47 0c                                        	mov    eax,DWORD PTR [edi+0xc]
  997916:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  99791a:	52                                              	push   edx
  99791b:	50                                              	push   eax
  99791c:	56                                              	push   esi
  99791d:	e8 4e 0f f0 ff                                  	call   0x898870
  997922:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  997926:	83 c4 0c                                        	add    esp,0xc
  997929:	51                                              	push   ecx
  99792a:	e8 31 b5 fe ff                                  	call   0x982e60
  99792f:	8b c8                                           	mov    ecx,eax
  997931:	e8 1a 8a ff ff                                  	call   0x990350
  997936:	3d 00 10 00 00                                  	cmp    eax,0x1000
  99793b:	74 0a                                           	je     0x997947
  99793d:	38 5c 24 13                                     	cmp    BYTE PTR [esp+0x13],bl
  997941:	88 5c 24 13                                     	mov    BYTE PTR [esp+0x13],bl
  997945:	74 05                                           	je     0x99794c
  997947:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
  99794c:	8b 3f                                           	mov    edi,DWORD PTR [edi]
  99794e:	8d 54 24 54                                     	lea    edx,[esp+0x54]
  997952:	3b fa                                           	cmp    edi,edx
  997954:	75 bd                                           	jne    0x997913
  997956:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  99795a:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  99795e:	2b c8                                           	sub    ecx,eax
  997960:	83 e1 fe                                        	and    ecx,0xfffffffe
  997963:	83 f9 02                                        	cmp    ecx,0x2
  997966:	5f                                              	pop    edi
  997967:	7e 0d                                           	jle    0x997976
  997969:	3b c3                                           	cmp    eax,ebx
  99796b:	74 09                                           	je     0x997976
  99796d:	50                                              	push   eax
  99796e:	e8 6d cb b4 ff                                  	call   0x4e44e0
  997973:	83 c4 04                                        	add    esp,0x4
  997976:	38 5c 24 0f                                     	cmp    BYTE PTR [esp+0xf],bl
  99797a:	74 0c                                           	je     0x997988
  99797c:	e8 df b4 fe ff                                  	call   0x982e60
  997981:	8b c8                                           	mov    ecx,eax
  997983:	e8 88 b1 fe ff                                  	call   0x982b10
  997988:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  99798c:	2b d6                                           	sub    edx,esi
  99798e:	83 e2 fe                                        	and    edx,0xfffffffe
  997991:	83 fa 02                                        	cmp    edx,0x2
  997994:	7e 0d                                           	jle    0x9979a3
  997996:	3b f3                                           	cmp    esi,ebx
  997998:	74 09                                           	je     0x9979a3
  99799a:	56                                              	push   esi
  99799b:	e8 40 cb b4 ff                                  	call   0x4e44e0
  9979a0:	83 c4 04                                        	add    esp,0x4
  9979a3:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  9979a7:	2b c5                                           	sub    eax,ebp
  9979a9:	83 e0 fe                                        	and    eax,0xfffffffe
  9979ac:	83 f8 02                                        	cmp    eax,0x2
  9979af:	7e 0d                                           	jle    0x9979be
  9979b1:	3b eb                                           	cmp    ebp,ebx
  9979b3:	74 09                                           	je     0x9979be
  9979b5:	55                                              	push   ebp
  9979b6:	e8 25 cb b4 ff                                  	call   0x4e44e0
  9979bb:	83 c4 04                                        	add    esp,0x4
  9979be:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  9979c2:	e8 f9 f4 ab ff                                  	call   0x456ec0
  9979c7:	5e                                              	pop    esi
  9979c8:	5d                                              	pop    ebp
  9979c9:	5b                                              	pop    ebx
  9979ca:	83 c4 58                                        	add    esp,0x58
  9979cd:	c3                                              	ret
  9979ce:	cc                                              	int3
  9979cf:	cc                                              	int3
