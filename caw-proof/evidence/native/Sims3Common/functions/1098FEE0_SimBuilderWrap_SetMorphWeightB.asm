# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fee0 (SimBuilderWrap_SetMorphWeightB)
Paired Ghidra pseudocode: 1098FEE0_SimBuilderWrap_SetMorphWeightB.c
Window: [0x1098fee0, 0x1098ff00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ff00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fee0: 8b 44 24 04 f3 0f 10 44 24 08 83 48 1c 20 f3 0f
1098fef0: 11 40 54 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fee0 <.text+0x98eee0>:
1098fee0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098fee4:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
1098feea:	83 48 1c 20                                     	or     DWORD PTR [eax+0x1c],0x20
1098feee:	f3 0f 11 40 54                                  	movss  DWORD PTR [eax+0x54],xmm0
1098fef3:	c3                                              	ret
1098fef4:	cc                                              	int3
1098fef5:	cc                                              	int3
1098fef6:	cc                                              	int3
1098fef7:	cc                                              	int3
1098fef8:	cc                                              	int3
1098fef9:	cc                                              	int3
1098fefa:	cc                                              	int3
1098fefb:	cc                                              	int3
1098fefc:	cc                                              	int3
1098fefd:	cc                                              	int3
1098fefe:	cc                                              	int3
1098feff:	cc                                              	int3
