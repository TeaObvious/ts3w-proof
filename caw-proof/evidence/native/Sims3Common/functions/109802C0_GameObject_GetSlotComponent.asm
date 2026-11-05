# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109802c0 (GameObject_GetSlotComponent)
Paired Ghidra pseudocode: 109802C0_GameObject_GetSlotComponent.c
Window: [0x109802c0, 0x109802e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109802e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109802c0: 8b 4c 24 04 85 c9 74 0c a1 54 d9 c8 10 50 e8 cd
109802d0: 6a da ff c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109802c0 <.text+0x97f2c0>:
109802c0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109802c4:	85 c9                                           	test   ecx,ecx
109802c6:	74 0c                                           	je     0x109802d4
109802c8:	a1 54 d9 c8 10                                  	mov    eax,ds:0x10c8d954
109802cd:	50                                              	push   eax
109802ce:	e8 cd 6a da ff                                  	call   0x10726da0
109802d3:	c3                                              	ret
109802d4:	33 c0                                           	xor    eax,eax
109802d6:	c3                                              	ret
109802d7:	cc                                              	int3
109802d8:	cc                                              	int3
109802d9:	cc                                              	int3
109802da:	cc                                              	int3
109802db:	cc                                              	int3
109802dc:	cc                                              	int3
109802dd:	cc                                              	int3
109802de:	cc                                              	int3
109802df:	cc                                              	int3
