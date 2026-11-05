# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534cb0 (LoadSaveManager_GetLoadSaveFileInfoID_Impl)
Paired Ghidra pseudocode: 10534CB0_LoadSaveManager_GetLoadSaveFileInfoID_Impl.c
Window: [0x10534cb0, 0x10534cc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534cb0: e9 bb fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10534cb0 <.text+0x533cb0>:
10534cb0:	e9 bb fc ff ff                                  	jmp    0x10534970
10534cb5:	cc                                              	int3
10534cb6:	cc                                              	int3
10534cb7:	cc                                              	int3
10534cb8:	cc                                              	int3
10534cb9:	cc                                              	int3
10534cba:	cc                                              	int3
10534cbb:	cc                                              	int3
10534cbc:	cc                                              	int3
10534cbd:	cc                                              	int3
10534cbe:	cc                                              	int3
10534cbf:	cc                                              	int3
