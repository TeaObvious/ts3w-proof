# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109925b0 (Sims3PackFile_Init)
Paired Ghidra pseudocode: 109925B0_Sims3PackFile_Init.c
Window: [0x109925b0, 0x109925c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109925c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109925b0: 8b 44 24 08 8b 4c 24 04 50 e8 62 14 e2 ff c3 cc

LINEAR DISASSEMBLY
109925b0 <.text+0x9915b0>:
109925b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109925b4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109925b8:	50                                              	push   eax
109925b9:	e8 62 14 e2 ff                                  	call   0x107b3a20
109925be:	c3                                              	ret
109925bf:	cc                                              	int3
