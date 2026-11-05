# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569990 (ThumbnailManager_AddRotation)
Paired Ghidra pseudocode: 10569990_ThumbnailManager_AddRotation.c
Window: [0x10569990, 0x105699b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105699b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569990: 8b 0d 50 11 c7 10 85 c9 74 0a 8d 44 24 04 50 e8
105699a0: bc 38 dc ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569990 <.text+0x568990>:
10569990:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569996:	85 c9                                           	test   ecx,ecx
10569998:	74 0a                                           	je     0x105699a4
1056999a:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1056999e:	50                                              	push   eax
1056999f:	e8 bc 38 dc ff                                  	call   0x1032d260
105699a4:	c3                                              	ret
105699a5:	cc                                              	int3
105699a6:	cc                                              	int3
105699a7:	cc                                              	int3
105699a8:	cc                                              	int3
105699a9:	cc                                              	int3
105699aa:	cc                                              	int3
105699ab:	cc                                              	int3
105699ac:	cc                                              	int3
105699ad:	cc                                              	int3
105699ae:	cc                                              	int3
105699af:	cc                                              	int3
