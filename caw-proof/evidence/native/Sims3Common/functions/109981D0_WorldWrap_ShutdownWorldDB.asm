# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109981d0 (WorldWrap_ShutdownWorldDB)
Paired Ghidra pseudocode: 109981D0_WorldWrap_ShutdownWorldDB.c
Window: [0x109981d0, 0x109981e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109981e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109981d0: 8b 4c 24 04 85 c9 74 07 6a 01 e8 d1 dc 89 ff c3

LINEAR DISASSEMBLY
109981d0 <.text+0x9971d0>:
109981d0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109981d4:	85 c9                                           	test   ecx,ecx
109981d6:	74 07                                           	je     0x109981df
109981d8:	6a 01                                           	push   0x1
109981da:	e8 d1 dc 89 ff                                  	call   0x10235eb0
109981df:	c3                                              	ret
