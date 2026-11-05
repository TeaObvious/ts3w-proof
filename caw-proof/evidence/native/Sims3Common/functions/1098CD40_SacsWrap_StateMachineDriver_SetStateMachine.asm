# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cd40 (SacsWrap_StateMachineDriver_SetStateMachine)
Paired Ghidra pseudocode: 1098CD40_SacsWrap_StateMachineDriver_SetStateMachine.c
Window: [0x1098cd40, 0x1098cd60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cd60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cd40: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098cd50: 50 e8 4a 92 c6 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cd40 <.text+0x98bd40>:
1098cd40:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cd44:	85 c9                                           	test   ecx,ecx
1098cd46:	74 0e                                           	je     0x1098cd56
1098cd48:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098cd4c:	85 c0                                           	test   eax,eax
1098cd4e:	74 06                                           	je     0x1098cd56
1098cd50:	50                                              	push   eax
1098cd51:	e8 4a 92 c6 ff                                  	call   0x105f5fa0
1098cd56:	c3                                              	ret
1098cd57:	cc                                              	int3
1098cd58:	cc                                              	int3
1098cd59:	cc                                              	int3
1098cd5a:	cc                                              	int3
1098cd5b:	cc                                              	int3
1098cd5c:	cc                                              	int3
1098cd5d:	cc                                              	int3
1098cd5e:	cc                                              	int3
1098cd5f:	cc                                              	int3
