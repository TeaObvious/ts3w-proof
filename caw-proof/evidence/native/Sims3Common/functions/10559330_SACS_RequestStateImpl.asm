# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10559330 (SACS_RequestStateImpl)
Paired Ghidra pseudocode: 10559330_SACS_RequestStateImpl.c
Window: [0x10559330, 0x10559340) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10559340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10559330: e9 4b fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10559330 <.text+0x558330>:
10559330:	e9 4b fd ff ff                                  	jmp    0x10559080
10559335:	cc                                              	int3
10559336:	cc                                              	int3
10559337:	cc                                              	int3
10559338:	cc                                              	int3
10559339:	cc                                              	int3
1055933a:	cc                                              	int3
1055933b:	cc                                              	int3
1055933c:	cc                                              	int3
1055933d:	cc                                              	int3
1055933e:	cc                                              	int3
1055933f:	cc                                              	int3
