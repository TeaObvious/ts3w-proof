# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ff20 (SimBuilderWrap_SetMorphWeightD)
Paired Ghidra pseudocode: 1098FF20_SimBuilderWrap_SetMorphWeightD.c
Window: [0x1098ff20, 0x1098ff40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ff40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ff20: 8b 44 24 04 f3 0f 10 44 24 08 81 48 1c 80 00 00
1098ff30: 00 f3 0f 11 40 5c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ff20 <.text+0x98ef20>:
1098ff20:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ff24:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
1098ff2a:	81 48 1c 80 00 00 00                            	or     DWORD PTR [eax+0x1c],0x80
1098ff31:	f3 0f 11 40 5c                                  	movss  DWORD PTR [eax+0x5c],xmm0
1098ff36:	c3                                              	ret
1098ff37:	cc                                              	int3
1098ff38:	cc                                              	int3
1098ff39:	cc                                              	int3
1098ff3a:	cc                                              	int3
1098ff3b:	cc                                              	int3
1098ff3c:	cc                                              	int3
1098ff3d:	cc                                              	int3
1098ff3e:	cc                                              	int3
1098ff3f:	cc                                              	int3
