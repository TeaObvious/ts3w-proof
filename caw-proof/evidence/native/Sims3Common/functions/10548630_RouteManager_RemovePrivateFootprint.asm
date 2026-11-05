# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548630 (RouteManager_RemovePrivateFootprint)
Paired Ghidra pseudocode: 10548630_RouteManager_RemovePrivateFootprint.c
Window: [0x10548630, 0x10548650) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548650
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548630: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 d3 ff ff 83
10548640: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548630 <.text+0x547630>:
10548630:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10548634:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10548638:	50                                              	push   eax
10548639:	51                                              	push   ecx
1054863a:	e8 51 d3 ff ff                                  	call   0x10545990
1054863f:	83 c4 08                                        	add    esp,0x8
10548642:	c3                                              	ret
10548643:	cc                                              	int3
10548644:	cc                                              	int3
10548645:	cc                                              	int3
10548646:	cc                                              	int3
10548647:	cc                                              	int3
10548648:	cc                                              	int3
10548649:	cc                                              	int3
1054864a:	cc                                              	int3
1054864b:	cc                                              	int3
1054864c:	cc                                              	int3
1054864d:	cc                                              	int3
1054864e:	cc                                              	int3
1054864f:	cc                                              	int3
