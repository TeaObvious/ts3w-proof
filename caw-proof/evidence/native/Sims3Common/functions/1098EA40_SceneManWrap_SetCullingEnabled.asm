# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ea40 (SceneManWrap_SetCullingEnabled)
Paired Ghidra pseudocode: 1098EA40_SceneManWrap_SetCullingEnabled.c
Window: [0x1098ea40, 0x1098ea60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ea60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ea40: 83 7c 24 08 00 8b 4c 24 04 0f 95 c0 88 81 62 02
1098ea50: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ea40 <.text+0x98da40>:
1098ea40:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098ea45:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ea49:	0f 95 c0                                        	setne  al
1098ea4c:	88 81 62 02 00 00                               	mov    BYTE PTR [ecx+0x262],al
1098ea52:	c3                                              	ret
1098ea53:	cc                                              	int3
1098ea54:	cc                                              	int3
1098ea55:	cc                                              	int3
1098ea56:	cc                                              	int3
1098ea57:	cc                                              	int3
1098ea58:	cc                                              	int3
1098ea59:	cc                                              	int3
1098ea5a:	cc                                              	int3
1098ea5b:	cc                                              	int3
1098ea5c:	cc                                              	int3
1098ea5d:	cc                                              	int3
1098ea5e:	cc                                              	int3
1098ea5f:	cc                                              	int3
