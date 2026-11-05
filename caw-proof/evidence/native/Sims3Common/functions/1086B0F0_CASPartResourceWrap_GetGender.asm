# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1086b0f0 (CASPartResourceWrap_GetGender)
Paired Ghidra pseudocode: 1086B0F0_CASPartResourceWrap_GetGender.c
Window: [0x1086b0f0, 0x1086b100) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1086b100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1086b0f0: 8b 44 24 04 8b 40 54 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1086b0f0 <.text+0x86a0f0>:
1086b0f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1086b0f4:	8b 40 54                                        	mov    eax,DWORD PTR [eax+0x54]
1086b0f7:	c3                                              	ret
1086b0f8:	cc                                              	int3
1086b0f9:	cc                                              	int3
1086b0fa:	cc                                              	int3
1086b0fb:	cc                                              	int3
1086b0fc:	cc                                              	int3
1086b0fd:	cc                                              	int3
1086b0fe:	cc                                              	int3
1086b0ff:	cc                                              	int3
