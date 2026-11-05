# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109867a0 (LotWrap_GetLocalizedAddressKey)
Paired Ghidra pseudocode: 109867A0_LotWrap_GetLocalizedAddressKey.c
Window: [0x109867a0, 0x109867c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109867c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109867a0: 8b 44 24 04 85 c0 74 07 8b 80 f0 03 00 00 c3 33
109867b0: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109867a0 <.text+0x9857a0>:
109867a0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109867a4:	85 c0                                           	test   eax,eax
109867a6:	74 07                                           	je     0x109867af
109867a8:	8b 80 f0 03 00 00                               	mov    eax,DWORD PTR [eax+0x3f0]
109867ae:	c3                                              	ret
109867af:	33 c0                                           	xor    eax,eax
109867b1:	c3                                              	ret
109867b2:	cc                                              	int3
109867b3:	cc                                              	int3
109867b4:	cc                                              	int3
109867b5:	cc                                              	int3
109867b6:	cc                                              	int3
109867b7:	cc                                              	int3
109867b8:	cc                                              	int3
109867b9:	cc                                              	int3
109867ba:	cc                                              	int3
109867bb:	cc                                              	int3
109867bc:	cc                                              	int3
109867bd:	cc                                              	int3
109867be:	cc                                              	int3
109867bf:	cc                                              	int3
