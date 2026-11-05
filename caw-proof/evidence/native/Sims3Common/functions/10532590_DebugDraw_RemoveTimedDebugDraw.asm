# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532590 (DebugDraw_RemoveTimedDebugDraw)
Paired Ghidra pseudocode: 10532590_DebugDraw_RemoveTimedDebugDraw.c
Window: [0x10532590, 0x105325b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105325b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532590: 8b 44 24 08 8b 4c 24 04 50 51 e8 61 ff ff ff 83
105325a0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10532590 <.text+0x531590>:
10532590:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10532594:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10532598:	50                                              	push   eax
10532599:	51                                              	push   ecx
1053259a:	e8 61 ff ff ff                                  	call   0x10532500
1053259f:	83 c4 08                                        	add    esp,0x8
105325a2:	c3                                              	ret
105325a3:	cc                                              	int3
105325a4:	cc                                              	int3
105325a5:	cc                                              	int3
105325a6:	cc                                              	int3
105325a7:	cc                                              	int3
105325a8:	cc                                              	int3
105325a9:	cc                                              	int3
105325aa:	cc                                              	int3
105325ab:	cc                                              	int3
105325ac:	cc                                              	int3
105325ad:	cc                                              	int3
105325ae:	cc                                              	int3
105325af:	cc                                              	int3
