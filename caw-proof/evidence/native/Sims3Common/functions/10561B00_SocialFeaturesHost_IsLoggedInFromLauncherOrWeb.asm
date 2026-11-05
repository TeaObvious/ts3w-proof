# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561b00 (SocialFeaturesHost_IsLoggedInFromLauncherOrWeb)
Paired Ghidra pseudocode: 10561B00_SocialFeaturesHost_IsLoggedInFromLauncherOrWeb.c
Window: [0x10561b00, 0x10561b10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561b00: e9 9b b7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561b00 <.text+0x560b00>:
10561b00:	e9 9b b7 2a 00                                  	jmp    0x1080d2a0
10561b05:	cc                                              	int3
10561b06:	cc                                              	int3
10561b07:	cc                                              	int3
10561b08:	cc                                              	int3
10561b09:	cc                                              	int3
10561b0a:	cc                                              	int3
10561b0b:	cc                                              	int3
10561b0c:	cc                                              	int3
10561b0d:	cc                                              	int3
10561b0e:	cc                                              	int3
10561b0f:	cc                                              	int3
