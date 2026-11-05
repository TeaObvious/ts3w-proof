# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e910 (Simulator_DisableYieldAnalysis)
Paired Ghidra pseudocode: 1055E910_Simulator_DisableYieldAnalysis.c
Window: [0x1055e910, 0x1055e920) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e910: e8 0b c8 ff ff 8b c8 e9 a4 cd ff ff cc cc cc cc

LINEAR DISASSEMBLY
1055e910 <.text+0x55d910>:
1055e910:	e8 0b c8 ff ff                                  	call   0x1055b120
1055e915:	8b c8                                           	mov    ecx,eax
1055e917:	e9 a4 cd ff ff                                  	jmp    0x1055b6c0
1055e91c:	cc                                              	int3
1055e91d:	cc                                              	int3
1055e91e:	cc                                              	int3
1055e91f:	cc                                              	int3
