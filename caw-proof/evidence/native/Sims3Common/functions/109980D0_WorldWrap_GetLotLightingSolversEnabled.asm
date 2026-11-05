# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109980d0 (WorldWrap_GetLotLightingSolversEnabled)
Paired Ghidra pseudocode: 109980D0_WorldWrap_GetLotLightingSolversEnabled.c
Window: [0x109980d0, 0x109980e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109980e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109980d0: 8b 44 24 04 0f b6 80 51 01 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
109980d0 <.text+0x9970d0>:
109980d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109980d4:	0f b6 80 51 01 00 00                            	movzx  eax,BYTE PTR [eax+0x151]
109980db:	c3                                              	ret
109980dc:	cc                                              	int3
109980dd:	cc                                              	int3
109980de:	cc                                              	int3
109980df:	cc                                              	int3
