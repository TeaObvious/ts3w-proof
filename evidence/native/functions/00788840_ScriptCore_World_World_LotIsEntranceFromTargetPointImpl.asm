# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788840 (ScriptCore.World::World_LotIsEntranceFromTargetPointImpl)
Paired Ghidra pseudocode: 00788840_ScriptCore_World_World_LotIsEntranceFromTargetPointImpl.c
Window: [0x00788840, 0x00788890) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788840: 53 e8 aa 04 0a 00 85 c0 74 0d 8b c8 e8 6f 0d 0a
00788850: 00 8b d8 85 db 75 04 32 c0 5b c3 8b 0d c4 db 1e
00788860: 01 85 c9 56 57 74 22 8b 74 24 14 8b 7c 24 10 6a
00788870: 00 56 57 e8 98 9f 4d 00 85 c0 74 0d 56 57 8b cb
00788880: e8 3b 99 ea ff 5f 5e 5b c3 5f 5e 32 c0 5b c3 cc

LINEAR DISASSEMBLY
00788840 <.text+0x387840>:
  788840:	53                                              	push   ebx
  788841:	e8 aa 04 0a 00                                  	call   0x828cf0
  788846:	85 c0                                           	test   eax,eax
  788848:	74 0d                                           	je     0x788857
  78884a:	8b c8                                           	mov    ecx,eax
  78884c:	e8 6f 0d 0a 00                                  	call   0x8295c0
  788851:	8b d8                                           	mov    ebx,eax
  788853:	85 db                                           	test   ebx,ebx
  788855:	75 04                                           	jne    0x78885b
  788857:	32 c0                                           	xor    al,al
  788859:	5b                                              	pop    ebx
  78885a:	c3                                              	ret
  78885b:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788861:	85 c9                                           	test   ecx,ecx
  788863:	56                                              	push   esi
  788864:	57                                              	push   edi
  788865:	74 22                                           	je     0x788889
  788867:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  78886b:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  78886f:	6a 00                                           	push   0x0
  788871:	56                                              	push   esi
  788872:	57                                              	push   edi
  788873:	e8 98 9f 4d 00                                  	call   0xc62810
  788878:	85 c0                                           	test   eax,eax
  78887a:	74 0d                                           	je     0x788889
  78887c:	56                                              	push   esi
  78887d:	57                                              	push   edi
  78887e:	8b cb                                           	mov    ecx,ebx
  788880:	e8 3b 99 ea ff                                  	call   0x6321c0
  788885:	5f                                              	pop    edi
  788886:	5e                                              	pop    esi
  788887:	5b                                              	pop    ebx
  788888:	c3                                              	ret
  788889:	5f                                              	pop    edi
  78888a:	5e                                              	pop    esi
  78888b:	32 c0                                           	xor    al,al
  78888d:	5b                                              	pop    ebx
  78888e:	c3                                              	ret
  78888f:	cc                                              	int3
