# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10586080 (World_CreateHouseboatLotImpl)
Paired Ghidra pseudocode: 10586080_World_CreateHouseboatLotImpl.c
Window: [0x10586080, 0x10586090) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10586090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10586080: e9 9b fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10586080 <.text+0x585080>:
10586080:	e9 9b fc ff ff                                  	jmp    0x10585d20
10586085:	cc                                              	int3
10586086:	cc                                              	int3
10586087:	cc                                              	int3
10586088:	cc                                              	int3
10586089:	cc                                              	int3
1058608a:	cc                                              	int3
1058608b:	cc                                              	int3
1058608c:	cc                                              	int3
1058608d:	cc                                              	int3
1058608e:	cc                                              	int3
1058608f:	cc                                              	int3
