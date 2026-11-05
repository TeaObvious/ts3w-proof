# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105312d0 (Command_GetCommandHelpImpl)
Paired Ghidra pseudocode: 105312D0_Command_GetCommandHelpImpl.c
Window: [0x105312d0, 0x105312e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105312e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105312d0: e9 db fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105312d0 <.text+0x5302d0>:
105312d0:	e9 db fe ff ff                                  	jmp    0x105311b0
105312d5:	cc                                              	int3
105312d6:	cc                                              	int3
105312d7:	cc                                              	int3
105312d8:	cc                                              	int3
105312d9:	cc                                              	int3
105312da:	cc                                              	int3
105312db:	cc                                              	int3
105312dc:	cc                                              	int3
105312dd:	cc                                              	int3
105312de:	cc                                              	int3
105312df:	cc                                              	int3
