# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b000 (World_ObjectGetPlacementMode)
Paired Ghidra pseudocode: 1057B000_World_ObjectGetPlacementMode.c
Window: [0x1057b000, 0x1057b030) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b000: e8 9b f1 1a 00 85 c0 74 1b 8b 4c 24 08 8b 54 24
1057b010: 04 51 52 8b c8 e8 96 fb 1a 00 50 e8 00 cd b4 ff
1057b020: 83 c4 04 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b000 <.text+0x57a000>:
1057b000:	e8 9b f1 1a 00                                  	call   0x1072a1a0
1057b005:	85 c0                                           	test   eax,eax
1057b007:	74 1b                                           	je     0x1057b024
1057b009:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057b00d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b011:	51                                              	push   ecx
1057b012:	52                                              	push   edx
1057b013:	8b c8                                           	mov    ecx,eax
1057b015:	e8 96 fb 1a 00                                  	call   0x1072abb0
1057b01a:	50                                              	push   eax
1057b01b:	e8 00 cd b4 ff                                  	call   0x100c7d20
1057b020:	83 c4 04                                        	add    esp,0x4
1057b023:	c3                                              	ret
1057b024:	33 c0                                           	xor    eax,eax
1057b026:	c3                                              	ret
1057b027:	cc                                              	int3
1057b028:	cc                                              	int3
1057b029:	cc                                              	int3
1057b02a:	cc                                              	int3
1057b02b:	cc                                              	int3
1057b02c:	cc                                              	int3
1057b02d:	cc                                              	int3
1057b02e:	cc                                              	int3
1057b02f:	cc                                              	int3
