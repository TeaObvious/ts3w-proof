# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997960 (WorldWrap_GetCanvasHWND)
Paired Ghidra pseudocode: 10997960_WorldWrap_GetCanvasHWND.c
Window: [0x10997960, 0x10997980) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997960: 8b 0d d0 24 c7 10 33 c0 85 c9 74 0a 8b 01 8b 90
10997970: 9c 00 00 00 ff e2 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997960 <.text+0x996960>:
10997960:	8b 0d d0 24 c7 10                               	mov    ecx,DWORD PTR ds:0x10c724d0
10997966:	33 c0                                           	xor    eax,eax
10997968:	85 c9                                           	test   ecx,ecx
1099796a:	74 0a                                           	je     0x10997976
1099796c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1099796e:	8b 90 9c 00 00 00                               	mov    edx,DWORD PTR [eax+0x9c]
10997974:	ff e2                                           	jmp    edx
10997976:	c3                                              	ret
10997977:	cc                                              	int3
10997978:	cc                                              	int3
10997979:	cc                                              	int3
1099797a:	cc                                              	int3
1099797b:	cc                                              	int3
1099797c:	cc                                              	int3
1099797d:	cc                                              	int3
1099797e:	cc                                              	int3
1099797f:	cc                                              	int3
