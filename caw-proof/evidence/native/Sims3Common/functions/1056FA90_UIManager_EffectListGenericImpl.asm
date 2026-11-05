# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fa90 (UIManager_EffectListGenericImpl)
Paired Ghidra pseudocode: 1056FA90_UIManager_EffectListGenericImpl.c
Window: [0x1056fa90, 0x1056faa0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056faa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fa90: e9 3b f4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fa90 <.text+0x56ea90>:
1056fa90:	e9 3b f4 ff ff                                  	jmp    0x1056eed0
1056fa95:	cc                                              	int3
1056fa96:	cc                                              	int3
1056fa97:	cc                                              	int3
1056fa98:	cc                                              	int3
1056fa99:	cc                                              	int3
1056fa9a:	cc                                              	int3
1056fa9b:	cc                                              	int3
1056fa9c:	cc                                              	int3
1056fa9d:	cc                                              	int3
1056fa9e:	cc                                              	int3
1056fa9f:	cc                                              	int3
