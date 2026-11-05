# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f980 (ShaderSet_GetParameterCount)
Paired Ghidra pseudocode: 1098F980_ShaderSet_GetParameterCount.c
Window: [0x1098f980, 0x1098f990) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f980: 8b 4c 24 04 e9 07 39 c0 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f980 <.text+0x98e980>:
1098f980:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098f984:	e9 07 39 c0 ff                                  	jmp    0x10593290
1098f989:	cc                                              	int3
1098f98a:	cc                                              	int3
1098f98b:	cc                                              	int3
1098f98c:	cc                                              	int3
1098f98d:	cc                                              	int3
1098f98e:	cc                                              	int3
1098f98f:	cc                                              	int3
