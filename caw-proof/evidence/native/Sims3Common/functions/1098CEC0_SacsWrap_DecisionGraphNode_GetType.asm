# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cec0 (SacsWrap_DecisionGraphNode_GetType)
Paired Ghidra pseudocode: 1098CEC0_SacsWrap_DecisionGraphNode_GetType.c
Window: [0x1098cec0, 0x1098cee0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cec0: 8b 4c 24 04 85 c9 74 07 8b 01 8b 50 38 ff e2 33
1098ced0: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cec0 <.text+0x98bec0>:
1098cec0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cec4:	85 c9                                           	test   ecx,ecx
1098cec6:	74 07                                           	je     0x1098cecf
1098cec8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098ceca:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
1098cecd:	ff e2                                           	jmp    edx
1098cecf:	33 c0                                           	xor    eax,eax
1098ced1:	c3                                              	ret
1098ced2:	cc                                              	int3
1098ced3:	cc                                              	int3
1098ced4:	cc                                              	int3
1098ced5:	cc                                              	int3
1098ced6:	cc                                              	int3
1098ced7:	cc                                              	int3
1098ced8:	cc                                              	int3
1098ced9:	cc                                              	int3
1098ceda:	cc                                              	int3
1098cedb:	cc                                              	int3
1098cedc:	cc                                              	int3
1098cedd:	cc                                              	int3
1098cede:	cc                                              	int3
1098cedf:	cc                                              	int3
