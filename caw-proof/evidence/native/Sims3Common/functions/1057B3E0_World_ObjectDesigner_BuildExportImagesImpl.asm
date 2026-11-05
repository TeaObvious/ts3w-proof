# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b3e0 (World_ObjectDesigner_BuildExportImagesImpl)
Paired Ghidra pseudocode: 1057B3E0_World_ObjectDesigner_BuildExportImagesImpl.c
Window: [0x1057b3e0, 0x1057b3f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b3f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b3e0: e8 7b d0 b7 ff 8b c8 e9 84 d0 b7 ff cc cc cc cc

LINEAR DISASSEMBLY
1057b3e0 <.text+0x57a3e0>:
1057b3e0:	e8 7b d0 b7 ff                                  	call   0x100f8460
1057b3e5:	8b c8                                           	mov    ecx,eax
1057b3e7:	e9 84 d0 b7 ff                                  	jmp    0x100f8470
1057b3ec:	cc                                              	int3
1057b3ed:	cc                                              	int3
1057b3ee:	cc                                              	int3
1057b3ef:	cc                                              	int3
