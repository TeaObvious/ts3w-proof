# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d260 (SacsWrap_CreatePropNode_SetActor)
Paired Ghidra pseudocode: 1098D260_SacsWrap_CreatePropNode_SetActor.c
Window: [0x1098d260, 0x1098d280) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d280
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d260: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 2e 9e
1098d270: c5 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d260 <.text+0x98c260>:
1098d260:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d264:	85 c9                                           	test   ecx,ecx
1098d266:	74 0a                                           	je     0x1098d272
1098d268:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098d26c:	50                                              	push   eax
1098d26d:	e8 2e 9e c5 ff                                  	call   0x105e70a0
1098d272:	c3                                              	ret
1098d273:	cc                                              	int3
1098d274:	cc                                              	int3
1098d275:	cc                                              	int3
1098d276:	cc                                              	int3
1098d277:	cc                                              	int3
1098d278:	cc                                              	int3
1098d279:	cc                                              	int3
1098d27a:	cc                                              	int3
1098d27b:	cc                                              	int3
1098d27c:	cc                                              	int3
1098d27d:	cc                                              	int3
1098d27e:	cc                                              	int3
1098d27f:	cc                                              	int3
