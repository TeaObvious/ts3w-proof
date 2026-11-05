# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054db00 (Route_RemoveObjectToIgnoreForRouteEndTurn)
Paired Ghidra pseudocode: 1054DB00_Route_RemoveObjectToIgnoreForRouteEndTurn.c
Window: [0x1054db00, 0x1054db20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054db20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054db00: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
1054db10: 2c cd ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054db00 <.text+0x54cb00>:
1054db00:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1054db04:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1054db08:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1054db0c:	50                                              	push   eax
1054db0d:	51                                              	push   ecx
1054db0e:	52                                              	push   edx
1054db0f:	e8 2c cd ff ff                                  	call   0x1054a840
1054db14:	83 c4 0c                                        	add    esp,0xc
1054db17:	c3                                              	ret
1054db18:	cc                                              	int3
1054db19:	cc                                              	int3
1054db1a:	cc                                              	int3
1054db1b:	cc                                              	int3
1054db1c:	cc                                              	int3
1054db1d:	cc                                              	int3
1054db1e:	cc                                              	int3
1054db1f:	cc                                              	int3
