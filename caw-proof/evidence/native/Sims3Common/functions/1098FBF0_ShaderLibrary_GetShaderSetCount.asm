# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fbf0 (ShaderLibrary_GetShaderSetCount)
Paired Ghidra pseudocode: 1098FBF0_ShaderLibrary_GetShaderSetCount.c
Window: [0x1098fbf0, 0x1098fc00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fc00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fbf0: a1 94 bd c7 10 8b 40 7c c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fbf0 <.text+0x98ebf0>:
1098fbf0:	a1 94 bd c7 10                                  	mov    eax,ds:0x10c7bd94
1098fbf5:	8b 40 7c                                        	mov    eax,DWORD PTR [eax+0x7c]
1098fbf8:	c3                                              	ret
1098fbf9:	cc                                              	int3
1098fbfa:	cc                                              	int3
1098fbfb:	cc                                              	int3
1098fbfc:	cc                                              	int3
1098fbfd:	cc                                              	int3
1098fbfe:	cc                                              	int3
1098fbff:	cc                                              	int3
