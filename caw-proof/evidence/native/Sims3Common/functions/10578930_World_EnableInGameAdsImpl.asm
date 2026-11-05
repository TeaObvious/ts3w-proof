# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578930 (World_EnableInGameAdsImpl)
Paired Ghidra pseudocode: 10578930_World_EnableInGameAdsImpl.c
Window: [0x10578930, 0x10578940) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578930: e8 8b 5b 25 00 8a 4c 24 04 88 88 c0 04 00 00 c3

LINEAR DISASSEMBLY
10578930 <.text+0x577930>:
10578930:	e8 8b 5b 25 00                                  	call   0x107ce4c0
10578935:	8a 4c 24 04                                     	mov    cl,BYTE PTR [esp+0x4]
10578939:	88 88 c0 04 00 00                               	mov    BYTE PTR [eax+0x4c0],cl
1057893f:	c3                                              	ret
