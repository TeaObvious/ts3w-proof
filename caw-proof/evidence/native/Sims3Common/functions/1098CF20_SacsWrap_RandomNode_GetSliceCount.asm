# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cf20 (SacsWrap_RandomNode_GetSliceCount)
Paired Ghidra pseudocode: 1098CF20_SacsWrap_RandomNode_GetSliceCount.c
Window: [0x1098cf20, 0x1098cf30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cf30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cf20: 8b 4c 24 04 85 c9 74 05 e9 f3 a4 c5 ff 33 c0 c3

LINEAR DISASSEMBLY
1098cf20 <.text+0x98bf20>:
1098cf20:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cf24:	85 c9                                           	test   ecx,ecx
1098cf26:	74 05                                           	je     0x1098cf2d
1098cf28:	e9 f3 a4 c5 ff                                  	jmp    0x105e7420
1098cf2d:	33 c0                                           	xor    eax,eax
1098cf2f:	c3                                              	ret
