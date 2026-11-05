# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105328a0 (DeviceConfig_GetErrorCode)
Paired Ghidra pseudocode: 105328A0_DeviceConfig_GetErrorCode.c
Window: [0x105328a0, 0x105328c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105328c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105328a0: e8 eb 9a e5 ff 85 c0 74 07 8b 80 58 01 00 00 c3
105328b0: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105328a0 <.text+0x5318a0>:
105328a0:	e8 eb 9a e5 ff                                  	call   0x1038c390
105328a5:	85 c0                                           	test   eax,eax
105328a7:	74 07                                           	je     0x105328b0
105328a9:	8b 80 58 01 00 00                               	mov    eax,DWORD PTR [eax+0x158]
105328af:	c3                                              	ret
105328b0:	33 c0                                           	xor    eax,eax
105328b2:	c3                                              	ret
105328b3:	cc                                              	int3
105328b4:	cc                                              	int3
105328b5:	cc                                              	int3
105328b6:	cc                                              	int3
105328b7:	cc                                              	int3
105328b8:	cc                                              	int3
105328b9:	cc                                              	int3
105328ba:	cc                                              	int3
105328bb:	cc                                              	int3
105328bc:	cc                                              	int3
105328bd:	cc                                              	int3
105328be:	cc                                              	int3
105328bf:	cc                                              	int3
