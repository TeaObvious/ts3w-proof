# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986320 (LineSet_Clear)
Paired Ghidra pseudocode: 10986320_LineSet_Clear.c
Window: [0x10986320, 0x10986330) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986320: 8b 4c 24 04 e9 a7 0a b5 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986320 <.text+0x985320>:
10986320:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986324:	e9 a7 0a b5 ff                                  	jmp    0x104d6dd0
10986329:	cc                                              	int3
1098632a:	cc                                              	int3
1098632b:	cc                                              	int3
1098632c:	cc                                              	int3
1098632d:	cc                                              	int3
1098632e:	cc                                              	int3
1098632f:	cc                                              	int3
