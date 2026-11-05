# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581e50 (World_ForceMaptagTickImpl)
Paired Ghidra pseudocode: 10581E50_World_ForceMaptagTickImpl.c
Window: [0x10581e50, 0x10581e60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581e50: e9 7b e3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581e50 <.text+0x580e50>:
10581e50:	e9 7b e3 ff ff                                  	jmp    0x105801d0
10581e55:	cc                                              	int3
10581e56:	cc                                              	int3
10581e57:	cc                                              	int3
10581e58:	cc                                              	int3
10581e59:	cc                                              	int3
10581e5a:	cc                                              	int3
10581e5b:	cc                                              	int3
10581e5c:	cc                                              	int3
10581e5d:	cc                                              	int3
10581e5e:	cc                                              	int3
10581e5f:	cc                                              	int3
