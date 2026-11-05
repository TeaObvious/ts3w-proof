# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105797a0 (World_EnableObjectScreenCoverage)
Paired Ghidra pseudocode: 105797A0_World_EnableObjectScreenCoverage.c
Window: [0x105797a0, 0x105797c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105797c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105797a0: e8 0b f4 e1 ff 83 7c 24 04 00 8b c8 74 05 e9 1d
105797b0: f1 e1 ff e9 b8 f3 e1 ff cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105797a0 <.text+0x5787a0>:
105797a0:	e8 0b f4 e1 ff                                  	call   0x10398bb0
105797a5:	83 7c 24 04 00                                  	cmp    DWORD PTR [esp+0x4],0x0
105797aa:	8b c8                                           	mov    ecx,eax
105797ac:	74 05                                           	je     0x105797b3
105797ae:	e9 1d f1 e1 ff                                  	jmp    0x103988d0
105797b3:	e9 b8 f3 e1 ff                                  	jmp    0x10398b70
105797b8:	cc                                              	int3
105797b9:	cc                                              	int3
105797ba:	cc                                              	int3
105797bb:	cc                                              	int3
105797bc:	cc                                              	int3
105797bd:	cc                                              	int3
105797be:	cc                                              	int3
105797bf:	cc                                              	int3
