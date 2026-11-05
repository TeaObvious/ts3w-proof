# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fec0 (SimBuilderWrap_SetMorphWeightA)
Paired Ghidra pseudocode: 1098FEC0_SimBuilderWrap_SetMorphWeightA.c
Window: [0x1098fec0, 0x1098fee0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fec0: 8b 44 24 04 f3 0f 10 44 24 08 83 48 1c 10 f3 0f
1098fed0: 11 40 50 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fec0 <.text+0x98eec0>:
1098fec0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098fec4:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
1098feca:	83 48 1c 10                                     	or     DWORD PTR [eax+0x1c],0x10
1098fece:	f3 0f 11 40 50                                  	movss  DWORD PTR [eax+0x50],xmm0
1098fed3:	c3                                              	ret
1098fed4:	cc                                              	int3
1098fed5:	cc                                              	int3
1098fed6:	cc                                              	int3
1098fed7:	cc                                              	int3
1098fed8:	cc                                              	int3
1098fed9:	cc                                              	int3
1098feda:	cc                                              	int3
1098fedb:	cc                                              	int3
1098fedc:	cc                                              	int3
1098fedd:	cc                                              	int3
1098fede:	cc                                              	int3
1098fedf:	cc                                              	int3
