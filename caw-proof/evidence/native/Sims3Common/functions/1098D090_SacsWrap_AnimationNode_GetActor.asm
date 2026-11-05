# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d090 (SacsWrap_AnimationNode_GetActor)
Paired Ghidra pseudocode: 1098D090_SacsWrap_AnimationNode_GetActor.c
Window: [0x1098d090, 0x1098d0a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d0a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d090: 8b 4c 24 04 85 c9 74 05 e9 83 9b c5 ff 33 c0 c3

LINEAR DISASSEMBLY
1098d090 <.text+0x98c090>:
1098d090:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d094:	85 c9                                           	test   ecx,ecx
1098d096:	74 05                                           	je     0x1098d09d
1098d098:	e9 83 9b c5 ff                                  	jmp    0x105e6c20
1098d09d:	33 c0                                           	xor    eax,eax
1098d09f:	c3                                              	ret
