# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996040 (ObjectManagerWrap_GetObjectCount)
Paired Ghidra pseudocode: 10996040_ObjectManagerWrap_GetObjectCount.c
Window: [0x10996040, 0x10996050) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996040: 8b 4c 24 04 e9 07 d1 8a ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996040 <.text+0x995040>:
10996040:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996044:	e9 07 d1 8a ff                                  	jmp    0x10243150
10996049:	cc                                              	int3
1099604a:	cc                                              	int3
1099604b:	cc                                              	int3
1099604c:	cc                                              	int3
1099604d:	cc                                              	int3
1099604e:	cc                                              	int3
1099604f:	cc                                              	int3
