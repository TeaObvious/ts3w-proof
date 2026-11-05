# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10539b00 (OnlineFeaturesHost_GetPersonaName)
Paired Ghidra pseudocode: 10539B00_OnlineFeaturesHost_GetPersonaName.c
Window: [0x10539b00, 0x10539b10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10539b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10539b00: e9 fb f4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10539b00 <.text+0x538b00>:
10539b00:	e9 fb f4 ff ff                                  	jmp    0x10539000
10539b05:	cc                                              	int3
10539b06:	cc                                              	int3
10539b07:	cc                                              	int3
10539b08:	cc                                              	int3
10539b09:	cc                                              	int3
10539b0a:	cc                                              	int3
10539b0b:	cc                                              	int3
10539b0c:	cc                                              	int3
10539b0d:	cc                                              	int3
10539b0e:	cc                                              	int3
10539b0f:	cc                                              	int3
