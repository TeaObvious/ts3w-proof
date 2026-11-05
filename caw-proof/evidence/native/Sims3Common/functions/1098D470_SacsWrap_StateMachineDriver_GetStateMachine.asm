# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d470 (SacsWrap_StateMachineDriver_GetStateMachine)
Paired Ghidra pseudocode: 1098D470_SacsWrap_StateMachineDriver_GetStateMachine.c
Window: [0x1098d470, 0x1098d480) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d470: 8b 44 24 04 85 c0 74 04 8b 40 0c c3 33 c0 c3 cc

LINEAR DISASSEMBLY
1098d470 <.text+0x98c470>:
1098d470:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d474:	85 c0                                           	test   eax,eax
1098d476:	74 04                                           	je     0x1098d47c
1098d478:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1098d47b:	c3                                              	ret
1098d47c:	33 c0                                           	xor    eax,eax
1098d47e:	c3                                              	ret
1098d47f:	cc                                              	int3
