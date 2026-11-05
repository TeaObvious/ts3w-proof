# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ce50 (SacsWrap_DecisionGraph_ClearEntryPoints)
Paired Ghidra pseudocode: 1098CE50_SacsWrap_DecisionGraph_ClearEntryPoints.c
Window: [0x1098ce50, 0x1098ce60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ce60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ce50: 8b 4c 24 04 85 c9 74 05 e9 53 7d c5 ff c3 cc cc

LINEAR DISASSEMBLY
1098ce50 <.text+0x98be50>:
1098ce50:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ce54:	85 c9                                           	test   ecx,ecx
1098ce56:	74 05                                           	je     0x1098ce5d
1098ce58:	e9 53 7d c5 ff                                  	jmp    0x105e4bb0
1098ce5d:	c3                                              	ret
1098ce5e:	cc                                              	int3
1098ce5f:	cc                                              	int3
