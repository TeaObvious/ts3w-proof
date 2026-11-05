# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980890 (EffectComponent_GetEffectName)
Paired Ghidra pseudocode: 10980890_EffectComponent_GetEffectName.c
Window: [0x10980890, 0x109808b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109808b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980890: 8b 44 24 04 8b 0d b0 9b c5 10 8d 04 c0 8b 04 81
109808a0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980890 <.text+0x97f890>:
10980890:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10980894:	8b 0d b0 9b c5 10                               	mov    ecx,DWORD PTR ds:0x10c59bb0
1098089a:	8d 04 c0                                        	lea    eax,[eax+eax*8]
1098089d:	8b 04 81                                        	mov    eax,DWORD PTR [ecx+eax*4]
109808a0:	c3                                              	ret
109808a1:	cc                                              	int3
109808a2:	cc                                              	int3
109808a3:	cc                                              	int3
109808a4:	cc                                              	int3
109808a5:	cc                                              	int3
109808a6:	cc                                              	int3
109808a7:	cc                                              	int3
109808a8:	cc                                              	int3
109808a9:	cc                                              	int3
109808aa:	cc                                              	int3
109808ab:	cc                                              	int3
109808ac:	cc                                              	int3
109808ad:	cc                                              	int3
109808ae:	cc                                              	int3
109808af:	cc                                              	int3
