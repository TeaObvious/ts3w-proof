# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654750 (Audio_PauseGroupImpl)
Paired Ghidra pseudocode: 10654750_Audio_PauseGroupImpl.c
Window: [0x10654750, 0x106547b0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x106547b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654750: 56 e8 0a f5 04 00 8b f0 85 f6 74 43 8b 06 8b 50
10654760: 44 68 21 2b 4f 04 8b ce ff d2 8b 4c 24 08 8b 06
10654770: 8b 50 4c 51 68 49 20 36 04 8b ce ff d2 8b 06 8b
10654780: 50 4c 33 c9 38 4c 24 0c 0f 95 c1 51 68 8b 8c 2c
10654790: 04 8b ce ff d2 8b 06 8b 50 68 8b ce 5e ff e2 5e
106547a0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10654750 <.text+0x653750>:
10654750:	56                                              	push   esi
10654751:	e8 0a f5 04 00                                  	call   0x106a3c60
10654756:	8b f0                                           	mov    esi,eax
10654758:	85 f6                                           	test   esi,esi
1065475a:	74 43                                           	je     0x1065479f
1065475c:	8b 06                                           	mov    eax,DWORD PTR [esi]
1065475e:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10654761:	68 21 2b 4f 04                                  	push   0x44f2b21
10654766:	8b ce                                           	mov    ecx,esi
10654768:	ff d2                                           	call   edx
1065476a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1065476e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654770:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
10654773:	51                                              	push   ecx
10654774:	68 49 20 36 04                                  	push   0x4362049
10654779:	8b ce                                           	mov    ecx,esi
1065477b:	ff d2                                           	call   edx
1065477d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1065477f:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
10654782:	33 c9                                           	xor    ecx,ecx
10654784:	38 4c 24 0c                                     	cmp    BYTE PTR [esp+0xc],cl
10654788:	0f 95 c1                                        	setne  cl
1065478b:	51                                              	push   ecx
1065478c:	68 8b 8c 2c 04                                  	push   0x42c8c8b
10654791:	8b ce                                           	mov    ecx,esi
10654793:	ff d2                                           	call   edx
10654795:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654797:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
1065479a:	8b ce                                           	mov    ecx,esi
1065479c:	5e                                              	pop    esi
1065479d:	ff e2                                           	jmp    edx
1065479f:	5e                                              	pop    esi
106547a0:	c3                                              	ret
106547a1:	cc                                              	int3
106547a2:	cc                                              	int3
106547a3:	cc                                              	int3
106547a4:	cc                                              	int3
106547a5:	cc                                              	int3
106547a6:	cc                                              	int3
106547a7:	cc                                              	int3
106547a8:	cc                                              	int3
106547a9:	cc                                              	int3
106547aa:	cc                                              	int3
106547ab:	cc                                              	int3
106547ac:	cc                                              	int3
106547ad:	cc                                              	int3
106547ae:	cc                                              	int3
106547af:	cc                                              	int3
