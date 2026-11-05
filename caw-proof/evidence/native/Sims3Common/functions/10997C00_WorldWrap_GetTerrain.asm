# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997c00 (WorldWrap_GetTerrain)
Paired Ghidra pseudocode: 10997C00_WorldWrap_GetTerrain.c
Window: [0x10997c00, 0x10997c10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997c00: 8b 4c 24 04 e9 d7 23 a7 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997c00 <.text+0x996c00>:
10997c00:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997c04:	e9 d7 23 a7 ff                                  	jmp    0x10409fe0
10997c09:	cc                                              	int3
10997c0a:	cc                                              	int3
10997c0b:	cc                                              	int3
10997c0c:	cc                                              	int3
10997c0d:	cc                                              	int3
10997c0e:	cc                                              	int3
10997c0f:	cc                                              	int3
