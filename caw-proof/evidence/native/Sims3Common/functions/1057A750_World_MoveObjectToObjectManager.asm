# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a750 (World_MoveObjectToObjectManager)
Paired Ghidra pseudocode: 1057A750_World_MoveObjectToObjectManager.c
Window: [0x1057a750, 0x1057a810) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a750: 51 e8 4a fa 1a 00 85 c0 0f 84 a8 00 00 00 8b 4c
1057a760: 24 0c 8b 54 24 08 57 51 52 8b c8 e8 40 04 1b 00
1057a770: 8b f8 85 ff 89 7c 24 04 0f 84 87 00 00 00 8d 47
1057a780: 04 b9 01 00 00 00 f0 0f c1 08 8b 0d c4 00 c7 10
1057a790: 85 c9 75 0c 8d 4c 24 04 e8 23 c7 0d 00 5f 59 c3
1057a7a0: 8b 44 24 14 8b 54 24 18 53 56 8b d8 33 f6 0b da
1057a7b0: 74 1f 8b b1 b0 00 00 00 3b 46 48 75 05 3b 56 4c
1057a7c0: 74 0f 6a 00 52 50 e8 d5 a3 cb ff 8b f0 85 f6 74
1057a7d0: 29 8b cf e8 48 ce 3e 00 3b f0 74 1e 85 c0 74 0c
1057a7e0: 8b 10 6a 00 8b c8 8b 42 3c 57 ff d0 85 f6 74 0a
1057a7f0: 8b 16 8b 42 30 57 8b ce ff d0 8d 4c 24 0c e8 bd
1057a800: c6 0d 00 5e 5b 5f 59 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057a750 <.text+0x579750>:
1057a750:	51                                              	push   ecx
1057a751:	e8 4a fa 1a 00                                  	call   0x1072a1a0
1057a756:	85 c0                                           	test   eax,eax
1057a758:	0f 84 a8 00 00 00                               	je     0x1057a806
1057a75e:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057a762:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057a766:	57                                              	push   edi
1057a767:	51                                              	push   ecx
1057a768:	52                                              	push   edx
1057a769:	8b c8                                           	mov    ecx,eax
1057a76b:	e8 40 04 1b 00                                  	call   0x1072abb0
1057a770:	8b f8                                           	mov    edi,eax
1057a772:	85 ff                                           	test   edi,edi
1057a774:	89 7c 24 04                                     	mov    DWORD PTR [esp+0x4],edi
1057a778:	0f 84 87 00 00 00                               	je     0x1057a805
1057a77e:	8d 47 04                                        	lea    eax,[edi+0x4]
1057a781:	b9 01 00 00 00                                  	mov    ecx,0x1
1057a786:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1057a78a:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057a790:	85 c9                                           	test   ecx,ecx
1057a792:	75 0c                                           	jne    0x1057a7a0
1057a794:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1057a798:	e8 23 c7 0d 00                                  	call   0x10656ec0
1057a79d:	5f                                              	pop    edi
1057a79e:	59                                              	pop    ecx
1057a79f:	c3                                              	ret
1057a7a0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1057a7a4:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057a7a8:	53                                              	push   ebx
1057a7a9:	56                                              	push   esi
1057a7aa:	8b d8                                           	mov    ebx,eax
1057a7ac:	33 f6                                           	xor    esi,esi
1057a7ae:	0b da                                           	or     ebx,edx
1057a7b0:	74 1f                                           	je     0x1057a7d1
1057a7b2:	8b b1 b0 00 00 00                               	mov    esi,DWORD PTR [ecx+0xb0]
1057a7b8:	3b 46 48                                        	cmp    eax,DWORD PTR [esi+0x48]
1057a7bb:	75 05                                           	jne    0x1057a7c2
1057a7bd:	3b 56 4c                                        	cmp    edx,DWORD PTR [esi+0x4c]
1057a7c0:	74 0f                                           	je     0x1057a7d1
1057a7c2:	6a 00                                           	push   0x0
1057a7c4:	52                                              	push   edx
1057a7c5:	50                                              	push   eax
1057a7c6:	e8 d5 a3 cb ff                                  	call   0x10234ba0
1057a7cb:	8b f0                                           	mov    esi,eax
1057a7cd:	85 f6                                           	test   esi,esi
1057a7cf:	74 29                                           	je     0x1057a7fa
1057a7d1:	8b cf                                           	mov    ecx,edi
1057a7d3:	e8 48 ce 3e 00                                  	call   0x10967620
1057a7d8:	3b f0                                           	cmp    esi,eax
1057a7da:	74 1e                                           	je     0x1057a7fa
1057a7dc:	85 c0                                           	test   eax,eax
1057a7de:	74 0c                                           	je     0x1057a7ec
1057a7e0:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057a7e2:	6a 00                                           	push   0x0
1057a7e4:	8b c8                                           	mov    ecx,eax
1057a7e6:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
1057a7e9:	57                                              	push   edi
1057a7ea:	ff d0                                           	call   eax
1057a7ec:	85 f6                                           	test   esi,esi
1057a7ee:	74 0a                                           	je     0x1057a7fa
1057a7f0:	8b 16                                           	mov    edx,DWORD PTR [esi]
1057a7f2:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
1057a7f5:	57                                              	push   edi
1057a7f6:	8b ce                                           	mov    ecx,esi
1057a7f8:	ff d0                                           	call   eax
1057a7fa:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1057a7fe:	e8 bd c6 0d 00                                  	call   0x10656ec0
1057a803:	5e                                              	pop    esi
1057a804:	5b                                              	pop    ebx
1057a805:	5f                                              	pop    edi
1057a806:	59                                              	pop    ecx
1057a807:	c3                                              	ret
1057a808:	cc                                              	int3
1057a809:	cc                                              	int3
1057a80a:	cc                                              	int3
1057a80b:	cc                                              	int3
1057a80c:	cc                                              	int3
1057a80d:	cc                                              	int3
1057a80e:	cc                                              	int3
1057a80f:	cc                                              	int3
