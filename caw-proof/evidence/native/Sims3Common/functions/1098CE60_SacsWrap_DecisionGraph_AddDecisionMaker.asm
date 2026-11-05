# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ce60 (SacsWrap_DecisionGraph_AddDecisionMaker)
Paired Ghidra pseudocode: 1098CE60_SacsWrap_DecisionGraph_AddDecisionMaker.c
Window: [0x1098ce60, 0x1098ce80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ce80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ce60: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098ce70: 50 e8 2a 84 c5 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ce60 <.text+0x98be60>:
1098ce60:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ce64:	85 c9                                           	test   ecx,ecx
1098ce66:	74 0e                                           	je     0x1098ce76
1098ce68:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098ce6c:	85 c0                                           	test   eax,eax
1098ce6e:	74 06                                           	je     0x1098ce76
1098ce70:	50                                              	push   eax
1098ce71:	e8 2a 84 c5 ff                                  	call   0x105e52a0
1098ce76:	c3                                              	ret
1098ce77:	cc                                              	int3
1098ce78:	cc                                              	int3
1098ce79:	cc                                              	int3
1098ce7a:	cc                                              	int3
1098ce7b:	cc                                              	int3
1098ce7c:	cc                                              	int3
1098ce7d:	cc                                              	int3
1098ce7e:	cc                                              	int3
1098ce7f:	cc                                              	int3
