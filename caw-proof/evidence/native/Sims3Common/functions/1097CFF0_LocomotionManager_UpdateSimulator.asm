# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097cff0 (LocomotionManager_UpdateSimulator)
Paired Ghidra pseudocode: 1097CFF0_LocomotionManager_UpdateSimulator.c
Window: [0x1097cff0, 0x1097d010) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d010
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097cff0: d9 44 24 04 51 8b 0d a0 d9 c7 10 d9 1c 24 e8 8d
1097d000: 10 cb ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097cff0 <.text+0x97bff0>:
1097cff0:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
1097cff4:	51                                              	push   ecx
1097cff5:	8b 0d a0 d9 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7d9a0
1097cffb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1097cffe:	e8 8d 10 cb ff                                  	call   0x1062e090
1097d003:	c3                                              	ret
1097d004:	cc                                              	int3
1097d005:	cc                                              	int3
1097d006:	cc                                              	int3
1097d007:	cc                                              	int3
1097d008:	cc                                              	int3
1097d009:	cc                                              	int3
1097d00a:	cc                                              	int3
1097d00b:	cc                                              	int3
1097d00c:	cc                                              	int3
1097d00d:	cc                                              	int3
1097d00e:	cc                                              	int3
1097d00f:	cc                                              	int3
