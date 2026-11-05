# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057aec0 (World_SetUpdateLightRigsImpl)
Paired Ghidra pseudocode: 1057AEC0_World_SetUpdateLightRigsImpl.c
Window: [0x1057aec0, 0x1057aee0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057aee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057aec0: 8b 44 24 04 8b 0d c4 00 c7 10 50 e8 f0 85 cb ff
1057aed0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057aec0 <.text+0x579ec0>:
1057aec0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057aec4:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057aeca:	50                                              	push   eax
1057aecb:	e8 f0 85 cb ff                                  	call   0x102334c0
1057aed0:	c3                                              	ret
1057aed1:	cc                                              	int3
1057aed2:	cc                                              	int3
1057aed3:	cc                                              	int3
1057aed4:	cc                                              	int3
1057aed5:	cc                                              	int3
1057aed6:	cc                                              	int3
1057aed7:	cc                                              	int3
1057aed8:	cc                                              	int3
1057aed9:	cc                                              	int3
1057aeda:	cc                                              	int3
1057aedb:	cc                                              	int3
1057aedc:	cc                                              	int3
1057aedd:	cc                                              	int3
1057aede:	cc                                              	int3
1057aedf:	cc                                              	int3
