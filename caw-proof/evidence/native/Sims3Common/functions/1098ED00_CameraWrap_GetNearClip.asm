# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ed00 (CameraWrap_GetNearClip)
Paired Ghidra pseudocode: 1098ED00_CameraWrap_GetNearClip.c
Window: [0x1098ed00, 0x1098ed10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ed10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ed00: 8b 44 24 04 d9 40 1c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ed00 <.text+0x98dd00>:
1098ed00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ed04:	d9 40 1c                                        	fld    DWORD PTR [eax+0x1c]
1098ed07:	c3                                              	ret
1098ed08:	cc                                              	int3
1098ed09:	cc                                              	int3
1098ed0a:	cc                                              	int3
1098ed0b:	cc                                              	int3
1098ed0c:	cc                                              	int3
1098ed0d:	cc                                              	int3
1098ed0e:	cc                                              	int3
1098ed0f:	cc                                              	int3
