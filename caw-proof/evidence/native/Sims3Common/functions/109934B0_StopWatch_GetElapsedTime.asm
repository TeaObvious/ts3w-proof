# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109934b0 (StopWatch_GetElapsedTime)
Paired Ghidra pseudocode: 109934B0_StopWatch_GetElapsedTime.c
Window: [0x109934b0, 0x109934c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109934c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109934b0: 8b 4c 24 04 e9 f7 34 f9 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109934b0 <.text+0x9924b0>:
109934b0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109934b4:	e9 f7 34 f9 ff                                  	jmp    0x109269b0
109934b9:	cc                                              	int3
109934ba:	cc                                              	int3
109934bb:	cc                                              	int3
109934bc:	cc                                              	int3
109934bd:	cc                                              	int3
109934be:	cc                                              	int3
109934bf:	cc                                              	int3
