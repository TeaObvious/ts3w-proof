# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b850 (World_LotIsEntranceFromTargetPointImpl)
Paired Ghidra pseudocode: 1057B850_World_LotIsEntranceFromTargetPointImpl.c
Window: [0x1057b850, 0x1057b870) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b850: 8b 44 24 08 8b 4c 24 04 50 51 e8 01 e1 ff ff 83
1057b860: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b850 <.text+0x57a850>:
1057b850:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b854:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1057b858:	50                                              	push   eax
1057b859:	51                                              	push   ecx
1057b85a:	e8 01 e1 ff ff                                  	call   0x10579960
1057b85f:	83 c4 08                                        	add    esp,0x8
1057b862:	c3                                              	ret
1057b863:	cc                                              	int3
1057b864:	cc                                              	int3
1057b865:	cc                                              	int3
1057b866:	cc                                              	int3
1057b867:	cc                                              	int3
1057b868:	cc                                              	int3
1057b869:	cc                                              	int3
1057b86a:	cc                                              	int3
1057b86b:	cc                                              	int3
1057b86c:	cc                                              	int3
1057b86d:	cc                                              	int3
1057b86e:	cc                                              	int3
1057b86f:	cc                                              	int3
