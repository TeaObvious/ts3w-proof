# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980260 (GameObject_GetScriptComponent)
Paired Ghidra pseudocode: 10980260_GameObject_GetScriptComponent.c
Window: [0x10980260, 0x10980280) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980280
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980260: 8b 4c 24 04 85 c9 74 0c a1 38 d9 c8 10 50 e8 2d
10980270: 6b da ff c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980260 <.text+0x97f260>:
10980260:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10980264:	85 c9                                           	test   ecx,ecx
10980266:	74 0c                                           	je     0x10980274
10980268:	a1 38 d9 c8 10                                  	mov    eax,ds:0x10c8d938
1098026d:	50                                              	push   eax
1098026e:	e8 2d 6b da ff                                  	call   0x10726da0
10980273:	c3                                              	ret
10980274:	33 c0                                           	xor    eax,eax
10980276:	c3                                              	ret
10980277:	cc                                              	int3
10980278:	cc                                              	int3
10980279:	cc                                              	int3
1098027a:	cc                                              	int3
1098027b:	cc                                              	int3
1098027c:	cc                                              	int3
1098027d:	cc                                              	int3
1098027e:	cc                                              	int3
1098027f:	cc                                              	int3
