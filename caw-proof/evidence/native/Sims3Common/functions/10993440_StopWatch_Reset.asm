# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993440 (StopWatch_Reset)
Paired Ghidra pseudocode: 10993440_StopWatch_Reset.c
Window: [0x10993440, 0x10993460) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993460
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993440: 8b 44 24 04 33 c9 89 08 89 48 04 89 48 08 89 48
10993450: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993440 <.text+0x992440>:
10993440:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10993444:	33 c9                                           	xor    ecx,ecx
10993446:	89 08                                           	mov    DWORD PTR [eax],ecx
10993448:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1099344b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1099344e:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
10993451:	c3                                              	ret
10993452:	cc                                              	int3
10993453:	cc                                              	int3
10993454:	cc                                              	int3
10993455:	cc                                              	int3
10993456:	cc                                              	int3
10993457:	cc                                              	int3
10993458:	cc                                              	int3
10993459:	cc                                              	int3
1099345a:	cc                                              	int3
1099345b:	cc                                              	int3
1099345c:	cc                                              	int3
1099345d:	cc                                              	int3
1099345e:	cc                                              	int3
1099345f:	cc                                              	int3
