# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986990 (Manifest_Create)
Paired Ghidra pseudocode: 10986990_Manifest_Create.c
Window: [0x10986990, 0x109869c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109869c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986990: 6a 00 6a 00 6a 00 6a 00 68 38 6a b9 10 68 60 03
109869a0: 00 00 e8 09 25 f9 ff 83 c4 18 85 c0 74 07 8b c8
109869b0: e9 5b b9 e1 ff 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986990 <.text+0x985990>:
10986990:	6a 00                                           	push   0x0
10986992:	6a 00                                           	push   0x0
10986994:	6a 00                                           	push   0x0
10986996:	6a 00                                           	push   0x0
10986998:	68 38 6a b9 10                                  	push   0x10b96a38
1098699d:	68 60 03 00 00                                  	push   0x360
109869a2:	e8 09 25 f9 ff                                  	call   0x10918eb0
109869a7:	83 c4 18                                        	add    esp,0x18
109869aa:	85 c0                                           	test   eax,eax
109869ac:	74 07                                           	je     0x109869b5
109869ae:	8b c8                                           	mov    ecx,eax
109869b0:	e9 5b b9 e1 ff                                  	jmp    0x107a2310
109869b5:	33 c0                                           	xor    eax,eax
109869b7:	c3                                              	ret
109869b8:	cc                                              	int3
109869b9:	cc                                              	int3
109869ba:	cc                                              	int3
109869bb:	cc                                              	int3
109869bc:	cc                                              	int3
109869bd:	cc                                              	int3
109869be:	cc                                              	int3
109869bf:	cc                                              	int3
