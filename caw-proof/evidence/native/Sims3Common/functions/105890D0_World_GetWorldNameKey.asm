# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105890d0 (World_GetWorldNameKey)
Paired Ghidra pseudocode: 105890D0_World_GetWorldNameKey.c
Window: [0x105890d0, 0x105890e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105890e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105890d0: e9 db f0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105890d0 <.text+0x5880d0>:
105890d0:	e9 db f0 ff ff                                  	jmp    0x105881b0
105890d5:	cc                                              	int3
105890d6:	cc                                              	int3
105890d7:	cc                                              	int3
105890d8:	cc                                              	int3
105890d9:	cc                                              	int3
105890da:	cc                                              	int3
105890db:	cc                                              	int3
105890dc:	cc                                              	int3
105890dd:	cc                                              	int3
105890de:	cc                                              	int3
105890df:	cc                                              	int3
