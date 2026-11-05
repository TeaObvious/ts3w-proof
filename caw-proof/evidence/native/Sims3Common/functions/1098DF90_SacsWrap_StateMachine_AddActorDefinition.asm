# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098df90 (SacsWrap_StateMachine_AddActorDefinition)
Paired Ghidra pseudocode: 1098DF90_SacsWrap_StateMachine_AddActorDefinition.c
Window: [0x1098df90, 0x1098dfc0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098dfc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098df90: 8b 4c 24 04 85 c9 74 18 8b 44 24 08 85 c0 74 10
1098dfa0: 50 e8 3a 1b c6 ff f6 d8 1b c0 f7 d8 83 e8 01 c3
1098dfb0: 83 c8 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098df90 <.text+0x98cf90>:
1098df90:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098df94:	85 c9                                           	test   ecx,ecx
1098df96:	74 18                                           	je     0x1098dfb0
1098df98:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098df9c:	85 c0                                           	test   eax,eax
1098df9e:	74 10                                           	je     0x1098dfb0
1098dfa0:	50                                              	push   eax
1098dfa1:	e8 3a 1b c6 ff                                  	call   0x105efae0
1098dfa6:	f6 d8                                           	neg    al
1098dfa8:	1b c0                                           	sbb    eax,eax
1098dfaa:	f7 d8                                           	neg    eax
1098dfac:	83 e8 01                                        	sub    eax,0x1
1098dfaf:	c3                                              	ret
1098dfb0:	83 c8 ff                                        	or     eax,0xffffffff
1098dfb3:	c3                                              	ret
1098dfb4:	cc                                              	int3
1098dfb5:	cc                                              	int3
1098dfb6:	cc                                              	int3
1098dfb7:	cc                                              	int3
1098dfb8:	cc                                              	int3
1098dfb9:	cc                                              	int3
1098dfba:	cc                                              	int3
1098dfbb:	cc                                              	int3
1098dfbc:	cc                                              	int3
1098dfbd:	cc                                              	int3
1098dfbe:	cc                                              	int3
1098dfbf:	cc                                              	int3
