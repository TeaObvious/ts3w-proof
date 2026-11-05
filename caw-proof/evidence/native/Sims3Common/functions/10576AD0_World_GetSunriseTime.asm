# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576ad0 (World_GetSunriseTime)
Paired Ghidra pseudocode: 10576AD0_World_GetSunriseTime.c
Window: [0x10576ad0, 0x10576af0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576ad0: a1 c4 00 c7 10 85 c0 74 07 d9 80 2c 01 00 00 c3
10576ae0: d9 05 14 ef aa 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576ad0 <.text+0x575ad0>:
10576ad0:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10576ad5:	85 c0                                           	test   eax,eax
10576ad7:	74 07                                           	je     0x10576ae0
10576ad9:	d9 80 2c 01 00 00                               	fld    DWORD PTR [eax+0x12c]
10576adf:	c3                                              	ret
10576ae0:	d9 05 14 ef aa 10                               	fld    DWORD PTR ds:0x10aaef14
10576ae6:	c3                                              	ret
10576ae7:	cc                                              	int3
10576ae8:	cc                                              	int3
10576ae9:	cc                                              	int3
10576aea:	cc                                              	int3
10576aeb:	cc                                              	int3
10576aec:	cc                                              	int3
10576aed:	cc                                              	int3
10576aee:	cc                                              	int3
10576aef:	cc                                              	int3
