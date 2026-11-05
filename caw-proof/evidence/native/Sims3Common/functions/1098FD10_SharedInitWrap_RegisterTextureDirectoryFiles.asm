# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fd10 (SharedInitWrap_RegisterTextureDirectoryFiles)
Paired Ghidra pseudocode: 1098FD10_SharedInitWrap_RegisterTextureDirectoryFiles.c
Window: [0x1098fd10, 0x1098fd20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fd20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fd10: e9 6b cc c3 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fd10 <.text+0x98ed10>:
1098fd10:	e9 6b cc c3 ff                                  	jmp    0x105cc980
1098fd15:	cc                                              	int3
1098fd16:	cc                                              	int3
1098fd17:	cc                                              	int3
1098fd18:	cc                                              	int3
1098fd19:	cc                                              	int3
1098fd1a:	cc                                              	int3
1098fd1b:	cc                                              	int3
1098fd1c:	cc                                              	int3
1098fd1d:	cc                                              	int3
1098fd1e:	cc                                              	int3
1098fd1f:	cc                                              	int3
