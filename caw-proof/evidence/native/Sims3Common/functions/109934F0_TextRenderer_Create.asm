# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109934f0 (TextRenderer_Create)
Paired Ghidra pseudocode: 109934F0_TextRenderer_Create.c
Window: [0x109934f0, 0x10993530) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109934f0: 6a 00 6a 00 6a 00 6a 00 68 94 76 b9 10 68 94 a3
10993500: 00 00 e8 a9 59 f8 ff 83 c4 18 85 c0 74 1f 56 8b
10993510: c8 e8 ea 4e af ff 8b f0 85 f6 74 0f 6a 00 6a 00
10993520: 6a 00 8b ce e8 c7 52 af ff 8b c6 5e c3 33 c0 c3

LINEAR DISASSEMBLY
109934f0 <.text+0x9924f0>:
109934f0:	6a 00                                           	push   0x0
109934f2:	6a 00                                           	push   0x0
109934f4:	6a 00                                           	push   0x0
109934f6:	6a 00                                           	push   0x0
109934f8:	68 94 76 b9 10                                  	push   0x10b97694
109934fd:	68 94 a3 00 00                                  	push   0xa394
10993502:	e8 a9 59 f8 ff                                  	call   0x10918eb0
10993507:	83 c4 18                                        	add    esp,0x18
1099350a:	85 c0                                           	test   eax,eax
1099350c:	74 1f                                           	je     0x1099352d
1099350e:	56                                              	push   esi
1099350f:	8b c8                                           	mov    ecx,eax
10993511:	e8 ea 4e af ff                                  	call   0x10488400
10993516:	8b f0                                           	mov    esi,eax
10993518:	85 f6                                           	test   esi,esi
1099351a:	74 0f                                           	je     0x1099352b
1099351c:	6a 00                                           	push   0x0
1099351e:	6a 00                                           	push   0x0
10993520:	6a 00                                           	push   0x0
10993522:	8b ce                                           	mov    ecx,esi
10993524:	e8 c7 52 af ff                                  	call   0x104887f0
10993529:	8b c6                                           	mov    eax,esi
1099352b:	5e                                              	pop    esi
1099352c:	c3                                              	ret
1099352d:	33 c0                                           	xor    eax,eax
1099352f:	c3                                              	ret
