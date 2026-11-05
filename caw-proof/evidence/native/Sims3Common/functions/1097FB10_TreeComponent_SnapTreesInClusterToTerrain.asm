# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fb10 (TreeComponent_SnapTreesInClusterToTerrain)
Paired Ghidra pseudocode: 1097FB10_TreeComponent_SnapTreesInClusterToTerrain.c
Window: [0x1097fb10, 0x1097fb20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fb20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fb10: 8b 4c 24 04 85 c9 74 05 e9 e3 f6 dc ff c3 cc cc

LINEAR DISASSEMBLY
1097fb10 <.text+0x97eb10>:
1097fb10:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fb14:	85 c9                                           	test   ecx,ecx
1097fb16:	74 05                                           	je     0x1097fb1d
1097fb18:	e9 e3 f6 dc ff                                  	jmp    0x1074f200
1097fb1d:	c3                                              	ret
1097fb1e:	cc                                              	int3
1097fb1f:	cc                                              	int3
