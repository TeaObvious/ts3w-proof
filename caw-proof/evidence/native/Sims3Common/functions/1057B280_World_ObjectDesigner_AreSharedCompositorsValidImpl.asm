# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b280 (World_ObjectDesigner_AreSharedCompositorsValidImpl)
Paired Ghidra pseudocode: 1057B280_World_ObjectDesigner_AreSharedCompositorsValidImpl.c
Window: [0x1057b280, 0x1057b290) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b280: e8 db d1 b7 ff 8b c8 e9 14 d4 b7 ff cc cc cc cc

LINEAR DISASSEMBLY
1057b280 <.text+0x57a280>:
1057b280:	e8 db d1 b7 ff                                  	call   0x100f8460
1057b285:	8b c8                                           	mov    ecx,eax
1057b287:	e9 14 d4 b7 ff                                  	jmp    0x100f86a0
1057b28c:	cc                                              	int3
1057b28d:	cc                                              	int3
1057b28e:	cc                                              	int3
1057b28f:	cc                                              	int3
