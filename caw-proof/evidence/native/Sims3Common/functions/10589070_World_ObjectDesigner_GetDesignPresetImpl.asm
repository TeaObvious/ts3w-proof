# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10589070 (World_ObjectDesigner_GetDesignPresetImpl)
Paired Ghidra pseudocode: 10589070_World_ObjectDesigner_GetDesignPresetImpl.c
Window: [0x10589070, 0x10589080) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10589070: e9 db ed ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10589070 <.text+0x588070>:
10589070:	e9 db ed ff ff                                  	jmp    0x10587e50
10589075:	cc                                              	int3
10589076:	cc                                              	int3
10589077:	cc                                              	int3
10589078:	cc                                              	int3
10589079:	cc                                              	int3
1058907a:	cc                                              	int3
1058907b:	cc                                              	int3
1058907c:	cc                                              	int3
1058907d:	cc                                              	int3
1058907e:	cc                                              	int3
1058907f:	cc                                              	int3
