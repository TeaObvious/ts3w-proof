# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f5a0 (GetAssetsSourcePath)
Paired Ghidra pseudocode: 1097F5A0_GetAssetsSourcePath.c
Window: [0x1097f5a0, 0x1097f5c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f5c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f5a0: b9 c0 26 c7 10 e8 e6 f6 a0 ff 85 c0 75 01 c3 8b
1097f5b0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f5a0 <.text+0x97e5a0>:
1097f5a0:	b9 c0 26 c7 10                                  	mov    ecx,0x10c726c0
1097f5a5:	e8 e6 f6 a0 ff                                  	call   0x1038ec90
1097f5aa:	85 c0                                           	test   eax,eax
1097f5ac:	75 01                                           	jne    0x1097f5af
1097f5ae:	c3                                              	ret
1097f5af:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097f5b1:	c3                                              	ret
1097f5b2:	cc                                              	int3
1097f5b3:	cc                                              	int3
1097f5b4:	cc                                              	int3
1097f5b5:	cc                                              	int3
1097f5b6:	cc                                              	int3
1097f5b7:	cc                                              	int3
1097f5b8:	cc                                              	int3
1097f5b9:	cc                                              	int3
1097f5ba:	cc                                              	int3
1097f5bb:	cc                                              	int3
1097f5bc:	cc                                              	int3
1097f5bd:	cc                                              	int3
1097f5be:	cc                                              	int3
1097f5bf:	cc                                              	int3
