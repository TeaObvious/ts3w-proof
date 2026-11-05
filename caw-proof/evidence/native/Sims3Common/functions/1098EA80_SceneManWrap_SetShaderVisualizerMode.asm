# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ea80 (SceneManWrap_SetShaderVisualizerMode)
Paired Ghidra pseudocode: 1098EA80_SceneManWrap_SetShaderVisualizerMode.c
Window: [0x1098ea80, 0x1098eab0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098eab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ea80: 8b 44 24 08 85 c0 75 0c 8b 44 24 04 c6 80 78 03
1098ea90: 00 00 00 c3 8b 4c 24 04 50 c6 81 78 03 00 00 01
1098eaa0: e8 9b fa b4 ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ea80 <.text+0x98da80>:
1098ea80:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098ea84:	85 c0                                           	test   eax,eax
1098ea86:	75 0c                                           	jne    0x1098ea94
1098ea88:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ea8c:	c6 80 78 03 00 00 00                            	mov    BYTE PTR [eax+0x378],0x0
1098ea93:	c3                                              	ret
1098ea94:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ea98:	50                                              	push   eax
1098ea99:	c6 81 78 03 00 00 01                            	mov    BYTE PTR [ecx+0x378],0x1
1098eaa0:	e8 9b fa b4 ff                                  	call   0x104de540
1098eaa5:	c3                                              	ret
1098eaa6:	cc                                              	int3
1098eaa7:	cc                                              	int3
1098eaa8:	cc                                              	int3
1098eaa9:	cc                                              	int3
1098eaaa:	cc                                              	int3
1098eaab:	cc                                              	int3
1098eaac:	cc                                              	int3
1098eaad:	cc                                              	int3
1098eaae:	cc                                              	int3
1098eaaf:	cc                                              	int3
