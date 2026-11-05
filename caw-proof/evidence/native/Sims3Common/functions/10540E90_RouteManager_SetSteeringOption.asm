# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540e90 (RouteManager_SetSteeringOption)
Paired Ghidra pseudocode: 10540E90_RouteManager_SetSteeringOption.c
Window: [0x10540e90, 0x10540ee0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540ee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540e90: e8 0b 93 1e 00 85 c0 74 38 8b 4c 24 08 8b 54 24
10540ea0: 04 51 52 8b c8 e8 06 9d 1e 00 85 c0 74 23 8b 0d
10540eb0: 78 d9 c8 10 51 8b c8 e8 e4 5e 1e 00 85 c0 74 11
10540ec0: 8b 54 24 10 8b 4c 24 0c 52 51 8b c8 e8 9f 3a 20
10540ed0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540e90 <.text+0x53fe90>:
10540e90:	e8 0b 93 1e 00                                  	call   0x1072a1a0
10540e95:	85 c0                                           	test   eax,eax
10540e97:	74 38                                           	je     0x10540ed1
10540e99:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10540e9d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10540ea1:	51                                              	push   ecx
10540ea2:	52                                              	push   edx
10540ea3:	8b c8                                           	mov    ecx,eax
10540ea5:	e8 06 9d 1e 00                                  	call   0x1072abb0
10540eaa:	85 c0                                           	test   eax,eax
10540eac:	74 23                                           	je     0x10540ed1
10540eae:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
10540eb4:	51                                              	push   ecx
10540eb5:	8b c8                                           	mov    ecx,eax
10540eb7:	e8 e4 5e 1e 00                                  	call   0x10726da0
10540ebc:	85 c0                                           	test   eax,eax
10540ebe:	74 11                                           	je     0x10540ed1
10540ec0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10540ec4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10540ec8:	52                                              	push   edx
10540ec9:	51                                              	push   ecx
10540eca:	8b c8                                           	mov    ecx,eax
10540ecc:	e8 9f 3a 20 00                                  	call   0x10744970
10540ed1:	c3                                              	ret
10540ed2:	cc                                              	int3
10540ed3:	cc                                              	int3
10540ed4:	cc                                              	int3
10540ed5:	cc                                              	int3
10540ed6:	cc                                              	int3
10540ed7:	cc                                              	int3
10540ed8:	cc                                              	int3
10540ed9:	cc                                              	int3
10540eda:	cc                                              	int3
10540edb:	cc                                              	int3
10540edc:	cc                                              	int3
10540edd:	cc                                              	int3
10540ede:	cc                                              	int3
10540edf:	cc                                              	int3
