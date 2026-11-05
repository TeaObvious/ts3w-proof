# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e780 (Simulator_AppendToScriptErrorFileImpl)
Paired Ghidra pseudocode: 1055E780_Simulator_AppendToScriptErrorFileImpl.c
Window: [0x1055e780, 0x1055e7c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e7c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e780: 56 57 8b 7c 24 10 85 ff 74 2d e8 91 c9 ff ff 8b
1055e790: 4c 24 0c 8b f0 8b 06 8b 90 cc 00 00 00 51 8b ce
1055e7a0: ff d2 85 c0 74 11 8b 16 57 50 8b 82 50 01 00 00
1055e7b0: 8b ce ff d0 5f 5e c3 5f 32 c0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
1055e780 <.text+0x55d780>:
1055e780:	56                                              	push   esi
1055e781:	57                                              	push   edi
1055e782:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1055e786:	85 ff                                           	test   edi,edi
1055e788:	74 2d                                           	je     0x1055e7b7
1055e78a:	e8 91 c9 ff ff                                  	call   0x1055b120
1055e78f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e793:	8b f0                                           	mov    esi,eax
1055e795:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055e797:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
1055e79d:	51                                              	push   ecx
1055e79e:	8b ce                                           	mov    ecx,esi
1055e7a0:	ff d2                                           	call   edx
1055e7a2:	85 c0                                           	test   eax,eax
1055e7a4:	74 11                                           	je     0x1055e7b7
1055e7a6:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055e7a8:	57                                              	push   edi
1055e7a9:	50                                              	push   eax
1055e7aa:	8b 82 50 01 00 00                               	mov    eax,DWORD PTR [edx+0x150]
1055e7b0:	8b ce                                           	mov    ecx,esi
1055e7b2:	ff d0                                           	call   eax
1055e7b4:	5f                                              	pop    edi
1055e7b5:	5e                                              	pop    esi
1055e7b6:	c3                                              	ret
1055e7b7:	5f                                              	pop    edi
1055e7b8:	32 c0                                           	xor    al,al
1055e7ba:	5e                                              	pop    esi
1055e7bb:	c3                                              	ret
1055e7bc:	cc                                              	int3
1055e7bd:	cc                                              	int3
1055e7be:	cc                                              	int3
1055e7bf:	cc                                              	int3
