# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e590 (SacsWrap_StateMachine_Create)
Paired Ghidra pseudocode: 1098E590_SacsWrap_StateMachine_Create.c
Window: [0x1098e590, 0x1098e5c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e5c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e590: 6a 00 6a 00 6a 00 6a 00 68 90 71 b9 10 68 28 01
1098e5a0: 00 00 e8 09 a9 f8 ff 83 c4 18 85 c0 74 07 8b c8
1098e5b0: e9 fb 2e c6 ff 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e590 <.text+0x98d590>:
1098e590:	6a 00                                           	push   0x0
1098e592:	6a 00                                           	push   0x0
1098e594:	6a 00                                           	push   0x0
1098e596:	6a 00                                           	push   0x0
1098e598:	68 90 71 b9 10                                  	push   0x10b97190
1098e59d:	68 28 01 00 00                                  	push   0x128
1098e5a2:	e8 09 a9 f8 ff                                  	call   0x10918eb0
1098e5a7:	83 c4 18                                        	add    esp,0x18
1098e5aa:	85 c0                                           	test   eax,eax
1098e5ac:	74 07                                           	je     0x1098e5b5
1098e5ae:	8b c8                                           	mov    ecx,eax
1098e5b0:	e9 fb 2e c6 ff                                  	jmp    0x105f14b0
1098e5b5:	33 c0                                           	xor    eax,eax
1098e5b7:	c3                                              	ret
1098e5b8:	cc                                              	int3
1098e5b9:	cc                                              	int3
1098e5ba:	cc                                              	int3
1098e5bb:	cc                                              	int3
1098e5bc:	cc                                              	int3
1098e5bd:	cc                                              	int3
1098e5be:	cc                                              	int3
1098e5bf:	cc                                              	int3
