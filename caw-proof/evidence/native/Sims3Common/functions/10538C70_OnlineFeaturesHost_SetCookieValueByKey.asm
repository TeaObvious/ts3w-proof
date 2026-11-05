# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10538c70 (OnlineFeaturesHost_SetCookieValueByKey)
Paired Ghidra pseudocode: 10538C70_OnlineFeaturesHost_SetCookieValueByKey.c
Window: [0x10538c70, 0x10538c80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10538c80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10538c70: e9 3b f6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10538c70 <.text+0x537c70>:
10538c70:	e9 3b f6 ff ff                                  	jmp    0x105382b0
10538c75:	cc                                              	int3
10538c76:	cc                                              	int3
10538c77:	cc                                              	int3
10538c78:	cc                                              	int3
10538c79:	cc                                              	int3
10538c7a:	cc                                              	int3
10538c7b:	cc                                              	int3
10538c7c:	cc                                              	int3
10538c7d:	cc                                              	int3
10538c7e:	cc                                              	int3
10538c7f:	cc                                              	int3
