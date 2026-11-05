# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fc00 (SimComponent_SetWeightHeight)
Paired Ghidra pseudocode: 1097FC00_SimComponent_SetWeightHeight.c
Window: [0x1097fc00, 0x1097fc30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fc30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fc00: d9 44 24 14 8b 4c 24 04 83 ec 10 d9 5c 24 0c d9
1097fc10: 44 24 20 d9 5c 24 08 d9 44 24 1c d9 5c 24 04 d9
1097fc20: 44 24 18 d9 1c 24 e8 55 21 dc ff c3 cc cc cc cc

LINEAR DISASSEMBLY
1097fc00 <.text+0x97ec00>:
1097fc00:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
1097fc04:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fc08:	83 ec 10                                        	sub    esp,0x10
1097fc0b:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1097fc0f:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
1097fc13:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1097fc17:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
1097fc1b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1097fc1f:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
1097fc23:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1097fc26:	e8 55 21 dc ff                                  	call   0x10741d80
1097fc2b:	c3                                              	ret
1097fc2c:	cc                                              	int3
1097fc2d:	cc                                              	int3
1097fc2e:	cc                                              	int3
1097fc2f:	cc                                              	int3
