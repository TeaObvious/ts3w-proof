# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996e20 (WorldTerrainWrap_CreateRoadBridge)
Paired Ghidra pseudocode: 10996E20_WorldTerrainWrap_CreateRoadBridge.c
Window: [0x10996e20, 0x10996e40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996e20: a1 c4 00 c7 10 8b 54 24 10 8b 48 5c 8b 44 24 0c
10996e30: 52 8b 54 24 0c 50 52 e8 c4 fd 7a ff c3 cc cc cc

LINEAR DISASSEMBLY
10996e20 <.text+0x995e20>:
10996e20:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10996e25:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10996e29:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
10996e2c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10996e30:	52                                              	push   edx
10996e31:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10996e35:	50                                              	push   eax
10996e36:	52                                              	push   edx
10996e37:	e8 c4 fd 7a ff                                  	call   0x10146c00
10996e3c:	c3                                              	ret
10996e3d:	cc                                              	int3
10996e3e:	cc                                              	int3
10996e3f:	cc                                              	int3
