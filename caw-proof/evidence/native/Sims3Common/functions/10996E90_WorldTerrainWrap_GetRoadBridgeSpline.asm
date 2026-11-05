# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996e90 (WorldTerrainWrap_GetRoadBridgeSpline)
Paired Ghidra pseudocode: 10996E90_WorldTerrainWrap_GetRoadBridgeSpline.c
Window: [0x10996e90, 0x10996eb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996eb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996e90: 8b 44 24 08 8b 4c 24 04 50 51 e8 a1 ff ff ff 83
10996ea0: c4 08 85 c0 74 04 8b 40 38 c3 33 c0 c3 cc cc cc

LINEAR DISASSEMBLY
10996e90 <.text+0x995e90>:
10996e90:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10996e94:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996e98:	50                                              	push   eax
10996e99:	51                                              	push   ecx
10996e9a:	e8 a1 ff ff ff                                  	call   0x10996e40
10996e9f:	83 c4 08                                        	add    esp,0x8
10996ea2:	85 c0                                           	test   eax,eax
10996ea4:	74 04                                           	je     0x10996eaa
10996ea6:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
10996ea9:	c3                                              	ret
10996eaa:	33 c0                                           	xor    eax,eax
10996eac:	c3                                              	ret
10996ead:	cc                                              	int3
10996eae:	cc                                              	int3
10996eaf:	cc                                              	int3
