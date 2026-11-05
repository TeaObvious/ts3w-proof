# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10539b50 (OnlineFeaturesHost_GetCrossroadsServerURL)
Paired Ghidra pseudocode: 10539B50_OnlineFeaturesHost_GetCrossroadsServerURL.c
Window: [0x10539b50, 0x10539b60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10539b60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10539b50: e9 7b fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10539b50 <.text+0x538b50>:
10539b50:	e9 7b fc ff ff                                  	jmp    0x105397d0
10539b55:	cc                                              	int3
10539b56:	cc                                              	int3
10539b57:	cc                                              	int3
10539b58:	cc                                              	int3
10539b59:	cc                                              	int3
10539b5a:	cc                                              	int3
10539b5b:	cc                                              	int3
10539b5c:	cc                                              	int3
10539b5d:	cc                                              	int3
10539b5e:	cc                                              	int3
10539b5f:	cc                                              	int3
