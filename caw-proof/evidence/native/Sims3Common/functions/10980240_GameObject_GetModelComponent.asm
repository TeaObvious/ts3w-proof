# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980240 (GameObject_GetModelComponent)
Paired Ghidra pseudocode: 10980240_GameObject_GetModelComponent.c
Window: [0x10980240, 0x10980260) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980240: 8b 4c 24 04 85 c9 74 0c a1 04 d8 c8 10 50 e8 4d
10980250: 6b da ff c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980240 <.text+0x97f240>:
10980240:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10980244:	85 c9                                           	test   ecx,ecx
10980246:	74 0c                                           	je     0x10980254
10980248:	a1 04 d8 c8 10                                  	mov    eax,ds:0x10c8d804
1098024d:	50                                              	push   eax
1098024e:	e8 4d 6b da ff                                  	call   0x10726da0
10980253:	c3                                              	ret
10980254:	33 c0                                           	xor    eax,eax
10980256:	c3                                              	ret
10980257:	cc                                              	int3
10980258:	cc                                              	int3
10980259:	cc                                              	int3
1098025a:	cc                                              	int3
1098025b:	cc                                              	int3
1098025c:	cc                                              	int3
1098025d:	cc                                              	int3
1098025e:	cc                                              	int3
1098025f:	cc                                              	int3
