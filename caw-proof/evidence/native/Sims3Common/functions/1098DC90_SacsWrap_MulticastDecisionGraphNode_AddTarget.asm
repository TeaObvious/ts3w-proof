# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098dc90 (SacsWrap_MulticastDecisionGraphNode_AddTarget)
Paired Ghidra pseudocode: 1098DC90_SacsWrap_MulticastDecisionGraphNode_AddTarget.c
Window: [0x1098dc90, 0x1098dcb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098dcb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098dc90: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098dca0: 50 e8 da a5 c5 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098dc90 <.text+0x98cc90>:
1098dc90:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098dc94:	85 c9                                           	test   ecx,ecx
1098dc96:	74 0e                                           	je     0x1098dca6
1098dc98:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098dc9c:	85 c0                                           	test   eax,eax
1098dc9e:	74 06                                           	je     0x1098dca6
1098dca0:	50                                              	push   eax
1098dca1:	e8 da a5 c5 ff                                  	call   0x105e8280
1098dca6:	c3                                              	ret
1098dca7:	cc                                              	int3
1098dca8:	cc                                              	int3
1098dca9:	cc                                              	int3
1098dcaa:	cc                                              	int3
1098dcab:	cc                                              	int3
1098dcac:	cc                                              	int3
1098dcad:	cc                                              	int3
1098dcae:	cc                                              	int3
1098dcaf:	cc                                              	int3
