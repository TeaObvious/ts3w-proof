# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109865d0 (LotWrap_SetLocalizedDescriptionKey)
Paired Ghidra pseudocode: 109865D0_LotWrap_SetLocalizedDescriptionKey.c
Window: [0x109865d0, 0x109865f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109865f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109865d0: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 3e c5
109865e0: 6f ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109865d0 <.text+0x9855d0>:
109865d0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109865d4:	85 c9                                           	test   ecx,ecx
109865d6:	74 0a                                           	je     0x109865e2
109865d8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109865dc:	50                                              	push   eax
109865dd:	e8 3e c5 6f ff                                  	call   0x10082b20
109865e2:	c3                                              	ret
109865e3:	cc                                              	int3
109865e4:	cc                                              	int3
109865e5:	cc                                              	int3
109865e6:	cc                                              	int3
109865e7:	cc                                              	int3
109865e8:	cc                                              	int3
109865e9:	cc                                              	int3
109865ea:	cc                                              	int3
109865eb:	cc                                              	int3
109865ec:	cc                                              	int3
109865ed:	cc                                              	int3
109865ee:	cc                                              	int3
109865ef:	cc                                              	int3
