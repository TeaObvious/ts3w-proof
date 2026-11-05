# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561bf0 (SocialFeaturesHost_GetJobCount)
Paired Ghidra pseudocode: 10561BF0_SocialFeaturesHost_GetJobCount.c
Window: [0x10561bf0, 0x10561c00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561bf0: e9 cb b6 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561bf0 <.text+0x560bf0>:
10561bf0:	e9 cb b6 2a 00                                  	jmp    0x1080d2c0
10561bf5:	cc                                              	int3
10561bf6:	cc                                              	int3
10561bf7:	cc                                              	int3
10561bf8:	cc                                              	int3
10561bf9:	cc                                              	int3
10561bfa:	cc                                              	int3
10561bfb:	cc                                              	int3
10561bfc:	cc                                              	int3
10561bfd:	cc                                              	int3
10561bfe:	cc                                              	int3
10561bff:	cc                                              	int3
