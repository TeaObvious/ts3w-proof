# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990dc0 (SimOutfitResourceWrap_SetGender)
Paired Ghidra pseudocode: 10990DC0_SimOutfitResourceWrap_SetGender.c
Window: [0x10990dc0, 0x10990de0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990dc0: 8b 44 24 04 8b 48 38 81 e1 ff cf ff ff 0b 4c 24
10990dd0: 08 89 48 38 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990dc0 <.text+0x98fdc0>:
10990dc0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990dc4:	8b 48 38                                        	mov    ecx,DWORD PTR [eax+0x38]
10990dc7:	81 e1 ff cf ff ff                               	and    ecx,0xffffcfff
10990dcd:	0b 4c 24 08                                     	or     ecx,DWORD PTR [esp+0x8]
10990dd1:	89 48 38                                        	mov    DWORD PTR [eax+0x38],ecx
10990dd4:	c3                                              	ret
10990dd5:	cc                                              	int3
10990dd6:	cc                                              	int3
10990dd7:	cc                                              	int3
10990dd8:	cc                                              	int3
10990dd9:	cc                                              	int3
10990dda:	cc                                              	int3
10990ddb:	cc                                              	int3
10990ddc:	cc                                              	int3
10990ddd:	cc                                              	int3
10990dde:	cc                                              	int3
10990ddf:	cc                                              	int3
