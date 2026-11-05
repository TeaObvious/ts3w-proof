# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ea00 (SceneManWrap_SetBoundingBoxesEnabled)
Paired Ghidra pseudocode: 1098EA00_SceneManWrap_SetBoundingBoxesEnabled.c
Window: [0x1098ea00, 0x1098ea20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ea20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ea00: 83 7c 24 08 00 8b 4c 24 04 0f 95 c0 88 81 5d 02
1098ea10: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ea00 <.text+0x98da00>:
1098ea00:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098ea05:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ea09:	0f 95 c0                                        	setne  al
1098ea0c:	88 81 5d 02 00 00                               	mov    BYTE PTR [ecx+0x25d],al
1098ea12:	c3                                              	ret
1098ea13:	cc                                              	int3
1098ea14:	cc                                              	int3
1098ea15:	cc                                              	int3
1098ea16:	cc                                              	int3
1098ea17:	cc                                              	int3
1098ea18:	cc                                              	int3
1098ea19:	cc                                              	int3
1098ea1a:	cc                                              	int3
1098ea1b:	cc                                              	int3
1098ea1c:	cc                                              	int3
1098ea1d:	cc                                              	int3
1098ea1e:	cc                                              	int3
1098ea1f:	cc                                              	int3
