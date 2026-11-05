# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105822a0 (World_IsSimOnHill)
Paired Ghidra pseudocode: 105822A0_World_IsSimOnHill.c
Window: [0x105822a0, 0x105822c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105822c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105822a0: 8b 44 24 08 8b 4c 24 04 50 51 e8 21 e5 ff ff 83
105822b0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105822a0 <.text+0x5812a0>:
105822a0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105822a4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105822a8:	50                                              	push   eax
105822a9:	51                                              	push   ecx
105822aa:	e8 21 e5 ff ff                                  	call   0x105807d0
105822af:	83 c4 08                                        	add    esp,0x8
105822b2:	c3                                              	ret
105822b3:	cc                                              	int3
105822b4:	cc                                              	int3
105822b5:	cc                                              	int3
105822b6:	cc                                              	int3
105822b7:	cc                                              	int3
105822b8:	cc                                              	int3
105822b9:	cc                                              	int3
105822ba:	cc                                              	int3
105822bb:	cc                                              	int3
105822bc:	cc                                              	int3
105822bd:	cc                                              	int3
105822be:	cc                                              	int3
105822bf:	cc                                              	int3
