# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058b690 (World_ObjectGetFootprintNameHashes)
Paired Ghidra pseudocode: 1058B690_World_ObjectGetFootprintNameHashes.c
Window: [0x1058b690, 0x1058b6b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058b6b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058b690: 8b 44 24 08 8b 4c 24 04 50 51 e8 e1 f9 ff ff 83
1058b6a0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1058b690 <.text+0x58a690>:
1058b690:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1058b694:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1058b698:	50                                              	push   eax
1058b699:	51                                              	push   ecx
1058b69a:	e8 e1 f9 ff ff                                  	call   0x1058b080
1058b69f:	83 c4 08                                        	add    esp,0x8
1058b6a2:	c3                                              	ret
1058b6a3:	cc                                              	int3
1058b6a4:	cc                                              	int3
1058b6a5:	cc                                              	int3
1058b6a6:	cc                                              	int3
1058b6a7:	cc                                              	int3
1058b6a8:	cc                                              	int3
1058b6a9:	cc                                              	int3
1058b6aa:	cc                                              	int3
1058b6ab:	cc                                              	int3
1058b6ac:	cc                                              	int3
1058b6ad:	cc                                              	int3
1058b6ae:	cc                                              	int3
1058b6af:	cc                                              	int3
