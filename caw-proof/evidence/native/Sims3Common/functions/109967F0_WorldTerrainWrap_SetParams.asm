# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109967f0 (WorldTerrainWrap_SetParams)
Paired Ghidra pseudocode: 109967F0_WorldTerrainWrap_SetParams.c
Window: [0x109967f0, 0x10996870) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109967f0: 8b 44 24 04 83 ec 14 57 8b 78 68 85 ff 75 07 33
10996800: c0 5f 83 c4 14 c3 53 8b 5c 24 24 56 8b 74 24 2c
10996810: 8b 0e 8b 56 04 8d 44 24 0c 50 89 4c 24 10 53 8b
10996820: cf 89 54 24 18 e8 f6 e6 85 ff 84 c0 74 11 8d 4c
10996830: 24 14 51 53 8b cf e8 b5 d9 85 ff 84 c0 75 09 5e
10996840: 5b 33 c0 5f 83 c4 14 c3 8b 44 24 1c 8b 54 24 18
10996850: f3 0f 10 44 24 14 89 46 10 f3 0f 11 46 08 89 56
10996860: 0c 5e 5b b8 01 00 00 00 5f 83 c4 14 c3 cc cc cc

LINEAR DISASSEMBLY
109967f0 <.text+0x9957f0>:
109967f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109967f4:	83 ec 14                                        	sub    esp,0x14
109967f7:	57                                              	push   edi
109967f8:	8b 78 68                                        	mov    edi,DWORD PTR [eax+0x68]
109967fb:	85 ff                                           	test   edi,edi
109967fd:	75 07                                           	jne    0x10996806
109967ff:	33 c0                                           	xor    eax,eax
10996801:	5f                                              	pop    edi
10996802:	83 c4 14                                        	add    esp,0x14
10996805:	c3                                              	ret
10996806:	53                                              	push   ebx
10996807:	8b 5c 24 24                                     	mov    ebx,DWORD PTR [esp+0x24]
1099680b:	56                                              	push   esi
1099680c:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
10996810:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
10996812:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
10996815:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10996819:	50                                              	push   eax
1099681a:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
1099681e:	53                                              	push   ebx
1099681f:	8b cf                                           	mov    ecx,edi
10996821:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
10996825:	e8 f6 e6 85 ff                                  	call   0x101f4f20
1099682a:	84 c0                                           	test   al,al
1099682c:	74 11                                           	je     0x1099683f
1099682e:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10996832:	51                                              	push   ecx
10996833:	53                                              	push   ebx
10996834:	8b cf                                           	mov    ecx,edi
10996836:	e8 b5 d9 85 ff                                  	call   0x101f41f0
1099683b:	84 c0                                           	test   al,al
1099683d:	75 09                                           	jne    0x10996848
1099683f:	5e                                              	pop    esi
10996840:	5b                                              	pop    ebx
10996841:	33 c0                                           	xor    eax,eax
10996843:	5f                                              	pop    edi
10996844:	83 c4 14                                        	add    esp,0x14
10996847:	c3                                              	ret
10996848:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1099684c:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10996850:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
10996856:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
10996859:	f3 0f 11 46 08                                  	movss  DWORD PTR [esi+0x8],xmm0
1099685e:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
10996861:	5e                                              	pop    esi
10996862:	5b                                              	pop    ebx
10996863:	b8 01 00 00 00                                  	mov    eax,0x1
10996868:	5f                                              	pop    edi
10996869:	83 c4 14                                        	add    esp,0x14
1099686c:	c3                                              	ret
1099686d:	cc                                              	int3
1099686e:	cc                                              	int3
1099686f:	cc                                              	int3
