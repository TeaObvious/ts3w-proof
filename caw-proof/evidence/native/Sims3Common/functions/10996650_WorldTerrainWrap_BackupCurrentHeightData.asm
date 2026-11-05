# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996650 (WorldTerrainWrap_BackupCurrentHeightData)
Paired Ghidra pseudocode: 10996650_WorldTerrainWrap_BackupCurrentHeightData.c
Window: [0x10996650, 0x10996670) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996650: 8b 44 24 04 8b 48 64 8b 49 08 85 c9 74 05 e9 ad
10996660: 49 6d ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996650 <.text+0x995650>:
10996650:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996654:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
10996657:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
1099665a:	85 c9                                           	test   ecx,ecx
1099665c:	74 05                                           	je     0x10996663
1099665e:	e9 ad 49 6d ff                                  	jmp    0x1006b010
10996663:	c3                                              	ret
10996664:	cc                                              	int3
10996665:	cc                                              	int3
10996666:	cc                                              	int3
10996667:	cc                                              	int3
10996668:	cc                                              	int3
10996669:	cc                                              	int3
1099666a:	cc                                              	int3
1099666b:	cc                                              	int3
1099666c:	cc                                              	int3
1099666d:	cc                                              	int3
1099666e:	cc                                              	int3
1099666f:	cc                                              	int3
