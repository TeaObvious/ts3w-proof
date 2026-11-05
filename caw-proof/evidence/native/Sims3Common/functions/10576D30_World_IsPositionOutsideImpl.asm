# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576d30 (World_IsPositionOutsideImpl)
Paired Ghidra pseudocode: 10576D30_World_IsPositionOutsideImpl.c
Window: [0x10576d30, 0x10576d40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576d30: 8d 44 24 04 6a 00 50 e8 04 32 b5 ff 83 c4 08 c3

LINEAR DISASSEMBLY
10576d30 <.text+0x575d30>:
10576d30:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10576d34:	6a 00                                           	push   0x0
10576d36:	50                                              	push   eax
10576d37:	e8 04 32 b5 ff                                  	call   0x100c9f40
10576d3c:	83 c4 08                                        	add    esp,0x8
10576d3f:	c3                                              	ret
