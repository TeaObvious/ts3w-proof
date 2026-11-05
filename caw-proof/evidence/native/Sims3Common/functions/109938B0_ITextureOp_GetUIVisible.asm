# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109938b0 (ITextureOp_GetUIVisible)
Paired Ghidra pseudocode: 109938B0_ITextureOp_GetUIVisible.c
Window: [0x109938b0, 0x109938d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109938d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109938b0: 8b 4c 24 04 8b 01 8b 50 20 ff d2 f6 d8 1b c0 f7
109938c0: d8 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109938b0 <.text+0x9928b0>:
109938b0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109938b4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109938b6:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
109938b9:	ff d2                                           	call   edx
109938bb:	f6 d8                                           	neg    al
109938bd:	1b c0                                           	sbb    eax,eax
109938bf:	f7 d8                                           	neg    eax
109938c1:	c3                                              	ret
109938c2:	cc                                              	int3
109938c3:	cc                                              	int3
109938c4:	cc                                              	int3
109938c5:	cc                                              	int3
109938c6:	cc                                              	int3
109938c7:	cc                                              	int3
109938c8:	cc                                              	int3
109938c9:	cc                                              	int3
109938ca:	cc                                              	int3
109938cb:	cc                                              	int3
109938cc:	cc                                              	int3
109938cd:	cc                                              	int3
109938ce:	cc                                              	int3
109938cf:	cc                                              	int3
