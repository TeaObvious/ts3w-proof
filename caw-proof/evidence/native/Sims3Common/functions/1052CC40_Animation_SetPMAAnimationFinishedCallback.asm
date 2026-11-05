# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052cc40 (Animation_SetPMAAnimationFinishedCallback)
Paired Ghidra pseudocode: 1052CC40_Animation_SetPMAAnimationFinishedCallback.c
Window: [0x1052cc40, 0x1052cc50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052cc50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052cc40: 8b 44 24 04 8b 0d b4 86 c7 10 89 41 08 c3 cc cc

LINEAR DISASSEMBLY
1052cc40 <.text+0x52bc40>:
1052cc40:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1052cc44:	8b 0d b4 86 c7 10                               	mov    ecx,DWORD PTR ds:0x10c786b4
1052cc4a:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
1052cc4d:	c3                                              	ret
1052cc4e:	cc                                              	int3
1052cc4f:	cc                                              	int3
