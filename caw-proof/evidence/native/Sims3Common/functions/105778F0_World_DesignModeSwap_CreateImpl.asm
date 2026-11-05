# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105778f0 (World_DesignModeSwap_CreateImpl)
Paired Ghidra pseudocode: 105778F0_World_DesignModeSwap_CreateImpl.c
Window: [0x105778f0, 0x10577900) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105778f0: e8 6b 0b b8 ff 8b c8 e9 04 87 b8 ff cc cc cc cc

LINEAR DISASSEMBLY
105778f0 <.text+0x5768f0>:
105778f0:	e8 6b 0b b8 ff                                  	call   0x100f8460
105778f5:	8b c8                                           	mov    ecx,eax
105778f7:	e9 04 87 b8 ff                                  	jmp    0x10100000
105778fc:	cc                                              	int3
105778fd:	cc                                              	int3
105778fe:	cc                                              	int3
105778ff:	cc                                              	int3
