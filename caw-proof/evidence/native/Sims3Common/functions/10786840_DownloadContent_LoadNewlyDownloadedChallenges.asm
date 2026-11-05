# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10786840 (DownloadContent_LoadNewlyDownloadedChallenges)
Paired Ghidra pseudocode: 10786840_DownloadContent_LoadNewlyDownloadedChallenges.c
Window: [0x10786840, 0x107869e0) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x107869e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10786840: 83 ec 58 53 33 db 55 56 89 5c 24 40 89 5c 24 44
10786850: 89 5c 24 48 89 5c 24 4c e8 43 84 18 00 33 c9 89
10786860: 4c 24 50 89 4c 24 54 89 44 24 58 8d 44 24 50 8b
10786870: c8 89 4c 24 54 68 b0 8f b5 10 8d 4c 24 34 89 5c
10786880: 24 60 c7 44 24 64 80 8f b5 10 89 44 24 54 89 5c
10786890: 24 34 89 5c 24 38 89 5c 24 3c c7 44 24 40 54 8f
107868a0: b5 10 e8 79 3d 8e ff e8 14 dc fe ff 8b 90 00 01
107868b0: 00 00 52 8d 4c 24 24 89 5c 24 24 89 5c 24 28 89
107868c0: 5c 24 2c c7 44 24 30 28 8f b5 10 e8 50 3d 8e ff
107868d0: 8b 6c 24 30 8b 74 24 20 68 00 00 10 00 6a 02 55
107868e0: 8d 44 24 5c 50 56 8d 4c 24 54 88 5c 24 23 e8 8d
107868f0: 89 18 00 8b 44 24 50 8d 4c 24 50 3b c1 0f 84 95
10786900: 00 00 00 b9 44 82 ca 10 57 c7 44 24 20 64 e5 b3
10786910: 10 89 4c 24 14 89 4c 24 18 c7 44 24 1c 46 82 ca
10786920: 10 8b f8 8b 47 0c 8d 54 24 14 52 50 56 e8 0e 60
10786930: f0 ff 8b 4c 24 20 83 c4 0c 51 e8 81 db fe ff 8b
10786940: c8 e8 da b0 ff ff 3d 00 10 00 00 74 0a 38 5c 24
10786950: 13 88 5c 24 13 74 05 c6 44 24 13 01 8b 3f 8d 54
10786960: 24 54 3b fa 75 bd 8b 4c 24 1c 8b 44 24 14 2b c8
10786970: 83 e1 fe 83 f9 02 5f 7e 0d 3b c3 74 09 50 e8 0d
10786980: 25 19 00 83 c4 04 38 5c 24 0f 74 0c e8 2f db fe
10786990: ff 8b c8 e8 f8 d7 fe ff 8b 54 24 28 2b d6 83 e2
107869a0: fe 83 fa 02 7e 0d 3b f3 74 09 56 e8 e0 24 19 00
107869b0: 83 c4 04 8b 44 24 38 2b c5 83 e0 fe 83 f8 02 7e
107869c0: 0d 3b eb 74 09 55 e8 c5 24 19 00 83 c4 04 8d 4c
107869d0: 24 50 e8 39 b9 8e ff 5e 5d 5b 83 c4 58 c3 cc cc

