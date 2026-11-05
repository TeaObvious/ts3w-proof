# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076d780 (ScriptCore.Simulator::Simulator_LoadNthXmlAsDocument)
Paired Ghidra pseudocode: 0076D780_ScriptCore_Simulator_Simulator_LoadNthXmlAsDocument.c
Window: [0x0076d780, 0x0076d830) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076d830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076d780: 51 8b 4c 24 18 8b 54 24 14 56 57 8d 44 24 08 50
0076d790: 8b 44 24 1c 51 8b 4c 24 1c 52 8b 54 24 1c 50 51
0076d7a0: 52 c7 44 24 20 00 00 00 00 e8 12 fe ff ff 83 c4
0076d7b0: 18 84 c0 74 57 e8 d6 bb ff ff 8b 4c 24 08 8b f8
0076d7c0: 8b 01 8b 50 18 ff d2 8b f0 85 f6 74 3f 8b 06 8b
0076d7d0: 50 04 8b ce ff d2 8b 07 8b 90 b8 00 00 00 56 8b
0076d7e0: cf ff d2 8b f8 8b 06 8b 50 18 8b ce ff d2 8b 06
0076d7f0: 8b 50 08 8b ce ff d2 8b 4c 24 08 85 c9 74 07 8b
0076d800: 01 8b 50 08 ff d2 8b c7 5f 5e 59 c3 8b 4c 24 08
0076d810: 85 c9 74 07 8b 01 8b 50 08 ff d2 5f 33 c0 5e 59
0076d820: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076d780 <.text+0x36c780>:
  76d780:	51                                              	push   ecx
  76d781:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76d785:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  76d789:	56                                              	push   esi
  76d78a:	57                                              	push   edi
  76d78b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  76d78f:	50                                              	push   eax
  76d790:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  76d794:	51                                              	push   ecx
  76d795:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  76d799:	52                                              	push   edx
  76d79a:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  76d79e:	50                                              	push   eax
  76d79f:	51                                              	push   ecx
  76d7a0:	52                                              	push   edx
  76d7a1:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  76d7a9:	e8 12 fe ff ff                                  	call   0x76d5c0
  76d7ae:	83 c4 18                                        	add    esp,0x18
  76d7b1:	84 c0                                           	test   al,al
  76d7b3:	74 57                                           	je     0x76d80c
  76d7b5:	e8 d6 bb ff ff                                  	call   0x769390
  76d7ba:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d7be:	8b f8                                           	mov    edi,eax
  76d7c0:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  76d7c2:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  76d7c5:	ff d2                                           	call   edx
  76d7c7:	8b f0                                           	mov    esi,eax
  76d7c9:	85 f6                                           	test   esi,esi
  76d7cb:	74 3f                                           	je     0x76d80c
  76d7cd:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76d7cf:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  76d7d2:	8b ce                                           	mov    ecx,esi
  76d7d4:	ff d2                                           	call   edx
  76d7d6:	8b 07                                           	mov    eax,DWORD PTR [edi]
  76d7d8:	8b 90 b8 00 00 00                               	mov    edx,DWORD PTR [eax+0xb8]
  76d7de:	56                                              	push   esi
  76d7df:	8b cf                                           	mov    ecx,edi
  76d7e1:	ff d2                                           	call   edx
  76d7e3:	8b f8                                           	mov    edi,eax
  76d7e5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76d7e7:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  76d7ea:	8b ce                                           	mov    ecx,esi
  76d7ec:	ff d2                                           	call   edx
  76d7ee:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76d7f0:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  76d7f3:	8b ce                                           	mov    ecx,esi
  76d7f5:	ff d2                                           	call   edx
  76d7f7:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d7fb:	85 c9                                           	test   ecx,ecx
  76d7fd:	74 07                                           	je     0x76d806
  76d7ff:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  76d801:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  76d804:	ff d2                                           	call   edx
  76d806:	8b c7                                           	mov    eax,edi
  76d808:	5f                                              	pop    edi
  76d809:	5e                                              	pop    esi
  76d80a:	59                                              	pop    ecx
  76d80b:	c3                                              	ret
  76d80c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d810:	85 c9                                           	test   ecx,ecx
  76d812:	74 07                                           	je     0x76d81b
  76d814:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  76d816:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  76d819:	ff d2                                           	call   edx
  76d81b:	5f                                              	pop    edi
  76d81c:	33 c0                                           	xor    eax,eax
  76d81e:	5e                                              	pop    esi
  76d81f:	59                                              	pop    ecx
  76d820:	c3                                              	ret
  76d821:	cc                                              	int3
  76d822:	cc                                              	int3
  76d823:	cc                                              	int3
  76d824:	cc                                              	int3
  76d825:	cc                                              	int3
  76d826:	cc                                              	int3
  76d827:	cc                                              	int3
  76d828:	cc                                              	int3
  76d829:	cc                                              	int3
  76d82a:	cc                                              	int3
  76d82b:	cc                                              	int3
  76d82c:	cc                                              	int3
  76d82d:	cc                                              	int3
  76d82e:	cc                                              	int3
  76d82f:	cc                                              	int3
