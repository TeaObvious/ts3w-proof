# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10535080 (LocalizedStringService_GetLocale)
Paired Ghidra pseudocode: 10535080_LocalizedStringService_GetLocale.c
Window: [0x10535080, 0x10535090) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10535090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10535080: e9 6b 1c e6 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10535080 <.text+0x534080>:
10535080:	e9 6b 1c e6 ff                                  	jmp    0x10396cf0
10535085:	cc                                              	int3
10535086:	cc                                              	int3
10535087:	cc                                              	int3
10535088:	cc                                              	int3
10535089:	cc                                              	int3
1053508a:	cc                                              	int3
1053508b:	cc                                              	int3
1053508c:	cc                                              	int3
1053508d:	cc                                              	int3
1053508e:	cc                                              	int3
1053508f:	cc                                              	int3
