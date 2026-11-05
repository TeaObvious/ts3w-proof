# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10535070 (LocalizedStringService_ChangeLocale)
Paired Ghidra pseudocode: 10535070_LocalizedStringService_ChangeLocale.c
Window: [0x10535070, 0x10535080) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10535080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10535070: e9 5b 1c e6 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10535070 <.text+0x534070>:
10535070:	e9 5b 1c e6 ff                                  	jmp    0x10396cd0
10535075:	cc                                              	int3
10535076:	cc                                              	int3
10535077:	cc                                              	int3
10535078:	cc                                              	int3
10535079:	cc                                              	int3
1053507a:	cc                                              	int3
1053507b:	cc                                              	int3
1053507c:	cc                                              	int3
1053507d:	cc                                              	int3
1053507e:	cc                                              	int3
1053507f:	cc                                              	int3
