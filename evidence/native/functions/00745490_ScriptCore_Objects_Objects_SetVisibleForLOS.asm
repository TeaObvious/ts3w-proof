# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745490 (ScriptCore.Objects::Objects_SetVisibleForLOS)
Paired Ghidra pseudocode: 00745490_ScriptCore_Objects_Objects_SetVisibleForLOS.c
Window: [0x00745490, 0x007454e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007454e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745490: e8 db 20 1f 00 85 c0 75 03 32 c0 c3 8b 4c 24 08
007454a0: 8b 54 24 04 51 52 8b c8 e8 d3 2a 1f 00 85 c0 74
007454b0: e8 8b 0d c8 9f 1e 01 51 8b c8 e8 a1 ed 1e 00 85
007454c0: c0 75 08 38 44 24 0c 0f 94 c0 c3 8b 54 24 0c 52
007454d0: 8b c8 e8 19 70 20 00 b0 01 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00745490 <.text+0x344490>:
  745490:	e8 db 20 1f 00                                  	call   0x937570
  745495:	85 c0                                           	test   eax,eax
  745497:	75 03                                           	jne    0x74549c
  745499:	32 c0                                           	xor    al,al
  74549b:	c3                                              	ret
  74549c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7454a0:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7454a4:	51                                              	push   ecx
  7454a5:	52                                              	push   edx
  7454a6:	8b c8                                           	mov    ecx,eax
  7454a8:	e8 d3 2a 1f 00                                  	call   0x937f80
  7454ad:	85 c0                                           	test   eax,eax
  7454af:	74 e8                                           	je     0x745499
  7454b1:	8b 0d c8 9f 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9fc8
  7454b7:	51                                              	push   ecx
  7454b8:	8b c8                                           	mov    ecx,eax
  7454ba:	e8 a1 ed 1e 00                                  	call   0x934260
  7454bf:	85 c0                                           	test   eax,eax
  7454c1:	75 08                                           	jne    0x7454cb
  7454c3:	38 44 24 0c                                     	cmp    BYTE PTR [esp+0xc],al
  7454c7:	0f 94 c0                                        	sete   al
  7454ca:	c3                                              	ret
  7454cb:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7454cf:	52                                              	push   edx
  7454d0:	8b c8                                           	mov    ecx,eax
  7454d2:	e8 19 70 20 00                                  	call   0x94c4f0
  7454d7:	b0 01                                           	mov    al,0x1
  7454d9:	c3                                              	ret
  7454da:	cc                                              	int3
  7454db:	cc                                              	int3
  7454dc:	cc                                              	int3
  7454dd:	cc                                              	int3
  7454de:	cc                                              	int3
  7454df:	cc                                              	int3
