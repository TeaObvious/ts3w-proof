# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993840 (TextureBuilderWrap_IsLoaded)
Paired Ghidra pseudocode: 10993840_TextureBuilderWrap_IsLoaded.c
Window: [0x10993840, 0x10993870) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993840: 56 8b 74 24 08 8b ce e8 34 e5 a5 ff 84 c0 74 07
10993850: b8 01 00 00 00 5e c3 6a 00 8b ce e8 00 ee a5 ff
10993860: 33 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993840 <.text+0x992840>:
10993840:	56                                              	push   esi
10993841:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10993845:	8b ce                                           	mov    ecx,esi
10993847:	e8 34 e5 a5 ff                                  	call   0x103f1d80
1099384c:	84 c0                                           	test   al,al
1099384e:	74 07                                           	je     0x10993857
10993850:	b8 01 00 00 00                                  	mov    eax,0x1
10993855:	5e                                              	pop    esi
10993856:	c3                                              	ret
10993857:	6a 00                                           	push   0x0
10993859:	8b ce                                           	mov    ecx,esi
1099385b:	e8 00 ee a5 ff                                  	call   0x103f2660
10993860:	33 c0                                           	xor    eax,eax
10993862:	5e                                              	pop    esi
10993863:	c3                                              	ret
10993864:	cc                                              	int3
10993865:	cc                                              	int3
10993866:	cc                                              	int3
10993867:	cc                                              	int3
10993868:	cc                                              	int3
10993869:	cc                                              	int3
1099386a:	cc                                              	int3
1099386b:	cc                                              	int3
1099386c:	cc                                              	int3
1099386d:	cc                                              	int3
1099386e:	cc                                              	int3
1099386f:	cc                                              	int3
