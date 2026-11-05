# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548650 (RouteManager_ResetSteering)
Paired Ghidra pseudocode: 10548650_RouteManager_ResetSteering.c
Window: [0x10548650, 0x10548670) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548650: 8b 44 24 08 8b 4c 24 04 50 51 e8 71 ed ff ff 83
10548660: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548650 <.text+0x547650>:
10548650:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10548654:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10548658:	50                                              	push   eax
10548659:	51                                              	push   ecx
1054865a:	e8 71 ed ff ff                                  	call   0x105473d0
1054865f:	83 c4 08                                        	add    esp,0x8
10548662:	c3                                              	ret
10548663:	cc                                              	int3
10548664:	cc                                              	int3
10548665:	cc                                              	int3
10548666:	cc                                              	int3
10548667:	cc                                              	int3
10548668:	cc                                              	int3
10548669:	cc                                              	int3
1054866a:	cc                                              	int3
1054866b:	cc                                              	int3
1054866c:	cc                                              	int3
1054866d:	cc                                              	int3
1054866e:	cc                                              	int3
1054866f:	cc                                              	int3
