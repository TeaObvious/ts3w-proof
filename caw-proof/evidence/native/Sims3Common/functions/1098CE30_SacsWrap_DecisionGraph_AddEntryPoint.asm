# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ce30 (SacsWrap_DecisionGraph_AddEntryPoint)
Paired Ghidra pseudocode: 1098CE30_SacsWrap_DecisionGraph_AddEntryPoint.c
Window: [0x1098ce30, 0x1098ce50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ce50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ce30: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098ce40: 50 e8 aa 87 c5 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ce30 <.text+0x98be30>:
1098ce30:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ce34:	85 c9                                           	test   ecx,ecx
1098ce36:	74 0e                                           	je     0x1098ce46
1098ce38:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098ce3c:	85 c0                                           	test   eax,eax
1098ce3e:	74 06                                           	je     0x1098ce46
1098ce40:	50                                              	push   eax
1098ce41:	e8 aa 87 c5 ff                                  	call   0x105e55f0
1098ce46:	c3                                              	ret
1098ce47:	cc                                              	int3
1098ce48:	cc                                              	int3
1098ce49:	cc                                              	int3
1098ce4a:	cc                                              	int3
1098ce4b:	cc                                              	int3
1098ce4c:	cc                                              	int3
1098ce4d:	cc                                              	int3
1098ce4e:	cc                                              	int3
1098ce4f:	cc                                              	int3
