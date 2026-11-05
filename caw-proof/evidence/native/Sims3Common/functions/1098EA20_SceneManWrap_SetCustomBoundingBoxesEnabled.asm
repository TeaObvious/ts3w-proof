# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ea20 (SceneManWrap_SetCustomBoundingBoxesEnabled)
Paired Ghidra pseudocode: 1098EA20_SceneManWrap_SetCustomBoundingBoxesEnabled.c
Window: [0x1098ea20, 0x1098ea40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ea40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ea20: 83 7c 24 08 00 8b 4c 24 04 0f 95 c0 88 81 5e 02
1098ea30: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ea20 <.text+0x98da20>:
1098ea20:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098ea25:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ea29:	0f 95 c0                                        	setne  al
1098ea2c:	88 81 5e 02 00 00                               	mov    BYTE PTR [ecx+0x25e],al
1098ea32:	c3                                              	ret
1098ea33:	cc                                              	int3
1098ea34:	cc                                              	int3
1098ea35:	cc                                              	int3
1098ea36:	cc                                              	int3
1098ea37:	cc                                              	int3
1098ea38:	cc                                              	int3
1098ea39:	cc                                              	int3
1098ea3a:	cc                                              	int3
1098ea3b:	cc                                              	int3
1098ea3c:	cc                                              	int3
1098ea3d:	cc                                              	int3
1098ea3e:	cc                                              	int3
1098ea3f:	cc                                              	int3
