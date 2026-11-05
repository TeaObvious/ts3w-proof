# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097eff0 (CASPartResourceWrap_GetNumTextureBuilders)
Paired Ghidra pseudocode: 1097EFF0_CASPartResourceWrap_GetNumTextureBuilders.c
Window: [0x1097eff0, 0x1097f000) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097eff0: 8b 4c 24 04 8b 41 60 2b 41 5c c1 f8 05 c3 cc cc

LINEAR DISASSEMBLY
1097eff0 <.text+0x97dff0>:
1097eff0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097eff4:	8b 41 60                                        	mov    eax,DWORD PTR [ecx+0x60]
1097eff7:	2b 41 5c                                        	sub    eax,DWORD PTR [ecx+0x5c]
1097effa:	c1 f8 05                                        	sar    eax,0x5
1097effd:	c3                                              	ret
1097effe:	cc                                              	int3
1097efff:	cc                                              	int3
