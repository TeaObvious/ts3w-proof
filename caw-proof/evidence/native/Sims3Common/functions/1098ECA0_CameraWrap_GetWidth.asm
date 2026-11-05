# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098eca0 (CameraWrap_GetWidth)
Paired Ghidra pseudocode: 1098ECA0_CameraWrap_GetWidth.c
Window: [0x1098eca0, 0x1098ecb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ecb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098eca0: 8b 44 24 04 d9 40 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098eca0 <.text+0x98dca0>:
1098eca0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098eca4:	d9 40 0c                                        	fld    DWORD PTR [eax+0xc]
1098eca7:	c3                                              	ret
1098eca8:	cc                                              	int3
1098eca9:	cc                                              	int3
1098ecaa:	cc                                              	int3
1098ecab:	cc                                              	int3
1098ecac:	cc                                              	int3
1098ecad:	cc                                              	int3
1098ecae:	cc                                              	int3
1098ecaf:	cc                                              	int3
