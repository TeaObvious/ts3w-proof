# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109867c0 (LotWrap_GetLocalizedDescriptionKey)
Paired Ghidra pseudocode: 109867C0_LotWrap_GetLocalizedDescriptionKey.c
Window: [0x109867c0, 0x109867e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109867e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109867c0: 8b 44 24 04 85 c0 74 07 8b 80 d8 03 00 00 c3 33
109867d0: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109867c0 <.text+0x9857c0>:
109867c0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109867c4:	85 c0                                           	test   eax,eax
109867c6:	74 07                                           	je     0x109867cf
109867c8:	8b 80 d8 03 00 00                               	mov    eax,DWORD PTR [eax+0x3d8]
109867ce:	c3                                              	ret
109867cf:	33 c0                                           	xor    eax,eax
109867d1:	c3                                              	ret
109867d2:	cc                                              	int3
109867d3:	cc                                              	int3
109867d4:	cc                                              	int3
109867d5:	cc                                              	int3
109867d6:	cc                                              	int3
109867d7:	cc                                              	int3
109867d8:	cc                                              	int3
109867d9:	cc                                              	int3
109867da:	cc                                              	int3
109867db:	cc                                              	int3
109867dc:	cc                                              	int3
109867dd:	cc                                              	int3
109867de:	cc                                              	int3
109867df:	cc                                              	int3
