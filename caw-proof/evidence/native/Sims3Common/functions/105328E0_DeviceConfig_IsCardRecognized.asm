# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105328e0 (DeviceConfig_IsCardRecognized)
Paired Ghidra pseudocode: 105328E0_DeviceConfig_IsCardRecognized.c
Window: [0x105328e0, 0x10532900) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105328e0: e8 ab 9a e5 ff 85 c0 74 07 8a 80 60 01 00 00 c3
105328f0: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105328e0 <.text+0x5318e0>:
105328e0:	e8 ab 9a e5 ff                                  	call   0x1038c390
105328e5:	85 c0                                           	test   eax,eax
105328e7:	74 07                                           	je     0x105328f0
105328e9:	8a 80 60 01 00 00                               	mov    al,BYTE PTR [eax+0x160]
105328ef:	c3                                              	ret
105328f0:	32 c0                                           	xor    al,al
105328f2:	c3                                              	ret
105328f3:	cc                                              	int3
105328f4:	cc                                              	int3
105328f5:	cc                                              	int3
105328f6:	cc                                              	int3
105328f7:	cc                                              	int3
105328f8:	cc                                              	int3
105328f9:	cc                                              	int3
105328fa:	cc                                              	int3
105328fb:	cc                                              	int3
105328fc:	cc                                              	int3
105328fd:	cc                                              	int3
105328fe:	cc                                              	int3
105328ff:	cc                                              	int3
