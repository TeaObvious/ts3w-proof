# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b060 (World_FogOfExplorationSetFadeTime)
Paired Ghidra pseudocode: 1057B060_World_FogOfExplorationSetFadeTime.c
Window: [0x1057b060, 0x1057b070) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b060: d9 44 24 04 51 d9 1c 24 e8 93 58 b9 ff 59 c3 cc

LINEAR DISASSEMBLY
1057b060 <.text+0x57a060>:
1057b060:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
1057b064:	51                                              	push   ecx
1057b065:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1057b068:	e8 93 58 b9 ff                                  	call   0x10110900
1057b06d:	59                                              	pop    ecx
1057b06e:	c3                                              	ret
1057b06f:	cc                                              	int3
