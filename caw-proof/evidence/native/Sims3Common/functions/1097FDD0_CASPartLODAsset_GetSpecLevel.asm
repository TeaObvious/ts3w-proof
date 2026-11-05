# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fdd0 (CASPartLODAsset_GetSpecLevel)
Paired Ghidra pseudocode: 1097FDD0_CASPartLODAsset_GetSpecLevel.c
Window: [0x1097fdd0, 0x1097fde0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fde0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fdd0: 8b 44 24 04 8b 40 04 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fdd0 <.text+0x97edd0>:
1097fdd0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097fdd4:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
1097fdd7:	c3                                              	ret
1097fdd8:	cc                                              	int3
1097fdd9:	cc                                              	int3
1097fdda:	cc                                              	int3
1097fddb:	cc                                              	int3
1097fddc:	cc                                              	int3
1097fddd:	cc                                              	int3
1097fdde:	cc                                              	int3
1097fddf:	cc                                              	int3
