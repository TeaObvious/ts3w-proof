# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d310 (SacsWrap_PlayAnimationNode_GetSlotSetupBuilder)
Paired Ghidra pseudocode: 1098D310_SacsWrap_PlayAnimationNode_GetSlotSetupBuilder.c
Window: [0x1098d310, 0x1098d320) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d310: 8b 4c 24 04 85 c9 74 05 e9 b3 a1 c5 ff 33 c0 c3

LINEAR DISASSEMBLY
1098d310 <.text+0x98c310>:
1098d310:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d314:	85 c9                                           	test   ecx,ecx
1098d316:	74 05                                           	je     0x1098d31d
1098d318:	e9 b3 a1 c5 ff                                  	jmp    0x105e74d0
1098d31d:	33 c0                                           	xor    eax,eax
1098d31f:	c3                                              	ret
