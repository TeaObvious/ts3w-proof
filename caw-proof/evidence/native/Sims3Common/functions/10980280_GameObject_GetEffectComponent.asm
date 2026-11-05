# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980280 (GameObject_GetEffectComponent)
Paired Ghidra pseudocode: 10980280_GameObject_GetEffectComponent.c
Window: [0x10980280, 0x109802a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109802a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980280: 8b 4c 24 04 85 c9 74 0c a1 d0 d6 c8 10 50 e8 0d
10980290: 6b da ff c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980280 <.text+0x97f280>:
10980280:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10980284:	85 c9                                           	test   ecx,ecx
10980286:	74 0c                                           	je     0x10980294
10980288:	a1 d0 d6 c8 10                                  	mov    eax,ds:0x10c8d6d0
1098028d:	50                                              	push   eax
1098028e:	e8 0d 6b da ff                                  	call   0x10726da0
10980293:	c3                                              	ret
10980294:	33 c0                                           	xor    eax,eax
10980296:	c3                                              	ret
10980297:	cc                                              	int3
10980298:	cc                                              	int3
10980299:	cc                                              	int3
1098029a:	cc                                              	int3
1098029b:	cc                                              	int3
1098029c:	cc                                              	int3
1098029d:	cc                                              	int3
1098029e:	cc                                              	int3
1098029f:	cc                                              	int3
