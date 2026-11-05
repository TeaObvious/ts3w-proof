# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537970 (OnlineFeaturesHost_UnregisteredFromSharingService)
Paired Ghidra pseudocode: 10537970_OnlineFeaturesHost_UnregisteredFromSharingService.c
Window: [0x10537970, 0x10537980) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537970: e9 4b fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10537970 <.text+0x536970>:
10537970:	e9 4b fc ff ff                                  	jmp    0x105375c0
10537975:	cc                                              	int3
10537976:	cc                                              	int3
10537977:	cc                                              	int3
10537978:	cc                                              	int3
10537979:	cc                                              	int3
1053797a:	cc                                              	int3
1053797b:	cc                                              	int3
1053797c:	cc                                              	int3
1053797d:	cc                                              	int3
1053797e:	cc                                              	int3
1053797f:	cc                                              	int3
