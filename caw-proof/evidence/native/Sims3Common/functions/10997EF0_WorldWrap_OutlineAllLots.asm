# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997ef0 (WorldWrap_OutlineAllLots)
Paired Ghidra pseudocode: 10997EF0_WorldWrap_OutlineAllLots.c
Window: [0x10997ef0, 0x10997f00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997f00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997ef0: 8b 4c 24 04 85 c9 74 07 6a 00 e8 a1 84 8a ff c3

LINEAR DISASSEMBLY
10997ef0 <.text+0x996ef0>:
10997ef0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997ef4:	85 c9                                           	test   ecx,ecx
10997ef6:	74 07                                           	je     0x10997eff
10997ef8:	6a 00                                           	push   0x0
10997efa:	e8 a1 84 8a ff                                  	call   0x102403a0
10997eff:	c3                                              	ret
