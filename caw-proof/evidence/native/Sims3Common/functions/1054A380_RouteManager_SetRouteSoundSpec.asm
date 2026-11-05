# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054a380 (RouteManager_SetRouteSoundSpec)
Paired Ghidra pseudocode: 1054A380_RouteManager_SetRouteSoundSpec.c
Window: [0x1054a380, 0x1054a3a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054a3a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054a380: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
1054a390: 08 51 52 50 e8 07 f6 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
1054a380 <.text+0x549380>:
1054a380:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1054a384:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1054a388:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1054a38c:	50                                              	push   eax
1054a38d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1054a391:	51                                              	push   ecx
1054a392:	52                                              	push   edx
1054a393:	50                                              	push   eax
1054a394:	e8 07 f6 ff ff                                  	call   0x105499a0
1054a399:	83 c4 10                                        	add    esp,0x10
1054a39c:	c3                                              	ret
1054a39d:	cc                                              	int3
1054a39e:	cc                                              	int3
1054a39f:	cc                                              	int3
