# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d0e0 (AnimationWrap_ClipIkInfo_GetNumIkChains)
Paired Ghidra pseudocode: 1097D0E0_AnimationWrap_ClipIkInfo_GetNumIkChains.c
Window: [0x1097d0e0, 0x1097d0f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d0f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d0e0: 8b 4c 24 04 85 c9 74 05 e9 93 6b 9f ff 33 c0 c3

LINEAR DISASSEMBLY
1097d0e0 <.text+0x97c0e0>:
1097d0e0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097d0e4:	85 c9                                           	test   ecx,ecx
1097d0e6:	74 05                                           	je     0x1097d0ed
1097d0e8:	e9 93 6b 9f ff                                  	jmp    0x10373c80
1097d0ed:	33 c0                                           	xor    eax,eax
1097d0ef:	c3                                              	ret
