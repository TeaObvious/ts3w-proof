# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996760 (WorldTerrainWrap_GetParams)
Paired Ghidra pseudocode: 10996760_WorldTerrainWrap_GetParams.c
Window: [0x10996760, 0x109967f0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x109967f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996760: 8b 44 24 04 83 ec 14 57 8b 78 68 85 ff 75 07 33
10996770: c0 5f 83 c4 14 c3 53 8b 5c 24 24 8d 4c 24 08 51
10996780: 53 8b cf e8 38 da 85 ff 84 c0 75 08 5b 33 c0 5f
10996790: 83 c4 14 c3 8b 54 24 08 8b 44 24 0c 56 8b 74 24
109967a0: 2c 8d 4c 24 14 51 53 8b cf 89 16 89 46 04 e8 3d
109967b0: da 85 ff 84 c0 75 09 5e 5b 33 c0 5f 83 c4 14 c3
109967c0: 8b 44 24 1c 8b 54 24 18 f3 0f 10 44 24 14 89 46
109967d0: 10 f3 0f 11 46 08 89 56 0c 5e 5b b8 01 00 00 00
109967e0: 5f 83 c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996760 <.text+0x995760>:
10996760:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996764:	83 ec 14                                        	sub    esp,0x14
10996767:	57                                              	push   edi
10996768:	8b 78 68                                        	mov    edi,DWORD PTR [eax+0x68]
1099676b:	85 ff                                           	test   edi,edi
1099676d:	75 07                                           	jne    0x10996776
1099676f:	33 c0                                           	xor    eax,eax
10996771:	5f                                              	pop    edi
10996772:	83 c4 14                                        	add    esp,0x14
10996775:	c3                                              	ret
10996776:	53                                              	push   ebx
10996777:	8b 5c 24 24                                     	mov    ebx,DWORD PTR [esp+0x24]
1099677b:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1099677f:	51                                              	push   ecx
10996780:	53                                              	push   ebx
10996781:	8b cf                                           	mov    ecx,edi
10996783:	e8 38 da 85 ff                                  	call   0x101f41c0
10996788:	84 c0                                           	test   al,al
1099678a:	75 08                                           	jne    0x10996794
1099678c:	5b                                              	pop    ebx
1099678d:	33 c0                                           	xor    eax,eax
1099678f:	5f                                              	pop    edi
10996790:	83 c4 14                                        	add    esp,0x14
10996793:	c3                                              	ret
10996794:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10996798:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1099679c:	56                                              	push   esi
1099679d:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
109967a1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
109967a5:	51                                              	push   ecx
109967a6:	53                                              	push   ebx
109967a7:	8b cf                                           	mov    ecx,edi
109967a9:	89 16                                           	mov    DWORD PTR [esi],edx
109967ab:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
109967ae:	e8 3d da 85 ff                                  	call   0x101f41f0
109967b3:	84 c0                                           	test   al,al
109967b5:	75 09                                           	jne    0x109967c0
109967b7:	5e                                              	pop    esi
109967b8:	5b                                              	pop    ebx
109967b9:	33 c0                                           	xor    eax,eax
109967bb:	5f                                              	pop    edi
109967bc:	83 c4 14                                        	add    esp,0x14
109967bf:	c3                                              	ret
109967c0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
109967c4:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
109967c8:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
109967ce:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
109967d1:	f3 0f 11 46 08                                  	movss  DWORD PTR [esi+0x8],xmm0
109967d6:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
109967d9:	5e                                              	pop    esi
109967da:	5b                                              	pop    ebx
109967db:	b8 01 00 00 00                                  	mov    eax,0x1
109967e0:	5f                                              	pop    edi
109967e1:	83 c4 14                                        	add    esp,0x14
109967e4:	c3                                              	ret
109967e5:	cc                                              	int3
109967e6:	cc                                              	int3
109967e7:	cc                                              	int3
109967e8:	cc                                              	int3
109967e9:	cc                                              	int3
109967ea:	cc                                              	int3
109967eb:	cc                                              	int3
109967ec:	cc                                              	int3
109967ed:	cc                                              	int3
109967ee:	cc                                              	int3
109967ef:	cc                                              	int3
