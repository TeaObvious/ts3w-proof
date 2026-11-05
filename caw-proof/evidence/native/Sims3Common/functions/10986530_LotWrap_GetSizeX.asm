# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986530 (LotWrap_GetSizeX)
Paired Ghidra pseudocode: 10986530_LotWrap_GetSizeX.c
Window: [0x10986530, 0x10986550) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986530: 8b 44 24 04 85 c0 74 0a 8b 80 74 01 00 00 85 c0
10986540: 7d 02 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986530 <.text+0x985530>:
10986530:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986534:	85 c0                                           	test   eax,eax
10986536:	74 0a                                           	je     0x10986542
10986538:	8b 80 74 01 00 00                               	mov    eax,DWORD PTR [eax+0x174]
1098653e:	85 c0                                           	test   eax,eax
10986540:	7d 02                                           	jge    0x10986544
10986542:	33 c0                                           	xor    eax,eax
10986544:	c3                                              	ret
10986545:	cc                                              	int3
10986546:	cc                                              	int3
10986547:	cc                                              	int3
10986548:	cc                                              	int3
10986549:	cc                                              	int3
1098654a:	cc                                              	int3
1098654b:	cc                                              	int3
1098654c:	cc                                              	int3
1098654d:	cc                                              	int3
1098654e:	cc                                              	int3
1098654f:	cc                                              	int3
