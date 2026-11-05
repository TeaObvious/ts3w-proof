# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998550 (WorldWrap_GetSea)
Paired Ghidra pseudocode: 10998550_WorldWrap_GetSea.c
Window: [0x10998550, 0x10998560) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998550: 8b 44 24 04 8b 40 60 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998550 <.text+0x997550>:
10998550:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998554:	8b 40 60                                        	mov    eax,DWORD PTR [eax+0x60]
10998557:	c3                                              	ret
10998558:	cc                                              	int3
10998559:	cc                                              	int3
1099855a:	cc                                              	int3
1099855b:	cc                                              	int3
1099855c:	cc                                              	int3
1099855d:	cc                                              	int3
1099855e:	cc                                              	int3
1099855f:	cc                                              	int3
