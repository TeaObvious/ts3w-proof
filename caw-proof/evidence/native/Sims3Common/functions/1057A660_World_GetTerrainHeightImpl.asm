# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a660 (World_GetTerrainHeightImpl)
Paired Ghidra pseudocode: 1057A660_World_GetTerrainHeightImpl.c
Window: [0x1057a660, 0x1057a6b0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a6b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a660: 51 8b 0d c4 00 c7 10 85 c9 74 2a 8b 44 24 10 d9
1057a670: 44 24 0c 6a 00 6a 00 6a 00 6a 00 50 6a 01 6a 00
1057a680: 83 ec 08 d9 5c 24 04 d9 44 24 2c d9 1c 24 e8 9d
1057a690: 42 cc ff 59 c3 0f 57 c0 f3 0f 11 04 24 d9 04 24
1057a6a0: 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057a660 <.text+0x579660>:
1057a660:	51                                              	push   ecx
1057a661:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057a667:	85 c9                                           	test   ecx,ecx
1057a669:	74 2a                                           	je     0x1057a695
1057a66b:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1057a66f:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1057a673:	6a 00                                           	push   0x0
1057a675:	6a 00                                           	push   0x0
1057a677:	6a 00                                           	push   0x0
1057a679:	6a 00                                           	push   0x0
1057a67b:	50                                              	push   eax
1057a67c:	6a 01                                           	push   0x1
1057a67e:	6a 00                                           	push   0x0
1057a680:	83 ec 08                                        	sub    esp,0x8
1057a683:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1057a687:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
1057a68b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1057a68e:	e8 9d 42 cc ff                                  	call   0x1023e930
1057a693:	59                                              	pop    ecx
1057a694:	c3                                              	ret
1057a695:	0f 57 c0                                        	xorps  xmm0,xmm0
1057a698:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057a69d:	d9 04 24                                        	fld    DWORD PTR [esp]
1057a6a0:	59                                              	pop    ecx
1057a6a1:	c3                                              	ret
1057a6a2:	cc                                              	int3
1057a6a3:	cc                                              	int3
1057a6a4:	cc                                              	int3
1057a6a5:	cc                                              	int3
1057a6a6:	cc                                              	int3
1057a6a7:	cc                                              	int3
1057a6a8:	cc                                              	int3
1057a6a9:	cc                                              	int3
1057a6aa:	cc                                              	int3
1057a6ab:	cc                                              	int3
1057a6ac:	cc                                              	int3
1057a6ad:	cc                                              	int3
1057a6ae:	cc                                              	int3
1057a6af:	cc                                              	int3
