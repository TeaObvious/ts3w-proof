# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109865b0 (LotWrap_SetLocalizedAddressKey)
Paired Ghidra pseudocode: 109865B0_LotWrap_SetLocalizedAddressKey.c
Window: [0x109865b0, 0x109865d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109865d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109865b0: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 6e c4
109865c0: 6f ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109865b0 <.text+0x9855b0>:
109865b0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109865b4:	85 c9                                           	test   ecx,ecx
109865b6:	74 0a                                           	je     0x109865c2
109865b8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109865bc:	50                                              	push   eax
109865bd:	e8 6e c4 6f ff                                  	call   0x10082a30
109865c2:	c3                                              	ret
109865c3:	cc                                              	int3
109865c4:	cc                                              	int3
109865c5:	cc                                              	int3
109865c6:	cc                                              	int3
109865c7:	cc                                              	int3
109865c8:	cc                                              	int3
109865c9:	cc                                              	int3
109865ca:	cc                                              	int3
109865cb:	cc                                              	int3
109865cc:	cc                                              	int3
109865cd:	cc                                              	int3
109865ce:	cc                                              	int3
109865cf:	cc                                              	int3
