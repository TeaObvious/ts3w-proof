# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d570 (App3D_EvictManagedResources)
Paired Ghidra pseudocode: 1097D570_App3D_EvictManagedResources.c
Window: [0x1097d570, 0x1097d590) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d570: e8 4b bf a8 ff 8b 40 0c 85 c0 74 08 8b 08 8b 51
1097d580: 14 50 ff d2 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d570 <.text+0x97c570>:
1097d570:	e8 4b bf a8 ff                                  	call   0x104094c0
1097d575:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1097d578:	85 c0                                           	test   eax,eax
1097d57a:	74 08                                           	je     0x1097d584
1097d57c:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1097d57e:	8b 51 14                                        	mov    edx,DWORD PTR [ecx+0x14]
1097d581:	50                                              	push   eax
1097d582:	ff d2                                           	call   edx
1097d584:	c3                                              	ret
1097d585:	cc                                              	int3
1097d586:	cc                                              	int3
1097d587:	cc                                              	int3
1097d588:	cc                                              	int3
1097d589:	cc                                              	int3
1097d58a:	cc                                              	int3
1097d58b:	cc                                              	int3
1097d58c:	cc                                              	int3
1097d58d:	cc                                              	int3
1097d58e:	cc                                              	int3
1097d58f:	cc                                              	int3
