# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b1c0 (World_ObjectDesigner_IsProcessingImpl)
Paired Ghidra pseudocode: 1057B1C0_World_ObjectDesigner_IsProcessingImpl.c
Window: [0x1057b1c0, 0x1057b1d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b1d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b1c0: e8 9b d2 b7 ff 8b c8 e9 f4 e3 b7 ff cc cc cc cc

LINEAR DISASSEMBLY
1057b1c0 <.text+0x57a1c0>:
1057b1c0:	e8 9b d2 b7 ff                                  	call   0x100f8460
1057b1c5:	8b c8                                           	mov    ecx,eax
1057b1c7:	e9 f4 e3 b7 ff                                  	jmp    0x100f95c0
1057b1cc:	cc                                              	int3
1057b1cd:	cc                                              	int3
1057b1ce:	cc                                              	int3
1057b1cf:	cc                                              	int3
