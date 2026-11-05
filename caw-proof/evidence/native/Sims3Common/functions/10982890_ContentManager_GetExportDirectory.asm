# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982890 (ContentManager_GetExportDirectory)
Paired Ghidra pseudocode: 10982890_ContentManager_GetExportDirectory.c
Window: [0x10982890, 0x109828c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109828c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982890: e8 2b 1c df ff 85 c0 74 0e 8b 80 f0 00 00 00 50
109828a0: ff 15 c4 b6 aa 10 c3 68 fc 24 b6 10 ff 15 c4 b6
109828b0: aa 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10982890 <.text+0x981890>:
10982890:	e8 2b 1c df ff                                  	call   0x107744c0
10982895:	85 c0                                           	test   eax,eax
10982897:	74 0e                                           	je     0x109828a7
10982899:	8b 80 f0 00 00 00                               	mov    eax,DWORD PTR [eax+0xf0]
1098289f:	50                                              	push   eax
109828a0:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
109828a6:	c3                                              	ret
109828a7:	68 fc 24 b6 10                                  	push   0x10b624fc
109828ac:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
109828b2:	c3                                              	ret
109828b3:	cc                                              	int3
109828b4:	cc                                              	int3
109828b5:	cc                                              	int3
109828b6:	cc                                              	int3
109828b7:	cc                                              	int3
109828b8:	cc                                              	int3
109828b9:	cc                                              	int3
109828ba:	cc                                              	int3
109828bb:	cc                                              	int3
109828bc:	cc                                              	int3
109828bd:	cc                                              	int3
109828be:	cc                                              	int3
109828bf:	cc                                              	int3
