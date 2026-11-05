# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7610 (ScriptCore.CASUtils::CASUtils_DesignPresetCompareImpl)
Paired Ghidra pseudocode: 005A7610_ScriptCore_CASUtils_CASUtils_DesignPresetCompareImpl.c
Window: [0x005a7610, 0x005a76c0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a76c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7610: 81 ec c0 00 00 00 56 57 e8 73 1d 1c 00 8b 8c 24
005a7620: cc 00 00 00 8b f0 8b 06 8b 50 58 51 8b ce ff d2
005a7630: 8b 8c 24 d0 00 00 00 8b f8 8b 06 8b 50 58 51 8b
005a7640: ce ff d2 85 ff 8b f0 74 59 85 f6 74 64 53 8d 4c
005a7650: 24 6c e8 69 84 01 00 8d 4c 24 0c e8 60 84 01 00
005a7660: 57 8d 4c 24 70 e8 f6 89 01 00 56 8d 4c 24 10 e8
005a7670: ec 89 01 00 8d 44 24 0c 50 8d 4c 24 70 e8 4e 79
005a7680: 01 00 8d 4c 24 0c 8a d8 e8 53 86 01 00 8d 4c 24
005a7690: 6c e8 4a 86 01 00 8a c3 5b 5f 5e 81 c4 c0 00 00
005a76a0: 00 c3 85 f6 75 0b 5f b0 01 5e 81 c4 c0 00 00 00
005a76b0: c3 5f 32 c0 5e 81 c4 c0 00 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
005a7610 <.text+0x1a6610>:
  5a7610:	81 ec c0 00 00 00                               	sub    esp,0xc0
  5a7616:	56                                              	push   esi
  5a7617:	57                                              	push   edi
  5a7618:	e8 73 1d 1c 00                                  	call   0x769390
  5a761d:	8b 8c 24 cc 00 00 00                            	mov    ecx,DWORD PTR [esp+0xcc]
  5a7624:	8b f0                                           	mov    esi,eax
  5a7626:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a7628:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5a762b:	51                                              	push   ecx
  5a762c:	8b ce                                           	mov    ecx,esi
  5a762e:	ff d2                                           	call   edx
  5a7630:	8b 8c 24 d0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd0]
  5a7637:	8b f8                                           	mov    edi,eax
  5a7639:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a763b:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5a763e:	51                                              	push   ecx
  5a763f:	8b ce                                           	mov    ecx,esi
  5a7641:	ff d2                                           	call   edx
  5a7643:	85 ff                                           	test   edi,edi
  5a7645:	8b f0                                           	mov    esi,eax
  5a7647:	74 59                                           	je     0x5a76a2
  5a7649:	85 f6                                           	test   esi,esi
  5a764b:	74 64                                           	je     0x5a76b1
  5a764d:	53                                              	push   ebx
  5a764e:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  5a7652:	e8 69 84 01 00                                  	call   0x5bfac0
  5a7657:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5a765b:	e8 60 84 01 00                                  	call   0x5bfac0
  5a7660:	57                                              	push   edi
  5a7661:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  5a7665:	e8 f6 89 01 00                                  	call   0x5c0060
  5a766a:	56                                              	push   esi
  5a766b:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a766f:	e8 ec 89 01 00                                  	call   0x5c0060
  5a7674:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  5a7678:	50                                              	push   eax
  5a7679:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  5a767d:	e8 4e 79 01 00                                  	call   0x5befd0
  5a7682:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5a7686:	8a d8                                           	mov    bl,al
  5a7688:	e8 53 86 01 00                                  	call   0x5bfce0
  5a768d:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  5a7691:	e8 4a 86 01 00                                  	call   0x5bfce0
  5a7696:	8a c3                                           	mov    al,bl
  5a7698:	5b                                              	pop    ebx
  5a7699:	5f                                              	pop    edi
  5a769a:	5e                                              	pop    esi
  5a769b:	81 c4 c0 00 00 00                               	add    esp,0xc0
  5a76a1:	c3                                              	ret
  5a76a2:	85 f6                                           	test   esi,esi
  5a76a4:	75 0b                                           	jne    0x5a76b1
  5a76a6:	5f                                              	pop    edi
  5a76a7:	b0 01                                           	mov    al,0x1
  5a76a9:	5e                                              	pop    esi
  5a76aa:	81 c4 c0 00 00 00                               	add    esp,0xc0
  5a76b0:	c3                                              	ret
  5a76b1:	5f                                              	pop    edi
  5a76b2:	32 c0                                           	xor    al,al
  5a76b4:	5e                                              	pop    esi
  5a76b5:	81 c4 c0 00 00 00                               	add    esp,0xc0
  5a76bb:	c3                                              	ret
  5a76bc:	cc                                              	int3
  5a76bd:	cc                                              	int3
  5a76be:	cc                                              	int3
  5a76bf:	cc                                              	int3
