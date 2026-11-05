# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b570 (World_GetLotAdditionalPropertyValue)
Paired Ghidra pseudocode: 1057B570_World_GetLotAdditionalPropertyValue.c
Window: [0x1057b570, 0x1057b5b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b5b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b570: 51 8b 0d c4 00 c7 10 85 c9 74 27 8b 44 24 0c 8b
1057b580: 54 24 08 6a 00 50 52 e8 84 ba cb ff 85 c0 74 12
1057b590: f3 0f 10 80 20 04 00 00 f3 0f 11 04 24 d9 04 24
1057b5a0: 59 c3 0f 57 c0 f3 0f 11 04 24 d9 04 24 59 c3 cc

LINEAR DISASSEMBLY
1057b570 <.text+0x57a570>:
1057b570:	51                                              	push   ecx
1057b571:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b577:	85 c9                                           	test   ecx,ecx
1057b579:	74 27                                           	je     0x1057b5a2
1057b57b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057b57f:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057b583:	6a 00                                           	push   0x0
1057b585:	50                                              	push   eax
1057b586:	52                                              	push   edx
1057b587:	e8 84 ba cb ff                                  	call   0x10237010
1057b58c:	85 c0                                           	test   eax,eax
1057b58e:	74 12                                           	je     0x1057b5a2
1057b590:	f3 0f 10 80 20 04 00 00                         	movss  xmm0,DWORD PTR [eax+0x420]
1057b598:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057b59d:	d9 04 24                                        	fld    DWORD PTR [esp]
1057b5a0:	59                                              	pop    ecx
1057b5a1:	c3                                              	ret
1057b5a2:	0f 57 c0                                        	xorps  xmm0,xmm0
1057b5a5:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057b5aa:	d9 04 24                                        	fld    DWORD PTR [esp]
1057b5ad:	59                                              	pop    ecx
1057b5ae:	c3                                              	ret
1057b5af:	cc                                              	int3
