# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e9c0 (SceneManWrap_SetWireframeEnabled)
Paired Ghidra pseudocode: 1098E9C0_SceneManWrap_SetWireframeEnabled.c
Window: [0x1098e9c0, 0x1098e9e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e9e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e9c0: 83 7c 24 08 00 8b 4c 24 04 0f 95 c0 88 81 5c 02
1098e9d0: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e9c0 <.text+0x98d9c0>:
1098e9c0:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098e9c5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e9c9:	0f 95 c0                                        	setne  al
1098e9cc:	88 81 5c 02 00 00                               	mov    BYTE PTR [ecx+0x25c],al
1098e9d2:	c3                                              	ret
1098e9d3:	cc                                              	int3
1098e9d4:	cc                                              	int3
1098e9d5:	cc                                              	int3
1098e9d6:	cc                                              	int3
1098e9d7:	cc                                              	int3
1098e9d8:	cc                                              	int3
1098e9d9:	cc                                              	int3
1098e9da:	cc                                              	int3
1098e9db:	cc                                              	int3
1098e9dc:	cc                                              	int3
1098e9dd:	cc                                              	int3
1098e9de:	cc                                              	int3
1098e9df:	cc                                              	int3
