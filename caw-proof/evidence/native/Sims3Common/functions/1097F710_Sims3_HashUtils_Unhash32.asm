# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f710 (Sims3_HashUtils_Unhash32)
Paired Ghidra pseudocode: 1097F710_Sims3_HashUtils_Unhash32.c
Window: [0x1097f710, 0x1097f720) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f710: 8b 44 24 04 6a 00 50 e8 e4 c7 c4 ff 83 c4 08 c3

LINEAR DISASSEMBLY
1097f710 <.text+0x97e710>:
1097f710:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f714:	6a 00                                           	push   0x0
1097f716:	50                                              	push   eax
1097f717:	e8 e4 c7 c4 ff                                  	call   0x105cbf00
1097f71c:	83 c4 08                                        	add    esp,0x8
1097f71f:	c3                                              	ret
