# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec9610 (DirectTargetOf_GameUtils_GameUtils_RegisterCheats)
Paired Ghidra pseudocode: 00EC9610_DirectTargetOf_GameUtils_GameUtils_RegisterCheats.c
Window: [0x00ec9610, 0x00ec96b0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec96b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec9610: 53 e8 7a 69 b1 ff 8b 10 8b c8 8b 42 50 ff d0 e8
00ec9620: 9c aa 5e ff e8 27 98 99 ff 8b 0d d8 0a 20 01 33
00ec9630: db 3b cb 74 0d 89 1d d8 0a 20 01 8b 11 8b 42 04
00ec9640: ff d0 68 d8 0a 20 01 68 f8 64 0f 01 e8 9f 65 92
00ec9650: ff a1 d8 0a 20 01 83 c4 08 3b c3 74 0a 83 c0 28
00ec9660: a3 b8 0a 20 01 eb 06 89 1d b8 0a 20 01 c7 05 b4
00ec9670: 0a 20 01 ff ff ff ff c7 05 bc 0a 20 01 f0 95 ec
00ec9680: 00 89 1d c0 0a 20 01 88 1d c4 0a 20 01 c6 05 c5
00ec9690: 0a 20 01 fe e8 47 3c 5d ff 3b c3 5b 74 0c 68 ac
00ec96a0: 0a 20 01 8b c8 e8 e6 4e 5d ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00ec9610 <.text+0xac8610>:
  ec9610:	53                                              	push   ebx
  ec9611:	e8 7a 69 b1 ff                                  	call   0x9dff90
  ec9616:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec9618:	8b c8                                           	mov    ecx,eax
  ec961a:	8b 42 50                                        	mov    eax,DWORD PTR [edx+0x50]
  ec961d:	ff d0                                           	call   eax
  ec961f:	e8 9c aa 5e ff                                  	call   0x4b40c0
  ec9624:	e8 27 98 99 ff                                  	call   0x862e50
  ec9629:	8b 0d d8 0a 20 01                               	mov    ecx,DWORD PTR ds:0x1200ad8
  ec962f:	33 db                                           	xor    ebx,ebx
  ec9631:	3b cb                                           	cmp    ecx,ebx
  ec9633:	74 0d                                           	je     0xec9642
  ec9635:	89 1d d8 0a 20 01                               	mov    DWORD PTR ds:0x1200ad8,ebx
  ec963b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ec963d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ec9640:	ff d0                                           	call   eax
  ec9642:	68 d8 0a 20 01                                  	push   0x1200ad8
  ec9647:	68 f8 64 0f 01                                  	push   0x10f64f8
  ec964c:	e8 9f 65 92 ff                                  	call   0x7efbf0
  ec9651:	a1 d8 0a 20 01                                  	mov    eax,ds:0x1200ad8
  ec9656:	83 c4 08                                        	add    esp,0x8
  ec9659:	3b c3                                           	cmp    eax,ebx
  ec965b:	74 0a                                           	je     0xec9667
  ec965d:	83 c0 28                                        	add    eax,0x28
  ec9660:	a3 b8 0a 20 01                                  	mov    ds:0x1200ab8,eax
  ec9665:	eb 06                                           	jmp    0xec966d
  ec9667:	89 1d b8 0a 20 01                               	mov    DWORD PTR ds:0x1200ab8,ebx
  ec966d:	c7 05 b4 0a 20 01 ff ff ff ff                   	mov    DWORD PTR ds:0x1200ab4,0xffffffff
  ec9677:	c7 05 bc 0a 20 01 f0 95 ec 00                   	mov    DWORD PTR ds:0x1200abc,0xec95f0
  ec9681:	89 1d c0 0a 20 01                               	mov    DWORD PTR ds:0x1200ac0,ebx
  ec9687:	88 1d c4 0a 20 01                               	mov    BYTE PTR ds:0x1200ac4,bl
  ec968d:	c6 05 c5 0a 20 01 fe                            	mov    BYTE PTR ds:0x1200ac5,0xfe
  ec9694:	e8 47 3c 5d ff                                  	call   0x49d2e0
  ec9699:	3b c3                                           	cmp    eax,ebx
  ec969b:	5b                                              	pop    ebx
  ec969c:	74 0c                                           	je     0xec96aa
  ec969e:	68 ac 0a 20 01                                  	push   0x1200aac
  ec96a3:	8b c8                                           	mov    ecx,eax
  ec96a5:	e8 e6 4e 5d ff                                  	call   0x49e590
  ec96aa:	c3                                              	ret
  ec96ab:	cc                                              	int3
  ec96ac:	cc                                              	int3
  ec96ad:	cc                                              	int3
  ec96ae:	cc                                              	int3
  ec96af:	cc                                              	int3
