# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e9e0 (SceneManWrap_SetShadowsEnabled)
Paired Ghidra pseudocode: 1098E9E0_SceneManWrap_SetShadowsEnabled.c
Window: [0x1098e9e0, 0x1098ea00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ea00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e9e0: 83 7c 24 08 00 8b 4c 24 04 0f 95 c0 88 81 60 02
1098e9f0: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e9e0 <.text+0x98d9e0>:
1098e9e0:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098e9e5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e9e9:	0f 95 c0                                        	setne  al
1098e9ec:	88 81 60 02 00 00                               	mov    BYTE PTR [ecx+0x260],al
1098e9f2:	c3                                              	ret
1098e9f3:	cc                                              	int3
1098e9f4:	cc                                              	int3
1098e9f5:	cc                                              	int3
1098e9f6:	cc                                              	int3
1098e9f7:	cc                                              	int3
1098e9f8:	cc                                              	int3
1098e9f9:	cc                                              	int3
1098e9fa:	cc                                              	int3
1098e9fb:	cc                                              	int3
1098e9fc:	cc                                              	int3
1098e9fd:	cc                                              	int3
1098e9fe:	cc                                              	int3
1098e9ff:	cc                                              	int3
