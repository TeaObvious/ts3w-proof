# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989a70 (PondWrap_Shutdown)
Paired Ghidra pseudocode: 10989A70_PondWrap_Shutdown.c
Window: [0x10989a70, 0x10989a80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989a80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989a70: 8b 4c 24 04 85 c9 74 05 e9 a3 c5 79 ff c3 cc cc

LINEAR DISASSEMBLY
10989a70 <.text+0x988a70>:
10989a70:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10989a74:	85 c9                                           	test   ecx,ecx
10989a76:	74 05                                           	je     0x10989a7d
10989a78:	e9 a3 c5 79 ff                                  	jmp    0x10126020
10989a7d:	c3                                              	ret
10989a7e:	cc                                              	int3
10989a7f:	cc                                              	int3
