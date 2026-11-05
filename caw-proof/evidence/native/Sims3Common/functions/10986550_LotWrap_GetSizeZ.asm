# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986550 (LotWrap_GetSizeZ)
Paired Ghidra pseudocode: 10986550_LotWrap_GetSizeZ.c
Window: [0x10986550, 0x10986570) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986550: 8b 44 24 04 85 c0 74 0a 8b 80 78 01 00 00 85 c0
10986560: 7d 02 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986550 <.text+0x985550>:
10986550:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986554:	85 c0                                           	test   eax,eax
10986556:	74 0a                                           	je     0x10986562
10986558:	8b 80 78 01 00 00                               	mov    eax,DWORD PTR [eax+0x178]
1098655e:	85 c0                                           	test   eax,eax
10986560:	7d 02                                           	jge    0x10986564
10986562:	33 c0                                           	xor    eax,eax
10986564:	c3                                              	ret
10986565:	cc                                              	int3
10986566:	cc                                              	int3
10986567:	cc                                              	int3
10986568:	cc                                              	int3
10986569:	cc                                              	int3
1098656a:	cc                                              	int3
1098656b:	cc                                              	int3
1098656c:	cc                                              	int3
1098656d:	cc                                              	int3
1098656e:	cc                                              	int3
1098656f:	cc                                              	int3
