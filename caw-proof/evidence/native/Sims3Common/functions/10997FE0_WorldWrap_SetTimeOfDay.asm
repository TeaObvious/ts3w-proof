# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997fe0 (WorldWrap_SetTimeOfDay)
Paired Ghidra pseudocode: 10997FE0_WorldWrap_SetTimeOfDay.c
Window: [0x10997fe0, 0x10998000) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997fe0: 8b 44 24 04 f3 0f 10 44 24 08 f3 0f 11 80 24 01
10997ff0: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997fe0 <.text+0x996fe0>:
10997fe0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997fe4:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
10997fea:	f3 0f 11 80 24 01 00 00                         	movss  DWORD PTR [eax+0x124],xmm0
10997ff2:	c3                                              	ret
10997ff3:	cc                                              	int3
10997ff4:	cc                                              	int3
10997ff5:	cc                                              	int3
10997ff6:	cc                                              	int3
10997ff7:	cc                                              	int3
10997ff8:	cc                                              	int3
10997ff9:	cc                                              	int3
10997ffa:	cc                                              	int3
10997ffb:	cc                                              	int3
10997ffc:	cc                                              	int3
10997ffd:	cc                                              	int3
10997ffe:	cc                                              	int3
10997fff:	cc                                              	int3
