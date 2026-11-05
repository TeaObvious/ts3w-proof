# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989de0 (KeyNameMap_Find)
Paired Ghidra pseudocode: 10989DE0_KeyNameMap_Find.c
Window: [0x10989de0, 0x10989df0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989df0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989de0: 8b 4c 24 04 8d 44 24 08 50 e8 a2 7e b9 ff c3 cc

LINEAR DISASSEMBLY
10989de0 <.text+0x988de0>:
10989de0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10989de4:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10989de8:	50                                              	push   eax
10989de9:	e8 a2 7e b9 ff                                  	call   0x10521c90
10989dee:	c3                                              	ret
10989def:	cc                                              	int3
