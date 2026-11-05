# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109933c0 (StopWatch_Create)
Paired Ghidra pseudocode: 109933C0_StopWatch_Create.c
Window: [0x109933c0, 0x109933f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109933f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109933c0: 6a 00 6a 00 6a 00 6a 00 68 5c 76 b9 10 6a 18 e8
109933d0: dc 5a f8 ff 83 c4 18 85 c0 74 0f 8b 4c 24 04 6a
109933e0: 00 51 8b c8 e8 b7 38 f9 ff c3 33 c0 c3 cc cc cc

LINEAR DISASSEMBLY
109933c0 <.text+0x9923c0>:
109933c0:	6a 00                                           	push   0x0
109933c2:	6a 00                                           	push   0x0
109933c4:	6a 00                                           	push   0x0
109933c6:	6a 00                                           	push   0x0
109933c8:	68 5c 76 b9 10                                  	push   0x10b9765c
109933cd:	6a 18                                           	push   0x18
109933cf:	e8 dc 5a f8 ff                                  	call   0x10918eb0
109933d4:	83 c4 18                                        	add    esp,0x18
109933d7:	85 c0                                           	test   eax,eax
109933d9:	74 0f                                           	je     0x109933ea
109933db:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109933df:	6a 00                                           	push   0x0
109933e1:	51                                              	push   ecx
109933e2:	8b c8                                           	mov    ecx,eax
109933e4:	e8 b7 38 f9 ff                                  	call   0x10926ca0
109933e9:	c3                                              	ret
109933ea:	33 c0                                           	xor    eax,eax
109933ec:	c3                                              	ret
109933ed:	cc                                              	int3
109933ee:	cc                                              	int3
109933ef:	cc                                              	int3
