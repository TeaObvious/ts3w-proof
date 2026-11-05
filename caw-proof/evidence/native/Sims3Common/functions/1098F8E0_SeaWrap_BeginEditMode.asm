# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f8e0 (SeaWrap_BeginEditMode)
Paired Ghidra pseudocode: 1098F8E0_SeaWrap_BeginEditMode.c
Window: [0x1098f8e0, 0x1098f8f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f8f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f8e0: 8b 4c 24 04 e9 67 99 84 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f8e0 <.text+0x98e8e0>:
1098f8e0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098f8e4:	e9 67 99 84 ff                                  	jmp    0x101d9250
1098f8e9:	cc                                              	int3
1098f8ea:	cc                                              	int3
1098f8eb:	cc                                              	int3
1098f8ec:	cc                                              	int3
1098f8ed:	cc                                              	int3
1098f8ee:	cc                                              	int3
1098f8ef:	cc                                              	int3
