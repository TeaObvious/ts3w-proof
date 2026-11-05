# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10076030 (GameObject_GetFootprintComponent)
Paired Ghidra pseudocode: 10076030_GameObject_GetFootprintComponent.c
Window: [0x10076030, 0x10076050) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10076050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10076030: 8b 4c 24 04 85 c9 74 0c a1 e8 d7 c8 10 50 e8 5d
10076040: 0d 6b 00 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10076030 <.text+0x75030>:
10076030:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10076034:	85 c9                                           	test   ecx,ecx
10076036:	74 0c                                           	je     0x10076044
10076038:	a1 e8 d7 c8 10                                  	mov    eax,ds:0x10c8d7e8
1007603d:	50                                              	push   eax
1007603e:	e8 5d 0d 6b 00                                  	call   0x10726da0
10076043:	c3                                              	ret
10076044:	33 c0                                           	xor    eax,eax
10076046:	c3                                              	ret
10076047:	cc                                              	int3
10076048:	cc                                              	int3
10076049:	cc                                              	int3
1007604a:	cc                                              	int3
1007604b:	cc                                              	int3
1007604c:	cc                                              	int3
1007604d:	cc                                              	int3
1007604e:	cc                                              	int3
1007604f:	cc                                              	int3
