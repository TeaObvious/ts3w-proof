# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999140 (WorldWrap_SetBrushVisualShape)
Paired Ghidra pseudocode: 10999140_WorldWrap_SetBrushVisualShape.c
Window: [0x10999140, 0x10999160) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999140: 8b 44 24 04 8b 48 70 85 c9 74 0a 8b 54 24 08 52
10999150: e8 4b af 85 ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999140 <.text+0x998140>:
10999140:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10999144:	8b 48 70                                        	mov    ecx,DWORD PTR [eax+0x70]
10999147:	85 c9                                           	test   ecx,ecx
10999149:	74 0a                                           	je     0x10999155
1099914b:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1099914f:	52                                              	push   edx
10999150:	e8 4b af 85 ff                                  	call   0x101f40a0
10999155:	c3                                              	ret
10999156:	cc                                              	int3
10999157:	cc                                              	int3
10999158:	cc                                              	int3
10999159:	cc                                              	int3
1099915a:	cc                                              	int3
1099915b:	cc                                              	int3
1099915c:	cc                                              	int3
1099915d:	cc                                              	int3
1099915e:	cc                                              	int3
1099915f:	cc                                              	int3
