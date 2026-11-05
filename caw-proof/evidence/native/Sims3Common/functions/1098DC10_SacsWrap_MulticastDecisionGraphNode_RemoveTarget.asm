# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098dc10 (SacsWrap_MulticastDecisionGraphNode_RemoveTarget)
Paired Ghidra pseudocode: 1098DC10_SacsWrap_MulticastDecisionGraphNode_RemoveTarget.c
Window: [0x1098dc10, 0x1098dc30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098dc30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098dc10: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098dc20: 50 e8 7a fc ff ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098dc10 <.text+0x98cc10>:
1098dc10:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098dc14:	85 c9                                           	test   ecx,ecx
1098dc16:	74 0e                                           	je     0x1098dc26
1098dc18:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098dc1c:	85 c0                                           	test   eax,eax
1098dc1e:	74 06                                           	je     0x1098dc26
1098dc20:	50                                              	push   eax
1098dc21:	e8 7a fc ff ff                                  	call   0x1098d8a0
1098dc26:	c3                                              	ret
1098dc27:	cc                                              	int3
1098dc28:	cc                                              	int3
1098dc29:	cc                                              	int3
1098dc2a:	cc                                              	int3
1098dc2b:	cc                                              	int3
1098dc2c:	cc                                              	int3
1098dc2d:	cc                                              	int3
1098dc2e:	cc                                              	int3
1098dc2f:	cc                                              	int3
