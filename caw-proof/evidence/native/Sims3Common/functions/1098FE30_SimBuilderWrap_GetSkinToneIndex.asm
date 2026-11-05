# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fe30 (SimBuilderWrap_GetSkinToneIndex)
Paired Ghidra pseudocode: 1098FE30_SimBuilderWrap_GetSkinToneIndex.c
Window: [0x1098fe30, 0x1098fe40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fe40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fe30: 8b 44 24 04 d9 40 38 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fe30 <.text+0x98ee30>:
1098fe30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098fe34:	d9 40 38                                        	fld    DWORD PTR [eax+0x38]
1098fe37:	c3                                              	ret
1098fe38:	cc                                              	int3
1098fe39:	cc                                              	int3
1098fe3a:	cc                                              	int3
1098fe3b:	cc                                              	int3
1098fe3c:	cc                                              	int3
1098fe3d:	cc                                              	int3
1098fe3e:	cc                                              	int3
1098fe3f:	cc                                              	int3
