# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ca80 (SacsWrap_StateMachine_ClearNamespaceMap)
Paired Ghidra pseudocode: 1098CA80_SacsWrap_StateMachine_ClearNamespaceMap.c
Window: [0x1098ca80, 0x1098ca90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ca90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ca80: 8b 4c 24 04 85 c9 74 05 e9 c3 3a c6 ff c3 cc cc

LINEAR DISASSEMBLY
1098ca80 <.text+0x98ba80>:
1098ca80:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ca84:	85 c9                                           	test   ecx,ecx
1098ca86:	74 05                                           	je     0x1098ca8d
1098ca88:	e9 c3 3a c6 ff                                  	jmp    0x105f0550
1098ca8d:	c3                                              	ret
1098ca8e:	cc                                              	int3
1098ca8f:	cc                                              	int3
