# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105781b0 (World_LotGetIsAutoRoofEnabledImpl)
Paired Ghidra pseudocode: 105781B0_World_LotGetIsAutoRoofEnabledImpl.c
Window: [0x105781b0, 0x105781e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105781e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105781b0: 8b 0d c4 00 c7 10 85 c9 74 1b 8b 44 24 08 8b 54
105781c0: 24 04 6a 00 50 52 e8 45 ee cb ff 50 e8 3f 07 b5
105781d0: ff 83 c4 04 c3 32 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105781b0 <.text+0x5771b0>:
105781b0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105781b6:	85 c9                                           	test   ecx,ecx
105781b8:	74 1b                                           	je     0x105781d5
105781ba:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105781be:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105781c2:	6a 00                                           	push   0x0
105781c4:	50                                              	push   eax
105781c5:	52                                              	push   edx
105781c6:	e8 45 ee cb ff                                  	call   0x10237010
105781cb:	50                                              	push   eax
105781cc:	e8 3f 07 b5 ff                                  	call   0x100c8910
105781d1:	83 c4 04                                        	add    esp,0x4
105781d4:	c3                                              	ret
105781d5:	32 c0                                           	xor    al,al
105781d7:	c3                                              	ret
105781d8:	cc                                              	int3
105781d9:	cc                                              	int3
105781da:	cc                                              	int3
105781db:	cc                                              	int3
105781dc:	cc                                              	int3
105781dd:	cc                                              	int3
105781de:	cc                                              	int3
105781df:	cc                                              	int3
