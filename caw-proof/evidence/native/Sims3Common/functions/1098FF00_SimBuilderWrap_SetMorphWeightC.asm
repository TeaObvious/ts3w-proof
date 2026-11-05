# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ff00 (SimBuilderWrap_SetMorphWeightC)
Paired Ghidra pseudocode: 1098FF00_SimBuilderWrap_SetMorphWeightC.c
Window: [0x1098ff00, 0x1098ff20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ff20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ff00: 8b 44 24 04 f3 0f 10 44 24 08 83 48 1c 40 f3 0f
1098ff10: 11 40 58 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ff00 <.text+0x98ef00>:
1098ff00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ff04:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
1098ff0a:	83 48 1c 40                                     	or     DWORD PTR [eax+0x1c],0x40
1098ff0e:	f3 0f 11 40 58                                  	movss  DWORD PTR [eax+0x58],xmm0
1098ff13:	c3                                              	ret
1098ff14:	cc                                              	int3
1098ff15:	cc                                              	int3
1098ff16:	cc                                              	int3
1098ff17:	cc                                              	int3
1098ff18:	cc                                              	int3
1098ff19:	cc                                              	int3
1098ff1a:	cc                                              	int3
1098ff1b:	cc                                              	int3
1098ff1c:	cc                                              	int3
1098ff1d:	cc                                              	int3
1098ff1e:	cc                                              	int3
1098ff1f:	cc                                              	int3
