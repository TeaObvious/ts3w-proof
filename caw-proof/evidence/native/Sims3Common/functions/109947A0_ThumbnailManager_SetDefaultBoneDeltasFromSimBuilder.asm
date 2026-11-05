# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109947a0 (ThumbnailManager_SetDefaultBoneDeltasFromSimBuilder)
Paired Ghidra pseudocode: 109947A0_ThumbnailManager_SetDefaultBoneDeltasFromSimBuilder.c
Window: [0x109947a0, 0x109947c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109947c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109947a0: 8b 0d 50 11 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
109947b0: 0c de 98 ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109947a0 <.text+0x9937a0>:
109947a0:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
109947a6:	85 c9                                           	test   ecx,ecx
109947a8:	74 0a                                           	je     0x109947b4
109947aa:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109947ae:	50                                              	push   eax
109947af:	e8 0c de 98 ff                                  	call   0x103225c0
109947b4:	c3                                              	ret
109947b5:	cc                                              	int3
109947b6:	cc                                              	int3
109947b7:	cc                                              	int3
109947b8:	cc                                              	int3
109947b9:	cc                                              	int3
109947ba:	cc                                              	int3
109947bb:	cc                                              	int3
109947bc:	cc                                              	int3
109947bd:	cc                                              	int3
109947be:	cc                                              	int3
109947bf:	cc                                              	int3
