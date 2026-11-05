# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ac860 (ScriptCore.CASUtils::CASUtils_TextSearchStartSearchImpl)
Paired Ghidra pseudocode: 005AC860_ScriptCore_CASUtils_CASUtils_TextSearchStartSearchImpl.c
Window: [0x005ac860, 0x005ac8c0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ac8c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ac860: 57 8b 7c 24 08 8b c7 25 00 00 00 ff 3d 00 00 00
005ac870: 35 74 04 33 c0 5f c3 56 e8 13 cb 1b 00 8b f0 8b
005ac880: 16 8b 82 cc 00 00 00 57 8b ce ff d0 8b f8 85 ff
005ac890: 75 03 5e 5f c3 8b 16 8b 44 24 14 8b 52 58 50 8b
005ac8a0: ce ff d2 50 8b 44 24 14 50 8b cf e8 60 fe ff ff
005ac8b0: 5e 5f c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005ac860 <.text+0x1ab860>:
  5ac860:	57                                              	push   edi
  5ac861:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  5ac865:	8b c7                                           	mov    eax,edi
  5ac867:	25 00 00 00 ff                                  	and    eax,0xff000000
  5ac86c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ac871:	74 04                                           	je     0x5ac877
  5ac873:	33 c0                                           	xor    eax,eax
  5ac875:	5f                                              	pop    edi
  5ac876:	c3                                              	ret
  5ac877:	56                                              	push   esi
  5ac878:	e8 13 cb 1b 00                                  	call   0x769390
  5ac87d:	8b f0                                           	mov    esi,eax
  5ac87f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ac881:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ac887:	57                                              	push   edi
  5ac888:	8b ce                                           	mov    ecx,esi
  5ac88a:	ff d0                                           	call   eax
  5ac88c:	8b f8                                           	mov    edi,eax
  5ac88e:	85 ff                                           	test   edi,edi
  5ac890:	75 03                                           	jne    0x5ac895
  5ac892:	5e                                              	pop    esi
  5ac893:	5f                                              	pop    edi
  5ac894:	c3                                              	ret
  5ac895:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ac897:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5ac89b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  5ac89e:	50                                              	push   eax
  5ac89f:	8b ce                                           	mov    ecx,esi
  5ac8a1:	ff d2                                           	call   edx
  5ac8a3:	50                                              	push   eax
  5ac8a4:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5ac8a8:	50                                              	push   eax
  5ac8a9:	8b cf                                           	mov    ecx,edi
  5ac8ab:	e8 60 fe ff ff                                  	call   0x5ac710
  5ac8b0:	5e                                              	pop    esi
  5ac8b1:	5f                                              	pop    edi
  5ac8b2:	c3                                              	ret
  5ac8b3:	cc                                              	int3
  5ac8b4:	cc                                              	int3
  5ac8b5:	cc                                              	int3
  5ac8b6:	cc                                              	int3
  5ac8b7:	cc                                              	int3
  5ac8b8:	cc                                              	int3
  5ac8b9:	cc                                              	int3
  5ac8ba:	cc                                              	int3
  5ac8bb:	cc                                              	int3
  5ac8bc:	cc                                              	int3
  5ac8bd:	cc                                              	int3
  5ac8be:	cc                                              	int3
  5ac8bf:	cc                                              	int3
