# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992820 (Sims3PackFile_ExtractThumbnails)
Paired Ghidra pseudocode: 10992820_Sims3PackFile_ExtractThumbnails.c
Window: [0x10992820, 0x10992d30) (1296 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992820: 81 ec a8 04 00 00 53 55 56 57 8d 84 24 b0 02 00
10992830: 00 68 04 01 00 00 50 e8 e4 e4 f7 ff 68 c0 75 b9
10992840: 10 8d 8c 24 bc 02 00 00 51 8d 54 24 24 bb 44 82
10992850: ca 10 68 84 b4 b2 10 bd 46 82 ca 10 52 c7 44 24
10992860: 38 90 75 b9 10 89 5c 24 2c 89 5c 24 30 89 6c 24
10992870: 34 e8 7a 87 6d ff 8d 44 24 2c 50 e8 c0 fd f8 ff
10992880: 8b 4c 24 30 8b b4 24 dc 04 00 00 8b bc 24 d8 04
10992890: 00 00 83 c4 1c 51 56 8b cf e8 12 28 e2 ff 56 8b
109928a0: cf c7 44 24 38 5c 75 b9 10 89 5c 24 2c 89 5c 24
109928b0: 30 89 6c 24 34 e8 a6 19 e2 ff 8b 54 24 14 8b 4c
109928c0: 24 18 83 ec 10 8b f0 8b c4 89 10 8b 54 24 2c 89
109928d0: 48 04 8b 4c 24 30 89 50 08 8d 54 24 38 68 54 42
109928e0: af 10 52 89 48 0c e8 05 87 6d ff 8b 46 28 33 db
109928f0: 83 c4 18 66 39 18 8b c8 74 0e 8d 9b 00 00 00 00
10992900: 83 c1 02 66 39 19 75 f8 2b c8 d1 f9 8d 0c 48 51
10992910: 50 8d 4c 24 30 e8 96 ca 68 ff e8 11 ff d8 ff 8b
10992920: f0 3b f3 75 24 8b 54 24 30 8b 44 24 28 2b d0 83
10992930: e2 fe 83 fa 02 0f 8e c0 03 00 00 3b c3 0f 84 b8
10992940: 03 00 00 50 e9 aa 03 00 00 53 53 53 53 68 28 75
10992950: b9 10 68 98 03 00 00 e8 04 67 f8 ff 8b 7c 24 40
10992960: 83 c4 18 3b c3 74 0f 56 57 8b c8 e8 60 c6 f4 ff
10992970: 8b f0 3b f3 75 11 8b 54 24 30 2b d7 83 e2 fe 83
10992980: fa 02 e9 65 03 00 00 8b 56 04 8b 02 8d 6e 04 8b
10992990: cd 89 6c 24 24 ff d0 8b 16 8b 42 04 8b ce ff d0
109929a0: 84 c0 0f 84 25 03 00 00 8b 16 8b 42 18 53 6a 03
109929b0: 6a 01 8b ce ff d0 84 c0 0f 84 0f 03 00 00 8d 44
109929c0: 24 3c c7 44 24 3c 24 5a ab 10 c7 44 24 40 67 c7
109929d0: 75 2e 89 5c 24 44 89 5c 24 48 89 5c 24 4c c7 44
109929e0: 24 50 f0 74 b9 10 8b 16 8b 52 30 50 8d 4c 24 48
109929f0: 51 8b ce ff d2 8b 44 24 48 8b 5c 24 44 3b d8 89
10992a00: 44 24 64 0f 84 8c 01 00 00 8d a4 24 00 00 00 00
10992a10: 8b 06 8b 50 34 6a 00 6a 01 6a 03 6a 01 8d 4c 24
10992a20: 20 51 53 8b ce c7 44 24 28 00 00 00 00 ff d2 84
10992a30: c0 0f 84 2a 02 00 00 8b 4c 24 10 8b 01 8b 50 18
10992a40: ff d2 8b f8 85 ff 0f 84 11 02 00 00 8b 07 8b 50
10992a50: 1c 8b cf ff d2 8b e8 33 c0 55 8d 4c 24 58 89 44
10992a60: 24 58 89 44 24 5c 89 44 24 60 c7 44 24 64 c0 74
10992a70: b9 10 e8 89 eb 66 ff 8b 4c 24 54 8b 07 8b 50 30
10992a80: 55 51 8b cf ff d2 85 c0 0f 84 2e 01 00 00 8b 4c
10992a90: 24 10 8b 01 8b 50 20 ff d2 8d 44 24 38 50 8d 4c
10992aa0: 24 6c c7 44 24 3c 8c 74 b9 10 e8 81 bb 68 ff 8d
10992ab0: 4c 24 38 51 8d 4c 24 7c c7 44 24 3c 58 74 b9 10
10992ac0: e8 6b bb 68 ff 6a 00 6a 00 6a 00 8d 54 24 74 52
10992ad0: 53 e8 5a 20 f5 ff 8b 44 24 7c 8b 8c 24 d8 04 00
10992ae0: 00 50 51 8d 94 24 94 00 00 00 68 84 b4 b2 10 52
10992af0: e8 fb 84 6d ff 8b 84 24 9c 00 00 00 83 c4 24 50
10992b00: 8d 8c 24 8c 00 00 00 e8 24 dd f7 ff 6a 00 6a 01
10992b10: 6a 02 6a 02 8d 8c 24 98 00 00 00 e8 60 d8 f7 ff
10992b20: 84 c0 0f 84 fe 00 00 00 8b 7c 24 54 55 57 8d 8c
10992b30: 24 90 00 00 00 e8 26 dc f7 ff 8d 8c 24 88 00 00
10992b40: 00 e8 7a d9 f7 ff 8d 8c 24 88 00 00 00 e8 3e dd
10992b50: f7 ff 8d 4c 24 78 e8 85 c9 68 ff 8d 4c 24 68 e8
10992b60: 7c c9 68 ff 85 ff 74 09 57 e8 22 63 f8 ff 83 c4
10992b70: 04 8b 4c 24 10 85 c9 74 07 8b 11 8b 42 08 ff d0
10992b80: 8b 6c 24 24 8b 7c 24 28 83 c3 10 3b 5c 24 64 0f
10992b90: 85 7b fe ff ff 8b 06 8b 50 08 8b ce ff d2 8b 45
10992ba0: 00 8b 50 04 8b cd ff d2 8b 44 24 14 6a 01 50 e8
10992bb0: 6c ef f7 ff 83 c4 08 e9 c7 00 00 00 8b 16 8b 42
10992bc0: 08 8b ce ff d0 8b 4c 24 24 8b 11 8b 42 04 ff d0
10992bd0: 8b 44 24 54 85 c0 74 09 50 e8 b2 62 f8 ff 83 c4
10992be0: 04 8b 4c 24 10 85 c9 74 07 8b 11 8b 42 08 ff d0
10992bf0: 8b 44 24 44 85 c0 74 09 50 e8 92 62 f8 ff 83 c4
10992c00: 04 8d 4c 24 28 c7 44 24 3c 7c 3a ab 10 e8 ce c8
10992c10: 68 ff 8d 4c 24 14 e8 c5 c8 68 ff 5f 5e 5d 5b 81
10992c20: c4 a8 04 00 00 c3 8b 16 8b 42 08 8b ce ff d0 8b
10992c30: 4c 24 24 8b 11 8b 42 04 ff d0 8d 8c 24 88 00 00
10992c40: 00 e8 4a dc f7 ff 8d 4c 24 78 e8 91 c8 68 ff 8d
10992c50: 4c 24 68 e8 88 c8 68 ff e9 73 ff ff ff 8b 7c 24
10992c60: 28 8b 16 8b 42 08 8b ce ff d0 8b 55 00 8b 42 04
10992c70: 8b cd ff d0 8b 4c 24 10 85 c9 74 07 8b 11 8b 42
10992c80: 08 ff d0 8b 44 24 44 85 c0 74 09 50 e8 ff 61 f8
10992c90: ff 83 c4 04 8b 4c 24 30 2b cf 83 e1 fe 83 f9 02
10992ca0: c7 44 24 3c 7c 3a ab 10 7e 0d 85 ff 74 09 57 e8
10992cb0: dc 61 f8 ff 83 c4 04 8b 54 24 1c 8b 44 24 14 2b
10992cc0: d0 83 e2 fe 83 fa 02 7e 51 85 c0 eb 42 8b 06 8b
10992cd0: 50 08 8b ce ff d2 8b 45 00 8b 50 04 8b cd ff d2
10992ce0: 8b 44 24 30 2b c7 83 e0 fe 83 f8 02 7e 0d 3b fb
10992cf0: 74 09 57 e8 98 61 f8 ff 83 c4 04 8b 44 24 14 8b
10992d00: 4c 24 1c 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c3 74
10992d10: 09 50 e8 79 61 f8 ff 83 c4 04 5f 5e 5d 5b 81 c4
10992d20: a8 04 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10992820 <.text+0x991820>:
10992820:	81 ec a8 04 00 00                               	sub    esp,0x4a8
10992826:	53                                              	push   ebx
10992827:	55                                              	push   ebp
10992828:	56                                              	push   esi
10992829:	57                                              	push   edi
1099282a:	8d 84 24 b0 02 00 00                            	lea    eax,[esp+0x2b0]
10992831:	68 04 01 00 00                                  	push   0x104
10992836:	50                                              	push   eax
10992837:	e8 e4 e4 f7 ff                                  	call   0x10910d20
1099283c:	68 c0 75 b9 10                                  	push   0x10b975c0
10992841:	8d 8c 24 bc 02 00 00                            	lea    ecx,[esp+0x2bc]
10992848:	51                                              	push   ecx
10992849:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1099284d:	bb 44 82 ca 10                                  	mov    ebx,0x10ca8244
10992852:	68 84 b4 b2 10                                  	push   0x10b2b484
10992857:	bd 46 82 ca 10                                  	mov    ebp,0x10ca8246
1099285c:	52                                              	push   edx
1099285d:	c7 44 24 38 90 75 b9 10                         	mov    DWORD PTR [esp+0x38],0x10b97590
10992865:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
10992869:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
1099286d:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
10992871:	e8 7a 87 6d ff                                  	call   0x1006aff0
10992876:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
1099287a:	50                                              	push   eax
1099287b:	e8 c0 fd f8 ff                                  	call   0x10922640
10992880:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10992884:	8b b4 24 dc 04 00 00                            	mov    esi,DWORD PTR [esp+0x4dc]
1099288b:	8b bc 24 d8 04 00 00                            	mov    edi,DWORD PTR [esp+0x4d8]
10992892:	83 c4 1c                                        	add    esp,0x1c
10992895:	51                                              	push   ecx
10992896:	56                                              	push   esi
10992897:	8b cf                                           	mov    ecx,edi
10992899:	e8 12 28 e2 ff                                  	call   0x107b50b0
1099289e:	56                                              	push   esi
1099289f:	8b cf                                           	mov    ecx,edi
109928a1:	c7 44 24 38 5c 75 b9 10                         	mov    DWORD PTR [esp+0x38],0x10b9755c
109928a9:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
109928ad:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
109928b1:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
109928b5:	e8 a6 19 e2 ff                                  	call   0x107b4260
109928ba:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
109928be:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109928c2:	83 ec 10                                        	sub    esp,0x10
109928c5:	8b f0                                           	mov    esi,eax
109928c7:	8b c4                                           	mov    eax,esp
109928c9:	89 10                                           	mov    DWORD PTR [eax],edx
109928cb:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
109928cf:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
109928d2:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
109928d6:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
109928d9:	8d 54 24 38                                     	lea    edx,[esp+0x38]
109928dd:	68 54 42 af 10                                  	push   0x10af4254
109928e2:	52                                              	push   edx
109928e3:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
109928e6:	e8 05 87 6d ff                                  	call   0x1006aff0
109928eb:	8b 46 28                                        	mov    eax,DWORD PTR [esi+0x28]
109928ee:	33 db                                           	xor    ebx,ebx
109928f0:	83 c4 18                                        	add    esp,0x18
109928f3:	66 39 18                                        	cmp    WORD PTR [eax],bx
109928f6:	8b c8                                           	mov    ecx,eax
109928f8:	74 0e                                           	je     0x10992908
109928fa:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10992900:	83 c1 02                                        	add    ecx,0x2
10992903:	66 39 19                                        	cmp    WORD PTR [ecx],bx
10992906:	75 f8                                           	jne    0x10992900
10992908:	2b c8                                           	sub    ecx,eax
1099290a:	d1 f9                                           	sar    ecx,1
1099290c:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
1099290f:	51                                              	push   ecx
10992910:	50                                              	push   eax
10992911:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10992915:	e8 96 ca 68 ff                                  	call   0x1001f3b0
1099291a:	e8 11 ff d8 ff                                  	call   0x10722830
1099291f:	8b f0                                           	mov    esi,eax
10992921:	3b f3                                           	cmp    esi,ebx
10992923:	75 24                                           	jne    0x10992949
10992925:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10992929:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1099292d:	2b d0                                           	sub    edx,eax
1099292f:	83 e2 fe                                        	and    edx,0xfffffffe
10992932:	83 fa 02                                        	cmp    edx,0x2
10992935:	0f 8e c0 03 00 00                               	jle    0x10992cfb
1099293b:	3b c3                                           	cmp    eax,ebx
1099293d:	0f 84 b8 03 00 00                               	je     0x10992cfb
10992943:	50                                              	push   eax
10992944:	e9 aa 03 00 00                                  	jmp    0x10992cf3
10992949:	53                                              	push   ebx
1099294a:	53                                              	push   ebx
1099294b:	53                                              	push   ebx
1099294c:	53                                              	push   ebx
1099294d:	68 28 75 b9 10                                  	push   0x10b97528
10992952:	68 98 03 00 00                                  	push   0x398
10992957:	e8 04 67 f8 ff                                  	call   0x10919060
1099295c:	8b 7c 24 40                                     	mov    edi,DWORD PTR [esp+0x40]
10992960:	83 c4 18                                        	add    esp,0x18
10992963:	3b c3                                           	cmp    eax,ebx
10992965:	74 0f                                           	je     0x10992976
10992967:	56                                              	push   esi
10992968:	57                                              	push   edi
10992969:	8b c8                                           	mov    ecx,eax
1099296b:	e8 60 c6 f4 ff                                  	call   0x108defd0
10992970:	8b f0                                           	mov    esi,eax
10992972:	3b f3                                           	cmp    esi,ebx
10992974:	75 11                                           	jne    0x10992987
10992976:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1099297a:	2b d7                                           	sub    edx,edi
1099297c:	83 e2 fe                                        	and    edx,0xfffffffe
1099297f:	83 fa 02                                        	cmp    edx,0x2
10992982:	e9 65 03 00 00                                  	jmp    0x10992cec
10992987:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
1099298a:	8b 02                                           	mov    eax,DWORD PTR [edx]
1099298c:	8d 6e 04                                        	lea    ebp,[esi+0x4]
1099298f:	8b cd                                           	mov    ecx,ebp
10992991:	89 6c 24 24                                     	mov    DWORD PTR [esp+0x24],ebp
10992995:	ff d0                                           	call   eax
10992997:	8b 16                                           	mov    edx,DWORD PTR [esi]
10992999:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1099299c:	8b ce                                           	mov    ecx,esi
1099299e:	ff d0                                           	call   eax
109929a0:	84 c0                                           	test   al,al
109929a2:	0f 84 25 03 00 00                               	je     0x10992ccd
109929a8:	8b 16                                           	mov    edx,DWORD PTR [esi]
109929aa:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
109929ad:	53                                              	push   ebx
109929ae:	6a 03                                           	push   0x3
109929b0:	6a 01                                           	push   0x1
109929b2:	8b ce                                           	mov    ecx,esi
109929b4:	ff d0                                           	call   eax
109929b6:	84 c0                                           	test   al,al
109929b8:	0f 84 0f 03 00 00                               	je     0x10992ccd
109929be:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
109929c2:	c7 44 24 3c 24 5a ab 10                         	mov    DWORD PTR [esp+0x3c],0x10ab5a24
109929ca:	c7 44 24 40 67 c7 75 2e                         	mov    DWORD PTR [esp+0x40],0x2e75c767
109929d2:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
109929d6:	89 5c 24 48                                     	mov    DWORD PTR [esp+0x48],ebx
109929da:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
109929de:	c7 44 24 50 f0 74 b9 10                         	mov    DWORD PTR [esp+0x50],0x10b974f0
109929e6:	8b 16                                           	mov    edx,DWORD PTR [esi]
109929e8:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
109929eb:	50                                              	push   eax
109929ec:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
109929f0:	51                                              	push   ecx
109929f1:	8b ce                                           	mov    ecx,esi
109929f3:	ff d2                                           	call   edx
109929f5:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
109929f9:	8b 5c 24 44                                     	mov    ebx,DWORD PTR [esp+0x44]
109929fd:	3b d8                                           	cmp    ebx,eax
109929ff:	89 44 24 64                                     	mov    DWORD PTR [esp+0x64],eax
10992a03:	0f 84 8c 01 00 00                               	je     0x10992b95
10992a09:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10992a10:	8b 06                                           	mov    eax,DWORD PTR [esi]
10992a12:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
10992a15:	6a 00                                           	push   0x0
10992a17:	6a 01                                           	push   0x1
10992a19:	6a 03                                           	push   0x3
10992a1b:	6a 01                                           	push   0x1
10992a1d:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10992a21:	51                                              	push   ecx
10992a22:	53                                              	push   ebx
10992a23:	8b ce                                           	mov    ecx,esi
10992a25:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
10992a2d:	ff d2                                           	call   edx
10992a2f:	84 c0                                           	test   al,al
10992a31:	0f 84 2a 02 00 00                               	je     0x10992c61
10992a37:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10992a3b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10992a3d:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
10992a40:	ff d2                                           	call   edx
10992a42:	8b f8                                           	mov    edi,eax
10992a44:	85 ff                                           	test   edi,edi
10992a46:	0f 84 11 02 00 00                               	je     0x10992c5d
10992a4c:	8b 07                                           	mov    eax,DWORD PTR [edi]
10992a4e:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
10992a51:	8b cf                                           	mov    ecx,edi
10992a53:	ff d2                                           	call   edx
10992a55:	8b e8                                           	mov    ebp,eax
10992a57:	33 c0                                           	xor    eax,eax
10992a59:	55                                              	push   ebp
10992a5a:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
10992a5e:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
10992a62:	89 44 24 5c                                     	mov    DWORD PTR [esp+0x5c],eax
10992a66:	89 44 24 60                                     	mov    DWORD PTR [esp+0x60],eax
10992a6a:	c7 44 24 64 c0 74 b9 10                         	mov    DWORD PTR [esp+0x64],0x10b974c0
10992a72:	e8 89 eb 66 ff                                  	call   0x10001600
10992a77:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
10992a7b:	8b 07                                           	mov    eax,DWORD PTR [edi]
10992a7d:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
10992a80:	55                                              	push   ebp
10992a81:	51                                              	push   ecx
10992a82:	8b cf                                           	mov    ecx,edi
10992a84:	ff d2                                           	call   edx
10992a86:	85 c0                                           	test   eax,eax
10992a88:	0f 84 2e 01 00 00                               	je     0x10992bbc
10992a8e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10992a92:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10992a94:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
10992a97:	ff d2                                           	call   edx
10992a99:	8d 44 24 38                                     	lea    eax,[esp+0x38]
10992a9d:	50                                              	push   eax
10992a9e:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
10992aa2:	c7 44 24 3c 8c 74 b9 10                         	mov    DWORD PTR [esp+0x3c],0x10b9748c
10992aaa:	e8 81 bb 68 ff                                  	call   0x1001e630
10992aaf:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10992ab3:	51                                              	push   ecx
10992ab4:	8d 4c 24 7c                                     	lea    ecx,[esp+0x7c]
10992ab8:	c7 44 24 3c 58 74 b9 10                         	mov    DWORD PTR [esp+0x3c],0x10b97458
10992ac0:	e8 6b bb 68 ff                                  	call   0x1001e630
10992ac5:	6a 00                                           	push   0x0
10992ac7:	6a 00                                           	push   0x0
10992ac9:	6a 00                                           	push   0x0
10992acb:	8d 54 24 74                                     	lea    edx,[esp+0x74]
10992acf:	52                                              	push   edx
10992ad0:	53                                              	push   ebx
10992ad1:	e8 5a 20 f5 ff                                  	call   0x108e4b30
10992ad6:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
10992ada:	8b 8c 24 d8 04 00 00                            	mov    ecx,DWORD PTR [esp+0x4d8]
10992ae1:	50                                              	push   eax
10992ae2:	51                                              	push   ecx
10992ae3:	8d 94 24 94 00 00 00                            	lea    edx,[esp+0x94]
10992aea:	68 84 b4 b2 10                                  	push   0x10b2b484
10992aef:	52                                              	push   edx
10992af0:	e8 fb 84 6d ff                                  	call   0x1006aff0
10992af5:	8b 84 24 9c 00 00 00                            	mov    eax,DWORD PTR [esp+0x9c]
10992afc:	83 c4 24                                        	add    esp,0x24
10992aff:	50                                              	push   eax
10992b00:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
10992b07:	e8 24 dd f7 ff                                  	call   0x10910830
10992b0c:	6a 00                                           	push   0x0
10992b0e:	6a 01                                           	push   0x1
10992b10:	6a 02                                           	push   0x2
10992b12:	6a 02                                           	push   0x2
10992b14:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
10992b1b:	e8 60 d8 f7 ff                                  	call   0x10910380
10992b20:	84 c0                                           	test   al,al
10992b22:	0f 84 fe 00 00 00                               	je     0x10992c26
10992b28:	8b 7c 24 54                                     	mov    edi,DWORD PTR [esp+0x54]
10992b2c:	55                                              	push   ebp
10992b2d:	57                                              	push   edi
10992b2e:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
10992b35:	e8 26 dc f7 ff                                  	call   0x10910760
10992b3a:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
10992b41:	e8 7a d9 f7 ff                                  	call   0x109104c0
10992b46:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
10992b4d:	e8 3e dd f7 ff                                  	call   0x10910890
10992b52:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
10992b56:	e8 85 c9 68 ff                                  	call   0x1001f4e0
10992b5b:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10992b5f:	e8 7c c9 68 ff                                  	call   0x1001f4e0
10992b64:	85 ff                                           	test   edi,edi
10992b66:	74 09                                           	je     0x10992b71
10992b68:	57                                              	push   edi
10992b69:	e8 22 63 f8 ff                                  	call   0x10918e90
10992b6e:	83 c4 04                                        	add    esp,0x4
10992b71:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10992b75:	85 c9                                           	test   ecx,ecx
10992b77:	74 07                                           	je     0x10992b80
10992b79:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10992b7b:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10992b7e:	ff d0                                           	call   eax
10992b80:	8b 6c 24 24                                     	mov    ebp,DWORD PTR [esp+0x24]
10992b84:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
10992b88:	83 c3 10                                        	add    ebx,0x10
10992b8b:	3b 5c 24 64                                     	cmp    ebx,DWORD PTR [esp+0x64]
10992b8f:	0f 85 7b fe ff ff                               	jne    0x10992a10
10992b95:	8b 06                                           	mov    eax,DWORD PTR [esi]
10992b97:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10992b9a:	8b ce                                           	mov    ecx,esi
10992b9c:	ff d2                                           	call   edx
10992b9e:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
10992ba1:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10992ba4:	8b cd                                           	mov    ecx,ebp
10992ba6:	ff d2                                           	call   edx
10992ba8:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10992bac:	6a 01                                           	push   0x1
10992bae:	50                                              	push   eax
10992baf:	e8 6c ef f7 ff                                  	call   0x10911b20
10992bb4:	83 c4 08                                        	add    esp,0x8
10992bb7:	e9 c7 00 00 00                                  	jmp    0x10992c83
10992bbc:	8b 16                                           	mov    edx,DWORD PTR [esi]
10992bbe:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10992bc1:	8b ce                                           	mov    ecx,esi
10992bc3:	ff d0                                           	call   eax
10992bc5:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10992bc9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10992bcb:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10992bce:	ff d0                                           	call   eax
10992bd0:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10992bd4:	85 c0                                           	test   eax,eax
10992bd6:	74 09                                           	je     0x10992be1
10992bd8:	50                                              	push   eax
10992bd9:	e8 b2 62 f8 ff                                  	call   0x10918e90
10992bde:	83 c4 04                                        	add    esp,0x4
10992be1:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10992be5:	85 c9                                           	test   ecx,ecx
10992be7:	74 07                                           	je     0x10992bf0
10992be9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10992beb:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10992bee:	ff d0                                           	call   eax
10992bf0:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10992bf4:	85 c0                                           	test   eax,eax
10992bf6:	74 09                                           	je     0x10992c01
10992bf8:	50                                              	push   eax
10992bf9:	e8 92 62 f8 ff                                  	call   0x10918e90
10992bfe:	83 c4 04                                        	add    esp,0x4
10992c01:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10992c05:	c7 44 24 3c 7c 3a ab 10                         	mov    DWORD PTR [esp+0x3c],0x10ab3a7c
10992c0d:	e8 ce c8 68 ff                                  	call   0x1001f4e0
10992c12:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10992c16:	e8 c5 c8 68 ff                                  	call   0x1001f4e0
10992c1b:	5f                                              	pop    edi
10992c1c:	5e                                              	pop    esi
10992c1d:	5d                                              	pop    ebp
10992c1e:	5b                                              	pop    ebx
10992c1f:	81 c4 a8 04 00 00                               	add    esp,0x4a8
10992c25:	c3                                              	ret
10992c26:	8b 16                                           	mov    edx,DWORD PTR [esi]
10992c28:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10992c2b:	8b ce                                           	mov    ecx,esi
10992c2d:	ff d0                                           	call   eax
10992c2f:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10992c33:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10992c35:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10992c38:	ff d0                                           	call   eax
10992c3a:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
10992c41:	e8 4a dc f7 ff                                  	call   0x10910890
10992c46:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
10992c4a:	e8 91 c8 68 ff                                  	call   0x1001f4e0
10992c4f:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10992c53:	e8 88 c8 68 ff                                  	call   0x1001f4e0
10992c58:	e9 73 ff ff ff                                  	jmp    0x10992bd0
10992c5d:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
10992c61:	8b 16                                           	mov    edx,DWORD PTR [esi]
10992c63:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10992c66:	8b ce                                           	mov    ecx,esi
10992c68:	ff d0                                           	call   eax
10992c6a:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
10992c6d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10992c70:	8b cd                                           	mov    ecx,ebp
10992c72:	ff d0                                           	call   eax
10992c74:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10992c78:	85 c9                                           	test   ecx,ecx
10992c7a:	74 07                                           	je     0x10992c83
10992c7c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10992c7e:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10992c81:	ff d0                                           	call   eax
10992c83:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10992c87:	85 c0                                           	test   eax,eax
10992c89:	74 09                                           	je     0x10992c94
10992c8b:	50                                              	push   eax
10992c8c:	e8 ff 61 f8 ff                                  	call   0x10918e90
10992c91:	83 c4 04                                        	add    esp,0x4
10992c94:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10992c98:	2b cf                                           	sub    ecx,edi
10992c9a:	83 e1 fe                                        	and    ecx,0xfffffffe
10992c9d:	83 f9 02                                        	cmp    ecx,0x2
10992ca0:	c7 44 24 3c 7c 3a ab 10                         	mov    DWORD PTR [esp+0x3c],0x10ab3a7c
10992ca8:	7e 0d                                           	jle    0x10992cb7
10992caa:	85 ff                                           	test   edi,edi
10992cac:	74 09                                           	je     0x10992cb7
10992cae:	57                                              	push   edi
10992caf:	e8 dc 61 f8 ff                                  	call   0x10918e90
10992cb4:	83 c4 04                                        	add    esp,0x4
10992cb7:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10992cbb:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10992cbf:	2b d0                                           	sub    edx,eax
10992cc1:	83 e2 fe                                        	and    edx,0xfffffffe
10992cc4:	83 fa 02                                        	cmp    edx,0x2
10992cc7:	7e 51                                           	jle    0x10992d1a
10992cc9:	85 c0                                           	test   eax,eax
10992ccb:	eb 42                                           	jmp    0x10992d0f
10992ccd:	8b 06                                           	mov    eax,DWORD PTR [esi]
10992ccf:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10992cd2:	8b ce                                           	mov    ecx,esi
10992cd4:	ff d2                                           	call   edx
10992cd6:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
10992cd9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10992cdc:	8b cd                                           	mov    ecx,ebp
10992cde:	ff d2                                           	call   edx
10992ce0:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
10992ce4:	2b c7                                           	sub    eax,edi
10992ce6:	83 e0 fe                                        	and    eax,0xfffffffe
10992ce9:	83 f8 02                                        	cmp    eax,0x2
10992cec:	7e 0d                                           	jle    0x10992cfb
10992cee:	3b fb                                           	cmp    edi,ebx
10992cf0:	74 09                                           	je     0x10992cfb
10992cf2:	57                                              	push   edi
10992cf3:	e8 98 61 f8 ff                                  	call   0x10918e90
10992cf8:	83 c4 04                                        	add    esp,0x4
10992cfb:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10992cff:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10992d03:	2b c8                                           	sub    ecx,eax
10992d05:	83 e1 fe                                        	and    ecx,0xfffffffe
10992d08:	83 f9 02                                        	cmp    ecx,0x2
10992d0b:	7e 0d                                           	jle    0x10992d1a
10992d0d:	3b c3                                           	cmp    eax,ebx
10992d0f:	74 09                                           	je     0x10992d1a
10992d11:	50                                              	push   eax
10992d12:	e8 79 61 f8 ff                                  	call   0x10918e90
10992d17:	83 c4 04                                        	add    esp,0x4
10992d1a:	5f                                              	pop    edi
10992d1b:	5e                                              	pop    esi
10992d1c:	5d                                              	pop    ebp
10992d1d:	5b                                              	pop    ebx
10992d1e:	81 c4 a8 04 00 00                               	add    esp,0x4a8
10992d24:	c3                                              	ret
10992d25:	cc                                              	int3
10992d26:	cc                                              	int3
10992d27:	cc                                              	int3
10992d28:	cc                                              	int3
10992d29:	cc                                              	int3
10992d2a:	cc                                              	int3
10992d2b:	cc                                              	int3
10992d2c:	cc                                              	int3
10992d2d:	cc                                              	int3
10992d2e:	cc                                              	int3
10992d2f:	cc                                              	int3
