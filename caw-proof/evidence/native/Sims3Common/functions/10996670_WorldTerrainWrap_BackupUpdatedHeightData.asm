# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996670 (WorldTerrainWrap_BackupUpdatedHeightData)
Paired Ghidra pseudocode: 10996670_WorldTerrainWrap_BackupUpdatedHeightData.c
Window: [0x10996670, 0x10996690) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996670: 8b 44 24 04 8b 48 64 8b 49 08 85 c9 74 05 e9 7d
10996680: 26 6d ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996670 <.text+0x995670>:
10996670:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996674:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
10996677:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
1099667a:	85 c9                                           	test   ecx,ecx
1099667c:	74 05                                           	je     0x10996683
1099667e:	e9 7d 26 6d ff                                  	jmp    0x10068d00
10996683:	c3                                              	ret
10996684:	cc                                              	int3
10996685:	cc                                              	int3
10996686:	cc                                              	int3
10996687:	cc                                              	int3
10996688:	cc                                              	int3
10996689:	cc                                              	int3
1099668a:	cc                                              	int3
1099668b:	cc                                              	int3
1099668c:	cc                                              	int3
1099668d:	cc                                              	int3
1099668e:	cc                                              	int3
1099668f:	cc                                              	int3
