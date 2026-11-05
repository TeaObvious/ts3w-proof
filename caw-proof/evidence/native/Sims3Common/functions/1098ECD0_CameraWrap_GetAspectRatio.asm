# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ecd0 (CameraWrap_GetAspectRatio)
Paired Ghidra pseudocode: 1098ECD0_CameraWrap_GetAspectRatio.c
Window: [0x1098ecd0, 0x1098ece0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ece0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ecd0: 8b 44 24 04 d9 40 18 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ecd0 <.text+0x98dcd0>:
1098ecd0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ecd4:	d9 40 18                                        	fld    DWORD PTR [eax+0x18]
1098ecd7:	c3                                              	ret
1098ecd8:	cc                                              	int3
1098ecd9:	cc                                              	int3
1098ecda:	cc                                              	int3
1098ecdb:	cc                                              	int3
1098ecdc:	cc                                              	int3
1098ecdd:	cc                                              	int3
1098ecde:	cc                                              	int3
1098ecdf:	cc                                              	int3
