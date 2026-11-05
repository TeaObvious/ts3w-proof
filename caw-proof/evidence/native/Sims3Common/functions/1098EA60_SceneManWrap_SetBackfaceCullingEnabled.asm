# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ea60 (SceneManWrap_SetBackfaceCullingEnabled)
Paired Ghidra pseudocode: 1098EA60_SceneManWrap_SetBackfaceCullingEnabled.c
Window: [0x1098ea60, 0x1098ea80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ea80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ea60: 83 7c 24 08 00 8b 4c 24 04 0f 95 c0 88 81 63 02
1098ea70: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ea60 <.text+0x98da60>:
1098ea60:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098ea65:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ea69:	0f 95 c0                                        	setne  al
1098ea6c:	88 81 63 02 00 00                               	mov    BYTE PTR [ecx+0x263],al
1098ea72:	c3                                              	ret
1098ea73:	cc                                              	int3
1098ea74:	cc                                              	int3
1098ea75:	cc                                              	int3
1098ea76:	cc                                              	int3
1098ea77:	cc                                              	int3
1098ea78:	cc                                              	int3
1098ea79:	cc                                              	int3
1098ea7a:	cc                                              	int3
1098ea7b:	cc                                              	int3
1098ea7c:	cc                                              	int3
1098ea7d:	cc                                              	int3
1098ea7e:	cc                                              	int3
1098ea7f:	cc                                              	int3
