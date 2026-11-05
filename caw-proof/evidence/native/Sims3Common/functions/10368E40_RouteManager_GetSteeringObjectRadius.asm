# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10368e40 (RouteManager_GetSteeringObjectRadius)
Paired Ghidra pseudocode: 10368E40_RouteManager_GetSteeringObjectRadius.c
Window: [0x10368e40, 0x10368e70) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10368e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10368e40: d9 ee c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
10368e50: d9 05 ec dd c1 10 c3 cc cc cc cc cc cc cc cc cc
10368e60: 83 e9 0c e9 58 01 00 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10368e40 <.text+0x367e40>:
10368e40:	d9 ee                                           	fldz
10368e42:	c3                                              	ret
10368e43:	cc                                              	int3
10368e44:	cc                                              	int3
10368e45:	cc                                              	int3
10368e46:	cc                                              	int3
10368e47:	cc                                              	int3
10368e48:	cc                                              	int3
10368e49:	cc                                              	int3
10368e4a:	cc                                              	int3
10368e4b:	cc                                              	int3
10368e4c:	cc                                              	int3
10368e4d:	cc                                              	int3
10368e4e:	cc                                              	int3
10368e4f:	cc                                              	int3
10368e50:	d9 05 ec dd c1 10                               	fld    DWORD PTR ds:0x10c1ddec
10368e56:	c3                                              	ret
10368e57:	cc                                              	int3
10368e58:	cc                                              	int3
10368e59:	cc                                              	int3
10368e5a:	cc                                              	int3
10368e5b:	cc                                              	int3
10368e5c:	cc                                              	int3
10368e5d:	cc                                              	int3
10368e5e:	cc                                              	int3
10368e5f:	cc                                              	int3
10368e60:	83 e9 0c                                        	sub    ecx,0xc
10368e63:	e9 58 01 00 00                                  	jmp    0x10368fc0
10368e68:	cc                                              	int3
10368e69:	cc                                              	int3
10368e6a:	cc                                              	int3
10368e6b:	cc                                              	int3
10368e6c:	cc                                              	int3
10368e6d:	cc                                              	int3
10368e6e:	cc                                              	int3
10368e6f:	cc                                              	int3
