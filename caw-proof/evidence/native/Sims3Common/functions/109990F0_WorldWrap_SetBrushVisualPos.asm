# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109990f0 (WorldWrap_SetBrushVisualPos)
Paired Ghidra pseudocode: 109990F0_WorldWrap_SetBrushVisualPos.c
Window: [0x109990f0, 0x10999120) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109990f0: 8b 44 24 04 8b 48 70 85 c9 74 17 d9 44 24 0c 83
10999100: ec 08 d9 5c 24 04 d9 44 24 10 d9 1c 24 e8 7e ae
10999110: 85 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109990f0 <.text+0x9980f0>:
109990f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109990f4:	8b 48 70                                        	mov    ecx,DWORD PTR [eax+0x70]
109990f7:	85 c9                                           	test   ecx,ecx
109990f9:	74 17                                           	je     0x10999112
109990fb:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
109990ff:	83 ec 08                                        	sub    esp,0x8
10999102:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10999106:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
1099910a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1099910d:	e8 7e ae 85 ff                                  	call   0x101f3f90
10999112:	c3                                              	ret
10999113:	cc                                              	int3
10999114:	cc                                              	int3
10999115:	cc                                              	int3
10999116:	cc                                              	int3
10999117:	cc                                              	int3
10999118:	cc                                              	int3
10999119:	cc                                              	int3
1099911a:	cc                                              	int3
1099911b:	cc                                              	int3
1099911c:	cc                                              	int3
1099911d:	cc                                              	int3
1099911e:	cc                                              	int3
1099911f:	cc                                              	int3
