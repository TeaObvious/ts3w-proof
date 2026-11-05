# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d480 (SacsWrap_StateMachineDriver_GetWalkerData)
Paired Ghidra pseudocode: 1098D480_SacsWrap_StateMachineDriver_GetWalkerData.c
Window: [0x1098d480, 0x1098d500) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d480: 8b 4c 24 04 53 33 db 3b cb 56 8b 74 24 14 89 1e
1098d490: 89 5e 04 89 5e 08 89 5e 14 89 5e 0c 89 5e 10 89
1098d4a0: 5e 18 74 4c 8b 44 24 10 57 50 e8 b1 8c c6 ff 8b
1098d4b0: f8 3b fb 74 3a 8b 4f 08 3b cb 74 15 53 e8 fe 1d
1098d4c0: 9f ff 3b c3 74 0b 8b 48 08 89 0e 8b 50 0c 89 56
1098d4d0: 04 8b 47 10 89 46 08 8b 4f 24 89 4e 14 8b 57 18
1098d4e0: 89 56 0c 8b 47 1c 89 46 10 8b 4f 28 89 4e 18 5f
1098d4f0: 5e 5b c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d480 <.text+0x98c480>:
1098d480:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d484:	53                                              	push   ebx
1098d485:	33 db                                           	xor    ebx,ebx
1098d487:	3b cb                                           	cmp    ecx,ebx
1098d489:	56                                              	push   esi
1098d48a:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
1098d48e:	89 1e                                           	mov    DWORD PTR [esi],ebx
1098d490:	89 5e 04                                        	mov    DWORD PTR [esi+0x4],ebx
1098d493:	89 5e 08                                        	mov    DWORD PTR [esi+0x8],ebx
1098d496:	89 5e 14                                        	mov    DWORD PTR [esi+0x14],ebx
1098d499:	89 5e 0c                                        	mov    DWORD PTR [esi+0xc],ebx
1098d49c:	89 5e 10                                        	mov    DWORD PTR [esi+0x10],ebx
1098d49f:	89 5e 18                                        	mov    DWORD PTR [esi+0x18],ebx
1098d4a2:	74 4c                                           	je     0x1098d4f0
1098d4a4:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098d4a8:	57                                              	push   edi
1098d4a9:	50                                              	push   eax
1098d4aa:	e8 b1 8c c6 ff                                  	call   0x105f6160
1098d4af:	8b f8                                           	mov    edi,eax
1098d4b1:	3b fb                                           	cmp    edi,ebx
1098d4b3:	74 3a                                           	je     0x1098d4ef
1098d4b5:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
1098d4b8:	3b cb                                           	cmp    ecx,ebx
1098d4ba:	74 15                                           	je     0x1098d4d1
1098d4bc:	53                                              	push   ebx
1098d4bd:	e8 fe 1d 9f ff                                  	call   0x1037f2c0
1098d4c2:	3b c3                                           	cmp    eax,ebx
1098d4c4:	74 0b                                           	je     0x1098d4d1
1098d4c6:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1098d4c9:	89 0e                                           	mov    DWORD PTR [esi],ecx
1098d4cb:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098d4ce:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
1098d4d1:	8b 47 10                                        	mov    eax,DWORD PTR [edi+0x10]
1098d4d4:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
1098d4d7:	8b 4f 24                                        	mov    ecx,DWORD PTR [edi+0x24]
1098d4da:	89 4e 14                                        	mov    DWORD PTR [esi+0x14],ecx
1098d4dd:	8b 57 18                                        	mov    edx,DWORD PTR [edi+0x18]
1098d4e0:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
1098d4e3:	8b 47 1c                                        	mov    eax,DWORD PTR [edi+0x1c]
1098d4e6:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
1098d4e9:	8b 4f 28                                        	mov    ecx,DWORD PTR [edi+0x28]
1098d4ec:	89 4e 18                                        	mov    DWORD PTR [esi+0x18],ecx
1098d4ef:	5f                                              	pop    edi
1098d4f0:	5e                                              	pop    esi
1098d4f1:	5b                                              	pop    ebx
1098d4f2:	c3                                              	ret
1098d4f3:	cc                                              	int3
1098d4f4:	cc                                              	int3
1098d4f5:	cc                                              	int3
1098d4f6:	cc                                              	int3
1098d4f7:	cc                                              	int3
1098d4f8:	cc                                              	int3
1098d4f9:	cc                                              	int3
1098d4fa:	cc                                              	int3
1098d4fb:	cc                                              	int3
1098d4fc:	cc                                              	int3
1098d4fd:	cc                                              	int3
1098d4fe:	cc                                              	int3
1098d4ff:	cc                                              	int3
