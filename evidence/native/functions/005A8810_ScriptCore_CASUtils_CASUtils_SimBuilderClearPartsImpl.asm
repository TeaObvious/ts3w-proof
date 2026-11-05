# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8810 (ScriptCore.CASUtils::CASUtils_SimBuilderClearPartsImpl)
Paired Ghidra pseudocode: 005A8810_ScriptCore_CASUtils_CASUtils_SimBuilderClearPartsImpl.c
Window: [0x005a8810, 0x005a88e0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a88e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8810: 55 57 e8 d9 3c ea ff 8b e8 e8 72 0b 1c 00 8b f8
005a8820: 85 ff 0f 84 a7 00 00 00 53 56 6a 20 e8 ef 25 1c
005a8830: 00 8b f0 83 c4 04 85 f6 74 3c 8b 07 8b 90 18 01
005a8840: 00 00 8b cf ff d2 c7 06 1c c9 06 01 33 c9 8d 5e
005a8850: 04 87 0b 89 46 08 8a 44 24 18 89 56 0c 8b 54 24
005a8860: 14 c7 46 10 40 e0 5a 00 c7 06 00 29 fe 00 89 56
005a8870: 18 88 46 1c eb 02 33 f6 8b 16 8b 42 04 8b ce ff
005a8880: d0 8b 4c 24 1c 8b 1f 8b 93 18 01 00 00 6a 00 51
005a8890: 6a ff 8b cf ff d2 52 50 8b 83 20 01 00 00 8b cf
005a88a0: ff d0 8b 55 00 8b 42 1c 6a 00 6a 00 56 68 f0 90
005a88b0: 02 03 8b cd ff d0 8b 16 8b 42 08 8b ce ff d0 8b
005a88c0: 17 8b 82 1c 01 00 00 5e 5b 8b cf 5f 5d ff e0 5f
005a88d0: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a8810 <.text+0x1a7810>:
  5a8810:	55                                              	push   ebp
  5a8811:	57                                              	push   edi
  5a8812:	e8 d9 3c ea ff                                  	call   0x44c4f0
  5a8817:	8b e8                                           	mov    ebp,eax
  5a8819:	e8 72 0b 1c 00                                  	call   0x769390
  5a881e:	8b f8                                           	mov    edi,eax
  5a8820:	85 ff                                           	test   edi,edi
  5a8822:	0f 84 a7 00 00 00                               	je     0x5a88cf
  5a8828:	53                                              	push   ebx
  5a8829:	56                                              	push   esi
  5a882a:	6a 20                                           	push   0x20
  5a882c:	e8 ef 25 1c 00                                  	call   0x76ae20
  5a8831:	8b f0                                           	mov    esi,eax
  5a8833:	83 c4 04                                        	add    esp,0x4
  5a8836:	85 f6                                           	test   esi,esi
  5a8838:	74 3c                                           	je     0x5a8876
  5a883a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a883c:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  5a8842:	8b cf                                           	mov    ecx,edi
  5a8844:	ff d2                                           	call   edx
  5a8846:	c7 06 1c c9 06 01                               	mov    DWORD PTR [esi],0x106c91c
  5a884c:	33 c9                                           	xor    ecx,ecx
  5a884e:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  5a8851:	87 0b                                           	xchg   DWORD PTR [ebx],ecx
  5a8853:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a8856:	8a 44 24 18                                     	mov    al,BYTE PTR [esp+0x18]
  5a885a:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  5a885d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5a8861:	c7 46 10 40 e0 5a 00                            	mov    DWORD PTR [esi+0x10],0x5ae040
  5a8868:	c7 06 00 29 fe 00                               	mov    DWORD PTR [esi],0xfe2900
  5a886e:	89 56 18                                        	mov    DWORD PTR [esi+0x18],edx
  5a8871:	88 46 1c                                        	mov    BYTE PTR [esi+0x1c],al
  5a8874:	eb 02                                           	jmp    0x5a8878
  5a8876:	33 f6                                           	xor    esi,esi
  5a8878:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a887a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a887d:	8b ce                                           	mov    ecx,esi
  5a887f:	ff d0                                           	call   eax
  5a8881:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a8885:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  5a8887:	8b 93 18 01 00 00                               	mov    edx,DWORD PTR [ebx+0x118]
  5a888d:	6a 00                                           	push   0x0
  5a888f:	51                                              	push   ecx
  5a8890:	6a ff                                           	push   0xffffffff
  5a8892:	8b cf                                           	mov    ecx,edi
  5a8894:	ff d2                                           	call   edx
  5a8896:	52                                              	push   edx
  5a8897:	50                                              	push   eax
  5a8898:	8b 83 20 01 00 00                               	mov    eax,DWORD PTR [ebx+0x120]
  5a889e:	8b cf                                           	mov    ecx,edi
  5a88a0:	ff d0                                           	call   eax
  5a88a2:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5a88a5:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  5a88a8:	6a 00                                           	push   0x0
  5a88aa:	6a 00                                           	push   0x0
  5a88ac:	56                                              	push   esi
  5a88ad:	68 f0 90 02 03                                  	push   0x30290f0
  5a88b2:	8b cd                                           	mov    ecx,ebp
  5a88b4:	ff d0                                           	call   eax
  5a88b6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a88b8:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5a88bb:	8b ce                                           	mov    ecx,esi
  5a88bd:	ff d0                                           	call   eax
  5a88bf:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a88c1:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
  5a88c7:	5e                                              	pop    esi
  5a88c8:	5b                                              	pop    ebx
  5a88c9:	8b cf                                           	mov    ecx,edi
  5a88cb:	5f                                              	pop    edi
  5a88cc:	5d                                              	pop    ebp
  5a88cd:	ff e0                                           	jmp    eax
  5a88cf:	5f                                              	pop    edi
  5a88d0:	5d                                              	pop    ebp
  5a88d1:	c3                                              	ret
  5a88d2:	cc                                              	int3
  5a88d3:	cc                                              	int3
  5a88d4:	cc                                              	int3
  5a88d5:	cc                                              	int3
  5a88d6:	cc                                              	int3
  5a88d7:	cc                                              	int3
  5a88d8:	cc                                              	int3
  5a88d9:	cc                                              	int3
  5a88da:	cc                                              	int3
  5a88db:	cc                                              	int3
  5a88dc:	cc                                              	int3
  5a88dd:	cc                                              	int3
  5a88de:	cc                                              	int3
  5a88df:	cc                                              	int3
