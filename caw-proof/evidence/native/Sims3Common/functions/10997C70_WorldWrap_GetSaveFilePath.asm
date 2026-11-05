# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997c70 (WorldWrap_GetSaveFilePath)
Paired Ghidra pseudocode: 10997C70_WorldWrap_GetSaveFilePath.c
Window: [0x10997c70, 0x10997c80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997c80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997c70: 8b 4c 24 04 85 c9 74 05 e9 93 d7 0b 00 33 c0 c3

LINEAR DISASSEMBLY
10997c70 <.text+0x996c70>:
10997c70:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997c74:	85 c9                                           	test   ecx,ecx
10997c76:	74 05                                           	je     0x10997c7d
10997c78:	e9 93 d7 0b 00                                  	jmp    0x10a55410
10997c7d:	33 c0                                           	xor    eax,eax
10997c7f:	c3                                              	ret
