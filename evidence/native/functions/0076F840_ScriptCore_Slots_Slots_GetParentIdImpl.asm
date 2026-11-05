# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076f840 (ScriptCore.Slots::Slots_GetParentIdImpl)
Paired Ghidra pseudocode: 0076F840_ScriptCore_Slots_Slots_GetParentIdImpl.c
Window: [0x0076f840, 0x0076f8e0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076f8e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076f840: 51 56 57 e8 28 7d 1c 00 8b 4c 24 14 8b 54 24 10
0076f850: 51 52 8b c8 e8 27 87 1c 00 8b f0 85 f6 74 73 8d
0076f860: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 58
0076f870: a1 1e 01 52 8b ce e8 e5 49 1c 00 85 c0 74 36 8b
0076f880: 40 30 85 c0 74 2f 53 8b 58 08 55 8b 68 0c 8b c7
0076f890: 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87
0076f8a0: 17 8b 06 8b 10 6a 01 8b ce ff d2 8b d5 5d 8b c3
0076f8b0: 5b 5f 5e 59 c3 8b c7 83 c9 ff f0 0f c1 08 49 75
0076f8c0: 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b ce
0076f8d0: ff d2 5f 33 c0 33 d2 5e 59 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076f840 <.text+0x36e840>:
  76f840:	51                                              	push   ecx
  76f841:	56                                              	push   esi
  76f842:	57                                              	push   edi
  76f843:	e8 28 7d 1c 00                                  	call   0x937570
  76f848:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76f84c:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  76f850:	51                                              	push   ecx
  76f851:	52                                              	push   edx
  76f852:	8b c8                                           	mov    ecx,eax
  76f854:	e8 27 87 1c 00                                  	call   0x937f80
  76f859:	8b f0                                           	mov    esi,eax
  76f85b:	85 f6                                           	test   esi,esi
  76f85d:	74 73                                           	je     0x76f8d2
  76f85f:	8d 7e 04                                        	lea    edi,[esi+0x4]
  76f862:	8b c7                                           	mov    eax,edi
  76f864:	b9 01 00 00 00                                  	mov    ecx,0x1
  76f869:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f86d:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76f873:	52                                              	push   edx
  76f874:	8b ce                                           	mov    ecx,esi
  76f876:	e8 e5 49 1c 00                                  	call   0x934260
  76f87b:	85 c0                                           	test   eax,eax
  76f87d:	74 36                                           	je     0x76f8b5
  76f87f:	8b 40 30                                        	mov    eax,DWORD PTR [eax+0x30]
  76f882:	85 c0                                           	test   eax,eax
  76f884:	74 2f                                           	je     0x76f8b5
  76f886:	53                                              	push   ebx
  76f887:	8b 58 08                                        	mov    ebx,DWORD PTR [eax+0x8]
  76f88a:	55                                              	push   ebp
  76f88b:	8b 68 0c                                        	mov    ebp,DWORD PTR [eax+0xc]
  76f88e:	8b c7                                           	mov    eax,edi
  76f890:	83 c9 ff                                        	or     ecx,0xffffffff
  76f893:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f897:	49                                              	dec    ecx
  76f898:	75 11                                           	jne    0x76f8ab
  76f89a:	ba 01 00 00 00                                  	mov    edx,0x1
  76f89f:	87 17                                           	xchg   DWORD PTR [edi],edx
  76f8a1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76f8a3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76f8a5:	6a 01                                           	push   0x1
  76f8a7:	8b ce                                           	mov    ecx,esi
  76f8a9:	ff d2                                           	call   edx
  76f8ab:	8b d5                                           	mov    edx,ebp
  76f8ad:	5d                                              	pop    ebp
  76f8ae:	8b c3                                           	mov    eax,ebx
  76f8b0:	5b                                              	pop    ebx
  76f8b1:	5f                                              	pop    edi
  76f8b2:	5e                                              	pop    esi
  76f8b3:	59                                              	pop    ecx
  76f8b4:	c3                                              	ret
  76f8b5:	8b c7                                           	mov    eax,edi
  76f8b7:	83 c9 ff                                        	or     ecx,0xffffffff
  76f8ba:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f8be:	49                                              	dec    ecx
  76f8bf:	75 11                                           	jne    0x76f8d2
  76f8c1:	ba 01 00 00 00                                  	mov    edx,0x1
  76f8c6:	87 17                                           	xchg   DWORD PTR [edi],edx
  76f8c8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76f8ca:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76f8cc:	6a 01                                           	push   0x1
  76f8ce:	8b ce                                           	mov    ecx,esi
  76f8d0:	ff d2                                           	call   edx
  76f8d2:	5f                                              	pop    edi
  76f8d3:	33 c0                                           	xor    eax,eax
  76f8d5:	33 d2                                           	xor    edx,edx
  76f8d7:	5e                                              	pop    esi
  76f8d8:	59                                              	pop    ecx
  76f8d9:	c3                                              	ret
  76f8da:	cc                                              	int3
  76f8db:	cc                                              	int3
  76f8dc:	cc                                              	int3
  76f8dd:	cc                                              	int3
  76f8de:	cc                                              	int3
  76f8df:	cc                                              	int3
