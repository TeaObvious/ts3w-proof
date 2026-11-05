# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10535090 (LocalizedStringService_GetLocalizedLogoSuffix)
Paired Ghidra pseudocode: 10535090_LocalizedStringService_GetLocalizedLogoSuffix.c
Window: [0x10535090, 0x105350a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105350a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10535090: e9 2b 1d e6 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10535090 <.text+0x534090>:
10535090:	e9 2b 1d e6 ff                                  	jmp    0x10396dc0
10535095:	cc                                              	int3
10535096:	cc                                              	int3
10535097:	cc                                              	int3
10535098:	cc                                              	int3
10535099:	cc                                              	int3
1053509a:	cc                                              	int3
1053509b:	cc                                              	int3
1053509c:	cc                                              	int3
1053509d:	cc                                              	int3
1053509e:	cc                                              	int3
1053509f:	cc                                              	int3
