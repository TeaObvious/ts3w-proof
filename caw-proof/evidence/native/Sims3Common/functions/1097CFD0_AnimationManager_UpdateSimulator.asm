# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097cfd0 (AnimationManager_UpdateSimulator)
Paired Ghidra pseudocode: 1097CFD0_AnimationManager_UpdateSimulator.c
Window: [0x1097cfd0, 0x1097cff0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097cff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097cfd0: d9 44 24 04 51 8b 0d 00 21 c7 10 d9 1c 24 e8 ed
1097cfe0: 0d 9f ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097cfd0 <.text+0x97bfd0>:
1097cfd0:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
1097cfd4:	51                                              	push   ecx
1097cfd5:	8b 0d 00 21 c7 10                               	mov    ecx,DWORD PTR ds:0x10c72100
1097cfdb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1097cfde:	e8 ed 0d 9f ff                                  	call   0x1036ddd0
1097cfe3:	c3                                              	ret
1097cfe4:	cc                                              	int3
1097cfe5:	cc                                              	int3
1097cfe6:	cc                                              	int3
1097cfe7:	cc                                              	int3
1097cfe8:	cc                                              	int3
1097cfe9:	cc                                              	int3
1097cfea:	cc                                              	int3
1097cfeb:	cc                                              	int3
1097cfec:	cc                                              	int3
1097cfed:	cc                                              	int3
1097cfee:	cc                                              	int3
1097cfef:	cc                                              	int3
