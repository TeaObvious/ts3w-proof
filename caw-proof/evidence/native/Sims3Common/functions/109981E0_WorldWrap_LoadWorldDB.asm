# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109981e0 (WorldWrap_LoadWorldDB)
Paired Ghidra pseudocode: 109981E0_WorldWrap_LoadWorldDB.c
Window: [0x109981e0, 0x10998200) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109981e0: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
109981f0: 50 e8 3a 0a 8a ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109981e0 <.text+0x9971e0>:
109981e0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109981e4:	85 c9                                           	test   ecx,ecx
109981e6:	74 0e                                           	je     0x109981f6
109981e8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109981ec:	85 c0                                           	test   eax,eax
109981ee:	74 06                                           	je     0x109981f6
109981f0:	50                                              	push   eax
109981f1:	e8 3a 0a 8a ff                                  	call   0x10238c30
109981f6:	c3                                              	ret
109981f7:	cc                                              	int3
109981f8:	cc                                              	int3
109981f9:	cc                                              	int3
109981fa:	cc                                              	int3
109981fb:	cc                                              	int3
109981fc:	cc                                              	int3
109981fd:	cc                                              	int3
109981fe:	cc                                              	int3
109981ff:	cc                                              	int3
