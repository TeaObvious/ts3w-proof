# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054a2b0 (RouteManager_SetDebugIdentifier)
Paired Ghidra pseudocode: 1054A2B0_RouteManager_SetDebugIdentifier.c
Window: [0x1054a2b0, 0x1054a2d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054a2d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054a2b0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
1054a2c0: 3c f8 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054a2b0 <.text+0x5492b0>:
1054a2b0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1054a2b4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1054a2b8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1054a2bc:	50                                              	push   eax
1054a2bd:	51                                              	push   ecx
1054a2be:	52                                              	push   edx
1054a2bf:	e8 3c f8 ff ff                                  	call   0x10549b00
1054a2c4:	83 c4 0c                                        	add    esp,0xc
1054a2c7:	c3                                              	ret
1054a2c8:	cc                                              	int3
1054a2c9:	cc                                              	int3
1054a2ca:	cc                                              	int3
1054a2cb:	cc                                              	int3
1054a2cc:	cc                                              	int3
1054a2cd:	cc                                              	int3
1054a2ce:	cc                                              	int3
1054a2cf:	cc                                              	int3
