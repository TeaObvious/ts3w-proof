# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105375a0 (OnlineFeaturesHost_HandlePromptForCredentialsResponse)
Paired Ghidra pseudocode: 105375A0_OnlineFeaturesHost_HandlePromptForCredentialsResponse.c
Window: [0x105375a0, 0x105375b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105375b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105375a0: e9 7b c3 12 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105375a0 <.text+0x5365a0>:
105375a0:	e9 7b c3 12 00                                  	jmp    0x10663920
105375a5:	cc                                              	int3
105375a6:	cc                                              	int3
105375a7:	cc                                              	int3
105375a8:	cc                                              	int3
105375a9:	cc                                              	int3
105375aa:	cc                                              	int3
105375ab:	cc                                              	int3
105375ac:	cc                                              	int3
105375ad:	cc                                              	int3
105375ae:	cc                                              	int3
105375af:	cc                                              	int3
