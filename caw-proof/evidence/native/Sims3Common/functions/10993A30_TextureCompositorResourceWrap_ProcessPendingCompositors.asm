# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993a30 (TextureCompositorResourceWrap_ProcessPendingCompositors)
Paired Ghidra pseudocode: 10993A30_TextureCompositorResourceWrap_ProcessPendingCompositors.c
Window: [0x10993a30, 0x10993a40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993a30: e8 1b f2 a6 ff 8b c8 e9 04 f6 b2 ff cc cc cc cc

LINEAR DISASSEMBLY
10993a30 <.text+0x992a30>:
10993a30:	e8 1b f2 a6 ff                                  	call   0x10402c50
10993a35:	8b c8                                           	mov    ecx,eax
10993a37:	e9 04 f6 b2 ff                                  	jmp    0x104c3040
10993a3c:	cc                                              	int3
10993a3d:	cc                                              	int3
10993a3e:	cc                                              	int3
10993a3f:	cc                                              	int3
