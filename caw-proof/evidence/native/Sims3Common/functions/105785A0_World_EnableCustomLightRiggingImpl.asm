# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105785a0 (World_EnableCustomLightRiggingImpl)
Paired Ghidra pseudocode: 105785A0_World_EnableCustomLightRiggingImpl.c
Window: [0x105785a0, 0x105785c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105785c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105785a0: 8b 44 24 04 50 e8 c6 6f f6 ff 8b c8 e8 0f e2 f2
105785b0: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105785a0 <.text+0x5775a0>:
105785a0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105785a4:	50                                              	push   eax
105785a5:	e8 c6 6f f6 ff                                  	call   0x104df570
105785aa:	8b c8                                           	mov    ecx,eax
105785ac:	e8 0f e2 f2 ff                                  	call   0x104a67c0
105785b1:	c3                                              	ret
105785b2:	cc                                              	int3
105785b3:	cc                                              	int3
105785b4:	cc                                              	int3
105785b5:	cc                                              	int3
105785b6:	cc                                              	int3
105785b7:	cc                                              	int3
105785b8:	cc                                              	int3
105785b9:	cc                                              	int3
105785ba:	cc                                              	int3
105785bb:	cc                                              	int3
105785bc:	cc                                              	int3
105785bd:	cc                                              	int3
105785be:	cc                                              	int3
105785bf:	cc                                              	int3
