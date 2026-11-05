# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578c00 (World_ObjectSetPlacementMode)
Paired Ghidra pseudocode: 10578C00_World_ObjectSetPlacementMode.c
Window: [0x10578c00, 0x10578c30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578c00: e8 9b 15 1b 00 85 c0 74 1f 8b 4c 24 08 8b 54 24
10578c10: 04 51 52 8b c8 e8 96 1f 1b 00 8b 4c 24 0c 51 50
10578c20: e8 bb f0 b4 ff 83 c4 08 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578c00 <.text+0x577c00>:
10578c00:	e8 9b 15 1b 00                                  	call   0x1072a1a0
10578c05:	85 c0                                           	test   eax,eax
10578c07:	74 1f                                           	je     0x10578c28
10578c09:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10578c0d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10578c11:	51                                              	push   ecx
10578c12:	52                                              	push   edx
10578c13:	8b c8                                           	mov    ecx,eax
10578c15:	e8 96 1f 1b 00                                  	call   0x1072abb0
10578c1a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10578c1e:	51                                              	push   ecx
10578c1f:	50                                              	push   eax
10578c20:	e8 bb f0 b4 ff                                  	call   0x100c7ce0
10578c25:	83 c4 08                                        	add    esp,0x8
10578c28:	c3                                              	ret
10578c29:	cc                                              	int3
10578c2a:	cc                                              	int3
10578c2b:	cc                                              	int3
10578c2c:	cc                                              	int3
10578c2d:	cc                                              	int3
10578c2e:	cc                                              	int3
10578c2f:	cc                                              	int3
