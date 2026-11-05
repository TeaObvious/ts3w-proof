# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109802a0 (GameObject_GetTreeComponent)
Paired Ghidra pseudocode: 109802A0_GameObject_GetTreeComponent.c
Window: [0x109802a0, 0x109802c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109802c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109802a0: 8b 4c 24 04 85 c9 74 0c a1 d0 da c8 10 50 e8 ed
109802b0: 6a da ff c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109802a0 <.text+0x97f2a0>:
109802a0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109802a4:	85 c9                                           	test   ecx,ecx
109802a6:	74 0c                                           	je     0x109802b4
109802a8:	a1 d0 da c8 10                                  	mov    eax,ds:0x10c8dad0
109802ad:	50                                              	push   eax
109802ae:	e8 ed 6a da ff                                  	call   0x10726da0
109802b3:	c3                                              	ret
109802b4:	33 c0                                           	xor    eax,eax
109802b6:	c3                                              	ret
109802b7:	cc                                              	int3
109802b8:	cc                                              	int3
109802b9:	cc                                              	int3
109802ba:	cc                                              	int3
109802bb:	cc                                              	int3
109802bc:	cc                                              	int3
109802bd:	cc                                              	int3
109802be:	cc                                              	int3
109802bf:	cc                                              	int3
