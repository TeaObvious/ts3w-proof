# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055abc0 (SACS_GetDebugStringImpl)
Paired Ghidra pseudocode: 1055ABC0_SACS_GetDebugStringImpl.c
Window: [0x1055abc0, 0x1055abe0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055abe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055abc0: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 fe ff ff 83
1055abd0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055abc0 <.text+0x559bc0>:
1055abc0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1055abc4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1055abc8:	50                                              	push   eax
1055abc9:	51                                              	push   ecx
1055abca:	e8 11 fe ff ff                                  	call   0x1055a9e0
1055abcf:	83 c4 08                                        	add    esp,0x8
1055abd2:	c3                                              	ret
1055abd3:	cc                                              	int3
1055abd4:	cc                                              	int3
1055abd5:	cc                                              	int3
1055abd6:	cc                                              	int3
1055abd7:	cc                                              	int3
1055abd8:	cc                                              	int3
1055abd9:	cc                                              	int3
1055abda:	cc                                              	int3
1055abdb:	cc                                              	int3
1055abdc:	cc                                              	int3
1055abdd:	cc                                              	int3
1055abde:	cc                                              	int3
1055abdf:	cc                                              	int3
