# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1003d6e0 (ObjectManagerWrap_AddRef)
Paired Ghidra pseudocode: 1003D6E0_ObjectManagerWrap_AddRef.c
Window: [0x1003d6e0, 0x1003d6f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1003d6f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1003d6e0: 8b 4c 24 04 8b 01 8b 10 ff e2 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1003d6e0 <.text+0x3c6e0>:
1003d6e0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1003d6e4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1003d6e6:	8b 10                                           	mov    edx,DWORD PTR [eax]
1003d6e8:	ff e2                                           	jmp    edx
1003d6ea:	cc                                              	int3
1003d6eb:	cc                                              	int3
1003d6ec:	cc                                              	int3
1003d6ed:	cc                                              	int3
1003d6ee:	cc                                              	int3
1003d6ef:	cc                                              	int3
