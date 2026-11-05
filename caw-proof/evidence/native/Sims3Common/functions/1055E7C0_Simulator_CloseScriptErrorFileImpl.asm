# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e7c0 (Simulator_CloseScriptErrorFileImpl)
Paired Ghidra pseudocode: 1055E7C0_Simulator_CloseScriptErrorFileImpl.c
Window: [0x1055e7c0, 0x1055e810) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e7c0: 53 56 57 e8 58 c9 ff ff 8b 5c 24 10 8b f8 8b 07
1055e7d0: 8b 90 cc 00 00 00 53 8b cf ff d2 8b f0 85 f6 74
1055e7e0: 26 8b 06 8b 50 18 8b ce ff d2 8b 06 8b 10 6a 01
1055e7f0: 8b ce ff d2 8b 07 8b 90 d8 00 00 00 53 8b cf ff
1055e800: d2 5f 5e b0 01 5b c3 5f 5e 32 c0 5b c3 cc cc cc

LINEAR DISASSEMBLY
1055e7c0 <.text+0x55d7c0>:
1055e7c0:	53                                              	push   ebx
1055e7c1:	56                                              	push   esi
1055e7c2:	57                                              	push   edi
1055e7c3:	e8 58 c9 ff ff                                  	call   0x1055b120
1055e7c8:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
1055e7cc:	8b f8                                           	mov    edi,eax
1055e7ce:	8b 07                                           	mov    eax,DWORD PTR [edi]
1055e7d0:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
1055e7d6:	53                                              	push   ebx
1055e7d7:	8b cf                                           	mov    ecx,edi
1055e7d9:	ff d2                                           	call   edx
1055e7db:	8b f0                                           	mov    esi,eax
1055e7dd:	85 f6                                           	test   esi,esi
1055e7df:	74 26                                           	je     0x1055e807
1055e7e1:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055e7e3:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
1055e7e6:	8b ce                                           	mov    ecx,esi
1055e7e8:	ff d2                                           	call   edx
1055e7ea:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055e7ec:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e7ee:	6a 01                                           	push   0x1
1055e7f0:	8b ce                                           	mov    ecx,esi
1055e7f2:	ff d2                                           	call   edx
1055e7f4:	8b 07                                           	mov    eax,DWORD PTR [edi]
1055e7f6:	8b 90 d8 00 00 00                               	mov    edx,DWORD PTR [eax+0xd8]
1055e7fc:	53                                              	push   ebx
1055e7fd:	8b cf                                           	mov    ecx,edi
1055e7ff:	ff d2                                           	call   edx
1055e801:	5f                                              	pop    edi
1055e802:	5e                                              	pop    esi
1055e803:	b0 01                                           	mov    al,0x1
1055e805:	5b                                              	pop    ebx
1055e806:	c3                                              	ret
1055e807:	5f                                              	pop    edi
1055e808:	5e                                              	pop    esi
1055e809:	32 c0                                           	xor    al,al
1055e80b:	5b                                              	pop    ebx
1055e80c:	c3                                              	ret
1055e80d:	cc                                              	int3
1055e80e:	cc                                              	int3
1055e80f:	cc                                              	int3
