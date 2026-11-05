# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995b80 (TrackMask_SetVertexAnimBlendWeight)
Paired Ghidra pseudocode: 10995B80_TrackMask_SetVertexAnimBlendWeight.c
Window: [0x10995b80, 0x10995ba0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995b80: d9 44 24 08 51 8b 4c 24 08 d9 1c 24 e8 0f 36 9e
10995b90: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995b80 <.text+0x994b80>:
10995b80:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10995b84:	51                                              	push   ecx
10995b85:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10995b89:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10995b8c:	e8 0f 36 9e ff                                  	call   0x103791a0
10995b91:	c3                                              	ret
10995b92:	cc                                              	int3
10995b93:	cc                                              	int3
10995b94:	cc                                              	int3
10995b95:	cc                                              	int3
10995b96:	cc                                              	int3
10995b97:	cc                                              	int3
10995b98:	cc                                              	int3
10995b99:	cc                                              	int3
10995b9a:	cc                                              	int3
10995b9b:	cc                                              	int3
10995b9c:	cc                                              	int3
10995b9d:	cc                                              	int3
10995b9e:	cc                                              	int3
10995b9f:	cc                                              	int3
