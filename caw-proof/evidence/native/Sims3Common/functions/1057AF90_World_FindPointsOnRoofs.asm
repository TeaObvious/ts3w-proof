# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057af90 (World_FindPointsOnRoofs)
Paired Ghidra pseudocode: 1057AF90_World_FindPointsOnRoofs.c
Window: [0x1057af90, 0x1057afb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057afb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057af90: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
1057afa0: 08 51 52 50 e8 07 da ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
1057af90 <.text+0x579f90>:
1057af90:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1057af94:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057af98:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057af9c:	50                                              	push   eax
1057af9d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057afa1:	51                                              	push   ecx
1057afa2:	52                                              	push   edx
1057afa3:	50                                              	push   eax
1057afa4:	e8 07 da ff ff                                  	call   0x105789b0
1057afa9:	83 c4 10                                        	add    esp,0x10
1057afac:	c3                                              	ret
1057afad:	cc                                              	int3
1057afae:	cc                                              	int3
1057afaf:	cc                                              	int3
