# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540c40 (RouteManager_RemovePortals)
Paired Ghidra pseudocode: 10540C40_RouteManager_RemovePortals.c
Window: [0x10540c40, 0x10540c60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540c40: 8b 44 24 08 8b 4c 24 04 50 51 e8 81 d8 ff ff 83
10540c50: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540c40 <.text+0x53fc40>:
10540c40:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10540c44:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10540c48:	50                                              	push   eax
10540c49:	51                                              	push   ecx
10540c4a:	e8 81 d8 ff ff                                  	call   0x1053e4d0
10540c4f:	83 c4 08                                        	add    esp,0x8
10540c52:	c3                                              	ret
10540c53:	cc                                              	int3
10540c54:	cc                                              	int3
10540c55:	cc                                              	int3
10540c56:	cc                                              	int3
10540c57:	cc                                              	int3
10540c58:	cc                                              	int3
10540c59:	cc                                              	int3
10540c5a:	cc                                              	int3
10540c5b:	cc                                              	int3
10540c5c:	cc                                              	int3
10540c5d:	cc                                              	int3
10540c5e:	cc                                              	int3
10540c5f:	cc                                              	int3
