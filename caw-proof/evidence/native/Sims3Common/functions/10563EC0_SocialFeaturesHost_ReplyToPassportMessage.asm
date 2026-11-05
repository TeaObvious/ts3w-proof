# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563ec0 (SocialFeaturesHost_ReplyToPassportMessage)
Paired Ghidra pseudocode: 10563EC0_SocialFeaturesHost_ReplyToPassportMessage.c
Window: [0x10563ec0, 0x10563ed0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563ec0: e9 db fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563ec0 <.text+0x562ec0>:
10563ec0:	e9 db fc ff ff                                  	jmp    0x10563ba0
10563ec5:	cc                                              	int3
10563ec6:	cc                                              	int3
10563ec7:	cc                                              	int3
10563ec8:	cc                                              	int3
10563ec9:	cc                                              	int3
10563eca:	cc                                              	int3
10563ecb:	cc                                              	int3
10563ecc:	cc                                              	int3
10563ecd:	cc                                              	int3
10563ece:	cc                                              	int3
10563ecf:	cc                                              	int3
