# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109938d0 (ITextureOp_SetUIVisible)
Paired Ghidra pseudocode: 109938D0_ITextureOp_SetUIVisible.c
Window: [0x109938d0, 0x109938f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109938f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109938d0: 83 7c 24 08 01 8b 4c 24 04 8b 01 8b 40 24 0f 94
109938e0: c2 52 ff d0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109938d0 <.text+0x9928d0>:
109938d0:	83 7c 24 08 01                                  	cmp    DWORD PTR [esp+0x8],0x1
109938d5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109938d9:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109938db:	8b 40 24                                        	mov    eax,DWORD PTR [eax+0x24]
109938de:	0f 94 c2                                        	sete   dl
109938e1:	52                                              	push   edx
109938e2:	ff d0                                           	call   eax
109938e4:	c3                                              	ret
109938e5:	cc                                              	int3
109938e6:	cc                                              	int3
109938e7:	cc                                              	int3
109938e8:	cc                                              	int3
109938e9:	cc                                              	int3
109938ea:	cc                                              	int3
109938eb:	cc                                              	int3
109938ec:	cc                                              	int3
109938ed:	cc                                              	int3
109938ee:	cc                                              	int3
109938ef:	cc                                              	int3
