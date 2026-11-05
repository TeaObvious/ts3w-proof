# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f970 (AnimationComponent_GetRig)
Paired Ghidra pseudocode: 1097F970_AnimationComponent_GetRig.c
Window: [0x1097f970, 0x1097f980) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f970: 8b 4c 24 04 8b 41 08 8b 50 20 83 c1 08 ff e2 cc

LINEAR DISASSEMBLY
1097f970 <.text+0x97e970>:
1097f970:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f974:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1097f977:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1097f97a:	83 c1 08                                        	add    ecx,0x8
1097f97d:	ff e2                                           	jmp    edx
1097f97f:	cc                                              	int3
