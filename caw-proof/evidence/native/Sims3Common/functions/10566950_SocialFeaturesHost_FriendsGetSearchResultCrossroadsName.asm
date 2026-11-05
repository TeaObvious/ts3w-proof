# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566950 (SocialFeaturesHost_FriendsGetSearchResultCrossroadsName)
Paired Ghidra pseudocode: 10566950_SocialFeaturesHost_FriendsGetSearchResultCrossroadsName.c
Window: [0x10566950, 0x10566960) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566950: e9 9b d8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566950 <.text+0x565950>:
10566950:	e9 9b d8 ff ff                                  	jmp    0x105641f0
10566955:	cc                                              	int3
10566956:	cc                                              	int3
10566957:	cc                                              	int3
10566958:	cc                                              	int3
10566959:	cc                                              	int3
1056695a:	cc                                              	int3
1056695b:	cc                                              	int3
1056695c:	cc                                              	int3
1056695d:	cc                                              	int3
1056695e:	cc                                              	int3
1056695f:	cc                                              	int3
