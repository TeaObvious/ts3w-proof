# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098dfc0 (SacsWrap_StateMachine_AddParameterDefinition)
Paired Ghidra pseudocode: 1098DFC0_SacsWrap_StateMachine_AddParameterDefinition.c
Window: [0x1098dfc0, 0x1098dff0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098dff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098dfc0: 8b 4c 24 04 85 c9 74 18 8b 44 24 08 85 c0 74 10
1098dfd0: 50 e8 8a 1b c6 ff f6 d8 1b c0 f7 d8 83 e8 01 c3
1098dfe0: 83 c8 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098dfc0 <.text+0x98cfc0>:
1098dfc0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098dfc4:	85 c9                                           	test   ecx,ecx
1098dfc6:	74 18                                           	je     0x1098dfe0
1098dfc8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098dfcc:	85 c0                                           	test   eax,eax
1098dfce:	74 10                                           	je     0x1098dfe0
1098dfd0:	50                                              	push   eax
1098dfd1:	e8 8a 1b c6 ff                                  	call   0x105efb60
1098dfd6:	f6 d8                                           	neg    al
1098dfd8:	1b c0                                           	sbb    eax,eax
1098dfda:	f7 d8                                           	neg    eax
1098dfdc:	83 e8 01                                        	sub    eax,0x1
1098dfdf:	c3                                              	ret
1098dfe0:	83 c8 ff                                        	or     eax,0xffffffff
1098dfe3:	c3                                              	ret
1098dfe4:	cc                                              	int3
1098dfe5:	cc                                              	int3
1098dfe6:	cc                                              	int3
1098dfe7:	cc                                              	int3
1098dfe8:	cc                                              	int3
1098dfe9:	cc                                              	int3
1098dfea:	cc                                              	int3
1098dfeb:	cc                                              	int3
1098dfec:	cc                                              	int3
1098dfed:	cc                                              	int3
1098dfee:	cc                                              	int3
1098dfef:	cc                                              	int3
