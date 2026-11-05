# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f620 (GetAssetsLocalWorkPath)
Paired Ghidra pseudocode: 1097F620_GetAssetsLocalWorkPath.c
Window: [0x1097f620, 0x1097f640) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f620: b9 c0 26 c7 10 e8 86 f6 a0 ff 85 c0 75 01 c3 8b
1097f630: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f620 <.text+0x97e620>:
1097f620:	b9 c0 26 c7 10                                  	mov    ecx,0x10c726c0
1097f625:	e8 86 f6 a0 ff                                  	call   0x1038ecb0
1097f62a:	85 c0                                           	test   eax,eax
1097f62c:	75 01                                           	jne    0x1097f62f
1097f62e:	c3                                              	ret
1097f62f:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097f631:	c3                                              	ret
1097f632:	cc                                              	int3
1097f633:	cc                                              	int3
1097f634:	cc                                              	int3
1097f635:	cc                                              	int3
1097f636:	cc                                              	int3
1097f637:	cc                                              	int3
1097f638:	cc                                              	int3
1097f639:	cc                                              	int3
1097f63a:	cc                                              	int3
1097f63b:	cc                                              	int3
1097f63c:	cc                                              	int3
1097f63d:	cc                                              	int3
1097f63e:	cc                                              	int3
1097f63f:	cc                                              	int3
