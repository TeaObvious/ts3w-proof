# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d0a0 (SacsWrap_AnimationNode_SetActor)
Paired Ghidra pseudocode: 1098D0A0_SacsWrap_AnimationNode_SetActor.c
Window: [0x1098d0a0, 0x1098d0c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d0c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d0a0: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 7e 9b
1098d0b0: c5 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d0a0 <.text+0x98c0a0>:
1098d0a0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d0a4:	85 c9                                           	test   ecx,ecx
1098d0a6:	74 0a                                           	je     0x1098d0b2
1098d0a8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098d0ac:	50                                              	push   eax
1098d0ad:	e8 7e 9b c5 ff                                  	call   0x105e6c30
1098d0b2:	c3                                              	ret
1098d0b3:	cc                                              	int3
1098d0b4:	cc                                              	int3
1098d0b5:	cc                                              	int3
1098d0b6:	cc                                              	int3
1098d0b7:	cc                                              	int3
1098d0b8:	cc                                              	int3
1098d0b9:	cc                                              	int3
1098d0ba:	cc                                              	int3
1098d0bb:	cc                                              	int3
1098d0bc:	cc                                              	int3
1098d0bd:	cc                                              	int3
1098d0be:	cc                                              	int3
1098d0bf:	cc                                              	int3
