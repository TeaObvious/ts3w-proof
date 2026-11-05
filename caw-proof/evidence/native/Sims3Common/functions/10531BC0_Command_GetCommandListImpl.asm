# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531bc0 (Command_GetCommandListImpl)
Paired Ghidra pseudocode: 10531BC0_Command_GetCommandListImpl.c
Window: [0x10531bc0, 0x10531bd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10531bd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531bc0: e9 7b fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10531bc0 <.text+0x530bc0>:
10531bc0:	e9 7b fe ff ff                                  	jmp    0x10531a40
10531bc5:	cc                                              	int3
10531bc6:	cc                                              	int3
10531bc7:	cc                                              	int3
10531bc8:	cc                                              	int3
10531bc9:	cc                                              	int3
10531bca:	cc                                              	int3
10531bcb:	cc                                              	int3
10531bcc:	cc                                              	int3
10531bcd:	cc                                              	int3
10531bce:	cc                                              	int3
10531bcf:	cc                                              	int3
