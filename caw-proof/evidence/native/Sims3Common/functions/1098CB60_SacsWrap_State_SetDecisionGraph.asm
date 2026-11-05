# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cb60 (SacsWrap_State_SetDecisionGraph)
Paired Ghidra pseudocode: 1098CB60_SacsWrap_State_SetDecisionGraph.c
Window: [0x1098cb60, 0x1098cb80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cb80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cb60: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 0e 1e
1098cb70: c6 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cb60 <.text+0x98bb60>:
1098cb60:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cb64:	85 c9                                           	test   ecx,ecx
1098cb66:	74 0a                                           	je     0x1098cb72
1098cb68:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098cb6c:	50                                              	push   eax
1098cb6d:	e8 0e 1e c6 ff                                  	call   0x105ee980
1098cb72:	c3                                              	ret
1098cb73:	cc                                              	int3
1098cb74:	cc                                              	int3
1098cb75:	cc                                              	int3
1098cb76:	cc                                              	int3
1098cb77:	cc                                              	int3
1098cb78:	cc                                              	int3
1098cb79:	cc                                              	int3
1098cb7a:	cc                                              	int3
1098cb7b:	cc                                              	int3
1098cb7c:	cc                                              	int3
1098cb7d:	cc                                              	int3
1098cb7e:	cc                                              	int3
1098cb7f:	cc                                              	int3