LINEAR DISASSEMBLY
10786840 <.text+0x785840>:
10786840:	83 ec 58                                        	sub    esp,0x58
10786843:	53                                              	push   ebx
10786844:	33 db                                           	xor    ebx,ebx
10786846:	55                                              	push   ebp
10786847:	56                                              	push   esi
10786848:	89 5c 24 40                                     	mov    DWORD PTR [esp+0x40],ebx
1078684c:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
10786850:	89 5c 24 48                                     	mov    DWORD PTR [esp+0x48],ebx
10786854:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
10786858:	e8 43 84 18 00                                  	call   0x1090eca0
1078685d:	33 c9                                           	xor    ecx,ecx
1078685f:	89 4c 24 50                                     	mov    DWORD PTR [esp+0x50],ecx
10786863:	89 4c 24 54                                     	mov    DWORD PTR [esp+0x54],ecx
10786867:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
1078686b:	8d 44 24 50                                     	lea    eax,[esp+0x50]
1078686f:	8b c8                                           	mov    ecx,eax
10786871:	89 4c 24 54                                     	mov    DWORD PTR [esp+0x54],ecx
10786875:	68 b0 8f b5 10                                  	push   0x10b58fb0
1078687a:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1078687e:	89 5c 24 60                                     	mov    DWORD PTR [esp+0x60],ebx
10786882:	c7 44 24 64 80 8f b5 10                         	mov    DWORD PTR [esp+0x64],0x10b58f80
1078688a:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
1078688e:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
10786892:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
10786896:	89 5c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebx
1078689a:	c7 44 24 40 54 8f b5 10                         	mov    DWORD PTR [esp+0x40],0x10b58f54
107868a2:	e8 79 3d 8e ff                                  	call   0x1006a620
107868a7:	e8 14 dc fe ff                                  	call   0x107744c0
107868ac:	8b 90 00 01 00 00                               	mov    edx,DWORD PTR [eax+0x100]
107868b2:	52                                              	push   edx
107868b3:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
107868b7:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
107868bb:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
107868bf:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
107868c3:	c7 44 24 30 28 8f b5 10                         	mov    DWORD PTR [esp+0x30],0x10b58f28
107868cb:	e8 50 3d 8e ff                                  	call   0x1006a620
107868d0:	8b 6c 24 30                                     	mov    ebp,DWORD PTR [esp+0x30]
107868d4:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
107868d8:	68 00 00 10 00                                  	push   0x100000
107868dd:	6a 02                                           	push   0x2
107868df:	55                                              	push   ebp
107868e0:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
107868e4:	50                                              	push   eax
107868e5:	56                                              	push   esi
107868e6:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
107868ea:	88 5c 24 23                                     	mov    BYTE PTR [esp+0x23],bl
107868ee:	e8 8d 89 18 00                                  	call   0x1090f280
107868f3:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
107868f7:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
107868fb:	3b c1                                           	cmp    eax,ecx
107868fd:	0f 84 95 00 00 00                               	je     0x10786998
10786903:	b9 44 82 ca 10                                  	mov    ecx,0x10ca8244
10786908:	57                                              	push   edi
10786909:	c7 44 24 20 64 e5 b3 10                         	mov    DWORD PTR [esp+0x20],0x10b3e564
10786911:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
10786915:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
10786919:	c7 44 24 1c 46 82 ca 10                         	mov    DWORD PTR [esp+0x1c],0x10ca8246
10786921:	8b f8                                           	mov    edi,eax
10786923:	8b 47 0c                                        	mov    eax,DWORD PTR [edi+0xc]
10786926:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1078692a:	52                                              	push   edx
1078692b:	50                                              	push   eax
1078692c:	56                                              	push   esi
1078692d:	e8 0e 60 f0 ff                                  	call   0x1068c940
10786932:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10786936:	83 c4 0c                                        	add    esp,0xc
10786939:	51                                              	push   ecx
1078693a:	e8 81 db fe ff                                  	call   0x107744c0
1078693f:	8b c8                                           	mov    ecx,eax
10786941:	e8 da b0 ff ff                                  	call   0x10781a20
10786946:	3d 00 10 00 00                                  	cmp    eax,0x1000
1078694b:	74 0a                                           	je     0x10786957
1078694d:	38 5c 24 13                                     	cmp    BYTE PTR [esp+0x13],bl
10786951:	88 5c 24 13                                     	mov    BYTE PTR [esp+0x13],bl
10786955:	74 05                                           	je     0x1078695c
10786957:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
1078695c:	8b 3f                                           	mov    edi,DWORD PTR [edi]
1078695e:	8d 54 24 54                                     	lea    edx,[esp+0x54]
10786962:	3b fa                                           	cmp    edi,edx
10786964:	75 bd                                           	jne    0x10786923
10786966:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1078696a:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1078696e:	2b c8                                           	sub    ecx,eax
10786970:	83 e1 fe                                        	and    ecx,0xfffffffe
10786973:	83 f9 02                                        	cmp    ecx,0x2
10786976:	5f                                              	pop    edi
10786977:	7e 0d                                           	jle    0x10786986
10786979:	3b c3                                           	cmp    eax,ebx
1078697b:	74 09                                           	je     0x10786986
1078697d:	50                                              	push   eax
1078697e:	e8 0d 25 19 00                                  	call   0x10918e90
10786983:	83 c4 04                                        	add    esp,0x4
10786986:	38 5c 24 0f                                     	cmp    BYTE PTR [esp+0xf],bl
1078698a:	74 0c                                           	je     0x10786998
1078698c:	e8 2f db fe ff                                  	call   0x107744c0
10786991:	8b c8                                           	mov    ecx,eax
10786993:	e8 f8 d7 fe ff                                  	call   0x10774190
10786998:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1078699c:	2b d6                                           	sub    edx,esi
1078699e:	83 e2 fe                                        	and    edx,0xfffffffe
107869a1:	83 fa 02                                        	cmp    edx,0x2
107869a4:	7e 0d                                           	jle    0x107869b3
107869a6:	3b f3                                           	cmp    esi,ebx
107869a8:	74 09                                           	je     0x107869b3
107869aa:	56                                              	push   esi
107869ab:	e8 e0 24 19 00                                  	call   0x10918e90
107869b0:	83 c4 04                                        	add    esp,0x4
107869b3:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
107869b7:	2b c5                                           	sub    eax,ebp
107869b9:	83 e0 fe                                        	and    eax,0xfffffffe
107869bc:	83 f8 02                                        	cmp    eax,0x2
107869bf:	7e 0d                                           	jle    0x107869ce
107869c1:	3b eb                                           	cmp    ebp,ebx
107869c3:	74 09                                           	je     0x107869ce
107869c5:	55                                              	push   ebp
107869c6:	e8 c5 24 19 00                                  	call   0x10918e90
107869cb:	83 c4 04                                        	add    esp,0x4
107869ce:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
107869d2:	e8 39 b9 8e ff                                  	call   0x10072310
107869d7:	5e                                              	pop    esi
107869d8:	5d                                              	pop    ebp
107869d9:	5b                                              	pop    ebx
107869da:	83 c4 58                                        	add    esp,0x58
107869dd:	c3                                              	ret
107869de:	cc                                              	int3
107869df:	cc                                              	int3
