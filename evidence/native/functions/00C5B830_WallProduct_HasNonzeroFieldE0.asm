# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c5b830 (WallProduct_HasNonzeroFieldE0)
Paired actual Ghidra pseudocode: 00C5B830_WallProduct_HasNonzeroFieldE0.c
Envelope [0x00c5b830,0x00c5b858); 40 bytes; exact owned ranges: [0x00c5b830,0x00c5b858)
Owned: 40 original bytes / 13 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c5b830 <original>:
  c5b830:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  c5b834:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  c5b83a:	6a 01                                           	push   0x1
  c5b83c:	50                                              	push   eax
  c5b83d:	e8 1e 2f 03 00                                  	call   0xc8e760
  c5b842:	85 c0                                           	test   eax,eax
  c5b844:	74 0f                                           	je     0xc5b855
  c5b846:	83 b8 e0 00 00 00 00                            	cmp    DWORD PTR [eax+0xe0],0x0
  c5b84d:	74 06                                           	je     0xc5b855
  c5b84f:	b8 01 00 00 00                                  	mov    eax,0x1
  c5b854:	c3                                              	ret
  c5b855:	33 c0                                           	xor    eax,eax
  c5b857:	c3                                              	ret
