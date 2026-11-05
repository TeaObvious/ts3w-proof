# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109980e0 (WorldWrap_SetLotLightingSolversEnabled)
Paired Ghidra pseudocode: 109980E0_WorldWrap_SetLotLightingSolversEnabled.c
Window: [0x109980e0, 0x10998100) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109980e0: 83 7c 24 08 00 8b 4c 24 04 0f 95 c0 88 81 51 01
109980f0: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109980e0 <.text+0x9970e0>:
109980e0:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
109980e5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109980e9:	0f 95 c0                                        	setne  al
109980ec:	88 81 51 01 00 00                               	mov    BYTE PTR [ecx+0x151],al
109980f2:	c3                                              	ret
109980f3:	cc                                              	int3
109980f4:	cc                                              	int3
109980f5:	cc                                              	int3
109980f6:	cc                                              	int3
109980f7:	cc                                              	int3
109980f8:	cc                                              	int3
109980f9:	cc                                              	int3
109980fa:	cc                                              	int3
109980fb:	cc                                              	int3
109980fc:	cc                                              	int3
109980fd:	cc                                              	int3
109980fe:	cc                                              	int3
109980ff:	cc                                              	int3
