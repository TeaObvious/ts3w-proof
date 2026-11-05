# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ed30 (CameraWrap_GetFarClip)
Paired Ghidra pseudocode: 1098ED30_CameraWrap_GetFarClip.c
Window: [0x1098ed30, 0x1098ed40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ed40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ed30: 8b 44 24 04 d9 40 20 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ed30 <.text+0x98dd30>:
1098ed30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ed34:	d9 40 20                                        	fld    DWORD PTR [eax+0x20]
1098ed37:	c3                                              	ret
1098ed38:	cc                                              	int3
1098ed39:	cc                                              	int3
1098ed3a:	cc                                              	int3
1098ed3b:	cc                                              	int3
1098ed3c:	cc                                              	int3
1098ed3d:	cc                                              	int3
1098ed3e:	cc                                              	int3
1098ed3f:	cc                                              	int3
