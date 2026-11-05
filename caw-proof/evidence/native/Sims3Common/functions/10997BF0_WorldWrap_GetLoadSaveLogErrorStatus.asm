# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997bf0 (WorldWrap_GetLoadSaveLogErrorStatus)
Paired Ghidra pseudocode: 10997BF0_WorldWrap_GetLoadSaveLogErrorStatus.c
Window: [0x10997bf0, 0x10997c00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997bf0: 8b 4c 24 04 e9 e7 84 b5 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997bf0 <.text+0x996bf0>:
10997bf0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997bf4:	e9 e7 84 b5 ff                                  	jmp    0x104f00e0
10997bf9:	cc                                              	int3
10997bfa:	cc                                              	int3
10997bfb:	cc                                              	int3
10997bfc:	cc                                              	int3
10997bfd:	cc                                              	int3
10997bfe:	cc                                              	int3
10997bff:	cc                                              	int3
