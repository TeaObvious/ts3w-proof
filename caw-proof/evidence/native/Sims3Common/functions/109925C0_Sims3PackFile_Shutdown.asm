# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109925c0 (Sims3PackFile_Shutdown)
Paired Ghidra pseudocode: 109925C0_Sims3PackFile_Shutdown.c
Window: [0x109925c0, 0x109925d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109925d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109925c0: 8b 4c 24 04 e9 e7 1b e2 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109925c0 <.text+0x9915c0>:
109925c0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109925c4:	e9 e7 1b e2 ff                                  	jmp    0x107b41b0
109925c9:	cc                                              	int3
109925ca:	cc                                              	int3
109925cb:	cc                                              	int3
109925cc:	cc                                              	int3
109925cd:	cc                                              	int3
109925ce:	cc                                              	int3
109925cf:	cc                                              	int3
