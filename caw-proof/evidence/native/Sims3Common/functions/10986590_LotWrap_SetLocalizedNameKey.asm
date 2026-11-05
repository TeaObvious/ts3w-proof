# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986590 (LotWrap_SetLocalizedNameKey)
Paired Ghidra pseudocode: 10986590_LotWrap_SetLocalizedNameKey.c
Window: [0x10986590, 0x109865b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109865b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986590: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 9e c3
109865a0: 6f ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986590 <.text+0x985590>:
10986590:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986594:	85 c9                                           	test   ecx,ecx
10986596:	74 0a                                           	je     0x109865a2
10986598:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098659c:	50                                              	push   eax
1098659d:	e8 9e c3 6f ff                                  	call   0x10082940
109865a2:	c3                                              	ret
109865a3:	cc                                              	int3
109865a4:	cc                                              	int3
109865a5:	cc                                              	int3
109865a6:	cc                                              	int3
109865a7:	cc                                              	int3
109865a8:	cc                                              	int3
109865a9:	cc                                              	int3
109865aa:	cc                                              	int3
109865ab:	cc                                              	int3
109865ac:	cc                                              	int3
109865ad:	cc                                              	int3
109865ae:	cc                                              	int3
109865af:	cc                                              	int3
