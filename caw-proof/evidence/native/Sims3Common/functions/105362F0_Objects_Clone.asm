# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105362f0 (Objects_Clone)
Paired Ghidra pseudocode: 105362F0_Objects_Clone.c
Window: [0x105362f0, 0x10536360) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105362f0: 53 56 57 e8 a8 3e 1f 00 8b 4c 24 14 8b 54 24 10
10536300: 51 52 8b c8 e8 a7 48 1f 00 8b f0 e8 90 3e 1f 00
10536310: 85 f6 8b d8 74 0b 8b ce e8 03 13 43 00 8b f8 eb
10536320: 02 33 ff 85 db 74 30 85 f6 74 2c 85 ff 74 28 6a
10536330: ff 6a 00 6a 00 56 8b cb e8 b3 55 1f 00 8b f0 85
10536340: f6 74 14 8b 07 8b 50 30 56 8b cf ff d2 8b 46 08
10536350: 8b 56 0c 5f 5e 5b c3 5f 5e 33 c0 33 d2 5b c3 cc

LINEAR DISASSEMBLY
105362f0 <.text+0x5352f0>:
105362f0:	53                                              	push   ebx
105362f1:	56                                              	push   esi
105362f2:	57                                              	push   edi
105362f3:	e8 a8 3e 1f 00                                  	call   0x1072a1a0
105362f8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105362fc:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10536300:	51                                              	push   ecx
10536301:	52                                              	push   edx
10536302:	8b c8                                           	mov    ecx,eax
10536304:	e8 a7 48 1f 00                                  	call   0x1072abb0
10536309:	8b f0                                           	mov    esi,eax
1053630b:	e8 90 3e 1f 00                                  	call   0x1072a1a0
10536310:	85 f6                                           	test   esi,esi
10536312:	8b d8                                           	mov    ebx,eax
10536314:	74 0b                                           	je     0x10536321
10536316:	8b ce                                           	mov    ecx,esi
10536318:	e8 03 13 43 00                                  	call   0x10967620
1053631d:	8b f8                                           	mov    edi,eax
1053631f:	eb 02                                           	jmp    0x10536323
10536321:	33 ff                                           	xor    edi,edi
10536323:	85 db                                           	test   ebx,ebx
10536325:	74 30                                           	je     0x10536357
10536327:	85 f6                                           	test   esi,esi
10536329:	74 2c                                           	je     0x10536357
1053632b:	85 ff                                           	test   edi,edi
1053632d:	74 28                                           	je     0x10536357
1053632f:	6a ff                                           	push   0xffffffff
10536331:	6a 00                                           	push   0x0
10536333:	6a 00                                           	push   0x0
10536335:	56                                              	push   esi
10536336:	8b cb                                           	mov    ecx,ebx
10536338:	e8 b3 55 1f 00                                  	call   0x1072b8f0
1053633d:	8b f0                                           	mov    esi,eax
1053633f:	85 f6                                           	test   esi,esi
10536341:	74 14                                           	je     0x10536357
10536343:	8b 07                                           	mov    eax,DWORD PTR [edi]
10536345:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
10536348:	56                                              	push   esi
10536349:	8b cf                                           	mov    ecx,edi
1053634b:	ff d2                                           	call   edx
1053634d:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
10536350:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
10536353:	5f                                              	pop    edi
10536354:	5e                                              	pop    esi
10536355:	5b                                              	pop    ebx
10536356:	c3                                              	ret
10536357:	5f                                              	pop    edi
10536358:	5e                                              	pop    esi
10536359:	33 c0                                           	xor    eax,eax
1053635b:	33 d2                                           	xor    edx,edx
1053635d:	5b                                              	pop    ebx
1053635e:	c3                                              	ret
1053635f:	cc                                              	int3
