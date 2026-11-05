# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993530 (TextRenderer_Destroy)
Paired Ghidra pseudocode: 10993530_TextRenderer_Destroy.c
Window: [0x10993530, 0x10993560) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993530: 56 8b 74 24 08 85 f6 74 17 8b ce e8 f0 4e af ff
10993540: 8b ce e8 d9 4e af ff 56 e8 43 59 f8 ff 83 c4 04
10993550: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993530 <.text+0x992530>:
10993530:	56                                              	push   esi
10993531:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10993535:	85 f6                                           	test   esi,esi
10993537:	74 17                                           	je     0x10993550
10993539:	8b ce                                           	mov    ecx,esi
1099353b:	e8 f0 4e af ff                                  	call   0x10488430
10993540:	8b ce                                           	mov    ecx,esi
10993542:	e8 d9 4e af ff                                  	call   0x10488420
10993547:	56                                              	push   esi
10993548:	e8 43 59 f8 ff                                  	call   0x10918e90
1099354d:	83 c4 04                                        	add    esp,0x4
10993550:	5e                                              	pop    esi
10993551:	c3                                              	ret
10993552:	cc                                              	int3
10993553:	cc                                              	int3
10993554:	cc                                              	int3
10993555:	cc                                              	int3
10993556:	cc                                              	int3
10993557:	cc                                              	int3
10993558:	cc                                              	int3
10993559:	cc                                              	int3
1099355a:	cc                                              	int3
1099355b:	cc                                              	int3
1099355c:	cc                                              	int3
1099355d:	cc                                              	int3
1099355e:	cc                                              	int3
1099355f:	cc                                              	int3
