# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f560 (GetGameplayScriptsPath)
Paired Ghidra pseudocode: 1097F560_GetGameplayScriptsPath.c
Window: [0x1097f560, 0x1097f580) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f560: 68 fc 24 b6 10 68 dc 72 ae 10 e8 11 92 a0 ff 83
1097f570: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f560 <.text+0x97e560>:
1097f560:	68 fc 24 b6 10                                  	push   0x10b624fc
1097f565:	68 dc 72 ae 10                                  	push   0x10ae72dc
1097f56a:	e8 11 92 a0 ff                                  	call   0x10388780
1097f56f:	83 c4 08                                        	add    esp,0x8
1097f572:	c3                                              	ret
1097f573:	cc                                              	int3
1097f574:	cc                                              	int3
1097f575:	cc                                              	int3
1097f576:	cc                                              	int3
1097f577:	cc                                              	int3
1097f578:	cc                                              	int3
1097f579:	cc                                              	int3
1097f57a:	cc                                              	int3
1097f57b:	cc                                              	int3
1097f57c:	cc                                              	int3
1097f57d:	cc                                              	int3
1097f57e:	cc                                              	int3
1097f57f:	cc                                              	int3
