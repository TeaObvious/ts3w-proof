# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576af0 (World_GetSunsetTime)
Paired Ghidra pseudocode: 10576AF0_World_GetSunsetTime.c
Window: [0x10576af0, 0x10576b10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576af0: a1 c4 00 c7 10 85 c0 74 07 d9 80 30 01 00 00 c3
10576b00: d9 05 14 ef aa 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576af0 <.text+0x575af0>:
10576af0:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10576af5:	85 c0                                           	test   eax,eax
10576af7:	74 07                                           	je     0x10576b00
10576af9:	d9 80 30 01 00 00                               	fld    DWORD PTR [eax+0x130]
10576aff:	c3                                              	ret
10576b00:	d9 05 14 ef aa 10                               	fld    DWORD PTR ds:0x10aaef14
10576b06:	c3                                              	ret
10576b07:	cc                                              	int3
10576b08:	cc                                              	int3
10576b09:	cc                                              	int3
10576b0a:	cc                                              	int3
10576b0b:	cc                                              	int3
10576b0c:	cc                                              	int3
10576b0d:	cc                                              	int3
10576b0e:	cc                                              	int3
10576b0f:	cc                                              	int3
