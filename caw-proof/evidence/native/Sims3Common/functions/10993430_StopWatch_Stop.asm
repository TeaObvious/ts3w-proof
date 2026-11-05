# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993430 (StopWatch_Stop)
Paired Ghidra pseudocode: 10993430_StopWatch_Stop.c
Window: [0x10993430, 0x10993440) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993440
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993430: 8b 4c 24 04 e9 d7 34 f9 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993430 <.text+0x992430>:
10993430:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10993434:	e9 d7 34 f9 ff                                  	jmp    0x10926910
10993439:	cc                                              	int3
1099343a:	cc                                              	int3
1099343b:	cc                                              	int3
1099343c:	cc                                              	int3
1099343d:	cc                                              	int3
1099343e:	cc                                              	int3
1099343f:	cc                                              	int3
