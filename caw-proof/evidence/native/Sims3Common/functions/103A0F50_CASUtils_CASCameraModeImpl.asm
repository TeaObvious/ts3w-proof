# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0f50 (CASUtils_CASCameraModeImpl)
Paired Ghidra pseudocode: 103A0F50_CASUtils_CASCameraModeImpl.c
Window: [0x103a0f50, 0x103a0f60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0f50: e9 7b e3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a0f50 <.text+0x39ff50>:
103a0f50:	e9 7b e3 ff ff                                  	jmp    0x1039f2d0
103a0f55:	cc                                              	int3
103a0f56:	cc                                              	int3
103a0f57:	cc                                              	int3
103a0f58:	cc                                              	int3
103a0f59:	cc                                              	int3
103a0f5a:	cc                                              	int3
103a0f5b:	cc                                              	int3
103a0f5c:	cc                                              	int3
103a0f5d:	cc                                              	int3
103a0f5e:	cc                                              	int3
103a0f5f:	cc                                              	int3
