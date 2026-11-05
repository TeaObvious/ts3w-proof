# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c1100 (UserToolUtils_GetPresetIdFromProductAndStringImpl)
Paired Ghidra pseudocode: 102C1100_UserToolUtils_GetPresetIdFromProductAndStringImpl.c
Window: [0x102c1100, 0x102c1110) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c1110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c1100: e9 1b f5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c1100 <.text+0x2c0100>:
102c1100:	e9 1b f5 ff ff                                  	jmp    0x102c0620
102c1105:	cc                                              	int3
102c1106:	cc                                              	int3
102c1107:	cc                                              	int3
102c1108:	cc                                              	int3
102c1109:	cc                                              	int3
102c110a:	cc                                              	int3
102c110b:	cc                                              	int3
102c110c:	cc                                              	int3
102c110d:	cc                                              	int3
102c110e:	cc                                              	int3
102c110f:	cc                                              	int3
